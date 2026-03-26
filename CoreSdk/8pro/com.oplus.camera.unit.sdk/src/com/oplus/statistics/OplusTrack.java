package com.oplus.statistics;

import android.app.Application;
import android.content.Context;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.oplus.statistics.agent.AppStartAgent;
import com.oplus.statistics.agent.AtomAgent;
import com.oplus.statistics.agent.CommonAgent;
import com.oplus.statistics.agent.DebugAgent;
import com.oplus.statistics.agent.ExceptionAgent;
import com.oplus.statistics.agent.OnEventAgent;
import com.oplus.statistics.agent.PageVisitAgent;
import com.oplus.statistics.agent.SpecialAppStartAgent;
import com.oplus.statistics.agent.StaticPeriodDataRecord;
import com.oplus.statistics.agent.UserActionAgent;
import com.oplus.statistics.data.CommonBatchBean;
import com.oplus.statistics.data.CommonBean;
import com.oplus.statistics.data.DebugBean;
import com.oplus.statistics.data.ExceptionBean;
import com.oplus.statistics.data.PageVisitBean;
import com.oplus.statistics.data.PeriodDataBean;
import com.oplus.statistics.data.SettingKeyBean;
import com.oplus.statistics.data.SettingKeyDataBean;
import com.oplus.statistics.data.UserActionBean;
import com.oplus.statistics.record.AppLifecycleCallbacks;
import com.oplus.statistics.storage.PreferenceHandler;
import com.oplus.statistics.strategy.ChattyEventTracker;
import com.oplus.statistics.strategy.RequestFireWall;
import com.oplus.statistics.strategy.WorkThread;
import com.oplus.statistics.util.ApkInfoUtil;
import com.oplus.statistics.util.LogUtil;
import com.oplus.statistics.util.Supplier;
import com.oplus.statistics.util.VersionUtil;
import java.util.List;
import java.util.Map;
import java.util.regex.Pattern;

public class OplusTrack {
    private static final String CLIENT_START = "ClientStart";
    private static final int FIREWALL_LIMIT = 120;
    public static final int FLAG_SEND_TO_ATOM = 2;
    public static final int FLAG_SEND_TO_DCS = 1;
    private static final int MAX_EVENT_COUNT = 10000;
    private static final int MIN_EVENT_COUNT = 1;
    private static final String TAG = "OplusTrack";
    private static volatile StatisticsExceptionHandler sExceptionHandler;
    private static final Pattern EVENTID_PATTERN = Pattern.compile("^[a-zA-Z0-9\\_\\-]{1,64}$");
    private static final PageVisitAgent sPageVisitAgent = new PageVisitAgent();
    private static final long FIREWALL_LIMIT_TIME = 120000;
    private static final RequestFireWall sFireWall = new RequestFireWall.Builder(FIREWALL_LIMIT, FIREWALL_LIMIT_TIME)
            .build();

    public static void init(@NonNull Context context) {
        init(context, null);
    }

    public static void init(@NonNull Context context, @Nullable OTrackConfig config) {
        init(context, ApkInfoUtil.getAppCode(context), config);
    }

    public static void init(@NonNull Context context, String appCode, @Nullable OTrackConfig config) {
        Context applicationContext = context.getApplicationContext();
        if (applicationContext instanceof Application) {
            AppLifecycleCallbacks.getInstance().init((Application) applicationContext);
        }
        if (TextUtils.isEmpty(appCode)) {
            LogUtil.w(TAG, () -> "AppCode is empty.");
        }
        ApkInfoUtil.putAppCodeToCache(context, appCode);
        OTrackContext.createIfNeed(appCode, context, config);
        if (config != null) {
            LogUtil.setDebug(config.getEnv() == 1);
        }
    }

    public static boolean onCommon(@NonNull Context context, String logTag, String eventID,
            Map<String, String> logMap) {
        CommonBean commonBean = new CommonBean(context);
        commonBean.setLogTag(logTag);
        commonBean.setEventID(eventID);
        commonBean.setLogMap(logMap);
        return onCommon(commonBean, FLAG_SEND_TO_DCS);
    }

    public static boolean onCommonBatch(@NonNull Context context, String logTag, String eventID,
            List<Map<String, String>> logList, int flag) throws DataOverSizeException {
        return onCommonBatch(context, "", logTag, eventID, logList, flag);
    }

    public static boolean onCommonBatch(@NonNull Context context, String appId, String logTag, String eventID,
            List<Map<String, String>> logList, int flag) throws DataOverSizeException {
        CommonBatchBean commonBatchBean = new CommonBatchBean(context);
        commonBatchBean.setAppId(appId);
        commonBatchBean.setLogTag(logTag);
        commonBatchBean.setEventID(eventID);
        commonBatchBean.setLogMap(logList);
        return onCommon(commonBatchBean, flag);
    }

    public static boolean onCommon(@NonNull Context context, String logTag, String eventID, Map<String, String> logMap,
            int flag) {
        CommonBean commonBean = new CommonBean(context);
        commonBean.setLogTag(logTag);
        commonBean.setEventID(eventID);
        commonBean.setLogMap(logMap);
        return onCommon(commonBean, flag);
    }

    public static boolean onCommon(@NonNull Context context, String logTag, String eventID, Map<String, String> logMap,
            int appId, int flag) {
        CommonBean commonBean = new CommonBean(context);
        commonBean.setLogTag(logTag);
        commonBean.setEventID(eventID);
        commonBean.setLogMap(logMap);
        commonBean.setAppId(appId);
        return onCommon(commonBean, flag);
    }

    public static boolean onCommon(@NonNull Context context, String appId, String logTag, String eventID,
            Map<String, String> logMap) {
        CommonBean commonBean = new CommonBean(context);
        commonBean.setAppId(appId);
        commonBean.setLogTag(logTag);
        commonBean.setEventID(eventID);
        commonBean.setLogMap(logMap);
        return onCommon(commonBean, FLAG_SEND_TO_DCS);
    }

    public static boolean onCommon(CommonBean commonBean) {
        return onCommon(commonBean, FLAG_SEND_TO_DCS);
    }

    public static boolean onCommon(final CommonBean commonBean, final int flag) {
        if (!sFireWall
                .handleRequest(commonBean.getAppId() + "_" + commonBean.getLogTag() + "_" + commonBean.getEventID())) {
            ChattyEventTracker.getInstance().onChattyEvent(commonBean);
            return false;
        }
        try {
            LogUtil.v(TAG, () -> "onCommon logTag is " + commonBean.getLogTag() + ", eventID: "
                    + commonBean.getEventID() + ", flag: " + flag);
            if ((flag & FLAG_SEND_TO_DCS) == FLAG_SEND_TO_DCS) {
                WorkThread.execute(() -> CommonAgent.recordCommon(commonBean.getContext(), commonBean));
            }
            if ((flag & FLAG_SEND_TO_ATOM) == FLAG_SEND_TO_ATOM) {
                WorkThread.execute(() -> AtomAgent.recordAtomCommon(commonBean.getContext(), commonBean));
            }
            return true;
        } catch (Exception e) {
            LogUtil.e(TAG, () -> "onCommon error: " + e.toString());
            return false;
        }
    }

    public static void onStaticDataUpdate(Context context, String logTag, String eventID, Map<String, String> logMap) {
        PeriodDataBean periodDataBean = new PeriodDataBean(context);
        periodDataBean.setLogTag(logTag);
        periodDataBean.setEventID(eventID);
        periodDataBean.setLogMap(logMap);
        onStaticDataUpdate(context, periodDataBean);
    }

    public static void onStaticDataUpdate(final Context context, final PeriodDataBean periodDataBean) {
        try {
            LogUtil.d(TAG, () -> "onStaticDataUpdate logTag: " + periodDataBean.getLogTag() + ", eventID: "
                    + periodDataBean.getEventID());
            WorkThread.execute(() -> StaticPeriodDataRecord.updateData(context, periodDataBean));
        } catch (Exception e) {
            LogUtil.e(TAG, () -> "onStaticDataUpdate error: " + e.toString());
        }
    }

    public static void onSettingKeyUpdate(Context context, String logTag, String eventID,
            List<SettingKeyBean> logList) {
        SettingKeyDataBean settingKeyDataBean = new SettingKeyDataBean(context);
        settingKeyDataBean.setLogTag(logTag);
        settingKeyDataBean.setEventID(eventID);
        settingKeyDataBean.setLogMap(logList);
        onSettingKeyUpdate(context, settingKeyDataBean);
    }

    public static void onSettingKeyUpdate(final Context context, final SettingKeyDataBean settingKeyDataBean) {
        try {
            LogUtil.d(TAG, () -> "onSettingKeyUpdate logTag: " + settingKeyDataBean.getLogTag() + ", eventID: "
                    + settingKeyDataBean.getEventID());
            if (!TextUtils.isEmpty(settingKeyDataBean.getLogTag())) {
                WorkThread.execute(() -> StaticPeriodDataRecord.updateSettingKeyList(context, settingKeyDataBean));
            } else {
                LogUtil.e(TAG, () -> "Send data failed! logTag is null.");
            }
        } catch (Exception e) {
            LogUtil.e(TAG, () -> "onSettingKeyUpdate error: " + e.toString());
        }
    }

    public static boolean isSupportStaticData(Context context) {
        return VersionUtil.isSupportPeriodData(context);
    }

    public static boolean onSpecialAppStart(Context context, final int appCode) {
        LogUtil.d(TAG, () -> "onSpecialAppStart appCode: " + appCode);
        return onCommon(context, CLIENT_START, CLIENT_START, null);
    }

    @Deprecated
    public static void onEventStart(final Context context, final String eventID, final String eventTag) {
        try {
            LogUtil.d(TAG, () -> "onEventStart eventID: " + eventID + ", eventTag: " + eventTag);
            if (formatCheck(eventID, eventTag, MIN_EVENT_COUNT)) {
                WorkThread.execute(() -> OnEventAgent.onEventStart(context, eventID, eventTag));
            }
        } catch (Exception e) {
            LogUtil.e(TAG, () -> "onEventStart error: " + e.toString());
        }
    }

    @Deprecated
    public static void onEventStart(final Context context, final String eventID) {
        onEventStart(context, eventID, "");
    }

    @Deprecated
    public static void onEventEnd(final Context context, final String eventID, final String eventTag) {
        try {
            LogUtil.d(TAG, () -> "onEventEnd eventID: " + eventID + ", eventTag: " + eventTag);
            if (formatCheck(eventID, eventTag, MIN_EVENT_COUNT)) {
                WorkThread.execute(() -> OnEventAgent.onEventEnd(context, eventID, eventTag));
            }
        } catch (Exception e) {
            LogUtil.e(TAG, () -> "onEventEnd error: " + e.toString());
        }
    }

    @Deprecated
    public static void onEventEnd(final Context context, final String eventID) {
        onEventEnd(context, eventID, "");
    }

    @Deprecated
    public static void onDynamicEvent(final Context context, final int uploadMode, final int statId,
            final Map<String, String> eventMap, final Map<String, String> eventMap2) {
        try {
            LogUtil.d(TAG, () -> "onDynamicEvent uploadMode: " + uploadMode + ", statId: " + statId);
            WorkThread.execute(() -> OnEventAgent.onDynamicEvent(context, uploadMode, statId, eventMap, eventMap2));
        } catch (Exception e) {
            LogUtil.e(TAG, () -> "onDynamicEvent error: " + e.toString());
        }
    }

    @Deprecated
    public static void onStaticEvent(final Context context, final int uploadMode, final int statId, final String setId,
            final String setValue, final String remark, final Map<String, String> eventMap) {
        try {
            LogUtil.d(TAG,
                    () -> "onStaticEvent uploadMode: " + uploadMode + ", statId: " + statId + ", setId: " + setId);
            WorkThread.execute(
                    () -> OnEventAgent.onStaticEvent(context, uploadMode, statId, setId, setValue, remark, eventMap));
        } catch (Exception e) {
            LogUtil.e(TAG, () -> "onStaticEvent error: " + e.toString());
        }
    }

    public static void onKVEventStart(final Context context, final String eventID, final Map<String, String> eventMap,
            final String eventTag) {
        try {
            LogUtil.d(TAG, () -> "onKVEventStart eventID: " + eventID + ", eventTag: " + eventTag);
            if (formatCheck(eventID, eventTag, MIN_EVENT_COUNT)) {
                WorkThread.execute(() -> OnEventAgent.onKVEventStart(context, eventID, eventMap, eventTag));
            }
        } catch (Exception e) {
            LogUtil.e(TAG, () -> "onKVEventStart error: " + e.toString());
        }
    }

    public static void onKVEventEnd(final Context context, final String eventID, final String eventTag) {
        try {
            LogUtil.d(TAG, () -> "onKVEventEnd eventID: " + eventID + ", eventTag: " + eventTag);
            if (formatCheck(eventID, eventTag, MIN_EVENT_COUNT)) {
                WorkThread.execute(() -> OnEventAgent.onKVEventEnd(context, eventID, eventTag));
            }
        } catch (Exception e) {
            LogUtil.e(TAG, () -> "onKVEventEnd error: " + e.toString());
        }
    }

    public static void onKVEventStart(final Context context, final String eventID, final Map<String, String> eventMap) {
        onKVEventStart(context, eventID, eventMap, "");
    }

    public static void onKVEventEnd(final Context context, final String eventID) {
        onKVEventEnd(context, eventID, "");
    }

    public static void onPause(Context context) {
        try {
            LogUtil.d(TAG, () -> "onPause");
            sPageVisitAgent.onPause(context);
        } catch (Exception e) {
            LogUtil.e(TAG, () -> "onPause error: " + e.toString());
        }
    }

    public static void onResume(Context context) {
        try {
            LogUtil.d(TAG, () -> "onResume");
            sPageVisitAgent.onResume(context);
        } catch (Exception e) {
            LogUtil.e(TAG, () -> "onResume error: " + e.toString());
        }
    }

    public static synchronized void onError(Context context) {
        try {
            LogUtil.d(TAG, () -> "onError");
            if (sExceptionHandler == null) {
                sExceptionHandler = new StatisticsExceptionHandler(context);
                sExceptionHandler.setStatisticsExceptionHandler();
            }
        } catch (Exception e) {
            LogUtil.e(TAG, () -> "onError error: " + e.toString());
        }
    }

    public static void onDebug(final Context context, final boolean debug) {
        try {
            LogUtil.setDebug(debug);
            LogUtil.d(TAG, () -> "packageName: " + context.getPackageName() + ", isDebug: " + debug);
            if (LogUtil.isDebug()) {
                WorkThread.execute(() -> DebugAgent.setDebug(context, debug));
            }
        } catch (Exception e) {
            LogUtil.e(TAG, () -> "onDebug error: " + e.toString());
        }
    }

    public static void setDebug(final boolean debug) {
        try {
            LogUtil.setDebug(debug);
            LogUtil.d(TAG, () -> "onDebug (no context) sdk and dcs isDebug: " + debug);
        } catch (Exception e) {
            LogUtil.e(TAG, () -> "setDebug error: " + e.toString());
        }
    }

    public static void setSessionTimeOut(Context context, final int timeout) {
        LogUtil.d(TAG, () -> "setSession timeout is " + timeout);
        if (timeout > 0) {
            try {
                PreferenceHandler.setSessionTimeout(context, timeout);
            } catch (Exception e) {
                LogUtil.e(TAG, () -> "setSessionTimeOut error: " + e.toString());
            }
        }
    }

    public static void setSsoID(Context context, final String ssoID) {
        LogUtil.d(TAG, () -> "setSsoID ssoID is " + ssoID);
        String targetSsoID = ssoID;
        if (TextUtils.isEmpty(targetSsoID) || "null".equals(targetSsoID)) {
            targetSsoID = "0";
        }
        final String effectiveSsoID = targetSsoID;
        try {
            PreferenceHandler.setSsoID(context, effectiveSsoID);
        } catch (Exception e) {
            LogUtil.e(TAG, () -> "setSsoID error: " + e.toString());
        }
    }

    public static void removeSsoID(Context context) {
        try {
            LogUtil.d(TAG, () -> "removeSsoID");
            PreferenceHandler.setSsoID(context, "0");
        } catch (Exception e) {
            LogUtil.e(TAG, () -> "removeSsoID error: " + e.toString());
        }
    }

    private static boolean formatCheck(String eventID, String eventTag, int count) {
        if (eventID == null) {
            LogUtil.e(TAG, () -> "eventID is null.");
            return false;
        }
        if (!EVENTID_PATTERN.matcher(eventID).find()) {
            LogUtil.e(TAG, () -> "eventID is illegal.");
            return false;
        }
        if (eventTag == null) {
            LogUtil.e(TAG, () -> "eventTag is null.");
            return false;
        }
        if (count <= MAX_EVENT_COUNT && count >= MIN_EVENT_COUNT) {
            return true;
        }
        LogUtil.e(TAG, () -> "event count is illegal.");
        return false;
    }
}

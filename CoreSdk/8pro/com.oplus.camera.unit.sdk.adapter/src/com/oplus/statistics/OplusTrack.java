package com.oplus.statistics;

import android.app.Application;
import android.content.Context;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.oplus.statistics.agent.AtomAgent;
import com.oplus.statistics.agent.CommonAgent;
import com.oplus.statistics.agent.DebugAgent;
import com.oplus.statistics.agent.OnEventAgent;
import com.oplus.statistics.agent.PageVisitAgent;
import com.oplus.statistics.agent.StaticPeriodDataRecord;
import com.oplus.statistics.data.CommonBatchBean;
import com.oplus.statistics.data.CommonBean;
import com.oplus.statistics.data.PeriodDataBean;
import com.oplus.statistics.data.SettingKeyBean;
import com.oplus.statistics.data.SettingKeyDataBean;
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
/* loaded from: classes.dex */
public class OplusTrack {
    private static final String CLIENT_START = "ClientStart";
    public static final int FLAG_SEND_TO_ATOM = 2;
    public static final int FLAG_SEND_TO_DCS = 1;
    private static final int MAX_EVENT_COUNT = 10000;
    private static final int MIN_EVENT_COUNT = 1;
    private static final String TAG = "OplusTrack";
    private static volatile StatisticsExceptionHandler sExceptionHandler;
    private static final Pattern EVENTID_PATTERN = Pattern.compile("^[a-zA-Z0-9\\_\\-]{1,64}$");
    private static final PageVisitAgent sPageVisitAgent = new PageVisitAgent();
    private static final int FIREWALL_LIMIT = 120;
    private static final long FIREWALL_LIMIT_TIME = 120000;
    private static final RequestFireWall sFireWall = new RequestFireWall.Builder(FIREWALL_LIMIT, FIREWALL_LIMIT_TIME).build();

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ String lambda$formatCheck$27() {
        return "EventID is null!";
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ String lambda$formatCheck$28() {
        return "EventID format error!";
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ String lambda$formatCheck$29() {
        return "EventTag format error!";
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ String lambda$formatCheck$30() {
        return "EventCount format error!";
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ String lambda$init$0() {
        return "AppCode is empty.";
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ String lambda$onError$21() {
        return "onError...";
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ String lambda$onPause$19() {
        return "onPause...";
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ String lambda$onResume$20() {
        return "onResume...";
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ String lambda$onSettingKeyUpdate$7() {
        return "Send data failed! logTag is null.";
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ String lambda$removeSsoID$26() {
        return "removeSsoID";
    }

    public static void init(@NonNull Context context) {
        init(context, null);
    }

    public static void init(@NonNull Context context, @Nullable OTrackConfig oTrackConfig) {
        init(context, ApkInfoUtil.getAppCode(context), oTrackConfig);
    }

    public static void init(@NonNull Context context, String str, @Nullable OTrackConfig oTrackConfig) {
        Context applicationContext = context.getApplicationContext();
        if (applicationContext != null) {
            AppLifecycleCallbacks.getInstance().init((Application) applicationContext);
        }
        if (TextUtils.isEmpty(str)) {
            LogUtil.w(TAG, new Supplier() { // from class: com.oplus.statistics.OplusTrack$$ExternalSyntheticLambda16
                @Override // com.oplus.statistics.util.Supplier
                public final Object get() {
                    return OplusTrack.lambda$init$0();
                }
            });
        }
        ApkInfoUtil.putAppCodeToCache(context, str);
        OTrackContext.createIfNeed(str, context, oTrackConfig);
        if (oTrackConfig != null) {
            LogUtil.setDebug(oTrackConfig.getEnv() == 1);
        }
    }

    public static boolean onCommon(@NonNull Context context, String str, String str2, Map<String, String> map) {
        CommonBean commonBean = new CommonBean(context);
        commonBean.setLogTag(str);
        commonBean.setEventID(str2);
        commonBean.setLogMap(map);
        return onCommon(commonBean, 1);
    }

    public static boolean onCommonBatch(@NonNull Context context, String str, String str2, List<Map<String, String>> list, int i) throws DataOverSizeException {
        return onCommonBatch(context, "", str, str2, list, i);
    }

    public static boolean onCommonBatch(@NonNull Context context, String str, String str2, String str3, List<Map<String, String>> list, int i) throws DataOverSizeException {
        CommonBatchBean commonBatchBean = new CommonBatchBean(context);
        commonBatchBean.setAppId(str);
        commonBatchBean.setLogTag(str2);
        commonBatchBean.setEventID(str3);
        commonBatchBean.setLogMap(list);
        return onCommon(commonBatchBean, i);
    }

    public static boolean onCommon(@NonNull Context context, String str, String str2, Map<String, String> map, int i) {
        CommonBean commonBean = new CommonBean(context);
        commonBean.setLogTag(str);
        commonBean.setEventID(str2);
        commonBean.setLogMap(map);
        return onCommon(commonBean, i);
    }

    public static boolean onCommon(@NonNull Context context, String str, String str2, Map<String, String> map, int i, int i2) {
        CommonBean commonBean = new CommonBean(context);
        commonBean.setLogTag(str);
        commonBean.setEventID(str2);
        commonBean.setLogMap(map);
        commonBean.setAppId(i);
        return onCommon(commonBean, i2);
    }

    public static boolean onCommon(@NonNull Context context, String str, String str2, String str3, Map<String, String> map) {
        CommonBean commonBean = new CommonBean(context);
        commonBean.setAppId(str);
        commonBean.setLogTag(str2);
        commonBean.setEventID(str3);
        commonBean.setLogMap(map);
        return onCommon(commonBean, 1);
    }

    public static boolean onCommon(CommonBean commonBean) {
        return onCommon(commonBean, 1);
    }

    public static boolean onCommon(final CommonBean commonBean, final int i) {
        if (!sFireWall.handleRequest(commonBean.getAppId() + "_" + commonBean.getLogTag() + "_" + commonBean.getEventID())) {
            ChattyEventTracker.getInstance().onChattyEvent(commonBean);
            return false;
        }
        try {
            LogUtil.v(TAG, new Supplier() { // from class: com.oplus.statistics.OplusTrack$$ExternalSyntheticLambda27
                @Override // com.oplus.statistics.util.Supplier
                public final Object get() {
                    return OplusTrack.lambda$onCommon$1(commonBean, i);
                }
            });
            if ((i & 1) == 1) {
                WorkThread.execute(new Runnable() { // from class: com.oplus.statistics.OplusTrack$$ExternalSyntheticLambda28
                    @Override // java.lang.Runnable
                    public final void run() {
                        CommonAgent.recordCommon(commonBean.getContext(), commonBean);
                    }
                });
            }
            if ((i & 2) == 2) {
                WorkThread.execute(new Runnable() { // from class: com.oplus.statistics.OplusTrack$$ExternalSyntheticLambda29
                    @Override // java.lang.Runnable
                    public final void run() {
                        AtomAgent.recordAtomCommon(commonBean.getContext(), commonBean);
                    }
                });
            }
            return true;
        } catch (Exception e) {
            LogUtil.e(TAG, new Supplier() {
                    @Override
                    public Object get() {
                        return e.getMessage();
                    }
                });
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ String lambda$onCommon$1(CommonBean commonBean, int i) {
        return "onCommon logTag is " + commonBean.getLogTag() + ",eventID:" + commonBean.getEventID() + ",flagSendTo:" + i;
    }

    public static void onStaticDataUpdate(Context context, String str, String str2, Map<String, String> map) {
        PeriodDataBean periodDataBean = new PeriodDataBean(context);
        periodDataBean.setLogTag(str);
        periodDataBean.setEventID(str2);
        periodDataBean.setLogMap(map);
        onStaticDataUpdate(context, periodDataBean);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ String lambda$onStaticDataUpdate$4(PeriodDataBean periodDataBean) {
        return "onStaticDataUpdate logTag:" + periodDataBean.getLogTag() + ", eventID:" + periodDataBean.getEventID();
    }

    public static void onStaticDataUpdate(final Context context, final PeriodDataBean periodDataBean) {
        try {
            LogUtil.d(TAG, new Supplier() { // from class: com.oplus.statistics.OplusTrack$$ExternalSyntheticLambda12
                @Override // com.oplus.statistics.util.Supplier
                public final Object get() {
                    return OplusTrack.lambda$onStaticDataUpdate$4(periodDataBean);
                }
            });
            WorkThread.execute(new Runnable() { // from class: com.oplus.statistics.OplusTrack$$ExternalSyntheticLambda13
                @Override // java.lang.Runnable
                public final void run() {
                    StaticPeriodDataRecord.updateData(context, periodDataBean);
                }
            });
        } catch (Exception e) {
            LogUtil.e(TAG, new Supplier() {
                    @Override
                    public Object get() {
                        return e.getMessage();
                    }
                });
        }
    }

    public static void onSettingKeyUpdate(Context context, String str, String str2, List<SettingKeyBean> list) {
        SettingKeyDataBean settingKeyDataBean = new SettingKeyDataBean(context);
        settingKeyDataBean.setLogTag(str);
        settingKeyDataBean.setEventID(str2);
        settingKeyDataBean.setLogMap(list);
        onSettingKeyUpdate(context, settingKeyDataBean);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ String lambda$onSettingKeyUpdate$6(SettingKeyDataBean settingKeyDataBean) {
        return "onSettingKeyUpdate logTag:" + settingKeyDataBean.getLogTag() + ", eventID:" + settingKeyDataBean.getEventID() + ", keys:" + settingKeyDataBean.getLogMap();
    }

    public static void onSettingKeyUpdate(final Context context, final SettingKeyDataBean settingKeyDataBean) {
        try {
            LogUtil.d(TAG, new Supplier() { // from class: com.oplus.statistics.OplusTrack$$ExternalSyntheticLambda0
                @Override // com.oplus.statistics.util.Supplier
                public final Object get() {
                    return OplusTrack.lambda$onSettingKeyUpdate$6(settingKeyDataBean);
                }
            });
            if (!TextUtils.isEmpty(settingKeyDataBean.getLogTag())) {
                WorkThread.execute(new Runnable() { // from class: com.oplus.statistics.OplusTrack.1
                    @Override // java.lang.Runnable
                    public void run() {
                        StaticPeriodDataRecord.updateSettingKeyList(context, settingKeyDataBean);
                    }
                });
            } else {
                LogUtil.e(TAG, new Supplier() { // from class: com.oplus.statistics.OplusTrack$$ExternalSyntheticLambda1
                    @Override // com.oplus.statistics.util.Supplier
                    public final Object get() {
                        return OplusTrack.lambda$onSettingKeyUpdate$7();
                    }
                });
            }
        } catch (Exception e) {
            LogUtil.e(TAG, new Supplier() {
                    @Override
                    public Object get() {
                        return e.getMessage();
                    }
                });
        }
    }

    public static boolean isSupportStaticData(Context context) {
        return VersionUtil.isSupportPeriodData(context);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ String lambda$onSpecialAppStart$8(int i) {
        return "onSpecialAppStart appCode:" + i;
    }

    @Deprecated
    public static boolean onSpecialAppStart(Context context, final int i) {
        LogUtil.d(TAG, new Supplier() { // from class: com.oplus.statistics.OplusTrack$$ExternalSyntheticLambda30
            @Override // com.oplus.statistics.util.Supplier
            public final Object get() {
                return OplusTrack.lambda$onSpecialAppStart$8(i);
            }
        });
        return onCommon(context, CLIENT_START, CLIENT_START, null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ String lambda$onEventStart$9(String str, String str2) {
        return "onEventStart eventID:" + str + ",eventTag:" + str2;
    }

    @Deprecated
    public static void onEventStart(final Context context, final String str, final String str2) {
        try {
            LogUtil.d(TAG, new Supplier() { // from class: com.oplus.statistics.OplusTrack$$ExternalSyntheticLambda31
                @Override // com.oplus.statistics.util.Supplier
                public final Object get() {
                    return OplusTrack.lambda$onEventStart$9(str, str2);
                }
            });
            if (formatCheck(str, str2, 1)) {
                WorkThread.execute(new Runnable() { // from class: com.oplus.statistics.OplusTrack.2
                    @Override // java.lang.Runnable
                    public void run() {
                        OnEventAgent.onEventStart(context, str, str2);
                    }
                });
            }
        } catch (Exception e) {
            LogUtil.e(TAG, new Supplier() {
                    @Override
                    public Object get() {
                        return e.getMessage();
                    }
                });
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ String lambda$onEventStart$10(String str) {
        return "onEventStart eventID:" + str;
    }

    @Deprecated
    public static void onEventStart(final Context context, final String str) {
        try {
            LogUtil.d(TAG, new Supplier() { // from class: com.oplus.statistics.OplusTrack$$ExternalSyntheticLambda25
                @Override // com.oplus.statistics.util.Supplier
                public final Object get() {
                    return OplusTrack.lambda$onEventStart$10(str);
                }
            });
            if (formatCheck(str, "", 1)) {
                WorkThread.execute(new Runnable() { // from class: com.oplus.statistics.OplusTrack.3
                    @Override // java.lang.Runnable
                    public void run() {
                        OnEventAgent.onEventStart(context, str, "");
                    }
                });
            }
        } catch (Exception e) {
            LogUtil.e(TAG, new Supplier() {
                    @Override
                    public Object get() {
                        return e.getMessage();
                    }
                });
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ String lambda$onEventEnd$11(String str, String str2) {
        return "onEventEnd eventID:" + str + ",eventTag:" + str2;
    }

    @Deprecated
    public static void onEventEnd(final Context context, final String str, final String str2) {
        try {
            LogUtil.d(TAG, new Supplier() { // from class: com.oplus.statistics.OplusTrack$$ExternalSyntheticLambda3
                @Override // com.oplus.statistics.util.Supplier
                public final Object get() {
                    return OplusTrack.lambda$onEventEnd$11(str, str2);
                }
            });
            if (formatCheck(str, str2, 1)) {
                WorkThread.execute(new Runnable() { // from class: com.oplus.statistics.OplusTrack.4
                    @Override // java.lang.Runnable
                    public void run() {
                        OnEventAgent.onEventEnd(context, str, str2);
                    }
                });
            }
        } catch (Exception e) {
            LogUtil.e(TAG, new Supplier() {
                    @Override
                    public Object get() {
                        return e.getMessage();
                    }
                });
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ String lambda$onEventEnd$12(String str) {
        return "onEventEnd eventID:" + str;
    }

    @Deprecated
    public static void onEventEnd(final Context context, final String str) {
        try {
            LogUtil.d(TAG, new Supplier() { // from class: com.oplus.statistics.OplusTrack$$ExternalSyntheticLambda15
                @Override // com.oplus.statistics.util.Supplier
                public final Object get() {
                    return OplusTrack.lambda$onEventEnd$12(str);
                }
            });
            if (formatCheck(str, "", 1)) {
                WorkThread.execute(new Runnable() { // from class: com.oplus.statistics.OplusTrack.5
                    @Override // java.lang.Runnable
                    public void run() {
                        OnEventAgent.onEventEnd(context, str, "");
                    }
                });
            }
        } catch (Exception e) {
            LogUtil.e(TAG, new Supplier() {
                    @Override
                    public Object get() {
                        return e.getMessage();
                    }
                });
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ String lambda$onDynamicEvent$13(int i, int i2) {
        return "onDynamicEvent uploadMode:" + i + ",statId:" + i2;
    }

    @Deprecated
    public static void onDynamicEvent(final Context context, final int i, final int i2, final Map<String, String> map, final Map<String, String> map2) {
        try {
            LogUtil.d(TAG, new Supplier() { // from class: com.oplus.statistics.OplusTrack$$ExternalSyntheticLambda23
                @Override // com.oplus.statistics.util.Supplier
                public final Object get() {
                    return OplusTrack.lambda$onDynamicEvent$13(i, i2);
                }
            });
            WorkThread.execute(new Runnable() { // from class: com.oplus.statistics.OplusTrack.6
                @Override // java.lang.Runnable
                public void run() {
                    OnEventAgent.onDynamicEvent(context, i, i2, map, map2);
                }
            });
        } catch (Exception e) {
            LogUtil.e(TAG, new Supplier() {
                    @Override
                    public Object get() {
                        return e.getMessage();
                    }
                });
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ String lambda$onStaticEvent$14(int i, int i2, String str, String str2, String str3) {
        return "onStaticEvent uploadMode:" + i + ",statId:" + i2 + ",setId:" + str + ",setValue:" + str2 + ",remark:" + str3;
    }

    @Deprecated
    public static void onStaticEvent(final Context context, final int i, final int i2, final String str, final String str2, final String str3, final Map<String, String> map) {
        try {
            LogUtil.d(TAG, new Supplier() { // from class: com.oplus.statistics.OplusTrack$$ExternalSyntheticLambda8
                @Override // com.oplus.statistics.util.Supplier
                public final Object get() {
                    return OplusTrack.lambda$onStaticEvent$14(i, i2, str, str2, str3);
                }
            });
            WorkThread.execute(new Runnable() { // from class: com.oplus.statistics.OplusTrack.7
                @Override // java.lang.Runnable
                public void run() {
                    OnEventAgent.onStaticEvent(context, i, i2, str, str2, str3, map);
                }
            });
        } catch (Exception e) {
            LogUtil.e(TAG, new Supplier() {
                    @Override
                    public Object get() {
                        return e.getMessage();
                    }
                });
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ String lambda$onKVEventStart$15(String str, String str2, Map map) {
        return "onKVEventStart eventID:" + str + ",eventTag:" + str2 + ",eventMap:" + map;
    }

    public static void onKVEventStart(final Context context, final String str, final Map<String, String> map, final String str2) {
        try {
            LogUtil.d(TAG, new Supplier() { // from class: com.oplus.statistics.OplusTrack$$ExternalSyntheticLambda24
                @Override // com.oplus.statistics.util.Supplier
                public final Object get() {
                    return OplusTrack.lambda$onKVEventStart$15(str, str2, map);
                }
            });
            if (formatCheck(str, str2, 1)) {
                WorkThread.execute(new Runnable() { // from class: com.oplus.statistics.OplusTrack.8
                    @Override // java.lang.Runnable
                    public void run() {
                        OnEventAgent.onKVEventStart(context, str, map, str2);
                    }
                });
            }
        } catch (Exception e) {
            LogUtil.e(TAG, new Supplier() {
                    @Override
                    public Object get() {
                        return e.getMessage();
                    }
                });
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ String lambda$onKVEventEnd$16(String str, String str2) {
        return "onKVEventEnd eventID:" + str + ",eventTag:" + str2;
    }

    public static void onKVEventEnd(final Context context, final String str, final String str2) {
        try {
            LogUtil.d(TAG, new Supplier() { // from class: com.oplus.statistics.OplusTrack$$ExternalSyntheticLambda9
                @Override // com.oplus.statistics.util.Supplier
                public final Object get() {
                    return OplusTrack.lambda$onKVEventEnd$16(str, str2);
                }
            });
            if (formatCheck(str, str2, 1)) {
                WorkThread.execute(new Runnable() { // from class: com.oplus.statistics.OplusTrack.9
                    @Override // java.lang.Runnable
                    public void run() {
                        OnEventAgent.onKVEventEnd(context, str, str2);
                    }
                });
            }
        } catch (Exception e) {
            LogUtil.e(TAG, new Supplier() {
                    @Override
                    public Object get() {
                        return e.getMessage();
                    }
                });
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ String lambda$onKVEventStart$17(String str) {
        return "onKVEventStart eventID:" + str;
    }

    public static void onKVEventStart(final Context context, final String str, final Map<String, String> map) {
        try {
            LogUtil.d(TAG, new Supplier() { // from class: com.oplus.statistics.OplusTrack$$ExternalSyntheticLambda4
                @Override // com.oplus.statistics.util.Supplier
                public final Object get() {
                    return OplusTrack.lambda$onKVEventStart$17(str);
                }
            });
            if (formatCheck(str, "", 1)) {
                WorkThread.execute(new Runnable() { // from class: com.oplus.statistics.OplusTrack.10
                    @Override // java.lang.Runnable
                    public void run() {
                        OnEventAgent.onKVEventStart(context, str, map, "");
                    }
                });
            }
        } catch (Exception e) {
            LogUtil.e(TAG, new Supplier() {
                    @Override
                    public Object get() {
                        return e.getMessage();
                    }
                });
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ String lambda$onKVEventEnd$18(String str) {
        return "onKVEventEnd eventID:" + str;
    }

    public static void onKVEventEnd(final Context context, final String str) {
        try {
            LogUtil.d(TAG, new Supplier() { // from class: com.oplus.statistics.OplusTrack$$ExternalSyntheticLambda14
                @Override // com.oplus.statistics.util.Supplier
                public final Object get() {
                    return OplusTrack.lambda$onKVEventEnd$18(str);
                }
            });
            if (formatCheck(str, "", 1)) {
                WorkThread.execute(new Runnable() { // from class: com.oplus.statistics.OplusTrack.11
                    @Override // java.lang.Runnable
                    public void run() {
                        OnEventAgent.onKVEventEnd(context, str, "");
                    }
                });
            }
        } catch (Exception e) {
            LogUtil.e(TAG, new Supplier() {
                    @Override
                    public Object get() {
                        return e.getMessage();
                    }
                });
        }
    }

    public static void onPause(Context context) {
        try {
            LogUtil.d(TAG, new Supplier() { // from class: com.oplus.statistics.OplusTrack$$ExternalSyntheticLambda21
                @Override // com.oplus.statistics.util.Supplier
                public final Object get() {
                    return OplusTrack.lambda$onPause$19();
                }
            });
            sPageVisitAgent.onPause(context);
        } catch (Exception e) {
            LogUtil.e(TAG, new Supplier() {
                    @Override
                    public Object get() {
                        return e.getMessage();
                    }
                });
        }
    }

    public static void onResume(Context context) {
        try {
            LogUtil.d(TAG, new Supplier() { // from class: com.oplus.statistics.OplusTrack$$ExternalSyntheticLambda5
                @Override // com.oplus.statistics.util.Supplier
                public final Object get() {
                    return OplusTrack.lambda$onResume$20();
                }
            });
            sPageVisitAgent.onResume(context);
        } catch (Exception e) {
            LogUtil.e(TAG, new Supplier() {
                    @Override
                    public Object get() {
                        return e.getMessage();
                    }
                });
        }
    }

    public static synchronized void onError(Context context) {
        synchronized (OplusTrack.class) {
            try {
                LogUtil.d(TAG, new Supplier() { // from class: com.oplus.statistics.OplusTrack$$ExternalSyntheticLambda22
                    @Override // com.oplus.statistics.util.Supplier
                    public final Object get() {
                        return OplusTrack.lambda$onError$21();
                    }
                });
                if (sExceptionHandler == null) {
                    sExceptionHandler = new StatisticsExceptionHandler(context);
                    sExceptionHandler.setStatisticsExceptionHandler();
                }
            } catch (Exception e) {
                LogUtil.e(TAG, new Supplier() {
                    @Override
                    public Object get() {
                        return e.getMessage();
                    }
                });
            }
        }
    }

    public static void onDebug(final Context context, final boolean z) {
        try {
            LogUtil.setDebug(z);
            LogUtil.d(TAG, new Supplier() { // from class: com.oplus.statistics.OplusTrack$$ExternalSyntheticLambda7
                @Override // com.oplus.statistics.util.Supplier
                public final Object get() {
                    return OplusTrack.lambda$onDebug$22(context, z);
                }
            });
            if (LogUtil.isDebug()) {
                WorkThread.execute(new Runnable() { // from class: com.oplus.statistics.OplusTrack.12
                    @Override // java.lang.Runnable
                    public void run() {
                        DebugAgent.setDebug(context, z);
                    }
                });
            }
        } catch (Exception e) {
            LogUtil.e(TAG, new Supplier() {
                    @Override
                    public Object get() {
                        return e.getMessage();
                    }
                });
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ String lambda$onDebug$22(Context context, boolean z) {
        return "packageName:" + context.getPackageName() + ",isDebug:" + z;
    }

    public static void setDebug(final boolean z) {
        try {
            LogUtil.setDebug(z);
            LogUtil.d(TAG, new Supplier() { // from class: com.oplus.statistics.OplusTrack$$ExternalSyntheticLambda6
                @Override // com.oplus.statistics.util.Supplier
                public final Object get() {
                    return OplusTrack.lambda$setDebug$23(z);
                }
            });
        } catch (Exception e) {
            LogUtil.e(TAG, new Supplier() {
                    @Override
                    public Object get() {
                        return e.getMessage();
                    }
                });
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ String lambda$setDebug$23(boolean z) {
        return "onDebug (no context) sdk and dcs isDebug:" + z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ String lambda$setSessionTimeOut$24(int i) {
        return "setSession timeout is " + i;
    }

    public static void setSessionTimeOut(Context context, final int i) {
        LogUtil.d(TAG, new Supplier() { // from class: com.oplus.statistics.OplusTrack$$ExternalSyntheticLambda10
            @Override // com.oplus.statistics.util.Supplier
            public final Object get() {
                return OplusTrack.lambda$setSessionTimeOut$24(i);
            }
        });
        if (i > 0) {
            try {
                PreferenceHandler.setSessionTimeout(context, i);
            } catch (Exception e) {
                LogUtil.e(TAG, new Supplier() {
                    @Override
                    public Object get() {
                        return e.getMessage();
                    }
                });
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ String lambda$setSsoID$25(String str) {
        return "setSsoid ssoid is " + str;
    }

    public static void setSsoID(Context context, final String str) {
        LogUtil.d(TAG, new Supplier() { // from class: com.oplus.statistics.OplusTrack$$ExternalSyntheticLambda11
            @Override // com.oplus.statistics.util.Supplier
            public final Object get() {
                return OplusTrack.lambda$setSsoID$25(str);
            }
        });
        try {
            PreferenceHandler.setSsoID(context, (TextUtils.isEmpty(str) || str.equals("null")) ? "0" : "0");
        } catch (Exception e) {
            LogUtil.e(TAG, new Supplier() {
                    @Override
                    public Object get() {
                        return e.getMessage();
                    }
                });
        }
    }

    public static void removeSsoID(Context context) {
        try {
            LogUtil.d(TAG, new Supplier() { // from class: com.oplus.statistics.OplusTrack$$ExternalSyntheticLambda26
                @Override // com.oplus.statistics.util.Supplier
                public final Object get() {
                    return OplusTrack.lambda$removeSsoID$26();
                }
            });
            PreferenceHandler.setSsoID(context);
        } catch (Exception e) {
            LogUtil.e(TAG, new Supplier() {
                    @Override
                    public Object get() {
                        return e.getMessage();
                    }
                });
        }
    }

    private static boolean formatCheck(String str, String str2, int i) {
        if (str == null) {
            LogUtil.e(TAG, new Supplier() { // from class: com.oplus.statistics.OplusTrack$$ExternalSyntheticLambda17
                @Override // com.oplus.statistics.util.Supplier
                public final Object get() {
                    return OplusTrack.lambda$formatCheck$27();
                }
            });
            return false;
        } else if (!EVENTID_PATTERN.matcher(str).find()) {
            LogUtil.e(TAG, new Supplier() { // from class: com.oplus.statistics.OplusTrack$$ExternalSyntheticLambda18
                @Override // com.oplus.statistics.util.Supplier
                public final Object get() {
                    return OplusTrack.lambda$formatCheck$28();
                }
            });
            return false;
        } else if (str2 == null) {
            LogUtil.e(TAG, new Supplier() { // from class: com.oplus.statistics.OplusTrack$$ExternalSyntheticLambda19
                @Override // com.oplus.statistics.util.Supplier
                public final Object get() {
                    return OplusTrack.lambda$formatCheck$29();
                }
            });
            return false;
        } else if (i > MAX_EVENT_COUNT || i < 1) {
            LogUtil.e(TAG, new Supplier() { // from class: com.oplus.statistics.OplusTrack$$ExternalSyntheticLambda20
                @Override // com.oplus.statistics.util.Supplier
                public final Object get() {
                    return OplusTrack.lambda$formatCheck$30();
                }
            });
            return false;
        } else {
            return true;
        }
    }
}

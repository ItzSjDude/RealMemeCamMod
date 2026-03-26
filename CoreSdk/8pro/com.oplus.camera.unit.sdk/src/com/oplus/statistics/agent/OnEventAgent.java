package com.oplus.statistics.agent;

import android.content.Context;
import android.text.TextUtils;
import com.oplus.ocs.camera.common.statistics.StatisticConstant;
import com.oplus.statistics.data.AppLogBean;
import com.oplus.statistics.data.DynamicEventBean;
import com.oplus.statistics.data.StaticEventBean;
import com.oplus.statistics.record.ProxyRecorder;
import com.oplus.statistics.storage.PreferenceHandler;
import com.oplus.statistics.util.LogUtil;
import com.oplus.statistics.util.TimeInfoUtil;
import java.util.Map;
import org.json.JSONObject;

public class OnEventAgent {
    private static final String TAG = "OnEventAgent";

    public static void onEvent(Context context, String eventID, String eventTag, int eventCount, long duration) {
        recordEvent(context, eventID, eventTag, eventCount, TimeInfoUtil.getFormatTime(), duration);
    }

    public static void onEventStart(Context context, String eventID, String eventTag) {
        PreferenceHandler.setEventStart(context, eventID, eventTag, TimeInfoUtil.getCurrentTime());
    }

    public static void onEventEnd(Context context, String eventID, String eventTag) {
        recordEventEnd(context, eventID, eventTag, TimeInfoUtil.getCurrentTime());
    }

    public static void onKVEvent(Context context, String eventID, Map<String, String> logMap, long duration) {
        recordKVEvent(context, eventID, logMap, TimeInfoUtil.getFormatTime(), duration);
    }

    public static void onDynamicEvent(Context context, int uploadMode, int statId, Map<String, String> eventMap,
            Map<String, String> logMap) {
        recordDynamicEvent(context, uploadMode, statId, TimeInfoUtil.getFormatTime(), eventMap, logMap);
    }

    public static void onStaticEvent(Context context, int uploadMode, int statId, String setId, String setValue,
            String remark, Map<String, String> logMap) {
        recordStaticLog(context, uploadMode, statId, TimeInfoUtil.getFormatTime(), setId, setValue, remark, logMap);
    }

    public static void onKVEventStart(Context context, String eventID, Map<String, String> logMap, String eventTag) {
        long currentTime = TimeInfoUtil.getCurrentTime();
        PreferenceHandler.setKVEventStart(eventID,
                getKVEventObject(eventID, logMap, TimeInfoUtil.getFormatTime(currentTime), currentTime).toString(),
                eventTag);
    }

    public static void onKVEventEnd(Context context, String eventID, String eventTag) {
        recordKVEventEnd(context, eventID, eventTag, TimeInfoUtil.getCurrentTime());
    }

    public static void recordEvent(Context context, String eventID, String eventTag, int eventCount, String eventTime,
            long duration) {
        recordAppLog(context, "event", getEventObject(eventID, eventTag, eventCount, eventTime, duration));
    }

    public static void recordEventEnd(Context context, String eventID, String eventTag, long endTime) {
        try {
            long eventStart = PreferenceHandler.getEventStart(context, eventID, eventTag);
            String formatTime = TimeInfoUtil.getFormatTime(eventStart);
            long duration = endTime - eventStart;
            if (duration <= TimeInfoUtil.MILLISECOND_OF_A_WEEK && duration >= 0) {
                recordAppLog(context, "event", getEventObject(eventID, eventTag, 1, formatTime, duration));
                PreferenceHandler.setEventStart(context, eventID, eventTag, 0L);
                return;
            }
            PreferenceHandler.setEventStart(context, eventID, eventTag, 0L);
        } catch (Exception e) {
            LogUtil.e(TAG, () -> e.toString());
        }
    }

    public static void recordKVEvent(Context context, String eventID, Map<String, String> logMap, String eventTime,
            long duration) {
        recordAppLog(context, "ekv", getKVEventObject(eventID, logMap, eventTime, duration));
    }

    public static void recordKVEventEnd(Context context, String eventID, String eventTag, long endTime) {
        try {
            String kVEventStart = PreferenceHandler.getKVEventStart(context, eventID, eventTag);
            if (TextUtils.isEmpty(kVEventStart)) {
                return;
            }
            JSONObject eventJson = new JSONObject(kVEventStart);
            long duration = endTime - eventJson.getLong(StatisticConstant.KEY_DURATION);
            if (duration > TimeInfoUtil.MILLISECOND_OF_A_WEEK || duration < 0) {
                PreferenceHandler.setKVEventStart(eventID, "", eventTag);
                return;
            }
            eventJson.put(StatisticConstant.KEY_DURATION, duration);
            recordAppLog(context, "ekv", eventJson);
            PreferenceHandler.setKVEventStart(eventID, "", eventTag);
        } catch (Exception e) {
            LogUtil.e(TAG, () -> e.toString());
        }
    }

    private static void recordAppLog(Context context, String logTag, JSONObject eventJson) {
        ProxyRecorder.getInstance().addTrackEvent(context, new AppLogBean(context, logTag, eventJson.toString()));
    }

    public static void recordDynamicEvent(Context context, int uploadMode, int statId, String clientTime,
            Map<String, String> eventMap, Map<String, String> logMap) {
        recordDynamicEventLog(context, uploadMode, getDynamicEventObject(statId, clientTime, eventMap, logMap));
    }

    public static void recordStaticLog(Context context, int uploadMode, int statId, String clientTime, String setId,
            String setValue, String remark, Map<String, String> logMap) {
        recordStaticEventLog(context, uploadMode,
                getStaticLogObject(statId, clientTime, setId, setValue, remark, logMap));
    }

    private static void recordDynamicEventLog(Context context, int uploadMode, JSONObject eventJson) {
        ProxyRecorder.getInstance().addTrackEvent(context,
                new DynamicEventBean(context, uploadMode, eventJson.toString()));
    }

    private static void recordStaticEventLog(Context context, int uploadMode, JSONObject eventJson) {
        ProxyRecorder.getInstance().addTrackEvent(context,
                new StaticEventBean(context, uploadMode, eventJson.toString()));
    }

    public static JSONObject getEventObject(String eventID, String eventTag, int eventCount, String eventTime,
            long duration) {
        JSONObject eventJson = new JSONObject();
        try {
            eventJson.put("eventID", eventID);
            eventJson.put("eventCount", eventCount);
            eventJson.put("eventTime", eventTime);
            if (!TextUtils.isEmpty(eventTag)) {
                eventJson.put("eventTag", eventTag);
            }
            if (duration != 0) {
                eventJson.put(StatisticConstant.KEY_DURATION, duration);
            }
        } catch (Exception e) {
            LogUtil.e(TAG, () -> e.toString());
        }
        return eventJson;
    }

    public static JSONObject getKVEventObject(String eventID, Map<String, String> logMap, String eventTime,
            long duration) {
        JSONObject eventJson = new JSONObject();
        try {
            eventJson.put("eventID", eventID);
            eventJson.put("eventTime", eventTime);
            if (duration > 0) {
                eventJson.put(StatisticConstant.KEY_DURATION, duration);
            }
            if (logMap != null && logMap.size() > 0) {
                for (String key : logMap.keySet()) {
                    eventJson.put(key, logMap.get(key));
                }
            }
        } catch (Exception e) {
            LogUtil.e(TAG, () -> e.toString());
        }
        return eventJson;
    }

    public static JSONObject getDynamicEventObject(int statId, String clientTime, Map<String, String> eventMap,
            Map<String, String> logMap) {
        JSONObject eventJson = new JSONObject();
        try {
            eventJson.put("statID", statId);
            eventJson.put("clientTime", clientTime);
            getDynamicInfo(eventJson, eventMap);
            getKVEventInfo(eventJson, logMap);
        } catch (Exception e) {
            LogUtil.e(TAG, () -> e.toString());
        }
        return eventJson;
    }

    public static JSONObject getStaticLogObject(int statId, String clientTime, String setId, String setValue,
            String remark, Map<String, String> logMap) {
        JSONObject eventJson = new JSONObject();
        try {
            eventJson.put("statID", statId);
            eventJson.put("clientTime", clientTime);
            eventJson.put("setID", setId);
            eventJson.put("setValue", setValue);
            if (!TextUtils.isEmpty(remark)) {
                eventJson.put("remark", remark);
            }
            getKVEventInfo(eventJson, logMap);
        } catch (Exception e) {
            LogUtil.e(TAG, () -> e.toString());
        }
        return eventJson;
    }

    private static void getKVEventInfo(JSONObject eventJson, Map<String, String> logMap) {
        if (logMap == null || logMap.size() == 0) {
            return;
        }
        JSONObject innerJson = new JSONObject();
        try {
            for (String key : logMap.keySet()) {
                innerJson.put(key, logMap.get(key));
            }
            String infoStr = innerJson.toString().replaceAll("\"", "");
            eventJson.put("eventInfo", infoStr.substring(1, infoStr.length() - 1));
        } catch (Exception e) {
            LogUtil.e(TAG, () -> e.toString());
        }
    }

    private static void getDynamicInfo(JSONObject eventJson, Map<String, String> eventMap) {
        if (eventMap == null || eventMap.size() == 0) {
            return;
        }
        try {
            for (String key : eventMap.keySet()) {
                eventJson.put(key, eventMap.get(key));
            }
        } catch (Exception e) {
            LogUtil.e(TAG, () -> e.toString());
        }
    }
}

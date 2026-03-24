package oplus.util;

import android.content.Context;
import java.util.List;
import java.util.Map;

/* loaded from: classes5.dex */
public interface IOplusStatisticsExt {
    default void onCommon(Context context, String logTag, String eventId, Map<String, String> logMap, boolean uploadNow) {
    }

    default void onCommon(Context context, String appIdStr, String logTag, String eventId, Map<String, String> logMap, boolean uploadNow) {
    }

    default void onCommon(Context context, int appId, String logTag, String eventId, Map<String, String> logMap, boolean uploadNow) {
    }

    default void onCommon(Context context, String logTag, String eventId, List<Map<String, String>> mapList, boolean uploadNow) {
    }

    default void onCommon(Context context, String appIdStr, String logTag, String eventId, List<Map<String, String>> mapList, boolean uploadNow) {
    }

    default void onCommon(Context context, int appId, String logTag, String eventId, List<Map<String, String>> mapList, boolean uploadNow) {
    }

    default void onCommon(Context context, String logTag, String eventId, Map<String, String> logMap, boolean uploadNow, int flagSendTo) {
    }

    default void onCommonSync(Context context, String logTag, String eventId, Map<String, String> logMap, boolean upLoadNow) {
    }
}

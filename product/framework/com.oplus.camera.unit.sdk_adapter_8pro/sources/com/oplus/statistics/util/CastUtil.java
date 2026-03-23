package com.oplus.statistics.util;

import java.util.Map;
import org.json.JSONObject;
/* loaded from: classes.dex */
public class CastUtil {
    private static final String TAG = "CastUtil";

    public static JSONObject map2JsonObject(Map<String, String> map) {
        JSONObject jSONObject = new JSONObject();
        if (map != null && !map.isEmpty()) {
            try {
                for (String str : map.keySet()) {
                    jSONObject.put(str, map.get(str));
                }
            } catch (Exception e) {
                LogUtil.e(TAG, new Supplier() { // from class: com.oplus.statistics.util.CastUtil$$ExternalSyntheticLambda0
                    @Override // com.oplus.statistics.util.Supplier
                    public final Object get() {
                        return e.toString();
                    }
                });
            }
        }
        return jSONObject;
    }
}

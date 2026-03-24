package com.oplus.statistics.util;

import com.android.tools.r8.annotations.SynthesizedClassMap;
import java.util.Map;
import org.json.JSONObject;
@SynthesizedClassMap({$$Lambda$_72Yv9SLtr5HefYoZLqe3y7AOoE.class})
/* loaded from: classes.dex */
public class CastUtil {
    private static final String TAG = "CastUtil";

    public static JSONObject map2JsonObject(Map<String, String> map) {
        JSONObject jSONObject = new JSONObject();
        if (map == null || map.isEmpty()) {
            return jSONObject;
        }
        try {
            for (String str : map.keySet()) {
                jSONObject.put(str, map.get(str));
            }
        } catch (Exception e) {
            e.getClass();
            LogUtil.e(TAG, new $$Lambda$_72Yv9SLtr5HefYoZLqe3y7AOoE(e));
        }
        return jSONObject;
    }
}

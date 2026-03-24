package com.oplus.ocs.camera.producer.feature;

import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class FeatureFactory {
    private static final String TAG = "FeatureFactory";
    private static Map<String, Map<String, Map<String, FeatureInterface>>> sAllModeFeatures;
    private static Map<String, String> sSubFeatureToFeature = new HashMap();
    private static boolean sbHasInit = false;

    public static Map<String, Map<String, FeatureInterface>> getCameraTypeFeatures(String str) {
        Map<String, Map<String, FeatureInterface>> map = sAllModeFeatures.get(str);
        if (map == null) {
            return null;
        }
        HashMap map2 = new HashMap();
        for (Map.Entry<String, Map<String, FeatureInterface>> entry : map.entrySet()) {
            HashMap map3 = new HashMap();
            if (entry.getValue() != null) {
                map3.putAll(entry.getValue());
                map2.put(entry.getKey(), map3);
            }
        }
        return map2;
    }

    public static Map<String, FeatureInterface> getFeatures(String str, String str2) {
        Map<String, Map<String, FeatureInterface>> cameraTypeFeatures = getCameraTypeFeatures(str);
        if (cameraTypeFeatures == null) {
            return null;
        }
        return cameraTypeFeatures.get(str2);
    }

    public static void initAllModeFeatures(Map<String, Map<String, Map<String, FeatureInterface>>> map) {
        if (sbHasInit) {
            return;
        }
        sAllModeFeatures = map;
        sbHasInit = true;
    }

    static Map<String, String> getSubFeatureToFeature() {
        return sSubFeatureToFeature;
    }

    static void addSubFeatureToFeatureMap(String str, String str2) {
        sSubFeatureToFeature.put(str, str2);
    }

    public static Map<String, Map<String, Map<String, FeatureInterface>>> getAllModeFeatures() {
        return sAllModeFeatures;
    }

    public static String getFeatureNameByKeyName(String str) {
        return getSubFeatureToFeature().containsKey(str) ? getSubFeatureToFeature().get(str) : str;
    }
}

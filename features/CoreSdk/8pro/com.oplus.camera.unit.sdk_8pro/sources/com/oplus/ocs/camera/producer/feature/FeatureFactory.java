package com.oplus.ocs.camera.producer.feature;

import java.util.HashMap;
import java.util.Map;
/* loaded from: classes.dex */
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
        HashMap hashMap = new HashMap();
        for (Map.Entry<String, Map<String, FeatureInterface>> entry : map.entrySet()) {
            HashMap hashMap2 = new HashMap();
            if (entry.getValue() != null) {
                hashMap2.putAll(entry.getValue());
                hashMap.put(entry.getKey(), hashMap2);
            }
        }
        return hashMap;
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

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Map<String, String> getSubFeatureToFeature() {
        return sSubFeatureToFeature;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void addSubFeatureToFeatureMap(String str, String str2) {
        sSubFeatureToFeature.put(str, str2);
    }

    public static Map<String, Map<String, Map<String, FeatureInterface>>> getAllModeFeatures() {
        return sAllModeFeatures;
    }

    public static String getFeatureNameByKeyName(String str) {
        return getSubFeatureToFeature().containsKey(str) ? getSubFeatureToFeature().get(str) : str;
    }
}

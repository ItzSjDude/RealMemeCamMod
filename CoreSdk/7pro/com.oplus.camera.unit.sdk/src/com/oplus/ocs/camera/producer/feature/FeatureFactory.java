package com.oplus.ocs.camera.producer.feature;

import com.oplus.ocs.camera.common.util.CameraUnitLog;
import com.oplus.ocs.camera.producer.info.CameraConfigHelper;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
/* loaded from: classes.dex */
public class FeatureFactory {
    private static final String TAG = "FeatureFactory";
    private static Map<String, Map<String, Map<String, FeatureImpl>>> sAllModeFeatures = new HashMap();
    private static Map<String, String> sSubFeatureToFeature = new HashMap();
    private static boolean sbHasInit = false;

    public static Map<String, Map<String, FeatureInterface>> getCameraTypeFeatures(String str) {
        Map<String, Map<String, FeatureImpl>> map = sAllModeFeatures.get(str);
        if (map == null) {
            return null;
        }
        HashMap hashMap = new HashMap();
        for (Map.Entry<String, Map<String, FeatureImpl>> entry : map.entrySet()) {
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

    public static void initAllModeFeatures() {
        if (sbHasInit) {
            return;
        }
        CameraUnitLog.i(TAG, "initAllModeFeatures");
        sAllModeFeatures.clear();
        Map<String, Map<String, LinkedHashMap<String, List<String>>>> modeCameraTypeFeatureTableMap = CameraConfigHelper.getModeCameraTypeFeatureTableMap();
        Map<String, Map<String, Map<String, String>>> featureOperationMode = CameraConfigHelper.getFeatureOperationMode();
        for (Map.Entry<String, Map<String, LinkedHashMap<String, List<String>>>> entry : modeCameraTypeFeatureTableMap.entrySet()) {
            String key = entry.getKey();
            Map<String, Map<String, String>> map = featureOperationMode.get(key);
            HashMap hashMap = new HashMap();
            for (Map.Entry<String, LinkedHashMap<String, List<String>>> entry2 : entry.getValue().entrySet()) {
                String key2 = entry2.getKey();
                Map<String, FeatureImpl> featureMap = getFeatureMap(key, key2);
                configFeatureImpl(featureMap, entry2.getValue(), map);
                hashMap.put(key2, featureMap);
            }
            for (Map.Entry<String, List<String>> entry3 : CameraConfigHelper.getSupportCameraMode().entrySet()) {
                String key3 = entry3.getKey();
                if (!hashMap.containsKey(key3) && entry3.getValue().contains(key)) {
                    hashMap.put(key3, null);
                }
            }
            sAllModeFeatures.put(key, hashMap);
        }
        CameraUnitLog.i(TAG, "initAllModeFeatures X");
        sbHasInit = true;
    }

    private static Map<String, FeatureImpl> getFeatureMap(String str, String str2) {
        if (sAllModeFeatures.get(str) != null && sAllModeFeatures.get(str).get(str2) != null) {
            return sAllModeFeatures.get(str).get(str2);
        }
        return new HashMap();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Map<String, String> getSubFeatureToFeature() {
        return sSubFeatureToFeature;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void addSubFeatureToFeatureMap(String str, String str2) {
        sSubFeatureToFeature.put(str, str2);
    }

    public static String getFeatureNameByMappingName(String str) {
        return getSubFeatureToFeature().containsKey(str) ? getSubFeatureToFeature().get(str) : str;
    }

    private static void configFeatureImpl(Map<String, FeatureImpl> map, LinkedHashMap<String, List<String>> linkedHashMap, Map<String, Map<String, String>> map2) {
        Set<String> keySet = linkedHashMap.keySet();
        for (Map.Entry<String, List<String>> entry : linkedHashMap.entrySet()) {
            List<String> value = entry.getValue();
            String[] split = entry.getKey().split(FeatureImpl.DELIMITER, 2);
            String str = split[0];
            String str2 = split[1];
            FeatureImpl featureImpl = map.get(str);
            if (featureImpl == null) {
                featureImpl = new FeatureImpl();
                featureImpl.initFeatureName(str);
                if (map2 != null) {
                    featureImpl.initOperationMode(map2.get(str));
                }
            }
            featureImpl.configFeature(str2, keySet, value);
            map.put(str, featureImpl);
        }
    }

    private static void printAllModeFeature() {
        for (Map.Entry<String, Map<String, Map<String, FeatureImpl>>> entry : sAllModeFeatures.entrySet()) {
            String key = entry.getKey();
            for (Map.Entry<String, Map<String, FeatureImpl>> entry2 : entry.getValue().entrySet()) {
                String key2 = entry2.getKey();
                for (Map.Entry<String, FeatureImpl> entry3 : entry2.getValue().entrySet()) {
                    String key3 = entry3.getKey();
                    FeatureImpl value = entry3.getValue();
                    if (value != null) {
                        CameraUnitLog.d(TAG, "printAllModeFeatures, modeName: " + key + ", cameraType: " + key2 + ", featureName: " + key3 + "\n--FeatureImp info: " + value.print());
                    } else {
                        CameraUnitLog.d(TAG, "printAllModeFeatures, modeName: " + key + ", cameraType: " + key2 + ", featureName: " + key3 + "\n--FeatureImp info: " + ((Object) null));
                    }
                }
            }
        }
        for (Map.Entry<String, String> entry4 : sSubFeatureToFeature.entrySet()) {
            CameraUnitLog.d(TAG, "printAllModeFeatures, subFeatureName: " + entry4.getKey() + ", featureName: " + entry4.getValue());
        }
    }
}

package com.oplus.ocs.camera.producer.feature;

import com.oplus.ocs.camera.common.parameter.Parameter;
import com.oplus.ocs.camera.common.parameter.SdkCameraDeviceConfig;
import com.oplus.ocs.camera.common.util.CameraUnitLog;
import com.oplus.ocs.camera.producer.info.CameraConfigHelper;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
/* loaded from: classes.dex */
public class FeatureImpl implements FeatureInterface {
    private static final int CONFLICT = 1;
    public static final String DELIMITER = "/";
    private static final String TAG = "FeatureImpl";
    private static final String VALUE_DELIMITER = ",";
    private static final String VALUE_RANGE = "-";
    private static final String VALUE_RANGE_END = "]";
    private static final String VALUE_RANGE_START = "[";
    private String mFeatureName = "";
    private List<String> mSupportValues = new ArrayList();
    private Map<String, String> mFeatureOperationModes = new HashMap();
    private Map<String, FeatureImpl> mSubFeatures = new HashMap();
    private boolean mbSupportRange = false;
    private Map<String, Map<String, List<String>>> mConflictFeatureValues = new HashMap();

    public void initFeatureName(String str) {
        this.mFeatureName = str;
    }

    private void addSupportValue(String str) {
        this.mSupportValues.add(str.replaceAll(" ", ""));
    }

    private void setsupportRange(boolean z) {
        this.mbSupportRange = z;
    }

    private void parseSupportValueRange(String str) {
        String str2;
        if (str.contains(VALUE_RANGE_START)) {
            String charSequence = str.subSequence(1, str.length() - 1).toString();
            if (charSequence.contains(VALUE_RANGE)) {
                str2 = VALUE_RANGE;
                setsupportRange(true);
            } else {
                str2 = ",";
            }
            for (String str3 : charSequence.split(str2)) {
                addSupportValue(str3);
            }
            return;
        }
        addSupportValue(str);
    }

    public void initOperationMode(Map<String, String> map) {
        if (map != null) {
            this.mFeatureOperationModes = map;
        }
    }

    private FeatureImpl getSubFeature(String str) {
        return this.mSubFeatures.get(str);
    }

    private void addSubFeature(String str, FeatureImpl featureImpl) {
        this.mSubFeatures.put(str, featureImpl);
    }

    private void configSubFeature(String str, String str2) {
        FeatureImpl subFeature = getSubFeature(str);
        if (subFeature == null) {
            subFeature = new FeatureImpl();
            subFeature.initFeatureName(str);
        }
        subFeature.parseSupportValueRange(str2);
        addSubFeature(str, subFeature);
    }

    public void configFeature(String str, Set<String> set, List<String> list) {
        if (str.contains(DELIMITER)) {
            String[] split = str.split(DELIMITER, 2);
            String str2 = split[0];
            String str3 = split[1];
            addSupportValue(str2);
            configSubFeature(str2, str3);
            addFeatureTable(str2, set, list);
            FeatureFactory.addSubFeatureToFeatureMap(str2, this.mFeatureName);
        } else if (str.contains(VALUE_RANGE_START)) {
            parseSupportValueRange(str);
            addFeatureTable(this.mFeatureName, set, list);
        } else {
            addSupportValue(str);
            addFeatureTable(str, set, list);
        }
    }

    private void addFeatureTable(String str, Set<String> set, List<String> list) {
        Map<String, List<String>> hashMap = new HashMap<>();
        int i = 0;
        for (String str2 : set) {
            String[] split = str2.split(DELIMITER);
            String str3 = split[0];
            String str4 = split[1];
            int i2 = i + 1;
            if (Integer.toString(1).equals(list.get(i)) && !str3.equals(this.mFeatureName)) {
                ArrayList arrayList = new ArrayList();
                if (hashMap.get(str3) != null) {
                    arrayList.addAll(hashMap.get(str3));
                }
                if (!str4.contains(VALUE_RANGE_START)) {
                    arrayList.add(str4);
                }
                hashMap.put(str3, arrayList);
            }
            i = i2;
        }
        if (hashMap.isEmpty()) {
            return;
        }
        this.mConflictFeatureValues.put(str, hashMap);
    }

    @Override // com.oplus.ocs.camera.producer.feature.FeatureInterface
    public Map<String, Map<String, List<String>>> getConflictFeatureValues() {
        return this.mConflictFeatureValues;
    }

    @Override // com.oplus.ocs.camera.producer.feature.FeatureInterface
    public <T> String getOperationMode(T t) {
        if (this.mFeatureOperationModes.containsKey(String.valueOf(t))) {
            return this.mFeatureOperationModes.get(String.valueOf(t));
        }
        return null;
    }

    @Override // com.oplus.ocs.camera.producer.feature.FeatureInterface
    public List<String> getSupportValues() {
        return this.mSupportValues;
    }

    @Override // com.oplus.ocs.camera.producer.feature.FeatureInterface
    public <T> boolean isFeatureConflictLegal(SdkCameraDeviceConfig sdkCameraDeviceConfig, String str, T t) {
        if (!isMultiFeature() || getSubFeature(str) == null) {
            if (sdkCameraDeviceConfig == null) {
                CameraUnitLog.e(TAG, "isFeatureConflictLegal, config is null, need check the reason, so return false");
                return true;
            } else if (this.mConflictFeatureValues == null) {
                CameraUnitLog.e(TAG, "isFeatureConflictLegal, cameraTypeConflictValues is null");
                return true;
            } else {
                List<Parameter.Key<?>> customKeys = sdkCameraDeviceConfig.getConfigureParameter().getCustomKeys();
                if (customKeys.isEmpty()) {
                    return true;
                }
                String valueOf = String.valueOf(t);
                Map<String, List<String>> map = this.mConflictFeatureValues.get(valueOf) != null ? this.mConflictFeatureValues.get(valueOf) : this.mConflictFeatureValues.get(this.mFeatureName);
                if (map == null) {
                    CameraUnitLog.d(TAG, "isFeatureConflictLegal, currentFeature don`t has conflict, featureName: " + this.mFeatureName);
                    return true;
                }
                int size = customKeys.size();
                for (int i = 0; i < size; i++) {
                    String featureMappingNameByParameterName = CameraConfigHelper.getFeatureMappingNameByParameterName(customKeys.get(i).getName());
                    String valueOf2 = String.valueOf(sdkCameraDeviceConfig.getConfigureParameter().get(customKeys.get(i)));
                    if (!isMultiFeature() && this.mFeatureName.equals(featureMappingNameByParameterName) && !valueOf.equals(valueOf2)) {
                        CameraUnitLog.e(TAG, String.format(Locale.ENGLISH, "isFeatureConflictLegal, can't set two different values for a same main feature, configMappingName: %s, has already set value: %s, another value: %s", featureMappingNameByParameterName, valueOf, valueOf2));
                        return false;
                    } else if (isFeatureValueConflict(map, featureMappingNameByParameterName, valueOf2)) {
                        CameraUnitLog.e(TAG, String.format(Locale.ENGLISH, "isFeatureConflictLegal, isArrayConflict, found the value is conflict, configMappingName: %s, configFeatureValue: %s, valueConflict: %s", featureMappingNameByParameterName, valueOf2, map));
                        return false;
                    }
                }
                return true;
            }
        }
        return isFeatureConflictLegal(sdkCameraDeviceConfig, this.mFeatureName, str);
    }

    private boolean isFeatureValueConflict(Map<String, List<String>> map, String str, String str2) {
        if (FeatureFactory.getSubFeatureToFeature().containsKey(str)) {
            String str3 = FeatureFactory.getSubFeatureToFeature().get(str);
            return map.containsKey(str3) && map.get(str3).contains(str);
        } else if (map.containsKey(str)) {
            return map.get(str).isEmpty() || map.get(str).contains(str2);
        } else {
            return false;
        }
    }

    private boolean isMultiFeature() {
        return !this.mSubFeatures.isEmpty();
    }

    @Override // com.oplus.ocs.camera.producer.feature.FeatureInterface
    public <T> boolean isFeatureValueLegal(String str, T t) {
        boolean isFeatureValueLegal;
        if (str.equals(this.mFeatureName) && !this.mSupportValues.isEmpty()) {
            isFeatureValueLegal = isValueLegal(t);
        } else {
            isFeatureValueLegal = (!isMultiFeature() || getSubFeature(str) == null) ? false : getSubFeature(str).isFeatureValueLegal(str, t);
        }
        CameraUnitLog.d(TAG, "isFeatureValueLegal, featureName: " + str + ", checkValue: " + t + ", isLegal: " + isFeatureValueLegal);
        return isFeatureValueLegal;
    }

    private <T> boolean isValueLegal(T t) {
        if (this.mbSupportRange) {
            if (t instanceof Integer) {
                int parseInt = Integer.parseInt(getSupportValues().get(0));
                int parseInt2 = Integer.parseInt(getSupportValues().get(1));
                int intValue = ((Integer) t).intValue();
                return intValue >= parseInt && intValue <= parseInt2;
            } else if (t instanceof Float) {
                float parseFloat = Float.parseFloat(getSupportValues().get(0));
                float parseFloat2 = Float.parseFloat(getSupportValues().get(1));
                float floatValue = ((Float) t).floatValue();
                return Float.compare(floatValue, parseFloat) >= 0 && Float.compare(floatValue, parseFloat2) <= 0;
            } else {
                CameraUnitLog.e(TAG, "isValueLegal, value's type is not support now, you can add support if need it");
                return false;
            }
        }
        return getSupportValues().contains(String.valueOf(t));
    }

    public String print() {
        return dumpOperationModes() + dumpSupportFeatures() + dumpConflictFeatureValues();
    }

    private String dumpOperationModes() {
        StringBuilder sb = new StringBuilder();
        boolean z = false;
        for (String str : this.mFeatureOperationModes.keySet()) {
            sb.append("operation mode name: " + str);
            sb.append(": ");
            sb.append(this.mFeatureOperationModes.get(str));
            sb.append("\n");
            z = true;
        }
        return z ? sb.toString() : "this feature don't have configure operation mode\n";
    }

    private String dumpSupportFeatures() {
        StringBuilder sb = new StringBuilder();
        sb.append("feature name: " + this.mFeatureName);
        sb.append("  support values: " + this.mSupportValues);
        sb.append("\n");
        for (String str : this.mSubFeatures.keySet()) {
            sb.append(this.mSubFeatures.get(str).dumpSupportFeatures());
        }
        return sb.toString();
    }

    private String dumpConflictFeatureValues() {
        StringBuilder sb = new StringBuilder();
        sb.append("feature name: " + this.mFeatureName);
        sb.append("  features' support values with other feature conflict: " + this.mConflictFeatureValues);
        for (String str : this.mSubFeatures.keySet()) {
            sb.append(this.mSubFeatures.get(str).dumpConflictFeatureValues());
        }
        return sb.toString();
    }
}

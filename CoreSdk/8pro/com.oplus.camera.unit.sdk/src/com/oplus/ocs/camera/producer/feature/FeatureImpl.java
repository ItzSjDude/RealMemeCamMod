package com.oplus.ocs.camera.producer.feature;

import com.oplus.ocs.camera.common.parameter.Parameter;
import com.oplus.ocs.camera.common.parameter.SdkCameraDeviceConfig;
import com.oplus.ocs.camera.common.util.CameraUnitLog;
import com.oplus.ocs.camera.producer.info.CameraConfigHelper;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
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
    private int mCategoryIndex = 0;
    private String mValueType = null;

    public void initFeatureName(String str) {
        this.mFeatureName = str;
        initCategoryAndValueType(str);
    }

    private void initCategoryAndValueType(String str) {
        String[] strArr = CameraConfigHelper.getConfigureParameterMapping().get(str);
        if (strArr == null) {
            CameraUnitLog.i(TAG, "initCategoryAndValueType, do not have matching category featureName: " + str);
            return;
        }
        this.mValueType = strArr[1];
        this.mCategoryIndex = Integer.parseInt(strArr[2]);
    }

    private void addSupportValue(String str) {
        this.mSupportValues.add(str.replaceAll(" ", ""));
    }

    private void setsupportRange(boolean z) {
        this.mbSupportRange = z;
    }

    private void parseSupportValueRange(String str) {
        if (str.contains(VALUE_RANGE_START)) {
            String string = str.subSequence(1, str.length() - 1).toString();
            String str2 = VALUE_RANGE;
            if (string.contains(VALUE_RANGE)) {
                setsupportRange(true);
            } else {
                str2 = ",";
            }
            for (String str3 : string.split(str2)) {
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
            String[] strArrSplit = str.split(DELIMITER, 2);
            String str2 = strArrSplit[0];
            String str3 = strArrSplit[1];
            String parameterNameByFeatureName = CameraConfigHelper.getParameterNameByFeatureName(str2);
            addSupportValue(parameterNameByFeatureName);
            configSubFeature(parameterNameByFeatureName, str3);
            addFeatureTable(parameterNameByFeatureName, set, list);
            FeatureFactory.addSubFeatureToFeatureMap(parameterNameByFeatureName, this.mFeatureName);
            return;
        }
        if (str.contains(VALUE_RANGE_START)) {
            parseSupportValueRange(str);
            addFeatureTable(this.mFeatureName, set, list);
        } else {
            addSupportValue(str);
            addFeatureTable(str, set, list);
        }
    }

    private void addFeatureTable(String str, Set<String> set, List<String> list) {
        Map<String, List<String>> map = new HashMap<>();
        Iterator<String> it = set.iterator();
        int i = 0;
        while (it.hasNext()) {
            String[] strArrSplit = it.next().split(DELIMITER);
            String parameterNameByFeatureName = CameraConfigHelper.getParameterNameByFeatureName(strArrSplit[0]);
            String str2 = strArrSplit[1];
            if (parameterNameByFeatureName == null) {
                parameterNameByFeatureName = strArrSplit[0];
            }
            int i2 = i + 1;
            if (Integer.toString(1).equals(list.get(i)) && !parameterNameByFeatureName.equals(this.mFeatureName)) {
                ArrayList arrayList = new ArrayList();
                if (map.get(parameterNameByFeatureName) != null) {
                    arrayList.addAll(map.get(parameterNameByFeatureName));
                }
                if (!str2.contains(VALUE_RANGE_START)) {
                    arrayList.add(str2);
                }
                map.put(parameterNameByFeatureName, arrayList);
            }
            i = i2;
        }
        if (map.isEmpty()) {
            return;
        }
        this.mConflictFeatureValues.put(str, map);
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
        if (isMultiFeature() && getSubFeature(str) != null) {
            return isFeatureConflictLegal(sdkCameraDeviceConfig, this.mFeatureName, str);
        }
        if (sdkCameraDeviceConfig == null) {
            CameraUnitLog.e(TAG, "isFeatureConflictLegal, config is null, need check the reason, so return false");
            return true;
        }
        if (this.mConflictFeatureValues == null) {
            CameraUnitLog.e(TAG, "isFeatureConflictLegal, cameraTypeConflictValues is null");
            return true;
        }
        List<Parameter.Key<?>> customKeys = sdkCameraDeviceConfig.getConfigureParameter().getCustomKeys();
        if (customKeys.isEmpty()) {
            return true;
        }
        String strValueOf = String.valueOf(t);
        Map<String, List<String>> map = this.mConflictFeatureValues.get(strValueOf) != null ? this.mConflictFeatureValues.get(strValueOf) : this.mConflictFeatureValues.get(this.mFeatureName);
        if (map == null) {
            CameraUnitLog.d(TAG, "isFeatureConflictLegal, currentFeature don`t has conflict, featureName: " + this.mFeatureName);
            return true;
        }
        int size = customKeys.size();
        for (int i = 0; i < size; i++) {
            String name = customKeys.get(i).getName();
            String strValueOf2 = String.valueOf(sdkCameraDeviceConfig.getConfigureParameter().get(customKeys.get(i)));
            if (!isMultiFeature() && this.mFeatureName.equals(name) && !strValueOf.equals(strValueOf2)) {
                CameraUnitLog.e(TAG, String.format(Locale.ENGLISH, "isFeatureConflictLegal, can't set two different values for a same main feature, customParameterName: %s, has already set value: %s, another value: %s", name, strValueOf, strValueOf2));
            } else if (isFeatureValueConflict(map, name, strValueOf2)) {
                CameraUnitLog.e(TAG, String.format(Locale.ENGLISH, "isFeatureConflictLegal, isArrayConflict, found the value is conflict, customParameterName: %s, configFeatureValue: %s, valueConflict: %s", name, strValueOf2, map));
            }
            return false;
        }
        return true;
    }

    private boolean isFeatureValueConflict(Map<String, List<String>> map, String str, String str2) {
        if (!FeatureFactory.getSubFeatureToFeature().containsKey(str)) {
            return map.containsKey(str) && (map.get(str).isEmpty() || map.get(str).contains(str2));
        }
        String str3 = FeatureFactory.getSubFeatureToFeature().get(str);
        return map.containsKey(str3) && map.get(str3).contains(str);
    }

    public boolean isMultiFeature() {
        return !this.mSubFeatures.isEmpty();
    }

    @Override // com.oplus.ocs.camera.producer.feature.FeatureInterface
    public <T> boolean isFeatureValueLegal(String str, T t) {
        boolean zIsFeatureValueLegal;
        if (str.equals(this.mFeatureName) && !this.mSupportValues.isEmpty()) {
            zIsFeatureValueLegal = isValueLegal(t);
        } else {
            zIsFeatureValueLegal = (!isMultiFeature() || getSubFeature(str) == null) ? false : getSubFeature(str).isFeatureValueLegal(str, t);
        }
        CameraUnitLog.d(TAG, "isFeatureValueLegal, featureName: " + str + ", checkValue: " + t + ", isLegal: " + zIsFeatureValueLegal);
        return zIsFeatureValueLegal;
    }

    /* JADX DEBUG: Multi-variable search result rejected for r4v0, resolved type: T */
    /* JADX WARN: Multi-variable type inference failed */
    private <T> boolean isValueLegal(T t) {
        if (this.mbSupportRange) {
            if (t instanceof Integer) {
                int i = Integer.parseInt(getSupportValues().get(0));
                int i2 = Integer.parseInt(getSupportValues().get(1));
                int iIntValue = ((Integer) t).intValue();
                return iIntValue >= i && iIntValue <= i2;
            }
            if (t instanceof Float) {
                float f = Float.parseFloat(getSupportValues().get(0));
                float f2 = Float.parseFloat(getSupportValues().get(1));
                float fFloatValue = ((Float) t).floatValue();
                return Float.compare(fFloatValue, f) >= 0 && Float.compare(fFloatValue, f2) <= 0;
            }
            CameraUnitLog.e(TAG, "isValueLegal, value's type is not support now, you can add support if need it");
            return false;
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
        Iterator<String> it = this.mSubFeatures.keySet().iterator();
        while (it.hasNext()) {
            sb.append(this.mSubFeatures.get(it.next()).dumpSupportFeatures());
        }
        return sb.toString();
    }

    private String dumpConflictFeatureValues() {
        StringBuilder sb = new StringBuilder();
        sb.append("feature name: " + this.mFeatureName);
        sb.append("  features' support values with other feature conflict: " + this.mConflictFeatureValues);
        Iterator<String> it = this.mSubFeatures.keySet().iterator();
        while (it.hasNext()) {
            sb.append(this.mSubFeatures.get(it.next()).dumpConflictFeatureValues());
        }
        return sb.toString();
    }

    public String getFeatureName() {
        return this.mFeatureName;
    }

    public Map<String, FeatureImpl> getSubFeature() {
        return this.mSubFeatures;
    }

    public boolean isSupportRange() {
        return this.mbSupportRange;
    }

    @Override // com.oplus.ocs.camera.producer.feature.FeatureInterface
    public int getFeatureCategory() {
        return this.mCategoryIndex;
    }

    @Override // com.oplus.ocs.camera.producer.feature.FeatureInterface
    public String getValueType() {
        return this.mValueType;
    }
}

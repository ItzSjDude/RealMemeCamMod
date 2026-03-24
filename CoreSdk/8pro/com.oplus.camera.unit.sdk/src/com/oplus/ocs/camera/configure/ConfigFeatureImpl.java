package com.oplus.ocs.camera.configure;

import com.oplus.ocs.camera.common.parameter.Parameter;
import com.oplus.ocs.camera.common.parameter.SdkCameraDeviceConfig;
import com.oplus.ocs.camera.common.util.CameraUnitLog;
import com.oplus.ocs.camera.producer.feature.FeatureInterface;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class ConfigFeatureImpl<P> extends ProtobufFeatureInfoImpl<P> implements FeatureInterface {
    private static final String TAG = "ConfigFeatureImpl";
    private int mCategoryIndex;
    private final Map<String, String> mFeatureOperationModes;
    private List<String> mSupportValue;
    private String mValueType;

    public ConfigFeatureImpl(String str, String str2, String str3, String str4, String str5, boolean z, CameraFeatureKey<P> cameraFeatureKey) {
        super(str, str2, null, str4, str5, z, cameraFeatureKey);
        this.mFeatureOperationModes = new HashMap();
        this.mSupportValue = null;
        this.mCategoryIndex = 0;
        this.mValueType = null;
        this.mSupportValue = getSupportValueStringList(getValueRange().getValue());
        this.mCategoryIndex = Integer.parseInt(str3);
        this.mValueType = str4;
    }

    @Override // com.oplus.ocs.camera.producer.feature.FeatureInterface
    public <V> String getOperationMode(V v) {
        if (this.mFeatureOperationModes.containsKey(String.valueOf(v))) {
            return this.mFeatureOperationModes.get(String.valueOf(v));
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void setOperationMode(Map<String, String> map) {
        if (map == null || map.isEmpty()) {
            return;
        }
        this.mFeatureOperationModes.clear();
        this.mFeatureOperationModes.putAll(map);
    }

    @Override // com.oplus.ocs.camera.producer.feature.FeatureInterface
    public <V> boolean isFeatureConflictLegal(SdkCameraDeviceConfig sdkCameraDeviceConfig, String str, V v) {
        if (sdkCameraDeviceConfig == null) {
            CameraUnitLog.e(TAG, "isFeatureConflictLegal, config is null, need check the reason, so return false");
            return true;
        }
        List<Parameter.Key<?>> customKeys = sdkCameraDeviceConfig.getConfigureParameter().getCustomKeys();
        if (customKeys.isEmpty()) {
            return true;
        }
        Iterator<Map.Entry<ConflictTargetValue<?>, List<ConflictFeature<?>>>> it = this.mConflictMap.entrySet().iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            Map.Entry<ConflictTargetValue<?>, List<ConflictFeature<?>>> next = it.next();
            if (next.getKey().isTargetValue(v)) {
                for (Parameter.Key<?> key : customKeys) {
                    Object obj = sdkCameraDeviceConfig.getConfigureParameter().get(key);
                    for (ConflictFeature<?> conflictFeature : next.getValue()) {
                        if (key.getName().equals(conflictFeature.getFeatureKey().getName()) && conflictFeature.isTargetValue(obj)) {
                            CameraUnitLog.e(TAG, "isFeatureConflictLegal false: configureKey: " + getFeatureKeyName() + ", configValue: " + v + ", conflictKeyName: " + conflictFeature.getFeatureKey().getName() + ", conflictKeyValue: " + obj);
                            return false;
                        }
                    }
                }
            }
        }
        return true;
    }

    @Override // com.oplus.ocs.camera.producer.feature.FeatureInterface
    public <T> boolean isFeatureValueLegal(String str, T t) {
        return getValueRange().isTargetValue(t);
    }

    @Override // com.oplus.ocs.camera.producer.feature.FeatureInterface
    public List<String> getSupportValues() {
        return this.mSupportValue;
    }

    private List<String> getSupportValueStringList(List<?> list) {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < list.size(); i++) {
            arrayList.add(String.valueOf(list.get(i)));
        }
        return arrayList;
    }

    @Override // com.oplus.ocs.camera.producer.feature.FeatureInterface
    public Map<String, Map<String, List<String>>> getConflictFeatureValues() {
        HashMap map = new HashMap();
        for (Map.Entry<ConflictTargetValue<?>, List<ConflictFeature<?>>> entry : this.mConflictMap.entrySet()) {
            ConflictTargetValue<?> key = entry.getKey();
            List<ConflictFeature<?>> value = entry.getValue();
            HashMap map2 = new HashMap();
            for (ConflictFeature<?> conflictFeature : value) {
                map2.put(conflictFeature.getFeatureKey().getName(), getSupportValueStringList(conflictFeature.getValueRange().getValue()));
            }
            map.put(key.getOriginValue(), map2);
        }
        return map;
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

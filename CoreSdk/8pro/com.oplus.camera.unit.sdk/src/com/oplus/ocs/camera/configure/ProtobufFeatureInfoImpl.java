package com.oplus.ocs.camera.configure;

import androidx.annotation.NonNull;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class ProtobufFeatureInfoImpl<P> implements ProtobufFeatureInfoInterface<P> {
    private static final String TAG = "ProtobufFeatureInfoImpl";
    protected final Map<ConflictTargetValue<?>, List<ConflictFeature<?>>> mConflictMap = new LinkedHashMap();

    @NonNull
    private final Value<P> mDefaultValue;
    private final String mEntryType;
    private final CameraFeatureKey mFeatureKey;
    private final String mFeatureName;
    private final String mFeatureValueClassType;

    @NonNull
    private final Value<P> mValueRange;
    private final boolean mbGroupConflict;

    public ProtobufFeatureInfoImpl(String str, String str2, String str3, String str4, String str5, boolean z, CameraFeatureKey cameraFeatureKey) {
        this.mFeatureName = str;
        this.mFeatureKey = cameraFeatureKey;
        this.mFeatureValueClassType = cameraFeatureKey.getType().getSimpleName();
        this.mbGroupConflict = z;
        this.mEntryType = str5;
        this.mDefaultValue = ValueFactory.getValue(str3, cameraFeatureKey.getType());
        this.mValueRange = ValueFactory.getValue(str2, cameraFeatureKey.getType());
    }

    @Override // com.oplus.ocs.camera.configure.ProtobufFeatureInfoInterface
    public String getFeatureName() {
        return this.mFeatureName;
    }

    @Override // com.oplus.ocs.camera.configure.ProtobufFeatureInfoInterface
    @NonNull
    public Value<P> getDefaultValue() {
        return this.mDefaultValue;
    }

    @Override // com.oplus.ocs.camera.configure.ProtobufFeatureInfoInterface
    public String getFeatureKeyName() {
        return this.mFeatureKey.getName();
    }

    @Override // com.oplus.ocs.camera.configure.ProtobufFeatureInfoInterface
    public String getFeatureValueClassType() {
        return this.mFeatureValueClassType;
    }

    @Override // com.oplus.ocs.camera.configure.ProtobufFeatureInfoInterface
    public CameraFeatureKey getFeatureKey() {
        return this.mFeatureKey;
    }

    @Override // com.oplus.ocs.camera.configure.ProtobufFeatureInfoInterface
    @NonNull
    public Value<P> getValueRange() {
        return this.mValueRange;
    }

    @Override // com.oplus.ocs.camera.configure.ProtobufFeatureInfoInterface
    @NonNull
    public List<ConflictFeature<?>> getConflictFeatureList(Object obj, RuntimeFeatureCallback runtimeFeatureCallback) {
        ArrayList arrayList = new ArrayList();
        Iterator<Map.Entry<ConflictTargetValue<?>, List<ConflictFeature<?>>>> it = this.mConflictMap.entrySet().iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            Map.Entry<ConflictTargetValue<?>, List<ConflictFeature<?>>> next = it.next();
            if (next.getKey().isTargetValue(obj)) {
                for (ConflictFeature<?> conflictFeature : next.getValue()) {
                    Object runtimeFeatureValue = runtimeFeatureCallback.getRuntimeFeatureValue(conflictFeature.getFeatureKey().getName());
                    if (conflictFeature.isNotConfigValueRange() || conflictFeature.isTargetValue(runtimeFeatureValue)) {
                        arrayList.add(conflictFeature);
                    }
                }
            }
        }
        return arrayList;
    }

    @Override // com.oplus.ocs.camera.configure.ProtobufFeatureInfoInterface
    public boolean isFeatureValueConflict(Object obj) {
        Iterator<Map.Entry<ConflictTargetValue<?>, List<ConflictFeature<?>>>> it = this.mConflictMap.entrySet().iterator();
        while (it.hasNext()) {
            if (it.next().getKey().isTargetValue(obj)) {
                return true;
            }
        }
        return false;
    }

    @Override // com.oplus.ocs.camera.configure.ProtobufFeatureInfoInterface
    public boolean getGroupConflict() {
        return this.mbGroupConflict;
    }

    @Override // com.oplus.ocs.camera.configure.ProtobufFeatureInfoInterface
    public String getDefaultOriginValue() {
        return this.mDefaultValue.getOriginValue();
    }

    @Override // com.oplus.ocs.camera.configure.ProtobufFeatureInfoInterface
    public String getEntryType() {
        return this.mEntryType;
    }

    public String toString() {
        return "FeatureInfoImpl{mFeatureName='" + this.mFeatureName + "', mFeatureKeyName='" + this.mFeatureKey.getName() + "', mFeatureValueClassType='" + this.mFeatureValueClassType + "', mValueRange=" + this.mValueRange + ", mDefaultValue=" + this.mDefaultValue + ", mbGroupConflict=" + this.mbGroupConflict + ", mEntryType='" + this.mEntryType + "', mConflictMap=" + this.mConflictMap + '}';
    }

    protected void setConflictMap(Map<ConflictTargetValue<?>, List<ConflictFeature<?>>> map) {
        this.mConflictMap.clear();
        this.mConflictMap.putAll(map);
    }
}

package com.oplus.ocs.camera.configure;

import androidx.annotation.Nullable;
import com.oplus.ocs.camera.common.util.CameraUnitLog;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class ConflictFeature<P> {
    private static final String TAG = "ConflictFeature";
    private final Value<P> mDefaultValue;
    private final CameraFeatureKey<P> mFeatureKey;
    private final Value<P> mValueRange;

    public ConflictFeature(CameraFeatureKey<P> cameraFeatureKey, String str, String str2, P p) {
        this.mValueRange = ValueFactory.getValue(str, cameraFeatureKey.getType());
        this.mDefaultValue = ValueFactory.getValue(str2, cameraFeatureKey.getType());
        this.mFeatureKey = cameraFeatureKey;
    }

    public CameraFeatureKey<P> getFeatureKey() {
        return this.mFeatureKey;
    }

    public boolean isTargetValue(Object obj) {
        return this.mValueRange.isTargetValue(obj);
    }

    public boolean isNotConfigValueRange() {
        return this.mValueRange.getValue().isEmpty();
    }

    @Nullable
    public P getDefaultValue() {
        List<P> value = this.mDefaultValue.getValue();
        if (!value.isEmpty()) {
            return value.get(0);
        }
        CameraUnitLog.e(TAG, "The conflict feature: " + this.mFeatureKey.getName() + " not config default value!");
        return null;
    }

    public Value<P> getValueRange() {
        return this.mValueRange;
    }

    public String toString() {
        return "ConflictFeature{mValueRange=" + this.mValueRange + ", mDefaultValue=" + this.mDefaultValue + ", mFeatureKey=" + this.mFeatureKey + '}';
    }
}

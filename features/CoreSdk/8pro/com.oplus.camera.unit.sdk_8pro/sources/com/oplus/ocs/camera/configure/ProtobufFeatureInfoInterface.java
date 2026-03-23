package com.oplus.ocs.camera.configure;

import java.util.List;
/* loaded from: classes.dex */
public interface ProtobufFeatureInfoInterface<P> {
    List<ConflictFeature<?>> getConflictFeatureList(Object obj, RuntimeFeatureCallback runtimeFeatureCallback);

    String getDefaultOriginValue();

    Value<P> getDefaultValue();

    String getEntryType();

    CameraFeatureKey getFeatureKey();

    String getFeatureKeyName();

    String getFeatureName();

    String getFeatureValueClassType();

    boolean getGroupConflict();

    Value<P> getValueRange();

    boolean isFeatureValueConflict(Object obj);
}

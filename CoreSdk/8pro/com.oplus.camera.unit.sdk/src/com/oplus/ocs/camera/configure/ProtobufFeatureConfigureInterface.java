package com.oplus.ocs.camera.configure;

import java.util.Collection;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public interface ProtobufFeatureConfigureInterface {
    <P> List<ConflictFeature<?>> getConflictFeatureList(CameraFeatureKey<P> cameraFeatureKey, P p, RuntimeFeatureCallback runtimeFeatureCallback);

    <P> ProtobufFeatureInfoInterface<P> getFeatureInfo(CameraFeatureKey<P> cameraFeatureKey);

    Collection<ProtobufFeatureInfoInterface<?>> getFeatureInfoList();
}

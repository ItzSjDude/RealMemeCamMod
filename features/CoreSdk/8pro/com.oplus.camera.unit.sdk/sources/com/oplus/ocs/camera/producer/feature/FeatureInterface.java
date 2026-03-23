package com.oplus.ocs.camera.producer.feature;

import com.oplus.ocs.camera.common.parameter.SdkCameraDeviceConfig;
import java.util.List;
import java.util.Map;
/* loaded from: classes.dex */
public interface FeatureInterface {
    Map<String, Map<String, List<String>>> getConflictFeatureValues();

    int getFeatureCategory();

    <T> String getOperationMode(T t);

    List<String> getSupportValues();

    String getValueType();

    <T> boolean isFeatureConflictLegal(SdkCameraDeviceConfig sdkCameraDeviceConfig, String str, T t);

    <T> boolean isFeatureValueLegal(String str, T t);
}

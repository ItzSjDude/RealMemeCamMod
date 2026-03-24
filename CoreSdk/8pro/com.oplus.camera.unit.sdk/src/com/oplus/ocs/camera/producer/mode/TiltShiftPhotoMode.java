package com.oplus.ocs.camera.producer.mode;

import androidx.annotation.NonNull;
import com.oplus.ocs.camera.common.parameter.SdkCameraDeviceConfig;
import com.oplus.ocs.camera.common.util.ApsRequestTag;
import com.oplus.ocs.camera.common.util.CameraConstant;
import com.oplus.ocs.camera.producer.device.CameraSessionEntity;

/* JADX INFO: loaded from: classes.dex */
public class TiltShiftPhotoMode extends PhotoMode {
    @Override // com.oplus.ocs.camera.producer.mode.PhotoMode, com.oplus.ocs.camera.producer.mode.BaseMode
    protected String getModeName() {
        return CameraConstant.ModeName.TILT_SHIFT_MODE;
    }

    @Override // com.oplus.ocs.camera.producer.mode.PhotoMode, com.oplus.ocs.camera.producer.mode.BaseMode
    protected void onConfigure(CameraSessionEntity cameraSessionEntity, SdkCameraDeviceConfig sdkCameraDeviceConfig, String str, @NonNull ApsRequestTag apsRequestTag) {
        super.onConfigure(cameraSessionEntity, sdkCameraDeviceConfig, str, apsRequestTag);
    }
}

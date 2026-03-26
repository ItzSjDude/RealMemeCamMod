package com.oplus.ocs.camera.producer.mode;

import android.hardware.camera2.CaptureRequest;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.oplus.ocs.camera.common.parameter.Parameter;
import com.oplus.ocs.camera.common.parameter.PreviewParameter;
import com.oplus.ocs.camera.common.parameter.SdkCameraDeviceConfig;
import com.oplus.ocs.camera.common.util.ApsRequestTag;
import com.oplus.ocs.camera.common.util.CameraRequestTag;
import com.oplus.ocs.camera.producer.device.CameraSessionEntity;
import java.util.Map;

public class MicroscopeVideoMode extends VideoMode {
    private static final String TAG = "MicroscopeVideoMode";

    @Override // com.oplus.ocs.camera.producer.mode.VideoMode,
              // com.oplus.ocs.camera.producer.mode.BaseMode
    protected String getFeatureName(String str) {
        return null;
    }

    @Override // com.oplus.ocs.camera.producer.mode.VideoMode,
              // com.oplus.ocs.camera.producer.mode.BaseMode
    protected String getModeName() {
        return "microscope_video_mode";
    }

    @Override // com.oplus.ocs.camera.producer.mode.VideoMode,
              // com.oplus.ocs.camera.producer.mode.BaseMode
    public String getSurfaceUseCase(String str, boolean z) {
        return "simple_preview_case";
    }

    @Override // com.oplus.ocs.camera.producer.mode.VideoMode
    protected boolean isPreviewProcessByAps(Parameter parameter, String str) {
        return true;
    }

    @Override // com.oplus.ocs.camera.producer.mode.VideoMode
    protected boolean needPrepareVideoSurface() {
        return false;
    }

    @Override // com.oplus.ocs.camera.producer.mode.VideoMode,
              // com.oplus.ocs.camera.producer.mode.BaseMode
    protected void onConfigure(CameraSessionEntity cameraSessionEntity, SdkCameraDeviceConfig sdkCameraDeviceConfig,
            String str, ApsRequestTag apsRequestTag) {
        cameraSessionEntity.setTemplate(3);
        Map<String, String> featuresFromConfig = getFeaturesFromConfig(getConfigureParameter(str));
        sdkCameraDeviceConfig.updateHalPreviewSize(
                getCameraDeviceInfo(str).getPreviewMappingSizesFromConfig(str, featuresFromConfig));
        sdkCameraDeviceConfig
                .updateHalVideoSize(getCameraDeviceInfo(str).getVideoMappingSizesFromConfig(str, featuresFromConfig));
    }

    @Override // com.oplus.ocs.camera.producer.mode.VideoMode,
              // com.oplus.ocs.camera.producer.mode.BaseMode,
              // com.oplus.ocs.camera.producer.mode.ModeInterface
    public void updateStageParameterBuilder(@NonNull PreviewParameter.Builder builder, String str, String str2,
            @Nullable CameraRequestTag cameraRequestTag) {
        super.updateStageParameterBuilder(builder, str, str2, cameraRequestTag);
        builder.set(CaptureRequest.FLASH_MODE, 2);
        builder.set(CaptureRequest.CONTROL_AE_MODE, 1);
    }
}

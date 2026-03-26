package com.oplus.ocs.camera.producer.mode;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.oplus.ocs.camera.common.parameter.Parameter;
import com.oplus.ocs.camera.common.parameter.PreviewParameter;
import com.oplus.ocs.camera.common.parameter.SdkCameraDeviceConfig;
import com.oplus.ocs.camera.common.util.ApsRequestTag;
import com.oplus.ocs.camera.common.util.CameraConstant;
import com.oplus.ocs.camera.common.util.CameraRequestTag;
import com.oplus.ocs.camera.producer.device.CameraSessionEntity;

public class ThreeDPhotoMode extends PhotoMode {
    @Override // com.oplus.ocs.camera.producer.mode.PhotoMode,
              // com.oplus.ocs.camera.producer.mode.BaseMode
    protected String getModeName() {
        return CameraConstant.ModeName.THREE_D_PHOTO_MODE;
    }

    @Override // com.oplus.ocs.camera.producer.mode.PhotoMode,
              // com.oplus.ocs.camera.producer.mode.BaseMode
    protected void updatePreviewRequestTag(PreviewParameter.Builder builder, CameraRequestTag cameraRequestTag,
            String str, String str2) {
        super.updatePreviewRequestTag(builder, cameraRequestTag, str, str2);
        cameraRequestTag.mb3dPhotoEnable = true;
    }

    @Override // com.oplus.ocs.camera.producer.mode.PhotoMode,
              // com.oplus.ocs.camera.producer.mode.BaseMode,
              // com.oplus.ocs.camera.producer.mode.ModeInterface
    public void updateStageParameterBuilder(@NonNull PreviewParameter.Builder builder, String str, String str2,
            @Nullable CameraRequestTag cameraRequestTag) {
        super.updateStageParameterBuilder(builder, str, str2, cameraRequestTag);
        if (Parameter.ParameterStage.BEFORE_TAKE_PICTURE.equals(str)) {
            cameraRequestTag.mb3dPhotoEnable = true;
            if (builder.containCustomKey(PreviewParameter.KEY_CAPTURE_FOR_VIDEO)) {
                cameraRequestTag.mbCaptureForVideo = ((Boolean) builder.get(PreviewParameter.KEY_CAPTURE_FOR_VIDEO))
                        .booleanValue();
            }
        }
    }

    @Override // com.oplus.ocs.camera.producer.mode.PhotoMode,
              // com.oplus.ocs.camera.producer.mode.BaseMode
    protected void onConfigure(CameraSessionEntity cameraSessionEntity, SdkCameraDeviceConfig sdkCameraDeviceConfig,
            String str, @NonNull ApsRequestTag apsRequestTag) {
        cameraSessionEntity.setTemplate(1);
    }
}

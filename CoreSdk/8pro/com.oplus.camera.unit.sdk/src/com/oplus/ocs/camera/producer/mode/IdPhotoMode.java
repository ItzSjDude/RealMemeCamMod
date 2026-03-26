package com.oplus.ocs.camera.producer.mode;

import androidx.annotation.NonNull;
import com.oplus.ocs.camera.common.parameter.SdkCameraDeviceConfig;
import com.oplus.ocs.camera.common.parameter.apsadapter.ApsDecisionParameter;
import com.oplus.ocs.camera.common.util.ApsRequestTag;
import com.oplus.ocs.camera.common.util.CameraConstant;
import com.oplus.ocs.camera.common.util.CameraRequestTag;
import com.oplus.ocs.camera.consumer.apsAdapter.adapter.ApsAdapterDecision;
import com.oplus.ocs.camera.producer.device.CameraSessionEntity;

public class IdPhotoMode extends PhotoMode {
    private static final String TAG = "IdPhotoMode";

    @Override // com.oplus.ocs.camera.producer.mode.PhotoMode,
              // com.oplus.ocs.camera.producer.mode.BaseMode
    protected String getModeName() {
        return "id_photo_mode";
    }

    @Override // com.oplus.ocs.camera.producer.mode.PhotoMode,
              // com.oplus.ocs.camera.producer.mode.BaseMode
    public String getSurfaceUseCase(String str, boolean z) {
        return CameraConstant.UseCase.ID_PHOTO_CASE;
    }

    @Override // com.oplus.ocs.camera.producer.mode.PhotoMode,
              // com.oplus.ocs.camera.producer.mode.BaseMode,
              // com.oplus.ocs.camera.producer.mode.ModeInterface
    public boolean needMatchPreviewTimestamp(int i, String str, CameraRequestTag cameraRequestTag,
            ApsAdapterDecision.DecisionResult decisionResult) {
        return false;
    }

    @Override // com.oplus.ocs.camera.producer.mode.PhotoMode,
              // com.oplus.ocs.camera.producer.mode.BaseMode
    protected void onConfigure(CameraSessionEntity cameraSessionEntity, SdkCameraDeviceConfig sdkCameraDeviceConfig,
            String str, @NonNull ApsRequestTag apsRequestTag) {
        apsRequestTag.mModeName = "id_photo_mode";
        cameraSessionEntity.setTemplate(1);
    }

    @Override // com.oplus.ocs.camera.producer.mode.PhotoMode,
              // com.oplus.ocs.camera.producer.mode.BaseMode
    protected boolean checkPreviewResult(CameraRequestTag cameraRequestTag) {
        synchronized (this.mPreviewResultLock) {
            return ((Integer) this.mPreviewResult.get(ApsDecisionParameter.KEY_PREVIEW_MULTI_FRAME_COUNT))
                    .intValue() > 0;
        }
    }
}

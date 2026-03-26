package com.oplus.ocs.camera.producer.mode;

import android.util.Size;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.oplus.ocs.camera.common.parameter.Parameter;
import com.oplus.ocs.camera.common.parameter.PreviewParameter;
import com.oplus.ocs.camera.common.parameter.SdkCameraDeviceConfig;
import com.oplus.ocs.camera.common.util.ApsRequestTag;
import com.oplus.ocs.camera.common.util.CameraConfigBase;
import com.oplus.ocs.camera.common.util.CameraRequestTag;
import com.oplus.ocs.camera.common.util.CameraUnitLog;
import com.oplus.ocs.camera.consumer.apsAdapter.adapter.ApsAdapterDecision;
import com.oplus.ocs.camera.producer.device.CameraSessionEntity;
import com.oplus.ocs.camera.producer.info.CameraCharacteristicsHelper;
import com.oplus.ocs.camera.producer.info.CameraConfigHelper;

public class UltraHighResolutionMode extends PhotoMode {
    private static final String TAG = "UltraHighResolutionMode";
    private static final int ULTRA_HIGH_RESOLUTION_FULL_INPUT_SIZE_12MP = 12000000;
    public static final int ULTRA_HIGH_RESOLUTION_MAX_OUTPUT_HEIGHT = 9024;
    public static final int ULTRA_HIGH_RESOLUTION_MAX_OUTPUT_WIDTH = 12032;

    @Override // com.oplus.ocs.camera.producer.mode.PhotoMode,
              // com.oplus.ocs.camera.producer.mode.BaseMode
    protected boolean checkPreviewResult(CameraRequestTag cameraRequestTag) {
        return true;
    }

    @Override // com.oplus.ocs.camera.producer.mode.PhotoMode,
              // com.oplus.ocs.camera.producer.mode.BaseMode
    protected String getModeName() {
        return "ultraHD_mode";
    }

    @Override // com.oplus.ocs.camera.producer.mode.PhotoMode,
              // com.oplus.ocs.camera.producer.mode.BaseMode
    public String getSurfaceUseCase(String str, boolean z) {
        return "ultra_high_resolution_case";
    }

    @Override // com.oplus.ocs.camera.producer.mode.PhotoMode,
              // com.oplus.ocs.camera.producer.mode.BaseMode,
              // com.oplus.ocs.camera.producer.mode.ModeInterface
    public boolean needMatchPreviewTimestamp(int i, String str, CameraRequestTag cameraRequestTag,
            ApsAdapterDecision.DecisionResult decisionResult) {
        return false;
    }

    @Override // com.oplus.ocs.camera.producer.mode.PhotoMode,
              // com.oplus.ocs.camera.producer.mode.BaseMode,
              // com.oplus.ocs.camera.producer.mode.ModeInterface
    public void updateStageParameter(@NonNull Parameter parameter, String str, String str2,
            @Nullable CameraRequestTag cameraRequestTag) {
        super.updateStageParameter(parameter, str, str2, cameraRequestTag);
        if (Parameter.ParameterStage.BEFORE_TAKE_PICTURE.equals(str)) {
            updateUpScaleSize(cameraRequestTag, str2, parameter);
        }
    }

    @Override // com.oplus.ocs.camera.producer.mode.PhotoMode,
              // com.oplus.ocs.camera.producer.mode.BaseMode
    protected void onConfigure(CameraSessionEntity cameraSessionEntity, SdkCameraDeviceConfig sdkCameraDeviceConfig,
            String str, @NonNull ApsRequestTag apsRequestTag) {
        apsRequestTag.mModeName = "ultraHD_mode";
        cameraSessionEntity.setTemplate(1);
    }

    private void updateUpScaleSize(CameraRequestTag cameraRequestTag, String str, Parameter parameter) {
        Size size = this.mTagMap.get(str).mPictureSize;
        CameraUnitLog.v(TAG, "updateUpscaleSize, current camera full input size is: " + size);
        boolean z = CameraCharacteristicsHelper.getCameraIdType("rear_sat") != null && cameraRequestTag.mbFromMainMenu
                && !CameraCharacteristicsHelper.isFrontCamera(cameraRequestTag.mCameraId)
                && ((Boolean) CameraConfigHelper
                        .getConfigValue(CameraConfigBase.KEY_ULTRA_HIGH_RESOLUTION_FULL_ZOOM_SUPPORT, false))
                        .booleanValue();
        float[] fArr = (float[]) CameraConfigHelper.getConfigValue(CameraConfigBase.KEY_SAT_MAIN_ZOOM_RANGE,
                new float[] { 1.0f, 2.0f });
        if (fArr == null || 2 != fArr.length) {
            return;
        }
        float fFloatValue = 1.0f;
        if (parameter != null && parameter.containCustomKey(PreviewParameter.KEY_ZOOM_RATIO)) {
            fFloatValue = ((Float) parameter.get(PreviewParameter.KEY_ZOOM_RATIO)).floatValue();
        }
        if (size != null) {
            int width = size.getWidth() * size.getHeight();
            int[] iArr = { size.getWidth() * 2, size.getHeight() * 2, 0, 0 };
            if ((ULTRA_HIGH_RESOLUTION_FULL_INPUT_SIZE_12MP <= width && Float.compare(fFloatValue, fArr[0]) == 0)
                    || (z && Float.compare(fFloatValue, fArr[1]) == 0)) {
                iArr[0] = 12032;
                iArr[1] = 9024;
            }
            cameraRequestTag.mUpScaleOutputSize = iArr;
            CameraUnitLog.v(TAG, "updateUpscaleSize, upScale output width: " + iArr[0] + ",height: " + iArr[1]);
        }
    }
}

package com.oplus.ocs.camera.producer.mode;

import android.hardware.camera2.CaptureRequest;
import android.hardware.camera2.params.MeteringRectangle;
import android.os.Handler;
import android.util.Pair;
import android.util.Size;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.oplus.ocs.camera.common.parameter.Parameter;
import com.oplus.ocs.camera.common.parameter.PreviewParameter;
import com.oplus.ocs.camera.common.parameter.SdkCameraDeviceConfig;
import com.oplus.ocs.camera.common.surface.SurfaceKey;
import com.oplus.ocs.camera.common.surface.SurfaceWrapper;
import com.oplus.ocs.camera.common.util.ApsRequestTag;
import com.oplus.ocs.camera.common.util.CameraRequestTag;
import com.oplus.ocs.camera.common.util.CameraUnitLog;
import com.oplus.ocs.camera.consumer.apsAdapter.adapter.ApsAdapterDecision;
import com.oplus.ocs.camera.producer.device.AEAFHelp;
import com.oplus.ocs.camera.producer.device.CameraSessionEntity;
import com.oplus.ocs.camera.producer.info.CameraCharacteristicsHelper;
import java.util.List;

public class LongExposureMode extends BaseMode {
    private static final String TAG = "LongExposureMode";

    @Override // com.oplus.ocs.camera.producer.mode.BaseMode
    protected boolean checkPreviewResult(CameraRequestTag cameraRequestTag) {
        return true;
    }

    @Override // com.oplus.ocs.camera.producer.mode.BaseMode,
              // com.oplus.ocs.camera.producer.mode.ModeInterface
    public int delayCloseForCapturTime() {
        return 0;
    }

    @Override // com.oplus.ocs.camera.producer.mode.BaseMode
    public int getCaptureFormat() {
        return 32;
    }

    @Override // com.oplus.ocs.camera.producer.mode.BaseMode
    protected String getModeName() {
        return "long_exposure_mode";
    }

    @Override // com.oplus.ocs.camera.producer.mode.BaseMode
    public String getSurfaceUseCase(String str, boolean z) {
        return "long_exposure_case";
    }

    @Override // com.oplus.ocs.camera.producer.mode.BaseMode
    public boolean useOplusCameraCase(String str) {
        return true;
    }

    @Override // com.oplus.ocs.camera.producer.mode.BaseMode
    public Pair<Size, Size> getSurfaceSize(SdkCameraDeviceConfig sdkCameraDeviceConfig, String str, String str2,
            String str3) {
        Size appSurfaceSize;
        List<SurfaceWrapper> pictureSurfaces;
        appSurfaceSize = this.mTagMap.get(str3).mPreviewSize;
        appSurfaceSize.getWidth();
        appSurfaceSize.getHeight();
        pictureSurfaces = sdkCameraDeviceConfig.getPictureSurfaces();
        CameraUnitLog.d(TAG, "getSurfaceSize, configuredSurfaceType: " + str + ", targetCameraType: " + str2
                + ", cameraType: " + str3);
        switch (str) {
            case "reprocess_input":
            case "raw_output":
            case "capture_raw":
            case "raw16_output":
                if (pictureSurfaces.size() > 0) {
                    appSurfaceSize = pictureSurfaces.get(0).getAppSurfaceSize();
                }
                return new Pair<>(appSurfaceSize,
                        CameraCharacteristicsHelper.getSizeByFormat(str3, 1.3333333333333333d, 32));
            case "preview":
                return new Pair<>(appSurfaceSize, appSurfaceSize);
            case "capture_yuv":
            case "capture":
            case "reprocess_yuv":
                if (pictureSurfaces.size() > 0) {
                    return new Pair<>(pictureSurfaces.get(0).getAppSurfaceSize(),
                            pictureSurfaces.get(0).getHalSurfaceSize());
                }
                break;
        }
        return new Pair<>(appSurfaceSize, appSurfaceSize);
    }

    @Override // com.oplus.ocs.camera.producer.mode.BaseMode
    protected void onConfigure(CameraSessionEntity cameraSessionEntity, SdkCameraDeviceConfig sdkCameraDeviceConfig,
            String str, @NonNull ApsRequestTag apsRequestTag) {
        cameraSessionEntity.setTemplate(1);
    }

    @Override // com.oplus.ocs.camera.producer.mode.BaseMode,
              // com.oplus.ocs.camera.producer.mode.ModeInterface
    public void updateStageParameter(@NonNull Parameter parameter, String str, String str2,
            @Nullable CameraRequestTag cameraRequestTag) {
        super.updateStageParameter(parameter, str, str2, cameraRequestTag);
        if (Parameter.ParameterStage.BEFORE_TAKE_PICTURE.equals(str)) {
            parameter.set(CaptureRequest.CONTROL_AE_LOCK, true);
            parameter.set(CaptureRequest.CONTROL_AWB_LOCK, true);
            parameter.set(CaptureRequest.CONTROL_AF_MODE, 1);
            parameter.set(CaptureRequest.CONTROL_AF_REGIONS, AEAFHelp.getDefaultWeightRegion());
            parameter.set(CaptureRequest.CONTROL_MODE, 1);
            parameter.set(CaptureRequest.CONTROL_AE_REGIONS, AEAFHelp.getDefaultWeightRegion());
        }
    }

    @Override // com.oplus.ocs.camera.producer.mode.BaseMode,
              // com.oplus.ocs.camera.producer.mode.ModeInterface
    public void updateStageParameterBuilder(@NonNull PreviewParameter.Builder builder, String str, String str2,
            @Nullable CameraRequestTag cameraRequestTag) {
        super.updateStageParameterBuilder(builder, str, str2, cameraRequestTag);
        if (cameraRequestTag != null) {
            if (Parameter.ParameterStage.BEFORE_TAKE_PICTURE.equals(str)) {
                if (builder.containCustomKey(PreviewParameter.KEY_FILTER_TYPE)) {
                    cameraRequestTag.mFilterType = (String) builder.get(PreviewParameter.KEY_FILTER_TYPE);
                    cameraRequestTag.mbFilterOpen = ((Boolean) builder.get(PreviewParameter.KEY_FILTER_OPEN))
                            .booleanValue();
                    cameraRequestTag.mbFilterVignette = ((Boolean) builder
                            .get(PreviewParameter.KEY_FILTER_WITHVIGNETTE))
                            .booleanValue();
                }
                if (cameraRequestTag.getRequestMode() == CameraRequestTag.RequestMode.CAPTURE_REPROCESS) {
                    cameraRequestTag.mbLongExposureCaptureEnable = false;
                    cameraRequestTag.mRequestFormat = 35;
                }
            }
        }
    }

    @Override // com.oplus.ocs.camera.producer.mode.BaseMode,
              // com.oplus.ocs.camera.producer.mode.ModeInterface
    public CameraRequestTag createRequestTag(String str, Object obj, Handler handler, String str2,
            PreviewParameter.Builder builder) {
        CameraRequestTag cameraRequestTagCreateRequestTag = super.createRequestTag(str, obj, handler, str2, builder);
        if (Parameter.ParameterStage.BEFORE_TAKE_PICTURE.equals(str2)) {
            cameraRequestTagCreateRequestTag.mbLongExposureCaptureEnable = true;
            cameraRequestTagCreateRequestTag.mbRepeatingRequestCapture = true;
            cameraRequestTagCreateRequestTag.mRequestNum = 1;
            cameraRequestTagCreateRequestTag.mbRaw2yuvEnable = true;
            cameraRequestTagCreateRequestTag.mbRectifyEnable = true;
        }
        CameraUnitLog.v(TAG, "createRequestTag, createRequestTag: " + str + ", stage: " + str2 + ", tag: "
                + cameraRequestTagCreateRequestTag);
        return cameraRequestTagCreateRequestTag;
    }

    @Override // com.oplus.ocs.camera.producer.mode.BaseMode
    protected boolean needAddToTarget(String str, String str2, @NonNull SurfaceKey surfaceKey,
            PreviewParameter.Builder builder) {
        if (Parameter.ParameterStage.BEFORE_TAKE_PICTURE.equals(str2)) {
            if (32 == surfaceKey.getFormat() || "surface_key_preview".equals(surfaceKey.getUsage())) {
                return true;
            }
            if (35 == surfaceKey.getFormat()) {
                return false;
            }
        }
        boolean zNeedAddToTarget = super.needAddToTarget(str, str2, surfaceKey, builder);
        CameraUnitLog.v(TAG, "needAddToTarget, sessionCameraType: " + str + ", stage: " + str2 + ", surfaceKey: "
                + surfaceKey + ", need: " + zNeedAddToTarget);
        return zNeedAddToTarget;
    }

    @Override // com.oplus.ocs.camera.producer.mode.BaseMode,
              // com.oplus.ocs.camera.producer.mode.ModeInterface
    public boolean needMatchPreviewTimestamp(int i, String str, CameraRequestTag cameraRequestTag,
            ApsAdapterDecision.DecisionResult decisionResult) {
        if (2 == i) {
            return true;
        }
        return super.needMatchPreviewTimestamp(i, str, cameraRequestTag, decisionResult);
    }
}

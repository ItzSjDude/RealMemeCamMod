package com.oplus.ocs.camera.producer.mode;

import android.hardware.camera2.CaptureRequest;
import android.os.Handler;
import android.util.Pair;
import android.util.Size;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.oplus.ocs.camera.common.parameter.ConfigureParameter;
import com.oplus.ocs.camera.common.parameter.Parameter;
import com.oplus.ocs.camera.common.parameter.PreviewParameter;
import com.oplus.ocs.camera.common.parameter.SdkCameraDeviceConfig;
import com.oplus.ocs.camera.common.parameter.apsadapter.ApsDecisionParameter;
import com.oplus.ocs.camera.common.surface.SurfaceKey;
import com.oplus.ocs.camera.common.surface.SurfaceWrapper;
import com.oplus.ocs.camera.common.util.ApsRequestTag;
import com.oplus.ocs.camera.common.util.CameraConfigBase;
import com.oplus.ocs.camera.common.util.CameraConstant;
import com.oplus.ocs.camera.common.util.CameraRequestTag;
import com.oplus.ocs.camera.common.util.CameraUnitLog;
import com.oplus.ocs.camera.producer.device.CameraSessionEntity;
import com.oplus.ocs.camera.producer.info.CameraConfigHelper;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class HighPixelMode extends PhotoMode {
    private static final String TAG = "HighPixelMode";
    private boolean mbRawSREnable = false;

    @Override // com.oplus.ocs.camera.producer.mode.PhotoMode, com.oplus.ocs.camera.producer.mode.BaseMode
    protected String getModeName() {
        return CameraConstant.ModeName.HIGH_PIXEL_MODE;
    }

    @Override // com.oplus.ocs.camera.producer.mode.PhotoMode, com.oplus.ocs.camera.producer.mode.BaseMode
    public String getSurfaceUseCase(String str, boolean z) {
        return isAiHighPixelEnable(str) ? CameraConstant.UseCase.AI_HIGH_PIXEL_CASE : "simple_photo_case";
    }

    @Override // com.oplus.ocs.camera.producer.mode.PhotoMode, com.oplus.ocs.camera.producer.mode.BaseMode
    protected String getFeatureName(String str) {
        return isRawSROpen(str) ? "on" : "off";
    }

    @Override // com.oplus.ocs.camera.producer.mode.PhotoMode, com.oplus.ocs.camera.producer.mode.BaseMode
    protected void onConfigure(CameraSessionEntity cameraSessionEntity, SdkCameraDeviceConfig sdkCameraDeviceConfig, String str, @NonNull ApsRequestTag apsRequestTag) {
        cameraSessionEntity.setTemplate(1);
        apsRequestTag.mbHighPictureSizeEnable = true;
        apsRequestTag.mModeName = CameraConstant.ModeName.HIGH_PIXEL_MODE;
        apsRequestTag.mbAiHighPixelEnable = isAiHighPixelEnable(str);
        this.mbRawSREnable = isAiHighPixelEnable(str);
    }

    @Override // com.oplus.ocs.camera.producer.mode.PhotoMode, com.oplus.ocs.camera.producer.mode.BaseMode
    public Pair<Size, Size> getSurfaceSize(SdkCameraDeviceConfig sdkCameraDeviceConfig, String str, String str2, String str3) {
        Size size;
        List<SurfaceWrapper> pictureSurfaces;
        size = this.mTagMap.get(str3).mPreviewSize;
        pictureSurfaces = sdkCameraDeviceConfig.getPictureSurfaces();
        CameraUnitLog.d(TAG, "getSurfaceSize, configuredSurfaceType: " + str + ", targetCameraType: " + str2 + ", cameraType: " + str3);
        str.hashCode();
        switch (str) {
            case "preview":
                return new Pair<>(size, size);
            case "capture_raw":
            case "capture":
                return new Pair<>(pictureSurfaces.get(0).getAppSurfaceSize(), pictureSurfaces.get(0).getAppSurfaceSize());
            default:
                return super.getSurfaceSize(sdkCameraDeviceConfig, str, str2, str3);
        }
    }

    @Override // com.oplus.ocs.camera.producer.mode.PhotoMode, com.oplus.ocs.camera.producer.mode.BaseMode, com.oplus.ocs.camera.producer.mode.ModeInterface
    public CameraRequestTag createRequestTag(String str, Object obj, Handler handler, String str2, PreviewParameter.Builder builder) {
        CameraRequestTag cameraRequestTagCreateRequestTag = super.createRequestTag(str, obj, handler, str2, builder);
        cameraRequestTagCreateRequestTag.mbRawSREnable = isRawSROpen(str);
        return cameraRequestTagCreateRequestTag;
    }

    @Override // com.oplus.ocs.camera.producer.mode.PhotoMode, com.oplus.ocs.camera.producer.mode.BaseMode, com.oplus.ocs.camera.producer.mode.ModeInterface
    public void updateStageParameter(@NonNull Parameter parameter, String str, String str2, @Nullable CameraRequestTag cameraRequestTag) {
        super.updateStageParameter(parameter, str, str2, cameraRequestTag);
        if (Parameter.ParameterStage.BEFORE_TAKE_PICTURE.equals(str)) {
            parameter.set((CaptureRequest.Key<int>) CaptureRequest.COLOR_CORRECTION_MODE, 0);
            parameter.set((CaptureRequest.Key<int>) CaptureRequest.STATISTICS_LENS_SHADING_MAP_MODE, 1);
            parameter.set((CaptureRequest.Key<int>) CaptureRequest.TONEMAP_MODE, 3);
        }
    }

    private boolean isAiHighPixelEnable(String str) {
        return "on".equals((String) getConfigureParameter(str).get(ConfigureParameter.AI_HIGH_PIXEL_ENABLE));
    }

    private boolean isRawSROpen(String str) {
        if (isAiHighPixelEnable(str) && this.mPreviewResult != null) {
            this.mbRawSREnable = 5 == ((Integer) this.mPreviewResult.get(ApsDecisionParameter.KEY_PREVIEW_FEATURE_TYPE)).intValue();
            CameraUnitLog.d(TAG, "isRawSROpen, featureType: " + this.mPreviewResult.get(ApsDecisionParameter.KEY_PREVIEW_FEATURE_TYPE));
        }
        CameraUnitLog.d(TAG, "isRawSROpen, result: " + this.mbRawSREnable);
        return this.mbRawSREnable;
    }

    @Override // com.oplus.ocs.camera.producer.mode.PhotoMode, com.oplus.ocs.camera.producer.mode.BaseMode
    protected boolean needAddToTarget(String str, String str2, @NonNull SurfaceKey surfaceKey, PreviewParameter.Builder builder) {
        if (Parameter.ParameterStage.BEFORE_TAKE_PICTURE.equals(str2) && "surface_key_picture".equals(surfaceKey.getUsage())) {
            return isRawSROpen(str) ? 32 == surfaceKey.getFormat() : 35 == surfaceKey.getFormat();
        }
        return super.needAddToTarget(str, str2, surfaceKey, builder);
    }

    @Override // com.oplus.ocs.camera.producer.mode.PhotoMode, com.oplus.ocs.camera.producer.mode.BaseMode
    protected long getHalMemory() {
        return ((Integer) CameraConfigHelper.getConfigValue(CameraConfigBase.KEY_HAL_MEMORY_HIGH_PIXEL, 0)).intValue();
    }
}

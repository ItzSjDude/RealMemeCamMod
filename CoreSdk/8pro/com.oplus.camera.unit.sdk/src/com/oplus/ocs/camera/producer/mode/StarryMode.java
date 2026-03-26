package com.oplus.ocs.camera.producer.mode;

import android.hardware.camera2.CaptureRequest;
import android.os.Handler;
import android.util.Pair;
import android.util.Size;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.oplus.ocs.camera.common.parameter.Parameter;
import com.oplus.ocs.camera.common.parameter.PreviewParameter;
import com.oplus.ocs.camera.common.parameter.SdkCameraDeviceConfig;
import com.oplus.ocs.camera.common.surface.SurfaceWrapper;
import com.oplus.ocs.camera.common.util.ApsRequestTag;
import com.oplus.ocs.camera.common.util.CameraConfigBase;
import com.oplus.ocs.camera.common.util.CameraConstant;
import com.oplus.ocs.camera.common.util.CameraRequestTag;
import com.oplus.ocs.camera.common.util.PlatformUtil;
import com.oplus.ocs.camera.producer.device.CameraSessionEntity;
import com.oplus.ocs.camera.appinterface.CameraPictureCallbackAdapter;
import com.oplus.ocs.camera.producer.info.CameraCharacteristicsHelper;
import com.oplus.ocs.camera.producer.info.CameraConfigHelper;

public class StarryMode extends BaseMode {
    @Override // com.oplus.ocs.camera.producer.mode.BaseMode,
              // com.oplus.ocs.camera.producer.mode.ModeInterface
    public int isAllowedToTakePicture(CameraPictureCallbackAdapter cameraPictureCallbackAdapter, Handler handler,
            CameraRequestTag cameraRequestTag) {
        return super.isAllowedToTakePicture(cameraPictureCallbackAdapter, handler, cameraRequestTag);
    }

    private static long STARRY_CAPTURE_EXPOSURETIME = ((Long) CameraConfigHelper
            .getConfigValue(CameraConfigBase.KEY_STARRY_MODE_CAPTURE_EXPOSURETIME, 16000L)).longValue();
    private static int STARRY_CAPTURE_ISO = ((Integer) CameraConfigHelper
            .getConfigValue(CameraConfigBase.KEY_STARRY_MODE_CAPTURE_ISO, 300)).intValue();

    @Override // com.oplus.ocs.camera.producer.mode.BaseMode,
              // com.oplus.ocs.camera.producer.mode.ModeInterface
    public int delayCloseForCapturTime() {
        return 0;
    }

    @Override // com.oplus.ocs.camera.producer.mode.BaseMode
    protected String getModeName() {
        return CameraConstant.ModeName.STAR_CAPTURE_MODE;
    }

    @Override // com.oplus.ocs.camera.producer.mode.BaseMode
    protected String getSurfaceUseCase(String str, boolean z) {
        return CameraConstant.UseCase.STAR_CAPTURE_CASE;
    }

    @Override // com.oplus.ocs.camera.producer.mode.BaseMode,
              // com.oplus.ocs.camera.producer.mode.ModeInterface
    public CameraRequestTag createRequestTag(String str, Object obj, Handler handler, String str2,
            PreviewParameter.Builder builder) {
        CameraRequestTag cameraRequestTagCreateRequestTag = super.createRequestTag(str, obj, handler, str2, builder);
        cameraRequestTagCreateRequestTag.mbStarryProcess = true;
        return cameraRequestTagCreateRequestTag;
    }

    @Override // com.oplus.ocs.camera.producer.mode.BaseMode
    public Pair<Size, Size> getSurfaceSize(SdkCameraDeviceConfig sdkCameraDeviceConfig, String str, String str2,
            String str3) {
        Size size;
        SurfaceWrapper surfaceWrapper;
        size = this.mTagMap.get(str3).mPreviewSize;
        surfaceWrapper = sdkCameraDeviceConfig.getPictureSurfaces().get(0);
        switch (str) {
            case "reprocess_input":
            case "raw_output":
            case "raw16_output":
                Size appSurfaceSize = surfaceWrapper.getAppSurfaceSize();
                Size size2 = null;
                Size[] sizeArr = (Size[]) CameraConfigHelper
                        .getConfigValue(CameraConfigBase.KEY_BACK_NIGHT_RAW_PICTURE_SIZE, null);
                if (sizeArr != null && sizeArr.length != 0) {
                    size2 = sizeArr[0];
                }
                if (size2 != null) {
                    return new Pair<>(appSurfaceSize, size2);
                }
                return new Pair<>(appSurfaceSize,
                        CameraCharacteristicsHelper.getSizeByFormat(str3, 1.3333333333333333d, 32));
            case "preview":
                return new Pair<>(size, size);
            case "capture":
                return new Pair<>(surfaceWrapper.getAppSurfaceSize(), surfaceWrapper.getHalSurfaceSize());
            default:
                return new Pair<>(size, size);
        }
    }

    @Override // com.oplus.ocs.camera.producer.mode.BaseMode,
              // com.oplus.ocs.camera.producer.mode.ModeInterface
    public void updateStageParameter(@NonNull Parameter parameter, String str, String str2,
            @Nullable CameraRequestTag cameraRequestTag) {
        super.updateStageParameter(parameter, str, str2, cameraRequestTag);
        if (Parameter.ParameterStage.BEFORE_TAKE_PICTURE.equals(str)) {
            cameraRequestTag.mRequestFormat = 35;
        }
    }

    @Override // com.oplus.ocs.camera.producer.mode.BaseMode,
              // com.oplus.ocs.camera.producer.mode.ModeInterface
    public void updateStageParameterBuilder(@NonNull PreviewParameter.Builder builder, String str, String str2,
            @Nullable CameraRequestTag cameraRequestTag) {
        super.updateStageParameterBuilder(builder, str, str2, cameraRequestTag);
        if (str.equals(Parameter.ParameterStage.BEFORE_TAKE_PICTURE)) {
            checkPictureParameter(builder);
        } else if (str.equals(Parameter.ParameterStage.START_PREVIEW) && PlatformUtil.isMtkPlatform()
                && builder != null) {
            builder.remove(CaptureRequest.FLASH_MODE);
            builder.remove(CaptureRequest.CONTROL_AE_MODE);
        }
    }

    private void checkPictureParameter(@NonNull PreviewParameter.Builder builder) {
        if (!PlatformUtil.isMtkPlatform() || builder == null) {
            return;
        }
        builder.remove(PreviewParameter.KEY_FLASH_MODE);
        builder.set(CaptureRequest.FLASH_MODE, 0);
        builder.set(CaptureRequest.CONTROL_AE_MODE, 0);
        builder.set((CaptureRequest.Key<Long>) CaptureRequest.SENSOR_EXPOSURE_TIME,
                Long.valueOf(STARRY_CAPTURE_EXPOSURETIME * 1000000));
        builder.set((CaptureRequest.Key<Integer>) CaptureRequest.SENSOR_SENSITIVITY,
                Integer.valueOf(STARRY_CAPTURE_ISO));
    }

    @Override // com.oplus.ocs.camera.producer.mode.BaseMode
    protected void onConfigure(CameraSessionEntity cameraSessionEntity, SdkCameraDeviceConfig sdkCameraDeviceConfig,
            String str, @NonNull ApsRequestTag apsRequestTag) {
        cameraSessionEntity.setTemplate(1);
    }
}

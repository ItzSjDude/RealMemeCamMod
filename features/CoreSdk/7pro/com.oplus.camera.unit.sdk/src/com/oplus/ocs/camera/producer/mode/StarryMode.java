package com.oplus.ocs.camera.producer.mode;

import android.hardware.camera2.CaptureRequest;
import android.os.Handler;
import android.util.Pair;
import android.util.Size;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.oplus.ocs.camera.appinterface.adapter.CameraAdapterUtils;
import com.oplus.ocs.camera.common.parameter.Parameter;
import com.oplus.ocs.camera.common.parameter.PreviewParameter;
import com.oplus.ocs.camera.common.parameter.SdkCameraDeviceConfig;
import com.oplus.ocs.camera.common.surface.SurfaceWrapper;
import com.oplus.ocs.camera.common.util.ApsRequestTag;
import com.oplus.ocs.camera.common.util.CameraConfigBase;
import com.oplus.ocs.camera.common.util.CameraConstant;
import com.oplus.ocs.camera.common.util.CameraRequestTag;
import com.oplus.ocs.camera.common.util.Util;
import com.oplus.ocs.camera.producer.device.CameraSessionEntity;
import com.oplus.ocs.camera.producer.info.CameraCharacteristicsHelper;
/* loaded from: classes.dex */
public class StarryMode extends BaseMode {
    private static long STARRY_CAPTURE_EXPOSURETIME = ((Long) CameraAdapterUtils.getConfigValue(CameraConfigBase.KEY_STARRY_MODE_CAPTURE_EXPOSURETIME, 16000L)).longValue();
    private static int STARRY_CAPTURE_ISO = ((Integer) CameraAdapterUtils.getConfigValue(CameraConfigBase.KEY_STARRY_MODE_CAPTURE_ISO, 300)).intValue();

    @Override // com.oplus.ocs.camera.producer.mode.BaseMode
    protected String getModeName() {
        return CameraConstant.ModeName.STAR_CAPTURE_MODE;
    }

    @Override // com.oplus.ocs.camera.producer.mode.BaseMode
    protected String getSurfaceUseCase(String str) {
        return CameraConstant.UseCase.STAR_CAPTURE_CASE;
    }

    @Override // com.oplus.ocs.camera.producer.mode.BaseMode, com.oplus.ocs.camera.producer.mode.ModeInterface
    public boolean needDelayCloseForCapture() {
        return false;
    }

    @Override // com.oplus.ocs.camera.producer.mode.BaseMode, com.oplus.ocs.camera.producer.mode.ModeInterface
    public CameraRequestTag createRequestTag(String str, Object obj, Handler handler, String str2, PreviewParameter.Builder builder) {
        CameraRequestTag createRequestTag = super.createRequestTag(str, obj, handler, str2, builder);
        createRequestTag.mbStarryProcess = true;
        return createRequestTag;
    }

    @Override // com.oplus.ocs.camera.producer.mode.BaseMode
    public Pair<Size, Size> getSurfaceSize(SdkCameraDeviceConfig sdkCameraDeviceConfig, String str, String str2, String str3) {
        char c;
        Size size = this.mTagMap.get(str3).mPreviewSize;
        SurfaceWrapper surfaceWrapper = sdkCameraDeviceConfig.getPictureSurfaces().get(0);
        int hashCode = str.hashCode();
        if (hashCode == -2099255641) {
            if (str.equals("reprocess_input")) {
                c = 3;
            }
            c = 65535;
        } else if (hashCode == -1513135880) {
            if (str.equals("raw_output")) {
                c = 2;
            }
            c = 65535;
        } else if (hashCode != -318184504) {
            if (hashCode == 552585030 && str.equals("capture")) {
                c = 1;
            }
            c = 65535;
        } else {
            if (str.equals("preview")) {
                c = 0;
            }
            c = 65535;
        }
        switch (c) {
            case 0:
                return new Pair<>(size, size);
            case 1:
                return new Pair<>(surfaceWrapper.getAppSurfaceSize(), surfaceWrapper.getHalSurfaceSize());
            case 2:
            case 3:
                Size appSurfaceSize = surfaceWrapper.getAppSurfaceSize();
                Size size2 = null;
                Size[] sizeArr = (Size[]) CameraAdapterUtils.getConfigValue(CameraConfigBase.KEY_BACK_NIGHT_RAW_PICTURE_SIZE, null);
                if (sizeArr != null && sizeArr.length != 0) {
                    size2 = sizeArr[0];
                }
                if (size2 != null) {
                    return new Pair<>(appSurfaceSize, size2);
                }
                return new Pair<>(appSurfaceSize, CameraCharacteristicsHelper.getSizeByFormat(str3, 1.3333333333333333d, 32));
            default:
                return new Pair<>(size, size);
        }
    }

    @Override // com.oplus.ocs.camera.producer.mode.BaseMode, com.oplus.ocs.camera.producer.mode.ModeInterface
    public void updateStageParameter(@NonNull Parameter parameter, String str, String str2, @Nullable CameraRequestTag cameraRequestTag) {
        super.updateStageParameter(parameter, str, str2, cameraRequestTag);
        if (Parameter.ParameterStage.BEFORE_TAKE_PICTURE.equals(str)) {
            cameraRequestTag.mRequestFormat = 35;
        }
    }

    @Override // com.oplus.ocs.camera.producer.mode.BaseMode, com.oplus.ocs.camera.producer.mode.ModeInterface
    public void updateStageParameterBuilder(@NonNull PreviewParameter.Builder builder, String str, String str2, @Nullable CameraRequestTag cameraRequestTag) {
        char c;
        super.updateStageParameterBuilder(builder, str, str2, cameraRequestTag);
        int hashCode = str.hashCode();
        if (hashCode != -930917882) {
            if (hashCode == 2102512875 && str.equals(Parameter.ParameterStage.START_PREVIEW)) {
                c = 1;
            }
            c = 65535;
        } else {
            if (str.equals(Parameter.ParameterStage.BEFORE_TAKE_PICTURE)) {
                c = 0;
            }
            c = 65535;
        }
        switch (c) {
            case 0:
                checkPictureParameter(builder);
                return;
            case 1:
                if (Util.isQcomPlatform() || builder == null) {
                    return;
                }
                builder.remove(CaptureRequest.FLASH_MODE);
                builder.remove(CaptureRequest.CONTROL_AE_MODE);
                return;
            default:
                return;
        }
    }

    private void checkPictureParameter(@NonNull PreviewParameter.Builder builder) {
        if (Util.isQcomPlatform() || builder == null) {
            return;
        }
        builder.remove(PreviewParameter.KEY_FLASH_MODE);
        builder.set((CaptureRequest.Key<CaptureRequest.Key>) CaptureRequest.FLASH_MODE, (CaptureRequest.Key) 0);
        builder.set((CaptureRequest.Key<CaptureRequest.Key>) CaptureRequest.CONTROL_AE_MODE, (CaptureRequest.Key) 0);
        builder.set((CaptureRequest.Key<CaptureRequest.Key>) CaptureRequest.SENSOR_EXPOSURE_TIME, (CaptureRequest.Key) Long.valueOf(STARRY_CAPTURE_EXPOSURETIME * 1000000));
        builder.set((CaptureRequest.Key<CaptureRequest.Key>) CaptureRequest.SENSOR_SENSITIVITY, (CaptureRequest.Key) Integer.valueOf(STARRY_CAPTURE_ISO));
    }

    @Override // com.oplus.ocs.camera.producer.mode.BaseMode
    protected void onConfigure(CameraSessionEntity cameraSessionEntity, SdkCameraDeviceConfig sdkCameraDeviceConfig, String str, @NonNull ApsRequestTag apsRequestTag) {
        cameraSessionEntity.setTemplate(1);
    }
}

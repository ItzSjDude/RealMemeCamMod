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
/* loaded from: classes.dex */
public class LongExposureMode extends BaseMode {
    private static final String TAG = "LongExposureMode";

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.oplus.ocs.camera.producer.mode.BaseMode
    public boolean checkPreviewResult(CameraRequestTag cameraRequestTag) {
        return true;
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
    public String getSurfaceUseCase(String str) {
        return "long_exposure_case";
    }

    @Override // com.oplus.ocs.camera.producer.mode.BaseMode, com.oplus.ocs.camera.producer.mode.ModeInterface
    public boolean needDelayCloseForCapture() {
        return false;
    }

    @Override // com.oplus.ocs.camera.producer.mode.BaseMode
    public boolean useOplusCameraCase(String str) {
        return true;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // com.oplus.ocs.camera.producer.mode.BaseMode
    public Pair<Size, Size> getSurfaceSize(SdkCameraDeviceConfig sdkCameraDeviceConfig, String str, String str2, String str3) {
        char c;
        Size size = this.mTagMap.get(str3).mPreviewSize;
        size.getWidth();
        size.getHeight();
        List<SurfaceWrapper> pictureSurfaces = sdkCameraDeviceConfig.getPictureSurfaces();
        CameraUnitLog.d(TAG, "getSurfaceSize, configuredSurfaceType: " + str + ", targetCameraType: " + str2 + ", cameraType: " + str3);
        switch (str.hashCode()) {
            case -2099255641:
                if (str.equals("reprocess_input")) {
                    c = 6;
                    break;
                }
                c = 65535;
                break;
            case -1513135880:
                if (str.equals("raw_output")) {
                    c = 4;
                    break;
                }
                c = 65535;
                break;
            case -318184504:
                if (str.equals("preview")) {
                    c = 0;
                    break;
                }
                c = 65535;
                break;
            case 163290031:
                if (str.equals("capture_raw")) {
                    c = 5;
                    break;
                }
                c = 65535;
                break;
            case 163297377:
                if (str.equals("capture_yuv")) {
                    c = 1;
                    break;
                }
                c = 65535;
                break;
            case 552585030:
                if (str.equals("capture")) {
                    c = 2;
                    break;
                }
                c = 65535;
                break;
            case 1267103479:
                if (str.equals("reprocess_yuv")) {
                    c = 3;
                    break;
                }
                c = 65535;
                break;
            default:
                c = 65535;
                break;
        }
        switch (c) {
            case 0:
                return new Pair<>(size, size);
            case 1:
            case 2:
            case 3:
                if (pictureSurfaces.size() > 0) {
                    return new Pair<>(pictureSurfaces.get(0).getAppSurfaceSize(), pictureSurfaces.get(0).getHalSurfaceSize());
                }
                break;
            case 4:
            case 5:
            case 6:
                if (pictureSurfaces.size() > 0) {
                    size = pictureSurfaces.get(0).getAppSurfaceSize();
                }
                return new Pair<>(size, CameraCharacteristicsHelper.getSizeByFormat(str3, 1.3333333333333333d, 32));
        }
        return new Pair<>(size, size);
    }

    @Override // com.oplus.ocs.camera.producer.mode.BaseMode
    protected void onConfigure(CameraSessionEntity cameraSessionEntity, SdkCameraDeviceConfig sdkCameraDeviceConfig, String str, @NonNull ApsRequestTag apsRequestTag) {
        cameraSessionEntity.setTemplate(1);
    }

    @Override // com.oplus.ocs.camera.producer.mode.BaseMode, com.oplus.ocs.camera.producer.mode.ModeInterface
    public void updateStageParameter(@NonNull Parameter parameter, String str, String str2, @Nullable CameraRequestTag cameraRequestTag) {
        super.updateStageParameter(parameter, str, str2, cameraRequestTag);
        if (Parameter.ParameterStage.BEFORE_TAKE_PICTURE.equals(str)) {
            parameter.set((CaptureRequest.Key<CaptureRequest.Key>) CaptureRequest.CONTROL_AE_LOCK, (CaptureRequest.Key) true);
            parameter.set((CaptureRequest.Key<CaptureRequest.Key>) CaptureRequest.CONTROL_AWB_LOCK, (CaptureRequest.Key) true);
            parameter.set((CaptureRequest.Key<CaptureRequest.Key>) CaptureRequest.CONTROL_AF_MODE, (CaptureRequest.Key) 1);
            parameter.set((CaptureRequest.Key<CaptureRequest.Key>) CaptureRequest.CONTROL_AF_REGIONS, (CaptureRequest.Key) AEAFHelp.getDefaultWeightRegion());
            parameter.set((CaptureRequest.Key<CaptureRequest.Key>) CaptureRequest.CONTROL_MODE, (CaptureRequest.Key) 1);
            parameter.set((CaptureRequest.Key<CaptureRequest.Key>) CaptureRequest.CONTROL_AE_REGIONS, (CaptureRequest.Key) AEAFHelp.getDefaultWeightRegion());
        }
    }

    @Override // com.oplus.ocs.camera.producer.mode.BaseMode, com.oplus.ocs.camera.producer.mode.ModeInterface
    public void updateStageParameterBuilder(@NonNull PreviewParameter.Builder builder, String str, String str2, @Nullable CameraRequestTag cameraRequestTag) {
        super.updateStageParameterBuilder(builder, str, str2, cameraRequestTag);
        if (cameraRequestTag != null) {
            char c = 65535;
            int hashCode = str.hashCode();
            if (hashCode != -930917882) {
                if (hashCode == 2102512875 && str.equals(Parameter.ParameterStage.START_PREVIEW)) {
                    c = 1;
                }
            } else if (str.equals(Parameter.ParameterStage.BEFORE_TAKE_PICTURE)) {
                c = 0;
            }
            switch (c) {
                case 0:
                    if (builder.containCustomKey(PreviewParameter.KEY_FILTER_TYPE)) {
                        cameraRequestTag.mFilterType = (String) builder.get(PreviewParameter.KEY_FILTER_TYPE);
                        cameraRequestTag.mbFilterOpen = ((Boolean) builder.get(PreviewParameter.KEY_FILTER_OPEN)).booleanValue();
                        cameraRequestTag.mbFilterVignette = ((Boolean) builder.get(PreviewParameter.KEY_FILTER_WITHVIGNETTE)).booleanValue();
                    }
                    if (cameraRequestTag.getRequestMode() == CameraRequestTag.RequestMode.CAPTURE_REPROCESS) {
                        cameraRequestTag.mbLongExposureCaptureEnable = false;
                        cameraRequestTag.mRequestFormat = 35;
                        return;
                    }
                    return;
                case 1:
                    builder.set((CaptureRequest.Key<CaptureRequest.Key>) CaptureRequest.STATISTICS_LENS_SHADING_MAP_MODE, (CaptureRequest.Key) 1);
                    return;
                default:
                    return;
            }
        }
    }

    @Override // com.oplus.ocs.camera.producer.mode.BaseMode, com.oplus.ocs.camera.producer.mode.ModeInterface
    public CameraRequestTag createRequestTag(String str, Object obj, Handler handler, String str2, PreviewParameter.Builder builder) {
        CameraRequestTag createRequestTag = super.createRequestTag(str, obj, handler, str2, builder);
        if (Parameter.ParameterStage.BEFORE_TAKE_PICTURE.equals(str2)) {
            createRequestTag.mbLongExposureCaptureEnable = true;
            createRequestTag.mbRepeatingRequestCapture = true;
            createRequestTag.mRequestNum = 1;
            createRequestTag.mbRaw2yuvEnable = true;
            createRequestTag.mbRectifyEnable = true;
        }
        CameraUnitLog.v(TAG, "createRequestTag, createRequestTag: " + str + ", stage: " + str2 + ", tag: " + createRequestTag);
        return createRequestTag;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.oplus.ocs.camera.producer.mode.BaseMode
    public boolean needAddToTarget(String str, String str2, @NonNull SurfaceKey surfaceKey, PreviewParameter.Builder builder) {
        if (Parameter.ParameterStage.BEFORE_TAKE_PICTURE.equals(str2)) {
            if (32 == surfaceKey.getFormat() || CameraSessionEntity.SurfaceUsage.PREVIEW.equals(surfaceKey.getUsage())) {
                return true;
            }
            if (35 == surfaceKey.getFormat()) {
                return false;
            }
        }
        boolean needAddToTarget = super.needAddToTarget(str, str2, surfaceKey, builder);
        CameraUnitLog.v(TAG, "needAddToTarget, sessionCameraType: " + str + ", stage: " + str2 + ", surfaceKey: " + surfaceKey + ", need: " + needAddToTarget);
        return needAddToTarget;
    }

    @Override // com.oplus.ocs.camera.producer.mode.BaseMode, com.oplus.ocs.camera.producer.mode.ModeInterface
    public boolean needMatchPreviewTimestamp(int i, String str, CameraRequestTag cameraRequestTag, ApsAdapterDecision.DecisionResult decisionResult) {
        if (2 == i) {
            return true;
        }
        return super.needMatchPreviewTimestamp(i, str, cameraRequestTag, decisionResult);
    }
}

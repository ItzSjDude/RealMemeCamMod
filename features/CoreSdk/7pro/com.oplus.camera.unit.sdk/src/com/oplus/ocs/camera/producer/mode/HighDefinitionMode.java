package com.oplus.ocs.camera.producer.mode;

import android.hardware.camera2.CaptureRequest;
import android.util.Pair;
import android.util.Size;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.oplus.ocs.camera.appinterface.CameraDeviceInfoInterface;
import com.oplus.ocs.camera.appinterface.CameraPreviewCallbackAdapter;
import com.oplus.ocs.camera.appinterface.adapter.CameraAdapterUtils;
import com.oplus.ocs.camera.common.parameter.Parameter;
import com.oplus.ocs.camera.common.parameter.PreviewParameter;
import com.oplus.ocs.camera.common.parameter.SdkCameraDeviceConfig;
import com.oplus.ocs.camera.common.parameter.apsadapter.ApsDecisionParameter;
import com.oplus.ocs.camera.common.surface.SurfaceWrapper;
import com.oplus.ocs.camera.common.util.ApsRequestTag;
import com.oplus.ocs.camera.common.util.CameraConfigBase;
import com.oplus.ocs.camera.common.util.CameraConstant;
import com.oplus.ocs.camera.common.util.CameraRequestTag;
import com.oplus.ocs.camera.common.util.CameraUnitLog;
import com.oplus.ocs.camera.common.util.Util;
import com.oplus.ocs.camera.producer.device.CameraSessionEntity;
import com.oplus.ocs.camera.producer.info.CameraCharacteristicsHelper;
import com.oplus.ocs.camera.producer.info.CameraConfigHelper;
import com.oplus.ocs.camera.producer.info.CameraDeviceInfoImpl;
import java.util.List;
import java.util.Map;
import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class HighDefinitionMode extends BaseMode {
    private static final int DEFAULT_HAL_MEMORY = 732;
    private static final int DISABLE = 0;
    private static final int ENABLE = 1;
    private static final String TAG = "HighDefinitionMode";
    private int mZoomFeaturePrev = 0;

    @Override // com.oplus.ocs.camera.producer.mode.BaseMode
    protected String getModeName() {
        return CameraConstant.ModeName.HIGH_DEFINITION_MODE;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.oplus.ocs.camera.producer.mode.BaseMode
    public CameraDeviceInfoInterface createCameraDeviceInfo(String str) {
        CameraDeviceInfoImpl cameraDeviceInfoImpl = (CameraDeviceInfoImpl) super.createCameraDeviceInfo(str);
        Map<String, Object> previewParameterRangeMap = cameraDeviceInfoImpl.getPreviewParameterRangeMap();
        previewParameterRangeMap.put(PreviewParameter.KEY_ZOOM_RATIO.getName(), new ZoomHelper(str).getZoomRatioList(false, "rear_sat".equals(str), false, true, cameraDeviceInfoImpl));
        if (((Boolean) CameraConfigHelper.getConfigValue(CameraConfigBase.KEY_HIGH_DEFINITION_PRO_SUPPORT, false)).booleanValue()) {
            previewParameterRangeMap.put(PreviewParameter.KEY_COLOR_TEMPERATURE_RANGE.getName(), CameraCharacteristicsHelper.getColorTemperatureValueList(str));
        }
        return cameraDeviceInfoImpl;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // com.oplus.ocs.camera.producer.mode.BaseMode
    protected Pair<Size, Size> getSurfaceSize(SdkCameraDeviceConfig sdkCameraDeviceConfig, String str, String str2, String str3) {
        char c;
        Size size = ((ApsRequestTag) Objects.requireNonNull(this.mTagMap.get(str3))).mPreviewSize;
        List<SurfaceWrapper> pictureSurfaces = sdkCameraDeviceConfig.getPictureSurfaces();
        CameraUnitLog.d(TAG, "getSurfaceSize, configuredSurfaceType: " + str + ", targetCameraType: " + str2 + ", cameraType: " + str3);
        switch (str.hashCode()) {
            case -1513135880:
                if (str.equals("raw_output")) {
                    c = 2;
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
            case 163297377:
                if (str.equals("capture_yuv")) {
                    c = 5;
                    break;
                }
                c = 65535;
                break;
            case 552585030:
                if (str.equals("capture")) {
                    c = 4;
                    break;
                }
                c = 65535;
                break;
            case 1238458461:
                if (str.equals("tuning_data_raw")) {
                    c = 3;
                    break;
                }
                c = 65535;
                break;
            case 1238465807:
                if (str.equals("tuning_data_yuv")) {
                    c = 1;
                    break;
                }
                c = 65535;
                break;
            case 2043358779:
                if (str.equals(CameraConstant.SessionSurfaceType.JSON_KEY_STREAM_CAPTURE_YUV_MFNR)) {
                    c = 6;
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
                Size tuningDataSurfaceSize = CameraCharacteristicsHelper.getTuningDataSurfaceSize(str3, "tuning_data_yuv");
                return new Pair<>(tuningDataSurfaceSize, tuningDataSurfaceSize);
            case 2:
                if (pictureSurfaces.size() > 0) {
                    size = pictureSurfaces.get(0).getAppSurfaceSize();
                }
                return new Pair<>(size, CameraCharacteristicsHelper.getSizeByFormat(str3, 1.3333333333333333d, 32));
            case 3:
                Size tuningDataSurfaceSize2 = CameraCharacteristicsHelper.getTuningDataSurfaceSize(str3, "tuning_data_raw");
                return new Pair<>(tuningDataSurfaceSize2, tuningDataSurfaceSize2);
            case 4:
            case 5:
                if (pictureSurfaces.size() > 0) {
                    return new Pair<>(pictureSurfaces.get(0).getAppSurfaceSize(), pictureSurfaces.get(0).getHalSurfaceSize());
                }
                break;
            case 6:
                Size captureYuvMfnrSize = getCaptureYuvMfnrSize(str3);
                if (captureYuvMfnrSize != null) {
                    return new Pair<>(captureYuvMfnrSize, captureYuvMfnrSize);
                }
                break;
        }
        return new Pair<>(size, size);
    }

    @Override // com.oplus.ocs.camera.producer.mode.BaseMode
    public String getSurfaceUseCase(String str) {
        return CameraAdapterUtils.getConfigValue(CameraConfigBase.KEY_HIGH_MFNR_PICTURE_SIZE, null) != null ? CameraConstant.UseCase.MFNR_PHOTO : CameraConstant.UseCase.SINGLE_PHOTO;
    }

    @Override // com.oplus.ocs.camera.producer.mode.BaseMode
    protected void onConfigure(CameraSessionEntity cameraSessionEntity, SdkCameraDeviceConfig sdkCameraDeviceConfig, String str, @NonNull ApsRequestTag apsRequestTag) {
        cameraSessionEntity.setTemplate(1);
        apsRequestTag.mbHighPictureSizeEnable = true;
        apsRequestTag.mModeName = CameraConstant.ModeName.HIGH_DEFINITION_MODE;
    }

    @Override // com.oplus.ocs.camera.producer.mode.BaseMode, com.oplus.ocs.camera.producer.mode.ModeInterface
    public void updateStageParameterBuilder(@NonNull PreviewParameter.Builder builder, String str, String str2, @Nullable CameraRequestTag cameraRequestTag) {
        super.updateStageParameterBuilder(builder, str, str2, cameraRequestTag);
        if (cameraRequestTag != null && isSupportZoom()) {
            updateInSensorZoomTag(builder, str, cameraRequestTag);
        }
        if (Parameter.ParameterStage.START_PREVIEW.equals(str)) {
            checkColorTemperature(builder);
        }
    }

    private void checkColorTemperature(PreviewParameter.Builder builder) {
        int[] iArr = (int[]) builder.get(PreviewParameter.KEY_COLOR_TEMPERATURE);
        if (iArr != null && iArr.length > 0 && -1 != iArr[0]) {
            if (!Util.isQcomPlatform()) {
                builder.set((CaptureRequest.Key<CaptureRequest.Key>) CaptureRequest.CONTROL_AWB_MODE, (CaptureRequest.Key) 10);
                return;
            } else {
                builder.set((CaptureRequest.Key<CaptureRequest.Key>) CaptureRequest.CONTROL_AWB_MODE, (CaptureRequest.Key) 0);
                return;
            }
        }
        builder.set((CaptureRequest.Key<CaptureRequest.Key>) CaptureRequest.CONTROL_AWB_MODE, (CaptureRequest.Key) 1);
    }

    private void updateInSensorZoomTag(PreviewParameter.Builder builder, String str, CameraRequestTag cameraRequestTag) {
        char c;
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
                if (cameraRequestTag.mbBurstShot) {
                    return;
                }
                synchronized (this.mPreviewResultLock) {
                    if (this.mPreviewResult != null) {
                        cameraRequestTag.mSupportCaptureZoomFeature = ((Integer) this.mPreviewResult.get(ApsDecisionParameter.KEY_PREVIEW_SUPPORT_ZOOM_FEATURE)).intValue();
                    }
                }
                CameraUnitLog.i(TAG, "updateInSensorZoomTag, mSupportCaptureZoomFeature: " + cameraRequestTag.mSupportCaptureZoomFeature);
                return;
            case 1:
                if (isSupportInSensorZoomForPreview()) {
                    synchronized (this.mPreviewResultLock) {
                        if (this.mPreviewResult != null) {
                            int intValue = ((Integer) this.mPreviewResult.get(ApsDecisionParameter.KEY_PREVIEW_SUPPORT_ZOOM_FEATURE)).intValue();
                            int i = 4 == intValue ? 1 : 0;
                            cameraRequestTag.mSupportCaptureZoomFeature = intValue;
                            builder.set((Parameter.Key<Parameter.Key<int[]>>) PreviewParameter.KEY_IZOOM_PREVIEW, (Parameter.Key<int[]>) new int[]{i});
                        }
                    }
                    return;
                }
                return;
            default:
                return;
        }
    }

    private boolean isSupportZoom() {
        return ((Boolean) CameraAdapterUtils.getConfigValue(CameraConfigBase.KEY_SUPPORT_HIGH_DEFINITION_ZOOM, false)).booleanValue();
    }

    private boolean isSupportInSensorZoomForPreview() {
        return ((Boolean) CameraAdapterUtils.getConfigValue(CameraConfigBase.KEY_SUPPORT_IZOOM_PREVIEW_ENABLE, false)).booleanValue();
    }

    @Override // com.oplus.ocs.camera.producer.mode.BaseMode, com.oplus.ocs.camera.producer.mode.ModeInterface
    public boolean needStartPreview(CameraPreviewCallbackAdapter.PreviewResult previewResult) {
        boolean z;
        if (isSupportZoom() && isSupportInSensorZoomForPreview() && this.mZoomFeaturePrev != ((Integer) previewResult.get(ApsDecisionParameter.KEY_PREVIEW_SUPPORT_ZOOM_FEATURE)).intValue()) {
            int intValue = ((Integer) previewResult.get(ApsDecisionParameter.KEY_PREVIEW_SUPPORT_ZOOM_FEATURE)).intValue();
            z = this.mZoomFeaturePrev != intValue && (4 == intValue || 4 == this.mZoomFeaturePrev);
            this.mZoomFeaturePrev = intValue;
        } else {
            z = false;
        }
        return super.needStartPreview(previewResult) || z;
    }

    @Override // com.oplus.ocs.camera.producer.mode.BaseMode
    protected long getHalMemory() {
        return ((Integer) CameraAdapterUtils.getConfigValue(CameraConfigBase.KEY_HAL_MEMORY_HIGH_DEFINITION, Integer.valueOf((int) DEFAULT_HAL_MEMORY))).intValue();
    }
}

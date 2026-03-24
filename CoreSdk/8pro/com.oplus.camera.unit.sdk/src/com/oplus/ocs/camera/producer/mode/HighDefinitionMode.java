package com.oplus.ocs.camera.producer.mode;

import android.hardware.camera2.CaptureRequest;
import android.os.Handler;
import android.util.Pair;
import android.util.Size;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.oplus.ocs.camera.appinterface.CameraDeviceInfoInterface;
import com.oplus.ocs.camera.appinterface.CameraPreviewCallbackAdapter;
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
import com.oplus.ocs.camera.common.util.PlatformUtil;
import com.oplus.ocs.camera.producer.device.CameraSessionEntity;
import com.oplus.ocs.camera.producer.info.CameraCharacteristicsHelper;
import com.oplus.ocs.camera.producer.info.CameraConfigHelper;
import com.oplus.ocs.camera.producer.info.CameraDeviceInfoImpl;
import java.util.List;
import java.util.Map;
import java.util.Objects;
/* loaded from: classes.dex */
class HighDefinitionMode extends BaseMode {
    private static final String AI_50M = "ai_50m";
    private static final int DEFAULT_HAL_MEMORY = 732;
    private static final int DISABLE = 0;
    private static final int ENABLE = 1;
    private static final String TAG = "HighDefinitionMode";
    private boolean mbRawSREnable = false;
    private Long mCaptureExposureTime = null;
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

    @Override // com.oplus.ocs.camera.producer.mode.BaseMode
    protected Pair<Size, Size> getSurfaceSize(SdkCameraDeviceConfig sdkCameraDeviceConfig, String str, String str2, String str3) {
        Size size = ((ApsRequestTag) Objects.requireNonNull(this.mTagMap.get(str3))).mPreviewSize;
        List<SurfaceWrapper> pictureSurfaces = sdkCameraDeviceConfig.getPictureSurfaces();
        CameraUnitLog.d(TAG, "getSurfaceSize, configuredSurfaceType: " + str + ", targetCameraType: " + str2 + ", cameraType: " + str3);
        str.hashCode();
        char c = 65535;
        switch (str.hashCode()) {
            case -1513135880:
                if (str.equals("raw_output")) {
                    c = 0;
                    break;
                }
                break;
            case -318184504:
                if (str.equals("preview")) {
                    c = 1;
                    break;
                }
                break;
            case 163290031:
                if (str.equals("capture_raw")) {
                    c = 2;
                    break;
                }
                break;
            case 163297377:
                if (str.equals("capture_yuv")) {
                    c = 3;
                    break;
                }
                break;
            case 552585030:
                if (str.equals("capture")) {
                    c = 4;
                    break;
                }
                break;
            case 1238458461:
                if (str.equals("tuning_data_raw")) {
                    c = 5;
                    break;
                }
                break;
            case 1238465807:
                if (str.equals("tuning_data_yuv")) {
                    c = 6;
                    break;
                }
                break;
            case 2043358779:
                if (str.equals(CameraConstant.SessionSurfaceType.JSON_KEY_STREAM_CAPTURE_YUV_MFNR)) {
                    c = 7;
                    break;
                }
                break;
        }
        switch (c) {
            case 0:
                if (pictureSurfaces.size() > 0) {
                    size = pictureSurfaces.get(0).getAppSurfaceSize();
                }
                return new Pair<>(size, CameraCharacteristicsHelper.getSizeByFormat(str3, 1.3333333333333333d, 32));
            case 1:
                return new Pair<>(size, size);
            case 2:
            case 3:
            case 4:
                if (pictureSurfaces.size() > 0) {
                    return new Pair<>(pictureSurfaces.get(0).getAppSurfaceSize(), pictureSurfaces.get(0).getHalSurfaceSize());
                }
                break;
            case 5:
                Size tuningDataSurfaceSize = CameraCharacteristicsHelper.getTuningDataSurfaceSize(str3, "tuning_data_raw");
                return new Pair<>(tuningDataSurfaceSize, tuningDataSurfaceSize);
            case 6:
                Size tuningDataSurfaceSize2 = CameraCharacteristicsHelper.getTuningDataSurfaceSize(str3, "tuning_data_yuv");
                return new Pair<>(tuningDataSurfaceSize2, tuningDataSurfaceSize2);
            case 7:
                Size captureYuvMfnrSize = getCaptureYuvMfnrSize(str3);
                if (captureYuvMfnrSize != null) {
                    return new Pair<>(captureYuvMfnrSize, captureYuvMfnrSize);
                }
                break;
        }
        return new Pair<>(size, size);
    }

    @Override // com.oplus.ocs.camera.producer.mode.BaseMode, com.oplus.ocs.camera.producer.mode.ModeInterface
    public CameraRequestTag createRequestTag(String str, Object obj, Handler handler, String str2, PreviewParameter.Builder builder) {
        CameraRequestTag createRequestTag = super.createRequestTag(str, obj, handler, str2, builder);
        createRequestTag.mbRawSREnable = isRawSROpen(str);
        return createRequestTag;
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

    @Override // com.oplus.ocs.camera.producer.mode.BaseMode
    public String getSurfaceUseCase(String str, boolean z) {
        return isAiHighPixelEnable(str) ? CameraConstant.UseCase.AI_HIGH_PIXEL_CASE : CameraConfigHelper.getConfigValue(CameraConfigBase.KEY_HIGH_MFNR_PICTURE_SIZE, null) != null ? CameraConstant.UseCase.MFNR_PHOTO : CameraConstant.UseCase.SINGLE_PHOTO;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.oplus.ocs.camera.producer.mode.BaseMode
    public String getFeatureName(String str) {
        return isRawSROpen(str) ? "on" : "off";
    }

    @Override // com.oplus.ocs.camera.producer.mode.BaseMode
    protected void onConfigure(CameraSessionEntity cameraSessionEntity, SdkCameraDeviceConfig sdkCameraDeviceConfig, String str, @NonNull ApsRequestTag apsRequestTag) {
        Map<String, Map<String, String>> map;
        Map<String, String> map2;
        String str2;
        cameraSessionEntity.setTemplate(1);
        apsRequestTag.mbHighPictureSizeEnable = true;
        apsRequestTag.mModeName = CameraConstant.ModeName.HIGH_DEFINITION_MODE;
        apsRequestTag.mbAiHighPixelEnable = isAiHighPixelEnable(str);
        this.mbRawSREnable = isAiHighPixelEnable(str);
        if (!isAiHighPixelEnable(str) || (map = CameraConfigHelper.getFeatureOperationMode().get(sdkCameraDeviceConfig.getModeName())) == null || (map2 = map.get(AI_50M)) == null || (str2 = map2.get("on")) == null) {
            return;
        }
        cameraSessionEntity.setOperationMode(str2);
        CameraUnitLog.d(TAG, "onConfigure, set Ai50M operation mode:" + str2);
    }

    @Override // com.oplus.ocs.camera.producer.mode.BaseMode, com.oplus.ocs.camera.producer.mode.ModeInterface
    public void updateStageParameterBuilder(@NonNull PreviewParameter.Builder builder, String str, String str2, @Nullable CameraRequestTag cameraRequestTag) {
        super.updateStageParameterBuilder(builder, str, str2, cameraRequestTag);
        if (cameraRequestTag != null && isSupportZoom()) {
            updateInSensorZoomTag(builder, str, cameraRequestTag);
        }
        if (PlatformUtil.isMtkPlatform() && ((str.equals(Parameter.ParameterStage.BEFORE_TAKE_PICTURE) || str.equals(Parameter.ParameterStage.START_PREVIEW)) && ((Boolean) CameraConfigHelper.getConfigValue(CameraConfigBase.KEY_HIGH_DEFINITION_PRO_SUPPORT, false)).booleanValue())) {
            checkHighPictureProfessionalAeMode(builder);
            checkExposureTime(builder, str);
            setFrameDuration(builder);
        }
        if (Parameter.ParameterStage.START_PREVIEW.equals(str)) {
            checkColorTemperature(builder);
        }
        if (Parameter.ParameterStage.BEFORE_TAKE_PICTURE.equals(str)) {
            updateCameraRequestTag(builder, cameraRequestTag);
        }
    }

    private void updateCameraRequestTag(PreviewParameter.Builder builder, CameraRequestTag cameraRequestTag) {
        if (builder.containCustomKey(PreviewParameter.KEY_AI_PHOTO)) {
            cameraRequestTag.mbPiEnable = "on".equals(builder.get(PreviewParameter.KEY_AI_PHOTO));
        }
    }

    private void checkColorTemperature(PreviewParameter.Builder builder) {
        int[] iArr = (int[]) builder.get(PreviewParameter.KEY_COLOR_TEMPERATURE);
        if (iArr != null && iArr.length > 0 && -1 != iArr[0]) {
            if (PlatformUtil.isMtkPlatform()) {
                builder.set((CaptureRequest.Key<CaptureRequest.Key>) CaptureRequest.CONTROL_AWB_MODE, (CaptureRequest.Key) 10);
                return;
            } else {
                builder.set((CaptureRequest.Key<CaptureRequest.Key>) CaptureRequest.CONTROL_AWB_MODE, (CaptureRequest.Key) 0);
                return;
            }
        }
        builder.set((CaptureRequest.Key<CaptureRequest.Key>) CaptureRequest.CONTROL_AWB_MODE, (CaptureRequest.Key) 1);
    }

    private void checkHighPictureProfessionalAeMode(PreviewParameter.Builder builder) {
        Long l = (Long) builder.get(CaptureRequest.SENSOR_EXPOSURE_TIME);
        Integer num = (Integer) builder.get(CaptureRequest.SENSOR_SENSITIVITY);
        CameraUnitLog.v(TAG, "checkHighPictureProfessionalAeMode, exposureTime: " + l + ", iso: " + num);
        if (!((Boolean) CameraConfigHelper.getConfigValue(CameraConfigBase.KEY_MMCAMERA_PROFESSIONAL_AEMODE_CLOSED, false)).booleanValue() ? !((num == null || -1 == num.intValue()) && (l == null || -1 == l.longValue())) : !(num == null || -1 == num.intValue() || l == null || -1 == l.longValue())) {
            builder.remove(PreviewParameter.KEY_FLASH_MODE);
            builder.set((CaptureRequest.Key<CaptureRequest.Key>) CaptureRequest.FLASH_MODE, (CaptureRequest.Key) 0);
            builder.set((CaptureRequest.Key<CaptureRequest.Key>) CaptureRequest.CONTROL_AE_MODE, (CaptureRequest.Key) 0);
            return;
        }
        if (builder.get(PreviewParameter.KEY_FLASH_MODE) == null) {
            builder.set((Parameter.Key<Parameter.Key<String>>) PreviewParameter.KEY_FLASH_MODE, (Parameter.Key<String>) "off");
        }
        builder.remove(CaptureRequest.FLASH_MODE);
        builder.remove(CaptureRequest.CONTROL_AE_MODE);
    }

    private void checkExposureTime(PreviewParameter.Builder builder, String str) {
        Long l = (Long) builder.get(CaptureRequest.SENSOR_EXPOSURE_TIME);
        if (l == null) {
            return;
        }
        if (Parameter.ParameterStage.START_PREVIEW.equals(str)) {
            if (40000000 < l.longValue()) {
                builder.set((CaptureRequest.Key<CaptureRequest.Key>) CaptureRequest.SENSOR_EXPOSURE_TIME, (CaptureRequest.Key) 40000000L);
                this.mCaptureExposureTime = l;
            } else if (40000000 > l.longValue()) {
                this.mCaptureExposureTime = null;
            }
        } else if (Parameter.ParameterStage.BEFORE_TAKE_PICTURE.equals(str)) {
            if (this.mCaptureExposureTime != null) {
                builder.set((CaptureRequest.Key<CaptureRequest.Key>) CaptureRequest.SENSOR_EXPOSURE_TIME, (CaptureRequest.Key) this.mCaptureExposureTime);
                l = this.mCaptureExposureTime;
            }
            if (l.longValue() >= 40000000) {
                builder.remove(PreviewParameter.KEY_FLASH_MODE);
                builder.set((CaptureRequest.Key<CaptureRequest.Key>) CaptureRequest.FLASH_MODE, (CaptureRequest.Key) 0);
                builder.set((CaptureRequest.Key<CaptureRequest.Key>) CaptureRequest.CONTROL_AE_MODE, (CaptureRequest.Key) 0);
            }
        }
        builder.set((Parameter.Key<Parameter.Key<Long>>) PreviewParameter.KEY_MULTI_FRAME_EXPOSURE_TIME, (Parameter.Key<Long>) l);
        if (l.longValue() < 40000000) {
            builder.set((Parameter.Key<Parameter.Key<int[]>>) PreviewParameter.KEY_LONGSHOT_ENABLE, (Parameter.Key<int[]>) new int[]{0});
        } else {
            builder.set((Parameter.Key<Parameter.Key<int[]>>) PreviewParameter.KEY_LONGSHOT_ENABLE, (Parameter.Key<int[]>) new int[]{1});
        }
    }

    private void updateInSensorZoomTag(PreviewParameter.Builder builder, String str, CameraRequestTag cameraRequestTag) {
        str.hashCode();
        if (str.equals(Parameter.ParameterStage.BEFORE_TAKE_PICTURE)) {
            if (cameraRequestTag.mbBurstShot) {
                return;
            }
            synchronized (this.mPreviewResultLock) {
                if (this.mPreviewResult != null) {
                    cameraRequestTag.mSupportCaptureZoomFeature = ((Integer) this.mPreviewResult.get(ApsDecisionParameter.KEY_PREVIEW_SUPPORT_ZOOM_FEATURE)).intValue();
                }
            }
            CameraUnitLog.i(TAG, "updateInSensorZoomTag, mSupportCaptureZoomFeature: " + cameraRequestTag.mSupportCaptureZoomFeature);
        } else if (str.equals(Parameter.ParameterStage.START_PREVIEW) && isSupportInSensorZoomForPreview()) {
            synchronized (this.mPreviewResultLock) {
                if (this.mPreviewResult != null) {
                    int intValue = ((Integer) this.mPreviewResult.get(ApsDecisionParameter.KEY_PREVIEW_SUPPORT_ZOOM_FEATURE)).intValue();
                    int i = 4 == intValue ? 1 : 0;
                    cameraRequestTag.mSupportCaptureZoomFeature = intValue;
                    builder.set((Parameter.Key<Parameter.Key<int[]>>) PreviewParameter.KEY_IZOOM_PREVIEW, (Parameter.Key<int[]>) new int[]{i});
                }
            }
        }
    }

    private boolean isSupportZoom() {
        return ((Boolean) CameraConfigHelper.getConfigValue(CameraConfigBase.KEY_SUPPORT_HIGH_DEFINITION_ZOOM, false)).booleanValue();
    }

    private boolean isSupportInSensorZoomForPreview() {
        return ((Boolean) CameraConfigHelper.getConfigValue(CameraConfigBase.KEY_SUPPORT_IZOOM_PREVIEW_ENABLE, false)).booleanValue();
    }

    @Override // com.oplus.ocs.camera.producer.mode.BaseMode, com.oplus.ocs.camera.producer.mode.ModeInterface
    public boolean needStartPreview(CameraPreviewCallbackAdapter.PreviewResult previewResult) {
        boolean z;
        if (isSupportZoom() && isSupportInSensorZoomForPreview() && this.mZoomFeaturePrev != ((Integer) previewResult.get(ApsDecisionParameter.KEY_PREVIEW_SUPPORT_ZOOM_FEATURE)).intValue()) {
            int intValue = ((Integer) previewResult.get(ApsDecisionParameter.KEY_PREVIEW_SUPPORT_ZOOM_FEATURE)).intValue();
            int i = this.mZoomFeaturePrev;
            z = i != intValue && (4 == intValue || 4 == i);
            this.mZoomFeaturePrev = intValue;
        } else {
            z = false;
        }
        return super.needStartPreview(previewResult) || z;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.oplus.ocs.camera.producer.mode.BaseMode
    public boolean needAddToTarget(String str, String str2, @NonNull SurfaceKey surfaceKey, PreviewParameter.Builder builder) {
        if (Parameter.ParameterStage.BEFORE_TAKE_PICTURE.equals(str2) && "surface_key_picture".equals(surfaceKey.getUsage()) && isAiHighPixelEnable(str)) {
            return isRawSROpen(str) ? 32 == surfaceKey.getFormat() : 35 == surfaceKey.getFormat();
        }
        return super.needAddToTarget(str, str2, surfaceKey, builder);
    }

    @Override // com.oplus.ocs.camera.producer.mode.BaseMode
    protected long getHalMemory() {
        return ((Integer) CameraConfigHelper.getConfigValue(CameraConfigBase.KEY_HAL_MEMORY_HIGH_DEFINITION, Integer.valueOf((int) DEFAULT_HAL_MEMORY))).intValue();
    }

    @Override // com.oplus.ocs.camera.producer.mode.BaseMode
    protected boolean useMfnrSizeToCalculateMemory() {
        return CameraConfigHelper.getConfigValue(CameraConfigBase.KEY_HIGH_MFNR_PICTURE_SIZE, null) != null;
    }
}

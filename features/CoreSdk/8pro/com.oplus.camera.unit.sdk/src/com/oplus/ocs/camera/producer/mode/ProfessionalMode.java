package com.oplus.ocs.camera.producer.mode;

import android.hardware.camera2.CaptureRequest;
import android.os.Handler;
import android.util.Pair;
import android.util.Size;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.oplus.ocs.camera.appinterface.CameraDeviceInfoInterface;
import com.oplus.ocs.camera.common.parameter.Parameter;
import com.oplus.ocs.camera.common.parameter.PreviewParameter;
import com.oplus.ocs.camera.common.parameter.SdkCameraDeviceConfig;
import com.oplus.ocs.camera.common.parameter.apsadapter.ApsDecisionParameter;
import com.oplus.ocs.camera.common.surface.SurfaceKey;
import com.oplus.ocs.camera.common.util.ApsConstant;
import com.oplus.ocs.camera.common.util.ApsRequestTag;
import com.oplus.ocs.camera.common.util.CameraConfigBase;
import com.oplus.ocs.camera.common.util.CameraConstant;
import com.oplus.ocs.camera.common.util.CameraRequestTag;
import com.oplus.ocs.camera.common.util.CameraUnitLog;
import com.oplus.ocs.camera.common.util.ParameterKeys;
import com.oplus.ocs.camera.common.util.PlatformUtil;
import com.oplus.ocs.camera.common.util.Util;
import com.oplus.ocs.camera.consumer.apsAdapter.adapter.DefaultUtill;
import com.oplus.ocs.camera.consumer.apsAdapter.config.AlgoSwitchConfig;
import com.oplus.ocs.camera.producer.device.CameraSessionEntity;
import com.oplus.ocs.camera.producer.info.CameraCharacteristicsHelper;
import com.oplus.ocs.camera.producer.info.CameraConfigHelper;
import com.oplus.ocs.camera.producer.info.CameraDeviceInfoImpl;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
/* loaded from: classes.dex */
public class ProfessionalMode extends BaseMode {
    private static final int EDGE_FILTER_PARAM_LENGTH = 2;
    private static final int SLOW_SHUTTER_ANIMATION_TIME = 1000000000;
    private static final String TAG = "ProfessionalMode";
    private String mRawValue = "none";
    private boolean mbFocusPeakingEnabled = false;
    private boolean mbEdgeFilterSupported = false;
    private Long mCaptureExposureTime = null;

    @Override // com.oplus.ocs.camera.producer.mode.BaseMode
    protected String getModeName() {
        return "professional_mode";
    }

    @Override // com.oplus.ocs.camera.producer.mode.BaseMode
    protected String getSurfaceUseCase(String str, boolean z) {
        return "professional_case";
    }

    @Override // com.oplus.ocs.camera.producer.mode.BaseMode
    protected Pair<Size, Size> getSurfaceSize(SdkCameraDeviceConfig sdkCameraDeviceConfig, String str, String str2, String str3) {
        ApsRequestTag apsRequestTag = this.mTagMap.get(str3);
        Size size = null;
        if (apsRequestTag == null) {
            return null;
        }
        str.hashCode();
        char c = 65535;
        switch (str.hashCode()) {
            case -318184504:
                if (str.equals("preview")) {
                    c = 0;
                    break;
                }
                break;
            case 163290031:
                if (str.equals("capture_raw")) {
                    c = 1;
                    break;
                }
                break;
            case 552585030:
                if (str.equals("capture")) {
                    c = 2;
                    break;
                }
                break;
            case 1238465807:
                if (str.equals("tuning_data_yuv")) {
                    c = 3;
                    break;
                }
                break;
        }
        switch (c) {
            case 0:
                size = apsRequestTag.mPreviewSize;
                break;
            case 1:
                size = CameraCharacteristicsHelper.getSizeByFormat(str3, 1.3333333333333333d, 32);
                break;
            case 2:
                Size size2 = this.mTagMap.get(str3).mPreviewSize;
                double width = size2.getWidth() / size2.getHeight();
                if ("1".equals(CameraConfigHelper.getConfigValue(DefaultUtill.KEY_SUPPORT_CHANGE_PICTURE_RATIO))) {
                    double screenHeight = Util.getScreenHeight() / Util.getScreenWidth();
                    if (0.03d > Math.abs(screenHeight - width)) {
                        width = screenHeight;
                    }
                }
                List<Size> pictureSizes = getPictureSizes(str3, 256);
                int size3 = pictureSizes.size();
                if (size3 > 0) {
                    size = Util.getMaxSizeByRatio((Size[]) pictureSizes.toArray(new Size[size3]), width);
                    break;
                }
                break;
            case 3:
                size = CameraCharacteristicsHelper.getTuningDataSurfaceSize(str3, "tuning_data_yuv");
                break;
        }
        return new Pair<>(size, size);
    }

    @Override // com.oplus.ocs.camera.producer.mode.BaseMode
    protected void onConfigure(CameraSessionEntity cameraSessionEntity, SdkCameraDeviceConfig sdkCameraDeviceConfig, String str, @NonNull ApsRequestTag apsRequestTag) {
        cameraSessionEntity.setTemplate(1);
        this.mbEdgeFilterSupported = AlgoSwitchConfig.getSupportPreviewAlgo("professional", this.mRearFrontCameraId, "preview", ParameterKeys.PREVIEW_ALGO_NAME_EDGE_FILTER);
        CameraUnitLog.v(TAG, "onConfigure, edge filter supported: " + this.mbEdgeFilterSupported);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.oplus.ocs.camera.producer.mode.BaseMode
    public String getFeatureName(String str) {
        return this.mbFocusPeakingEnabled ? ApsConstant.FEATURE_FOCUS_PEAKING : super.getFeatureName(str);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.oplus.ocs.camera.producer.mode.BaseMode
    public CameraDeviceInfoInterface createCameraDeviceInfo(String str) {
        CameraDeviceInfoImpl cameraDeviceInfoImpl = (CameraDeviceInfoImpl) super.createCameraDeviceInfo(str);
        List<Integer> colorTemperatureValueList = CameraCharacteristicsHelper.getColorTemperatureValueList(str);
        Map<String, Object> previewParameterRangeMap = cameraDeviceInfoImpl.getPreviewParameterRangeMap();
        previewParameterRangeMap.put(PreviewParameter.KEY_COLOR_TEMPERATURE_RANGE.getName(), colorTemperatureValueList);
        previewParameterRangeMap.put(PreviewParameter.KEY_ZOOM_RATIO.getName(), new ZoomHelper(str).getZoomRatioList(false, false, false));
        return cameraDeviceInfoImpl;
    }

    @Override // com.oplus.ocs.camera.producer.mode.BaseMode, com.oplus.ocs.camera.producer.mode.ModeInterface
    public void updateStageParameterBuilder(@NonNull PreviewParameter.Builder builder, String str, String str2, @Nullable CameraRequestTag cameraRequestTag) {
        super.updateStageParameterBuilder(builder, str, str2, cameraRequestTag);
        if (str.equals(Parameter.ParameterStage.BEFORE_TAKE_PICTURE) || str.equals(Parameter.ParameterStage.START_PREVIEW)) {
            checkProfessionalAeMode(builder);
            checkExposureTime(builder, str);
            setFastCapture(builder, cameraRequestTag);
            setFrameDuration(builder);
            setManualCaptureParameters(builder, cameraRequestTag);
            updateFocusPeakingFeature(builder, str2, cameraRequestTag);
            updateRawValue(builder, cameraRequestTag);
        }
        str.hashCode();
        if (str.equals(Parameter.ParameterStage.BEFORE_TAKE_PICTURE)) {
            if ("none".equals(this.mRawValue)) {
                return;
            }
            builder.set((CaptureRequest.Key<CaptureRequest.Key>) CaptureRequest.STATISTICS_LENS_SHADING_MAP_MODE, (CaptureRequest.Key) 1);
        } else if (str.equals(Parameter.ParameterStage.START_PREVIEW)) {
            checkColorTemperature(builder);
        }
    }

    @Override // com.oplus.ocs.camera.producer.mode.BaseMode, com.oplus.ocs.camera.producer.mode.ModeInterface
    public CameraRequestTag createRequestTag(String str, Object obj, Handler handler, String str2, PreviewParameter.Builder builder) {
        CameraRequestTag createRequestTag = super.createRequestTag(str, obj, handler, str2, builder);
        createRequestTag.mRawValue = this.mRawValue;
        createRequestTag.mbSupportFocusPeaking = AlgoSwitchConfig.getSupportCameraFeature(ApsConstant.FEATURE_FOCUS_PEAKING, CameraCharacteristicsHelper.getCameraIdType(str).getCameraId());
        if (Parameter.ParameterStage.BEFORE_TAKE_PICTURE.equals(str2) && "super_raw".equals(createRequestTag.mRawValue)) {
            synchronized (this.mPreviewResultLock) {
                createRequestTag.mCaptureEvList = (int[]) this.mPreviewResult.get(ApsDecisionParameter.KEY_PREVIEW_CAPTURE_EV_LIST);
                createRequestTag.mbHdrTrigger = true;
            }
        }
        return createRequestTag;
    }

    @Override // com.oplus.ocs.camera.producer.mode.BaseMode
    public boolean needAddToTarget(String str, String str2, @NonNull SurfaceKey surfaceKey, PreviewParameter.Builder builder) {
        if (Parameter.ParameterStage.BEFORE_TAKE_PICTURE.equals(str2)) {
            if ("raw".equals(this.mRawValue)) {
                if ((32 == surfaceKey.getFormat() || 35 == surfaceKey.getFormat()) && "surface_key_picture".equals(surfaceKey.getUsage())) {
                    return true;
                }
            } else if ("super_raw".equals(this.mRawValue) && "surface_key_picture".equals(surfaceKey.getUsage()) && (32 == surfaceKey.getFormat() || 35 == surfaceKey.getFormat())) {
                return true;
            }
        }
        return super.needAddToTarget(str, str2, surfaceKey, builder);
    }

    @Override // com.oplus.ocs.camera.producer.mode.BaseMode, com.oplus.ocs.camera.producer.mode.ModeInterface
    public void updateStageParameter(@NonNull Parameter parameter, String str, String str2, @Nullable CameraRequestTag cameraRequestTag) {
        super.updateStageParameter(parameter, str, str2, cameraRequestTag);
        if (!Parameter.ParameterStage.BEFORE_TAKE_PICTURE.equals(str) || cameraRequestTag == null || cameraRequestTag.mbNeedPreviewStream == null || !PlatformUtil.isMtkPlatform()) {
            return;
        }
        if ((CameraRequestTag.RequestMode.CAPTURE.equals(cameraRequestTag.getRequestMode()) || (CameraRequestTag.RequestMode.CAPTURE_RAW.equals(cameraRequestTag.getRequestMode()) && "super_raw".equals(cameraRequestTag.mRawValue))) && 40000000 <= ((Long) parameter.get(CaptureRequest.SENSOR_EXPOSURE_TIME)).longValue()) {
            Arrays.fill(cameraRequestTag.mbNeedPreviewStream, false);
        }
    }

    private void updateRawValue(PreviewParameter.Builder builder, CameraRequestTag cameraRequestTag) {
        if (builder.containsKey(PreviewParameter.KEY_RAW_CONTROL)) {
            this.mRawValue = (String) builder.get(PreviewParameter.KEY_RAW_CONTROL);
        } else {
            this.mRawValue = "none";
        }
        if (cameraRequestTag != null) {
            cameraRequestTag.mRawValue = this.mRawValue;
        }
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
            Long l2 = (Long) builder.get(CameraConstant.KEY_CAPTURE_EXPOSURE_TIME);
            if (l2 != null) {
                this.mCaptureExposureTime = l2;
                builder.remove(CameraConstant.KEY_CAPTURE_EXPOSURE_TIME);
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

    private void checkProfessionalAeMode(PreviewParameter.Builder builder) {
        Long l = (Long) builder.get(CaptureRequest.SENSOR_EXPOSURE_TIME);
        Integer num = (Integer) builder.get(CaptureRequest.SENSOR_SENSITIVITY);
        if (((Boolean) CameraConfigHelper.getConfigValue(CameraConfigBase.KEY_MMCAMERA_PROFESSIONAL_AEMODE_CLOSED, false)).booleanValue() || PlatformUtil.isQualcommPlatform() ? !(num == null || -1 == num.intValue() || l == null || -1 == l.longValue()) : !((num == null || -1 == num.intValue()) && (l == null || -1 == l.longValue()))) {
            builder.remove(PreviewParameter.KEY_FLASH_MODE);
            builder.set((CaptureRequest.Key<CaptureRequest.Key>) CaptureRequest.FLASH_MODE, (CaptureRequest.Key) 0);
            builder.set((CaptureRequest.Key<CaptureRequest.Key>) CaptureRequest.CONTROL_AE_MODE, (CaptureRequest.Key) 0);
            return;
        }
        builder.remove(CaptureRequest.FLASH_MODE);
        builder.remove(CaptureRequest.CONTROL_AE_MODE);
    }

    private void updateFocusPeakingFeature(PreviewParameter.Builder builder, String str, CameraRequestTag cameraRequestTag) {
        if (cameraRequestTag == null) {
            CameraUnitLog.d(TAG, "updateFocusPeakingFeature, invalid camera request tag");
            return;
        }
        if (builder.containCustomKey(PreviewParameter.KEY_FOCUS_PEAKING_ENABLE)) {
            if (this.mbEdgeFilterSupported) {
                cameraRequestTag.mbEdgeFilterEnable = ((Boolean) builder.get(PreviewParameter.KEY_FOCUS_PEAKING_ENABLE)).booleanValue();
            } else {
                this.mbFocusPeakingEnabled = ((Boolean) builder.get(PreviewParameter.KEY_FOCUS_PEAKING_ENABLE)).booleanValue();
                cameraRequestTag.mFocusPeakingFeature = getFeatureName(str);
            }
        }
        if (builder.containCustomKey(PreviewParameter.KEY_EDGE_FILTER_PARAM)) {
            String[] strArr = (String[]) builder.get(PreviewParameter.KEY_EDGE_FILTER_PARAM);
            if (strArr.length >= 2) {
                cameraRequestTag.mbEdgeFilterColorU = strArr[0];
                cameraRequestTag.mbEdgeFilterColorV = strArr[1];
            }
        }
    }

    private void setFastCapture(PreviewParameter.Builder builder, CameraRequestTag cameraRequestTag) {
        if (cameraRequestTag == null) {
            CameraUnitLog.d(TAG, "setFastCapture, invalid camera request tag");
            return;
        }
        Long l = (Long) builder.get(CaptureRequest.SENSOR_EXPOSURE_TIME);
        cameraRequestTag.mbFastCapture = l == null || -1 == l.longValue();
    }

    private void setManualCaptureParameters(PreviewParameter.Builder builder, CameraRequestTag cameraRequestTag) {
        if (cameraRequestTag == null) {
            CameraUnitLog.d(TAG, "setManualCaptureParameters, invalid camera request tag");
            return;
        }
        Integer num = (Integer) builder.get(CaptureRequest.SENSOR_SENSITIVITY);
        Long l = (Long) builder.get(CaptureRequest.SENSOR_EXPOSURE_TIME);
        if (num != null) {
            cameraRequestTag.mIsoValue = num.intValue();
        }
        if (l != null) {
            cameraRequestTag.mExposureTime = l.longValue();
        }
    }

    @Override // com.oplus.ocs.camera.producer.mode.BaseMode, com.oplus.ocs.camera.producer.mode.ModeInterface
    public int delayCloseForCapturTime() {
        Long l = this.mCaptureExposureTime;
        if (l == null || 1000000000 > l.longValue()) {
            return super.delayCloseForCapturTime();
        }
        return 0;
    }

    @Override // com.oplus.ocs.camera.producer.mode.BaseMode
    protected long getHalMemory() {
        return ((Integer) CameraConfigHelper.getConfigValue(CameraConfigBase.KEY_HAL_MEMORY_PROFESSIONAL, 0)).intValue();
    }
}

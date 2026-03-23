package com.oplus.ocs.camera.producer.mode;

import android.hardware.camera2.CaptureRequest;
import android.os.Handler;
import android.util.Pair;
import android.util.Size;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.oplus.ocs.camera.appinterface.CameraDeviceInfoInterface;
import com.oplus.ocs.camera.appinterface.adapter.CameraAdapterUtils;
import com.oplus.ocs.camera.common.parameter.ConfigureParameter;
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
import com.oplus.ocs.camera.producer.device.AEAFHelp;
import com.oplus.ocs.camera.producer.device.CameraSessionEntity;
import com.oplus.ocs.camera.producer.info.CameraCharacteristicsHelper;
import com.oplus.ocs.camera.producer.info.CameraConfigHelper;
import com.oplus.ocs.camera.producer.info.CameraDeviceInfoImpl;
import java.util.List;
import java.util.Map;
/* loaded from: classes.dex */
public class TimeLapseProMode extends BaseMode {
    private static final int DISABLE = 0;
    private static final int ENABLE = 1;
    private static final String TAG = "TimeLapseProMode";
    private Long mCaptureExposureTime;

    @Override // com.oplus.ocs.camera.producer.mode.BaseMode
    protected String getModeName() {
        return CameraConstant.ModeName.TIME_LAPSE_PRO_MODE;
    }

    public TimeLapseProMode() {
        this.mCaptureExposureTime = null;
        this.mCaptureExposureTime = null;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // com.oplus.ocs.camera.producer.mode.BaseMode
    public Pair<Size, Size> getSurfaceSize(SdkCameraDeviceConfig sdkCameraDeviceConfig, String str, String str2, String str3) {
        char c;
        Size size = this.mTagMap.get(str3).mPreviewSize;
        double width = size.getWidth() / size.getHeight();
        SurfaceWrapper surfaceWrapper = sdkCameraDeviceConfig.getPictureSurfaces().get(0);
        char c2 = 65535;
        switch (str.hashCode()) {
            case -2099255641:
                if (str.equals("reprocess_input")) {
                    c = 5;
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
            case 163297377:
                if (str.equals("capture_yuv")) {
                    c = 2;
                    break;
                }
                c = 65535;
                break;
            case 552585030:
                if (str.equals("capture")) {
                    c = 1;
                    break;
                }
                c = 65535;
                break;
            case 1238458461:
                if (str.equals("tuning_data_raw")) {
                    c = 6;
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
                if ("rear_sat".equals(str3)) {
                    int hashCode = str2.hashCode();
                    if (hashCode != -854273333) {
                        if (hashCode != -712848524) {
                            if (hashCode != -712636059) {
                                if (hashCode == -712543090 && str2.equals("rear_wide")) {
                                    c2 = 1;
                                }
                            } else if (str2.equals("rear_tele")) {
                                c2 = 2;
                            }
                        } else if (str2.equals("rear_main")) {
                            c2 = 0;
                        }
                    } else if (str2.equals("rear_sat")) {
                        c2 = 3;
                    }
                    switch (c2) {
                        case 0:
                            Size satSize = getSatSize(CameraConfigBase.KEY_SAT_MAIN_PICTURE_SIZE, width);
                            return new Pair<>(satSize, satSize);
                        case 1:
                            Size satSize2 = getSatSize(CameraConfigBase.KEY_SAT_SUB_PICTURE_SIZE, width);
                            return new Pair<>(satSize2, satSize2);
                        case 2:
                            Size satSize3 = getSatSize(CameraConfigBase.KEY_SAT_THIRD_PICTURE_SIZE, width);
                            return new Pair<>(satSize3, satSize3);
                        case 3:
                            Size maxSize = Util.getMaxSize(new Size[]{getSatSize(CameraConfigBase.KEY_SAT_MAIN_PICTURE_SIZE, width), getSatSize(CameraConfigBase.KEY_SAT_SUB_PICTURE_SIZE, width), getSatSize(CameraConfigBase.KEY_SAT_THIRD_PICTURE_SIZE, width)});
                            return new Pair<>(maxSize, maxSize);
                    }
                }
                return new Pair<>(surfaceWrapper.getAppSurfaceSize(), surfaceWrapper.getHalSurfaceSize());
            case 4:
            case 5:
                return new Pair<>(surfaceWrapper.getAppSurfaceSize(), CameraCharacteristicsHelper.getSizeByFormat(str3, 1.3333333333333333d, 32));
            case 6:
                Size tuningSize = CameraCharacteristicsHelper.getTuningSize(str3);
                return new Pair<>(tuningSize, tuningSize);
        }
        return new Pair<>(size, size);
    }

    @Override // com.oplus.ocs.camera.producer.mode.BaseMode
    public String getSurfaceUseCase(String str) {
        return (("front_wide".equals(str) || "front_main".equals(str)) && Util.isSystemCamera()) ? CameraConstant.UseCase.FRONT_SINGLE_PHOTO : "star_video_case";
    }

    @Override // com.oplus.ocs.camera.producer.mode.BaseMode
    protected void onConfigure(CameraSessionEntity cameraSessionEntity, SdkCameraDeviceConfig sdkCameraDeviceConfig, String str, @NonNull ApsRequestTag apsRequestTag) {
        cameraSessionEntity.setTemplate(1);
    }

    @Override // com.oplus.ocs.camera.producer.mode.BaseMode, com.oplus.ocs.camera.producer.mode.ModeInterface
    public void updateStageParameter(@NonNull Parameter parameter, String str, String str2, @Nullable CameraRequestTag cameraRequestTag) {
        super.updateStageParameter(parameter, str, str2, cameraRequestTag);
        if (!Parameter.ParameterStage.BEFORE_TAKE_PICTURE.equals(str) || cameraRequestTag == null) {
            return;
        }
        cameraRequestTag.mRequestFormat = 35;
        if (cameraRequestTag.mbInNightProcess || CameraRequestTag.RequestMode.CAPTURE_REPROCESS == cameraRequestTag.getRequestMode()) {
            synchronized (this.mPreviewResultLock) {
                parameter.set((Parameter.Key<Parameter.Key<int[]>>) PreviewParameter.KEY_NIGHT_MODE, (Parameter.Key<int[]>) new int[]{Util.getNightStateDecision(this.mPreviewResult)});
                Parameter.Key<int[]> key = PreviewParameter.KEY_BRACKET_MODE;
                int[] iArr = new int[1];
                iArr[0] = this.mPreviewResult != null ? ((Integer) this.mPreviewResult.get(ApsDecisionParameter.KEY_PREVIEW_BRACKET_MODE)).intValue() : 0;
                parameter.set((Parameter.Key<Parameter.Key<int[]>>) key, (Parameter.Key<int[]>) iArr);
            }
        }
        if (cameraRequestTag.mbInNightProcess) {
            parameter.set((CaptureRequest.Key<CaptureRequest.Key>) CaptureRequest.CONTROL_AF_MODE, (CaptureRequest.Key) 1);
            parameter.set((CaptureRequest.Key<CaptureRequest.Key>) CaptureRequest.CONTROL_AF_REGIONS, (CaptureRequest.Key) AEAFHelp.getDefaultWeightRegion());
            parameter.set((CaptureRequest.Key<CaptureRequest.Key>) CaptureRequest.CONTROL_MODE, (CaptureRequest.Key) 1);
            parameter.set((CaptureRequest.Key<CaptureRequest.Key>) CaptureRequest.CONTROL_AE_REGIONS, (CaptureRequest.Key) AEAFHelp.getDefaultWeightRegion());
        }
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

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.oplus.ocs.camera.producer.mode.BaseMode
    public void updatePreviewRequestTag(PreviewParameter.Builder builder, CameraRequestTag cameraRequestTag, String str, String str2) {
        super.updatePreviewRequestTag(builder, cameraRequestTag, str, str2);
        cameraRequestTag.mbStarVideoEnable = "on".equals(builder.get(PreviewParameter.KEY_STAR_VIDEO_ENABLE));
    }

    @Override // com.oplus.ocs.camera.producer.mode.BaseMode, com.oplus.ocs.camera.producer.mode.ModeInterface
    public void updateStageParameterBuilder(@NonNull PreviewParameter.Builder builder, String str, String str2, @Nullable CameraRequestTag cameraRequestTag) {
        char c;
        super.updateStageParameterBuilder(builder, str, str2, cameraRequestTag);
        builder.set((CaptureRequest.Key<CaptureRequest.Key>) CaptureRequest.CONTROL_ENABLE_ZSL, (CaptureRequest.Key) true);
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
                if (builder.containCustomKey(PreviewParameter.KEY_FRAME_FLAG)) {
                    cameraRequestTag.mFrameFlag = ((Integer) builder.get(PreviewParameter.KEY_FRAME_FLAG)).intValue();
                }
                if (builder.containCustomKey(PreviewParameter.KEY_CAPTURE_FOR_VIDEO)) {
                    cameraRequestTag.mbCaptureForVideo = ((Boolean) builder.get(PreviewParameter.KEY_CAPTURE_FOR_VIDEO)).booleanValue();
                }
                if (builder.containCustomKey(PreviewParameter.KEY_STAR_VIDEO_ENABLE)) {
                    cameraRequestTag.mbStarVideoEnable = "on".equals(builder.get(PreviewParameter.KEY_STAR_VIDEO_ENABLE));
                }
                cameraRequestTag.mRequestNum = 1;
                cameraRequestTag.mOutputFormat = 17;
                checkProfessionalAeMode(builder);
                checkExposureTime(builder, str);
                setFrameDuration(builder);
                setFastCapture(builder, cameraRequestTag);
                return;
            case 1:
                checkColorTemperature(builder);
                checkProfessionalAeMode(builder);
                checkExposureTime(builder, str);
                setFrameDuration(builder);
                return;
            default:
                return;
        }
    }

    @Override // com.oplus.ocs.camera.producer.mode.BaseMode, com.oplus.ocs.camera.producer.mode.ModeInterface
    public CameraRequestTag createRequestTag(String str, Object obj, Handler handler, String str2, PreviewParameter.Builder builder) {
        CameraRequestTag createRequestTag = super.createRequestTag(str, obj, handler, str2, builder);
        boolean z = false;
        createRequestTag.mMFSRFrameCount = 0;
        synchronized (this.mPreviewResultLock) {
            if (Parameter.ParameterStage.BEFORE_TAKE_PICTURE.equals(str2)) {
                if (this.mPreviewResult != null) {
                    createRequestTag.mbMirrorEnable = "on".equals(getConfigureParameter(str).get(ConfigureParameter.MIRROR_ENABLE));
                }
                if (Util.getNightStateDecision(this.mPreviewResult) > 0 && !createRequestTag.mbBurstShot) {
                    z = true;
                }
                createRequestTag.mbInNightProcess = z;
            }
            if (createRequestTag.mbInNightProcess) {
                createRequestTag.mCaptureEvList = (int[]) this.mPreviewResult.get(ApsDecisionParameter.KEY_PREVIEW_CAPTURE_EV_LIST);
                createRequestTag.mCaptureEtList = (long[]) this.mPreviewResult.get(ApsDecisionParameter.KEY_PREVIEW_CAPTURE_ET_LIST);
            }
            if (builder.containCustomKey(PreviewParameter.KEY_STAR_VIDEO_ENABLE)) {
                createRequestTag.mbStarVideoEnable = "on".equals(builder.get(PreviewParameter.KEY_STAR_VIDEO_ENABLE));
                createRequestTag.mbStarryProcess = createRequestTag.mbStarVideoEnable;
            }
            createRequestTag.mbTimeLapsePro = true;
        }
        return createRequestTag;
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

    private void checkProfessionalAeMode(PreviewParameter.Builder builder) {
        Long l = (Long) builder.get(CaptureRequest.SENSOR_EXPOSURE_TIME);
        Integer num = (Integer) builder.get(CaptureRequest.SENSOR_SENSITIVITY);
        CameraUnitLog.v(TAG, "checkProfessionalAeMode, exposureTime: " + l + ", iso: " + num);
        if (!Util.isQcomPlatform() ? !((num == null || -1 == num.intValue()) && (l == null || -1 == l.longValue())) : !(num == null || -1 == num.intValue() || l == null || -1 == l.longValue())) {
            builder.remove(PreviewParameter.KEY_FLASH_MODE);
            builder.set((CaptureRequest.Key<CaptureRequest.Key>) CaptureRequest.FLASH_MODE, (CaptureRequest.Key) 0);
            builder.set((CaptureRequest.Key<CaptureRequest.Key>) CaptureRequest.CONTROL_AE_MODE, (CaptureRequest.Key) 0);
            return;
        }
        builder.remove(CaptureRequest.FLASH_MODE);
        builder.set((CaptureRequest.Key<CaptureRequest.Key>) CaptureRequest.CONTROL_AE_MODE, (CaptureRequest.Key) 1);
    }

    private void setFastCapture(PreviewParameter.Builder builder, CameraRequestTag cameraRequestTag) {
        Long l = (Long) builder.get(CaptureRequest.SENSOR_EXPOSURE_TIME);
        cameraRequestTag.mbFastCapture = l == null || -1 == l.longValue();
    }

    @Override // com.oplus.ocs.camera.producer.mode.BaseMode
    protected long getHalMemory() {
        return ((Integer) CameraAdapterUtils.getConfigValue(CameraConfigBase.KEY_HAL_MEMORY_PROFESSIONAL, 0)).intValue();
    }

    protected Size getSatSize(CameraConfigBase.Key<Size[]> key, double d) {
        Size[] sizeArr = (Size[]) CameraConfigHelper.getConfigValue(key, null);
        if (sizeArr == null) {
            CameraUnitLog.w(TAG, "getSatSize, don't configure the " + key + " in the vendor_tag_type_values");
            return null;
        }
        Size maxSizeByRatio = Util.getMaxSizeByRatio(sizeArr, d);
        CameraUnitLog.d(TAG, "getSatSize, keyName: " + key + ", ratio: " + d + ", finalSize: " + maxSizeByRatio);
        return maxSizeByRatio;
    }
}

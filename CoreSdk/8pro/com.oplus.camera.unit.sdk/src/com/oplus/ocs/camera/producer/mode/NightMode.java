package com.oplus.ocs.camera.producer.mode;

import android.hardware.camera2.CaptureRequest;
import android.os.Handler;
import android.util.Pair;
import android.util.Size;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.oplus.ocs.camera.appinterface.CameraDeviceInfoInterface;
import com.oplus.ocs.camera.appinterface.CameraPreviewCallbackAdapter;
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
import com.oplus.ocs.camera.common.util.ParameterKeys;
import com.oplus.ocs.camera.common.util.PlatformUtil;
import com.oplus.ocs.camera.common.util.Util;
import com.oplus.ocs.camera.consumer.apsAdapter.ApsCameraMetadataKey;
import com.oplus.ocs.camera.consumer.apsAdapter.adapter.DefaultUtill;
import com.oplus.ocs.camera.consumer.apsAdapter.config.AlgoSwitchConfig;
import com.oplus.ocs.camera.producer.device.AEAFHelp;
import com.oplus.ocs.camera.producer.device.CameraSessionEntity;
import com.oplus.ocs.camera.producer.info.CameraCharacteristicsHelper;
import com.oplus.ocs.camera.producer.info.CameraConfigHelper;
import com.oplus.ocs.camera.producer.info.CameraDeviceInfoImpl;

/* loaded from: classes.dex */
public class NightMode extends PhotoMode {
    protected static final int NIGHT_DELAY_CLOSE_CAMERA_FOR_CAPTURE_TIME = 3000;
    private static final String TAG = "NightMode";
    private boolean mbAiNightMode = false;
    private boolean mbSuperNightMode = false;
    private boolean mbPortraitSuperNight = false;
    private boolean mbUltraDarkMode = false;
    private boolean mbTripodModeOpened = false;
    private boolean mbIsFrontMFNRSizeSupported = false;

    @Override // com.oplus.ocs.camera.producer.mode.PhotoMode,
              // com.oplus.ocs.camera.producer.mode.BaseMode
    protected String getModeName() {
        return "night_mode";
    }

    @Override // com.oplus.ocs.camera.producer.mode.PhotoMode,
              // com.oplus.ocs.camera.producer.mode.BaseMode
    protected boolean isExplorerOpen(String str) {
        return true;
    }

    @Override // com.oplus.ocs.camera.producer.mode.PhotoMode,
              // com.oplus.ocs.camera.producer.mode.BaseMode
    public boolean useOplusCameraCase(String str) {
        return true;
    }

    /*
     * JADX WARN: Can't fix incorrect switch cases order, some code will duplicate
     */
    @Override // com.oplus.ocs.camera.producer.mode.PhotoMode,
              // com.oplus.ocs.camera.producer.mode.BaseMode
    public Pair<Size, Size> getSurfaceSize(SdkCameraDeviceConfig sdkCameraDeviceConfig, String str, String str2,
            String str3) {
        char c;
        Size[] sizeArr;
        char c2;
        Size size = this.mTagMap.get(str3).mPreviewSize;
        double width = size.getWidth() / size.getHeight();
        SurfaceWrapper surfaceWrapper = sdkCameraDeviceConfig.getPictureSurfaces().get(0);
        str.hashCode();
        switch (str.hashCode()) {
            case -2099255641:
                if (str.equals("reprocess_input")) {
                    c = 0;
                    break;
                }
                c = 65535;
                break;
            case -1513135880:
                if (str.equals("raw_output")) {
                    c = 1;
                    break;
                }
                c = 65535;
                break;
            case -318184504:
                if (str.equals("preview")) {
                    c = 2;
                    break;
                }
                c = 65535;
                break;
            case 163297377:
                if (str.equals("capture_yuv")) {
                    c = 3;
                    break;
                }
                c = 65535;
                break;
            case 369148211:
                if (str.equals("raw16_output")) {
                    c = 4;
                    break;
                }
                c = 65535;
                break;
            case 552585030:
                if (str.equals("capture")) {
                    c = 5;
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
            case 1238465807:
                if (str.equals("tuning_data_yuv")) {
                    c = 7;
                    break;
                }
                c = 65535;
                break;
            case 1267103479:
                if (str.equals("reprocess_yuv")) {
                    c = '\b';
                    break;
                }
                c = 65535;
                break;
            case 2043358779:
                if (str.equals(CameraConstant.SessionSurfaceType.JSON_KEY_STREAM_CAPTURE_YUV_MFNR)) {
                    c = '\t';
                    break;
                }
                c = 65535;
                break;
            default:
                c = 65535;
                break;
        }
        Size size2 = null;
        switch (c) {
            case 0:
            case 1:
            case 4:
                if ("front_main".equals(str3) && (sizeArr = (Size[]) CameraConfigHelper
                        .getConfigValue(CameraConfigBase.KEY_FRONT_NIGHT_RAW_PICTURE_SIZE, null)) != null) {
                    Size size3 = sizeArr[0];
                    return new Pair<>(size3, size3);
                }
                Size appSurfaceSize = surfaceWrapper.getAppSurfaceSize();
                if ("rear_main".equals(str3)) {
                    Size[] sizeArr2 = (Size[]) CameraConfigHelper
                            .getConfigValue(CameraConfigBase.KEY_BACK_NIGHT_RAW_PICTURE_SIZE, null);
                    if (sizeArr2 != null && sizeArr2.length != 0) {
                        size2 = sizeArr2[0];
                    }
                    if (size2 != null) {
                        return new Pair<>(appSurfaceSize, size2);
                    }
                }
                return new Pair<>(appSurfaceSize,
                        CameraCharacteristicsHelper.getSizeByFormat(str3, 1.3333333333333333d, 32));
            case 2:
                return new Pair<>(size, size);
            case 3:
            case 5:
            case '\b':
                if ("rear_sat".equals(str3)) {
                    str2.hashCode();
                    switch (str2.hashCode()) {
                        case -854273333:
                            if (str2.equals("rear_sat")) {
                                c2 = 0;
                                break;
                            }
                            c2 = 65535;
                            break;
                        case -712848524:
                            if (str2.equals("rear_main")) {
                                c2 = 1;
                                break;
                            }
                            c2 = 65535;
                            break;
                        case -712636059:
                            if (str2.equals("rear_tele")) {
                                c2 = 2;
                                break;
                            }
                            c2 = 65535;
                            break;
                        case -712543090:
                            if (str2.equals("rear_wide")) {
                                c2 = 3;
                                break;
                            }
                            c2 = 65535;
                            break;
                        default:
                            c2 = 65535;
                            break;
                    }
                    switch (c2) {
                        case 0:
                            Size maxSize = Util.getMaxSize(
                                    new Size[] { geMaxSize(CameraConfigBase.KEY_SAT_MAIN_PICTURE_SIZE, width),
                                            geMaxSize(CameraConfigBase.KEY_SAT_SUB_PICTURE_SIZE, width),
                                            geMaxSize(CameraConfigBase.KEY_SAT_THIRD_PICTURE_SIZE, width) });
                            return new Pair<>(maxSize, maxSize);
                        case 1:
                            Size geMaxSize = geMaxSize(CameraConfigBase.KEY_SAT_MAIN_PICTURE_SIZE, width);
                            return new Pair<>(geMaxSize, geMaxSize);
                        case 2:
                            Size geMaxSize2 = geMaxSize(CameraConfigBase.KEY_SAT_THIRD_PICTURE_SIZE, width);
                            return new Pair<>(geMaxSize2, geMaxSize2);
                        case 3:
                            Size geMaxSize3 = geMaxSize(CameraConfigBase.KEY_SAT_SUB_PICTURE_SIZE, width);
                            return new Pair<>(geMaxSize3, geMaxSize3);
                    }
                }
                return new Pair<>(surfaceWrapper.getAppSurfaceSize(), surfaceWrapper.getHalSurfaceSize());
            case 6:
                Size tuningSize = CameraCharacteristicsHelper.getTuningSize(str3);
                return new Pair<>(tuningSize, tuningSize);
            case 7:
                Size tuningDataSurfaceSize = CameraCharacteristicsHelper.getTuningDataSurfaceSize(str3,
                        "tuning_data_yuv");
                return new Pair<>(tuningDataSurfaceSize, tuningDataSurfaceSize);
            case '\t':
                if ("front_main".equals(str3) || "front_wide".equals(str3)) {
                    size2 = geMaxSize(CameraConfigBase.KEY_FRONT_MFNR_PICTURE_SIZE, width);
                    CameraUnitLog.i(TAG, "getSurfaceSize, front main camera, mfnrSize: " + size2);
                }
                if (size2 != null) {
                    return new Pair<>(size2, size2);
                }
                break;
        }
        return new Pair<>(size, size);
    }

    @Override // com.oplus.ocs.camera.producer.mode.PhotoMode,
              // com.oplus.ocs.camera.producer.mode.BaseMode
    public String getSurfaceUseCase(String str, boolean z) {
        return "rear_sat".equals(str) ? "sat_night_case"
                : "front_main".equals(str)
                        ? this.mbIsFrontMFNRSizeSupported ? CameraConstant.UseCase.FRONT_MFNR_NIGHT : "front_night_case"
                        : "front_wide".equals(str)
                                ? this.mbIsFrontMFNRSizeSupported ? CameraConstant.UseCase.FRONT_MFNR_NIGHT
                                        : CameraConstant.UseCase.FRONT_SUB_NIGHT
                                : "none_sat_night_case";
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.oplus.ocs.camera.producer.mode.PhotoMode,
              // com.oplus.ocs.camera.producer.mode.BaseMode
    public void onConfigure(CameraSessionEntity cameraSessionEntity, SdkCameraDeviceConfig sdkCameraDeviceConfig,
            String str, @NonNull ApsRequestTag apsRequestTag) {
        cameraSessionEntity.setTemplate(1);
        this.mbAiNightMode = false;
        this.mbUltraDarkMode = false;
        this.mbTripodModeOpened = false;
        this.mbIsFrontMFNRSizeSupported = CameraConfigHelper
                .getConfigValue(CameraConfigBase.KEY_FRONT_MFNR_PICTURE_SIZE, null) != null;
    }

    @Override // com.oplus.ocs.camera.producer.mode.PhotoMode,
              // com.oplus.ocs.camera.producer.mode.BaseMode,
              // com.oplus.ocs.camera.producer.mode.ModeInterface
    public void updateStageParameter(@NonNull Parameter parameter, String str, String str2,
            @Nullable CameraRequestTag cameraRequestTag) {
        super.updateStageParameter(parameter, str, str2, cameraRequestTag);
        if (Parameter.ParameterStage.BEFORE_TAKE_PICTURE.equals(str)) {
            if (PlatformUtil.isMtkPlatform() && cameraRequestTag != null && cameraRequestTag.mCaptureEvList != null
                    && cameraRequestTag.mbInNightProcess && 29 != cameraRequestTag.mFeatureType) {
                parameter.set(CaptureRequest.CONTROL_AE_LOCK, true);
            }
            if (PlatformUtil.isMtkPlatform()
                    && "1".equals(CameraConfigHelper.getConfigValue(DefaultUtill.KEY_NIGHT_FRONT_ZSL_DISABLE))
                    && "front_main".equals(str2)) {
                parameter.set(CaptureRequest.CONTROL_ENABLE_ZSL, false);
            }
            if (cameraRequestTag != null && cameraRequestTag.mbInNightProcess && 29 != cameraRequestTag.mFeatureType) {
                parameter.set(CaptureRequest.CONTROL_AF_MODE, 1);
                parameter.set(CaptureRequest.CONTROL_AF_REGIONS, AEAFHelp.getDefaultWeightRegion());
                parameter.set(CaptureRequest.CONTROL_MODE, 1);
                parameter.set(CaptureRequest.CONTROL_AE_REGIONS, AEAFHelp.getDefaultWeightRegion());
            }
            if (!PlatformUtil.isMtkPlatform() || cameraRequestTag == null) {
                return;
            }
            boolean z = 13 == cameraRequestTag.mApsDecisionFeatureType || 14 == cameraRequestTag.mApsDecisionFeatureType
                    || 29 == cameraRequestTag.mApsDecisionFeatureType;
            boolean z2 = 11 == cameraRequestTag.mApsDecisionFeatureType
                    || 10 == cameraRequestTag.mApsDecisionFeatureType;
            boolean z3 = 9 == cameraRequestTag.mApsDecisionFeatureType;
            if (z || (z2 && CameraCharacteristicsHelper.isFrontCamera(cameraRequestTag.mCameraId))) {
                cameraRequestTag.mbNeedPreviewStream = new boolean[cameraRequestTag.mRequestNum];
                for (int i = 0; i < cameraRequestTag.mRequestNum; i++) {
                    cameraRequestTag.mbNeedPreviewStream[i] = false;
                }
            } else if (z3 || (z2 && !CameraCharacteristicsHelper.isFrontCamera(cameraRequestTag.mCameraId))) {
                cameraRequestTag.mbNeedPreviewStream = new boolean[cameraRequestTag.mRequestNum];
                for (int i2 = 0; i2 < cameraRequestTag.mRequestNum; i2++) {
                    cameraRequestTag.mbNeedPreviewStream[i2] = true;
                }
            }
        }
    }

    @Override // com.oplus.ocs.camera.producer.mode.PhotoMode,
              // com.oplus.ocs.camera.producer.mode.BaseMode,
              // com.oplus.ocs.camera.producer.mode.ModeInterface
    public void updateStageParameterBuilder(@NonNull PreviewParameter.Builder builder, String str, String str2,
            @Nullable CameraRequestTag cameraRequestTag) {
        super.updateStageParameterBuilder(builder, str, str2, cameraRequestTag);
        int[] iArr = (int[]) builder.get(PreviewParameter.KEY_TRIPOD_MODE);
        boolean z = true;
        this.mbTripodModeOpened = iArr != null && iArr.length > 0 && iArr[0] == 1;
        if (cameraRequestTag != null) {
            str.hashCode();
            if (!str.equals(Parameter.ParameterStage.BEFORE_TAKE_PICTURE)) {
                if (str.equals(Parameter.ParameterStage.START_PREVIEW)) {
                    if (builder.containsKey(PreviewParameter.KEY_STARBURST_MODE)) {
                        cameraRequestTag.mbStarburstEnable = ((Boolean) builder
                                .get(PreviewParameter.KEY_STARBURST_MODE)).booleanValue();
                    }
                    checkColorTemperature(builder);
                    cameraRequestTag.mb3DLutEnable = ((Boolean) CameraConfigHelper
                            .getConfigValue(CameraConfigBase.KEY_3D_LUT_SUPPORT, false)).booleanValue();
                    return;
                }
                return;
            }
            if (builder.containsKey(PreviewParameter.KEY_STARBURST_MODE)) {
                cameraRequestTag.mbStarburstEnable = ((Boolean) builder.get(PreviewParameter.KEY_STARBURST_MODE))
                        .booleanValue();
                synchronized (this.mPreviewResultLock) {
                    if (this.mPreviewResult != null && cameraRequestTag.mbStarburstEnable) {
                        cameraRequestTag.mStarburstInfo = (float[]) this.mPreviewResult.getCaptureResult()
                                .get(ApsCameraMetadataKey.KEY_STARBURST_INFO);
                        builder.set(PreviewParameter.KEY_STARBURST_INFO, cameraRequestTag.mStarburstInfo);
                    }
                }
            }
            if (!"front_main".equals(str2) || !this.mbIsFrontMFNRSizeSupported
                    || !((Boolean) CameraConfigHelper
                            .getConfigValue(CameraConfigBase.KEY_FRONT_NIGHT_USE_MFNR_PICTURE_SIZE_SUPPORT, false))
                            .booleanValue()) {
                z = false;
            }
            cameraRequestTag.mbUseMFNRSize = z;
        }
    }

    @Override // com.oplus.ocs.camera.producer.mode.PhotoMode,
              // com.oplus.ocs.camera.producer.mode.BaseMode,
              // com.oplus.ocs.camera.producer.mode.ModeInterface
    public CameraRequestTag createRequestTag(String str, Object obj, Handler handler, String str2,
            PreviewParameter.Builder builder) {
        CameraRequestTag createRequestTag = super.createRequestTag(str, obj, handler, str2, builder);
        synchronized (this.mPreviewResultLock) {
            if (Parameter.ParameterStage.BEFORE_TAKE_PICTURE.equals(str2)) {
                boolean z = true;
                createRequestTag.mbInNightProcess = Util.getNightStateDecision(this.mPreviewResult) > 0
                        && !createRequestTag.mbBurstShot;
                if (builder.containCustomKey(PreviewParameter.KEY_NIGHT_PRO_MODE)) {
                    createRequestTag.mbNightProMode = ((Boolean) builder.get(PreviewParameter.KEY_NIGHT_PRO_MODE))
                            .booleanValue();
                }
                createRequestTag.mFeatureType = ((Integer) this.mPreviewResult
                        .get(ApsDecisionParameter.KEY_PREVIEW_FEATURE_TYPE)).intValue();
                if (13 != createRequestTag.mFeatureType && 14 != createRequestTag.mFeatureType
                        && 29 != createRequestTag.mFeatureType) {
                    z = false;
                }
                createRequestTag.mbUltraDarkMode = z;
                if (PlatformUtil.isQualcommPlatform() && is10BitOpen(str)) {
                    createRequestTag.mRequestFormat = 34;
                }
            }
            if (createRequestTag.mbInNightProcess) {
                createRequestTag.mCaptureEvList = (int[]) this.mPreviewResult
                        .get(ApsDecisionParameter.KEY_PREVIEW_CAPTURE_EV_LIST);
                createRequestTag.mCaptureEtList = (long[]) this.mPreviewResult
                        .get(ApsDecisionParameter.KEY_PREVIEW_CAPTURE_ET_LIST);
            }
        }
        return createRequestTag;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.oplus.ocs.camera.producer.mode.PhotoMode,
              // com.oplus.ocs.camera.producer.mode.BaseMode
    public boolean needAddToTarget(String str, String str2, @NonNull SurfaceKey surfaceKey,
            PreviewParameter.Builder builder) {
        synchronized (this.mPreviewResultLock) {
            if (surfaceKey.getUsage() == "surface_key_reprocess_yuv"
                    && Parameter.ParameterStage.BEFORE_TAKE_PICTURE.equals(str2)
                    && Util.getNightStateDecision(this.mPreviewResult) == 0) {
                return false;
            }
            return super.needAddToTarget(str, str2, surfaceKey, builder);
        }
    }

    @Override // com.oplus.ocs.camera.producer.mode.BaseMode,
              // com.oplus.ocs.camera.producer.mode.ModeInterface
    public int delayCloseForCapturTime() {
        if (this.mbAiNightMode || this.mbUltraDarkMode || this.mbSuperNightMode || this.mbPortraitSuperNight) {
            return (this.mbTripodModeOpened
                    || !(PlatformUtil.isMtkPlatform() || Util.isSupportOfflineNight(getModeName()))) ? 0 : 3000;
        } else if (!this.mbTripodModeOpened || Util.getNightStateDecision(this.mPreviewResult) == 0) {
            return super.delayCloseForCapturTime();
        } else {
            return 0;
        }
    }

    @Override // com.oplus.ocs.camera.producer.mode.PhotoMode,
              // com.oplus.ocs.camera.producer.mode.BaseMode,
              // com.oplus.ocs.camera.producer.mode.ModeInterface
    public boolean needStartPreview(CameraPreviewCallbackAdapter.PreviewResult previewResult) {
        boolean needStartPreview = super.needStartPreview(previewResult);
        boolean z = true;
        if (PlatformUtil.isQualcommPlatform()) {
            String[] strArr = (String[]) previewResult.get(ApsDecisionParameter.KEY_PREVIEW_ALGO_FLAG);
            if (strArr != null && strArr.length > 0) {
                String str = strArr[0];
                int intValue = ((Integer) previewResult.get(ApsDecisionParameter.KEY_PREVIEW_SCENE_MODE)).intValue();
                if (!ParameterKeys.ALGO_NAME_DARKSIGHT.equals(str) && 16 != intValue) {
                    z = false;
                }
                this.mbUltraDarkMode = z;
                this.mbAiNightMode = ParameterKeys.ALGO_NAME_AI_NIGHT.equals(str);
                this.mbSuperNightMode = ParameterKeys.ALGO_NAME_SUPERNIGHT.equals(str);
                this.mbPortraitSuperNight = ParameterKeys.ALGO_NAME_FRONT_PORTRAIT_SUPERNIGHT.equals(str);
            }
        } else {
            int intValue2 = ((Integer) previewResult.get(ApsDecisionParameter.KEY_PREVIEW_FEATURE_TYPE)).intValue();
            if (13 != intValue2 && 14 != intValue2 && 29 != intValue2) {
                z = false;
            }
            this.mbUltraDarkMode = z;
        }
        return needStartPreview;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.oplus.ocs.camera.producer.mode.PhotoMode,
              // com.oplus.ocs.camera.producer.mode.BaseMode
    public long getHalMemory() {
        int intValue;
        if (this.mbTenBitOpen) {
            return super.getHalMemory();
        }
        if (((Boolean) CameraConfigHelper.getConfigValue(CameraConfigBase.KEY_HAL_MEMORY_COMMON_SUPPORT_DIFFERENCE,
                false)).booleanValue()) {
            long totalMemory = AlgoSwitchConfig.getTotalMemory();
            int intValue2 = ((Integer) CameraConfigHelper.getConfigValue(CameraConfigBase.KEY_HAL_MEMORY_NIGHT, 0))
                    .intValue();
            if (CameraConstant.MEMORY_GB_8G < totalMemory) {
                intValue = ((Integer) CameraConfigHelper.getConfigValue(CameraConfigBase.KEY_HAL_MEMORY_NIGHT_12G,
                        Integer.valueOf(intValue2))).intValue();
            } else if (CameraConstant.MEMORY_GB_6G < totalMemory) {
                intValue = ((Integer) CameraConfigHelper.getConfigValue(CameraConfigBase.KEY_HAL_MEMORY_NIGHT_8G,
                        Integer.valueOf(intValue2))).intValue();
            } else if (CameraConstant.MEMORY_GB_4G >= totalMemory) {
                return intValue2;
            } else {
                intValue = ((Integer) CameraConfigHelper.getConfigValue(CameraConfigBase.KEY_HAL_MEMORY_NIGHT_6G,
                        Integer.valueOf(intValue2))).intValue();
            }
        } else {
            intValue = ((Integer) CameraConfigHelper.getConfigValue(CameraConfigBase.KEY_HAL_MEMORY_NIGHT, 0))
                    .intValue();
        }
        return intValue;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.oplus.ocs.camera.producer.mode.PhotoMode,
              // com.oplus.ocs.camera.producer.mode.BaseMode
    public CameraDeviceInfoInterface createCameraDeviceInfo(String str) {
        CameraDeviceInfoImpl cameraDeviceInfoImpl = (CameraDeviceInfoImpl) super.createCameraDeviceInfo(str);
        if (((Boolean) CameraConfigHelper.getConfigValue(CameraConfigBase.KEY_NIGHT_PRO_SUPPORT, false))
                .booleanValue()) {
            cameraDeviceInfoImpl.getPreviewParameterRangeMap().put(
                    PreviewParameter.KEY_COLOR_TEMPERATURE_RANGE.getName(),
                    CameraCharacteristicsHelper.getColorTemperatureValueList(str));
        }
        return cameraDeviceInfoImpl;
    }

    private void checkColorTemperature(PreviewParameter.Builder builder) {
        int[] iArr = (int[]) builder.get(PreviewParameter.KEY_COLOR_TEMPERATURE);
        if (iArr != null && iArr.length > 0 && -1 != iArr[0]) {
            if (PlatformUtil.isMtkPlatform()) {
                builder.set(CaptureRequest.CONTROL_AWB_MODE, 10);
                return;
            } else {
                builder.set(CaptureRequest.CONTROL_AWB_MODE, 0);
                return;
            }
        }
        builder.set(CaptureRequest.CONTROL_AWB_MODE, 1);
    }
}

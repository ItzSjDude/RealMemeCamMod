package com.oplus.ocs.camera.producer.mode;

import android.hardware.camera2.CaptureRequest;
import android.hardware.camera2.params.MeteringRectangle;
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

/* JADX INFO: loaded from: classes.dex */
public class NightMode extends PhotoMode {
    protected static final int NIGHT_DELAY_CLOSE_CAMERA_FOR_CAPTURE_TIME = 3000;
    private static final String TAG = "NightMode";
    private boolean mbAiNightMode = false;
    private boolean mbSuperNightMode = false;
    private boolean mbPortraitSuperNight = false;
    private boolean mbUltraDarkMode = false;
    private boolean mbTripodModeOpened = false;
    private boolean mbIsFrontMFNRSizeSupported = false;

    @Override // com.oplus.ocs.camera.producer.mode.PhotoMode, com.oplus.ocs.camera.producer.mode.BaseMode
    protected String getModeName() {
        return "night_mode";
    }

    @Override // com.oplus.ocs.camera.producer.mode.PhotoMode, com.oplus.ocs.camera.producer.mode.BaseMode
    protected boolean isExplorerOpen(String str) {
        return true;
    }

    @Override // com.oplus.ocs.camera.producer.mode.PhotoMode, com.oplus.ocs.camera.producer.mode.BaseMode
    public boolean useOplusCameraCase(String str) {
        return true;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:4:0x0037  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x010b  */
    @Override // com.oplus.ocs.camera.producer.mode.PhotoMode, com.oplus.ocs.camera.producer.mode.BaseMode
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Pair<Size, Size> getSurfaceSize(SdkCameraDeviceConfig sdkCameraDeviceConfig, String str, String str2, String str3) {
        byte b;
        Size[] sizeArr;
        Size size = this.mTagMap.get(str3).mPreviewSize;
        double width = ((double) size.getWidth()) / ((double) size.getHeight());
        SurfaceWrapper surfaceWrapper = sdkCameraDeviceConfig.getPictureSurfaces().get(0);
        str.hashCode();
        switch (str.hashCode()) {
            case -2099255641:
                b = !str.equals("reprocess_input") ? (byte) -1 : (byte) 0;
                break;
            case -1513135880:
                if (str.equals("raw_output")) {
                    b = 1;
                    break;
                }
                break;
            case -318184504:
                if (str.equals("preview")) {
                    b = 2;
                    break;
                }
                break;
            case 163297377:
                if (str.equals("capture_yuv")) {
                    b = 3;
                    break;
                }
                break;
            case 369148211:
                if (str.equals("raw16_output")) {
                    b = 4;
                    break;
                }
                break;
            case 552585030:
                if (str.equals("capture")) {
                    b = 5;
                    break;
                }
                break;
            case 1238458461:
                if (str.equals("tuning_data_raw")) {
                    b = 6;
                    break;
                }
                break;
            case 1238465807:
                if (str.equals("tuning_data_yuv")) {
                    b = 7;
                    break;
                }
                break;
            case 1267103479:
                if (str.equals("reprocess_yuv")) {
                    b = 8;
                    break;
                }
                break;
            case 2043358779:
                if (str.equals(CameraConstant.SessionSurfaceType.JSON_KEY_STREAM_CAPTURE_YUV_MFNR)) {
                    b = 9;
                    break;
                }
                break;
        }
        Size sizeGeMaxSize = null;
        switch (b) {
            case 0:
            case 1:
            case 4:
                if ("front_main".equals(str3) && (sizeArr = (Size[]) CameraConfigHelper.getConfigValue(CameraConfigBase.KEY_FRONT_NIGHT_RAW_PICTURE_SIZE, null)) != null) {
                    Size size2 = sizeArr[0];
                    return new Pair<>(size2, size2);
                }
                Size appSurfaceSize = surfaceWrapper.getAppSurfaceSize();
                if ("rear_main".equals(str3)) {
                    Size[] sizeArr2 = (Size[]) CameraConfigHelper.getConfigValue(CameraConfigBase.KEY_BACK_NIGHT_RAW_PICTURE_SIZE, null);
                    if (sizeArr2 != null && sizeArr2.length != 0) {
                        sizeGeMaxSize = sizeArr2[0];
                    }
                    if (sizeGeMaxSize != null) {
                        return new Pair<>(appSurfaceSize, sizeGeMaxSize);
                    }
                }
                return new Pair<>(appSurfaceSize, CameraCharacteristicsHelper.getSizeByFormat(str3, 1.3333333333333333d, 32));
            case 2:
                return new Pair<>(size, size);
            case 3:
            case 5:
            case 8:
                if ("rear_sat".equals(str3)) {
                    str2.hashCode();
                    switch (str2) {
                        case "rear_sat":
                            Size maxSize = Util.getMaxSize(new Size[]{geMaxSize(CameraConfigBase.KEY_SAT_MAIN_PICTURE_SIZE, width), geMaxSize(CameraConfigBase.KEY_SAT_SUB_PICTURE_SIZE, width), geMaxSize(CameraConfigBase.KEY_SAT_THIRD_PICTURE_SIZE, width)});
                            return new Pair<>(maxSize, maxSize);
                        case "rear_main":
                            Size sizeGeMaxSize2 = geMaxSize(CameraConfigBase.KEY_SAT_MAIN_PICTURE_SIZE, width);
                            return new Pair<>(sizeGeMaxSize2, sizeGeMaxSize2);
                        case "rear_tele":
                            Size sizeGeMaxSize3 = geMaxSize(CameraConfigBase.KEY_SAT_THIRD_PICTURE_SIZE, width);
                            return new Pair<>(sizeGeMaxSize3, sizeGeMaxSize3);
                        case "rear_wide":
                            Size sizeGeMaxSize4 = geMaxSize(CameraConfigBase.KEY_SAT_SUB_PICTURE_SIZE, width);
                            return new Pair<>(sizeGeMaxSize4, sizeGeMaxSize4);
                    }
                }
                return new Pair<>(surfaceWrapper.getAppSurfaceSize(), surfaceWrapper.getHalSurfaceSize());
            case 6:
                Size tuningSize = CameraCharacteristicsHelper.getTuningSize(str3);
                return new Pair<>(tuningSize, tuningSize);
            case 7:
                Size tuningDataSurfaceSize = CameraCharacteristicsHelper.getTuningDataSurfaceSize(str3, "tuning_data_yuv");
                return new Pair<>(tuningDataSurfaceSize, tuningDataSurfaceSize);
            case 9:
                if ("front_main".equals(str3) || "front_wide".equals(str3)) {
                    sizeGeMaxSize = geMaxSize(CameraConfigBase.KEY_FRONT_MFNR_PICTURE_SIZE, width);
                    CameraUnitLog.i(TAG, "getSurfaceSize, front main camera, mfnrSize: " + sizeGeMaxSize);
                }
                if (sizeGeMaxSize != null) {
                    return new Pair<>(sizeGeMaxSize, sizeGeMaxSize);
                }
                break;
        }
        return new Pair<>(size, size);
    }

    @Override // com.oplus.ocs.camera.producer.mode.PhotoMode, com.oplus.ocs.camera.producer.mode.BaseMode
    public String getSurfaceUseCase(String str, boolean z) {
        return "rear_sat".equals(str) ? "sat_night_case" : "front_main".equals(str) ? this.mbIsFrontMFNRSizeSupported ? CameraConstant.UseCase.FRONT_MFNR_NIGHT : "front_night_case" : "front_wide".equals(str) ? this.mbIsFrontMFNRSizeSupported ? CameraConstant.UseCase.FRONT_MFNR_NIGHT : CameraConstant.UseCase.FRONT_SUB_NIGHT : "none_sat_night_case";
    }

    @Override // com.oplus.ocs.camera.producer.mode.PhotoMode, com.oplus.ocs.camera.producer.mode.BaseMode
    protected void onConfigure(CameraSessionEntity cameraSessionEntity, SdkCameraDeviceConfig sdkCameraDeviceConfig, String str, @NonNull ApsRequestTag apsRequestTag) {
        cameraSessionEntity.setTemplate(1);
        this.mbAiNightMode = false;
        this.mbUltraDarkMode = false;
        this.mbTripodModeOpened = false;
        this.mbIsFrontMFNRSizeSupported = CameraConfigHelper.getConfigValue(CameraConfigBase.KEY_FRONT_MFNR_PICTURE_SIZE, null) != null;
    }

    @Override // com.oplus.ocs.camera.producer.mode.PhotoMode, com.oplus.ocs.camera.producer.mode.BaseMode, com.oplus.ocs.camera.producer.mode.ModeInterface
    public void updateStageParameter(@NonNull Parameter parameter, String str, String str2, @Nullable CameraRequestTag cameraRequestTag) {
        super.updateStageParameter(parameter, str, str2, cameraRequestTag);
        if (Parameter.ParameterStage.BEFORE_TAKE_PICTURE.equals(str)) {
            if (PlatformUtil.isMtkPlatform() && cameraRequestTag != null && cameraRequestTag.mCaptureEvList != null && cameraRequestTag.mbInNightProcess && 29 != cameraRequestTag.mFeatureType) {
                parameter.set((CaptureRequest.Key<boolean>) CaptureRequest.CONTROL_AE_LOCK, true);
            }
            if (PlatformUtil.isMtkPlatform() && "1".equals(CameraConfigHelper.getConfigValue(DefaultUtill.KEY_NIGHT_FRONT_ZSL_DISABLE)) && "front_main".equals(str2)) {
                parameter.set((CaptureRequest.Key<boolean>) CaptureRequest.CONTROL_ENABLE_ZSL, false);
            }
            if (cameraRequestTag != null && cameraRequestTag.mbInNightProcess && 29 != cameraRequestTag.mFeatureType) {
                parameter.set((CaptureRequest.Key<int>) CaptureRequest.CONTROL_AF_MODE, 1);
                parameter.set((CaptureRequest.Key<MeteringRectangle[]>) CaptureRequest.CONTROL_AF_REGIONS, AEAFHelp.getDefaultWeightRegion());
                parameter.set((CaptureRequest.Key<int>) CaptureRequest.CONTROL_MODE, 1);
                parameter.set((CaptureRequest.Key<MeteringRectangle[]>) CaptureRequest.CONTROL_AE_REGIONS, AEAFHelp.getDefaultWeightRegion());
            }
            if (!PlatformUtil.isMtkPlatform() || cameraRequestTag == null) {
                return;
            }
            boolean z = 13 == cameraRequestTag.mApsDecisionFeatureType || 14 == cameraRequestTag.mApsDecisionFeatureType || 29 == cameraRequestTag.mApsDecisionFeatureType;
            boolean z2 = 11 == cameraRequestTag.mApsDecisionFeatureType || 10 == cameraRequestTag.mApsDecisionFeatureType;
            boolean z3 = 9 == cameraRequestTag.mApsDecisionFeatureType;
            if (z || (z2 && CameraCharacteristicsHelper.isFrontCamera(cameraRequestTag.mCameraId))) {
                cameraRequestTag.mbNeedPreviewStream = new boolean[cameraRequestTag.mRequestNum];
                for (int i = 0; i < cameraRequestTag.mRequestNum; i++) {
                    cameraRequestTag.mbNeedPreviewStream[i] = false;
                }
                return;
            }
            if (z3 || (z2 && !CameraCharacteristicsHelper.isFrontCamera(cameraRequestTag.mCameraId))) {
                cameraRequestTag.mbNeedPreviewStream = new boolean[cameraRequestTag.mRequestNum];
                for (int i2 = 0; i2 < cameraRequestTag.mRequestNum; i2++) {
                    cameraRequestTag.mbNeedPreviewStream[i2] = true;
                }
            }
        }
    }

    @Override // com.oplus.ocs.camera.producer.mode.PhotoMode, com.oplus.ocs.camera.producer.mode.BaseMode, com.oplus.ocs.camera.producer.mode.ModeInterface
    public void updateStageParameterBuilder(@NonNull PreviewParameter.Builder builder, String str, String str2, @Nullable CameraRequestTag cameraRequestTag) {
        super.updateStageParameterBuilder(builder, str, str2, cameraRequestTag);
        int[] iArr = (int[]) builder.get(PreviewParameter.KEY_TRIPOD_MODE);
        this.mbTripodModeOpened = iArr != null && iArr.length > 0 && iArr[0] == 1;
        if (cameraRequestTag != null) {
            str.hashCode();
            if (!str.equals(Parameter.ParameterStage.BEFORE_TAKE_PICTURE)) {
                if (str.equals(Parameter.ParameterStage.START_PREVIEW)) {
                    if (builder.containsKey(PreviewParameter.KEY_STARBURST_MODE)) {
                        cameraRequestTag.mbStarburstEnable = ((Boolean) builder.get(PreviewParameter.KEY_STARBURST_MODE)).booleanValue();
                    }
                    checkColorTemperature(builder);
                    cameraRequestTag.mb3DLutEnable = ((Boolean) CameraConfigHelper.getConfigValue(CameraConfigBase.KEY_3D_LUT_SUPPORT, false)).booleanValue();
                    return;
                }
                return;
            }
            if (builder.containsKey(PreviewParameter.KEY_STARBURST_MODE)) {
                cameraRequestTag.mbStarburstEnable = ((Boolean) builder.get(PreviewParameter.KEY_STARBURST_MODE)).booleanValue();
                synchronized (this.mPreviewResultLock) {
                    if (this.mPreviewResult != null && cameraRequestTag.mbStarburstEnable) {
                        try {
                            cameraRequestTag.mStarburstInfo = (float[]) this.mPreviewResult.getCaptureResult().get(ApsCameraMetadataKey.KEY_STARBURST_INFO);
                            builder.set(PreviewParameter.KEY_STARBURST_INFO, cameraRequestTag.mStarburstInfo);
                        } catch (Throwable th) {
                            CameraUnitLog.e(TAG, "updateStageParameterBuilder, vendor tag starburst info is not supported, skip", th);
                        }
                    }
                }
            }
            cameraRequestTag.mbUseMFNRSize = "front_main".equals(str2) && this.mbIsFrontMFNRSizeSupported && ((Boolean) CameraConfigHelper.getConfigValue(CameraConfigBase.KEY_FRONT_NIGHT_USE_MFNR_PICTURE_SIZE_SUPPORT, false)).booleanValue();
        }
    }

    @Override // com.oplus.ocs.camera.producer.mode.PhotoMode, com.oplus.ocs.camera.producer.mode.BaseMode, com.oplus.ocs.camera.producer.mode.ModeInterface
    public CameraRequestTag createRequestTag(String str, Object obj, Handler handler, String str2, PreviewParameter.Builder builder) {
        CameraRequestTag cameraRequestTagCreateRequestTag = super.createRequestTag(str, obj, handler, str2, builder);
        synchronized (this.mPreviewResultLock) {
            if (Parameter.ParameterStage.BEFORE_TAKE_PICTURE.equals(str2)) {
                boolean z = true;
                cameraRequestTagCreateRequestTag.mbInNightProcess = Util.getNightStateDecision(this.mPreviewResult) > 0 && !cameraRequestTagCreateRequestTag.mbBurstShot;
                if (builder.containCustomKey(PreviewParameter.KEY_NIGHT_PRO_MODE)) {
                    cameraRequestTagCreateRequestTag.mbNightProMode = ((Boolean) builder.get(PreviewParameter.KEY_NIGHT_PRO_MODE)).booleanValue();
                }
                cameraRequestTagCreateRequestTag.mFeatureType = ((Integer) this.mPreviewResult.get(ApsDecisionParameter.KEY_PREVIEW_FEATURE_TYPE)).intValue();
                if (13 != cameraRequestTagCreateRequestTag.mFeatureType && 14 != cameraRequestTagCreateRequestTag.mFeatureType && 29 != cameraRequestTagCreateRequestTag.mFeatureType) {
                    z = false;
                }
                cameraRequestTagCreateRequestTag.mbUltraDarkMode = z;
                if (PlatformUtil.isQualcommPlatform() && is10BitOpen(str)) {
                    cameraRequestTagCreateRequestTag.mRequestFormat = 34;
                }
            }
            if (cameraRequestTagCreateRequestTag.mbInNightProcess) {
                cameraRequestTagCreateRequestTag.mCaptureEvList = (int[]) this.mPreviewResult.get(ApsDecisionParameter.KEY_PREVIEW_CAPTURE_EV_LIST);
                cameraRequestTagCreateRequestTag.mCaptureEtList = (long[]) this.mPreviewResult.get(ApsDecisionParameter.KEY_PREVIEW_CAPTURE_ET_LIST);
            }
        }
        return cameraRequestTagCreateRequestTag;
    }

    @Override // com.oplus.ocs.camera.producer.mode.PhotoMode, com.oplus.ocs.camera.producer.mode.BaseMode
    protected boolean needAddToTarget(String str, String str2, @NonNull SurfaceKey surfaceKey, PreviewParameter.Builder builder) {
        synchronized (this.mPreviewResultLock) {
            if (surfaceKey.getUsage() == "surface_key_reprocess_yuv" && Parameter.ParameterStage.BEFORE_TAKE_PICTURE.equals(str2) && Util.getNightStateDecision(this.mPreviewResult) == 0) {
                return false;
            }
            return super.needAddToTarget(str, str2, surfaceKey, builder);
        }
    }

    @Override // com.oplus.ocs.camera.producer.mode.BaseMode, com.oplus.ocs.camera.producer.mode.ModeInterface
    public int delayCloseForCapturTime() {
        if (this.mbAiNightMode || this.mbUltraDarkMode || this.mbSuperNightMode || this.mbPortraitSuperNight) {
            return (this.mbTripodModeOpened || !(PlatformUtil.isMtkPlatform() || Util.isSupportOfflineNight(getModeName()))) ? 0 : 3000;
        }
        if (!this.mbTripodModeOpened || Util.getNightStateDecision(this.mPreviewResult) == 0) {
            return super.delayCloseForCapturTime();
        }
        return 0;
    }

    @Override // com.oplus.ocs.camera.producer.mode.PhotoMode, com.oplus.ocs.camera.producer.mode.BaseMode, com.oplus.ocs.camera.producer.mode.ModeInterface
    public boolean needStartPreview(CameraPreviewCallbackAdapter.PreviewResult previewResult) {
        boolean zNeedStartPreview = super.needStartPreview(previewResult);
        boolean z = true;
        if (PlatformUtil.isQualcommPlatform()) {
            String[] strArr = (String[]) previewResult.get(ApsDecisionParameter.KEY_PREVIEW_ALGO_FLAG);
            if (strArr != null && strArr.length > 0) {
                String str = strArr[0];
                int iIntValue = ((Integer) previewResult.get(ApsDecisionParameter.KEY_PREVIEW_SCENE_MODE)).intValue();
                if (!ParameterKeys.ALGO_NAME_DARKSIGHT.equals(str) && 16 != iIntValue) {
                    z = false;
                }
                this.mbUltraDarkMode = z;
                this.mbAiNightMode = ParameterKeys.ALGO_NAME_AI_NIGHT.equals(str);
                this.mbSuperNightMode = ParameterKeys.ALGO_NAME_SUPERNIGHT.equals(str);
                this.mbPortraitSuperNight = ParameterKeys.ALGO_NAME_FRONT_PORTRAIT_SUPERNIGHT.equals(str);
            }
        } else {
            int iIntValue2 = ((Integer) previewResult.get(ApsDecisionParameter.KEY_PREVIEW_FEATURE_TYPE)).intValue();
            if (13 != iIntValue2 && 14 != iIntValue2 && 29 != iIntValue2) {
                z = false;
            }
            this.mbUltraDarkMode = z;
        }
        return zNeedStartPreview;
    }

    @Override // com.oplus.ocs.camera.producer.mode.PhotoMode, com.oplus.ocs.camera.producer.mode.BaseMode
    protected long getHalMemory() {
        int iIntValue;
        if (this.mbTenBitOpen) {
            return super.getHalMemory();
        }
        if (((Boolean) CameraConfigHelper.getConfigValue(CameraConfigBase.KEY_HAL_MEMORY_COMMON_SUPPORT_DIFFERENCE, false)).booleanValue()) {
            long totalMemory = AlgoSwitchConfig.getTotalMemory();
            int iIntValue2 = ((Integer) CameraConfigHelper.getConfigValue(CameraConfigBase.KEY_HAL_MEMORY_NIGHT, 0)).intValue();
            if (CameraConstant.MEMORY_GB_8G < totalMemory) {
                iIntValue = ((Integer) CameraConfigHelper.getConfigValue(CameraConfigBase.KEY_HAL_MEMORY_NIGHT_12G, Integer.valueOf(iIntValue2))).intValue();
            } else if (CameraConstant.MEMORY_GB_6G < totalMemory) {
                iIntValue = ((Integer) CameraConfigHelper.getConfigValue(CameraConfigBase.KEY_HAL_MEMORY_NIGHT_8G, Integer.valueOf(iIntValue2))).intValue();
            } else {
                if (CameraConstant.MEMORY_GB_4G >= totalMemory) {
                    return iIntValue2;
                }
                iIntValue = ((Integer) CameraConfigHelper.getConfigValue(CameraConfigBase.KEY_HAL_MEMORY_NIGHT_6G, Integer.valueOf(iIntValue2))).intValue();
            }
        } else {
            iIntValue = ((Integer) CameraConfigHelper.getConfigValue(CameraConfigBase.KEY_HAL_MEMORY_NIGHT, 0)).intValue();
        }
        return iIntValue;
    }

    @Override // com.oplus.ocs.camera.producer.mode.PhotoMode, com.oplus.ocs.camera.producer.mode.BaseMode
    protected CameraDeviceInfoInterface createCameraDeviceInfo(String str) {
        CameraDeviceInfoImpl cameraDeviceInfoImpl = (CameraDeviceInfoImpl) super.createCameraDeviceInfo(str);
        if (((Boolean) CameraConfigHelper.getConfigValue(CameraConfigBase.KEY_NIGHT_PRO_SUPPORT, false)).booleanValue()) {
            cameraDeviceInfoImpl.getPreviewParameterRangeMap().put(PreviewParameter.KEY_COLOR_TEMPERATURE_RANGE.getName(), CameraCharacteristicsHelper.getColorTemperatureValueList(str));
        }
        return cameraDeviceInfoImpl;
    }

    private void checkColorTemperature(PreviewParameter.Builder builder) {
        int[] iArr = (int[]) builder.get(PreviewParameter.KEY_COLOR_TEMPERATURE);
        if (iArr != null && iArr.length > 0 && -1 != iArr[0]) {
            if (PlatformUtil.isMtkPlatform()) {
                builder.set((CaptureRequest.Key<int>) CaptureRequest.CONTROL_AWB_MODE, 10);
                return;
            } else {
                builder.set((CaptureRequest.Key<int>) CaptureRequest.CONTROL_AWB_MODE, 0);
                return;
            }
        }
        builder.set((CaptureRequest.Key<int>) CaptureRequest.CONTROL_AWB_MODE, 1);
    }
}

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

import java.util.Objects;

/**
 * Implementation of the Night camera mode.
 * Handles specialized logic for super night, ultra dark, and tripod modes.
 */
public class NightMode extends PhotoMode {
    private static final String TAG = "NightMode";
    protected static final int NIGHT_DELAY_CLOSE_CAMERA_FOR_CAPTURE_TIME = 3000;

    private boolean mbAiNightMode = false;
    private boolean mbSuperNightMode = false;
    private boolean mbPortraitSuperNight = false;
    private boolean mbUltraDarkMode = false;
    private boolean mbTripodModeOpened = false;
    private boolean mbIsFrontMFNRSizeSupported = false;

    @Override
    protected String getModeName() {
        return "night_mode";
    }

    @Override
    protected boolean isExplorerOpen(String str) {
        return true;
    }

    @Override
    public boolean useOplusCameraCase(String str) {
        return true;
    }

    @Override
    public Pair<Size, Size> getSurfaceSize(SdkCameraDeviceConfig sdkCameraDeviceConfig, String type, String str2,
            String cameraId) {
        Size previewSize = Objects.requireNonNull(this.mTagMap.get(cameraId)).mPreviewSize;
        double aspectRatio = (double) previewSize.getWidth() / (double) previewSize.getHeight();
        SurfaceWrapper surfaceWrapper = sdkCameraDeviceConfig.getPictureSurfaces().get(0);
        Size maxSize = null;

        switch (type) {
            case "reprocess_input":
            case "raw_output":
            case "raw16_output":
                if ("front_main".equals(cameraId)) {
                    Size[] frontNightRawSizes = (Size[]) CameraConfigHelper
                            .getConfigValue(CameraConfigBase.KEY_FRONT_NIGHT_RAW_PICTURE_SIZE, null);
                    if (frontNightRawSizes != null && frontNightRawSizes.length > 0) {
                        Size size = frontNightRawSizes[0];
                        return new Pair<>(size, size);
                    }
                }
                Size appSurfaceSize = surfaceWrapper.getAppSurfaceSize();
                if ("rear_main".equals(cameraId)) {
                    Size[] rearNightRawSizes = (Size[]) CameraConfigHelper
                            .getConfigValue(CameraConfigBase.KEY_BACK_NIGHT_RAW_PICTURE_SIZE, null);
                    if (rearNightRawSizes != null && rearNightRawSizes.length > 0) {
                        maxSize = rearNightRawSizes[0];
                    }
                    if (maxSize != null) {
                        return new Pair<>(appSurfaceSize, maxSize);
                    }
                }
                return new Pair<>(appSurfaceSize,
                        CameraCharacteristicsHelper.getSizeByFormat(cameraId, 1.3333333333333333d, 32));

            case "preview":
                return new Pair<>(previewSize, previewSize);

            case "capture_yuv":
            case "capture":
            case "reprocess_yuv":
                if ("rear_sat".equals(cameraId)) {
                    switch (str2) {
                        case "rear_sat":
                            Size satMaxSize = Util.getMaxSize(new Size[] {
                                    geMaxSize(CameraConfigBase.KEY_SAT_MAIN_PICTURE_SIZE, aspectRatio),
                                    geMaxSize(CameraConfigBase.KEY_SAT_SUB_PICTURE_SIZE, aspectRatio),
                                    geMaxSize(CameraConfigBase.KEY_SAT_THIRD_PICTURE_SIZE, aspectRatio)
                            });
                            return new Pair<>(satMaxSize, satMaxSize);
                        case "rear_main":
                            Size mainSize = geMaxSize(CameraConfigBase.KEY_SAT_MAIN_PICTURE_SIZE, aspectRatio);
                            return new Pair<>(mainSize, mainSize);
                        case "rear_tele":
                            Size teleSize = geMaxSize(CameraConfigBase.KEY_SAT_THIRD_PICTURE_SIZE, aspectRatio);
                            return new Pair<>(teleSize, teleSize);
                        case "rear_wide":
                            Size wideSize = geMaxSize(CameraConfigBase.KEY_SAT_SUB_PICTURE_SIZE, aspectRatio);
                            return new Pair<>(wideSize, wideSize);
                    }
                }
                return new Pair<>(surfaceWrapper.getAppSurfaceSize(), surfaceWrapper.getHalSurfaceSize());

            case "tuning_data_raw":
                Size tuningSize = CameraCharacteristicsHelper.getTuningSize(cameraId);
                return new Pair<>(tuningSize, tuningSize);

            case "tuning_data_yuv":
                Size tuningDataSize = CameraCharacteristicsHelper.getTuningDataSurfaceSize(cameraId, "tuning_data_yuv");
                return new Pair<>(tuningDataSize, tuningDataSize);

            case CameraConstant.SessionSurfaceType.JSON_KEY_STREAM_CAPTURE_YUV_MFNR:
                if ("front_main".equals(cameraId) || "front_wide".equals(cameraId)) {
                    maxSize = geMaxSize(CameraConfigBase.KEY_FRONT_MFNR_PICTURE_SIZE, aspectRatio);
                    CameraUnitLog.i(TAG, "getSurfaceSize, front camera, mfnrSize: " + maxSize);
                }
                if (maxSize != null) {
                    return new Pair<>(maxSize, maxSize);
                }
                break;
        }

        return new Pair<>(previewSize, previewSize);
    }

    @Override
    public String getSurfaceUseCase(String cameraId, boolean z) {
        if ("rear_sat".equals(cameraId)) {
            return "sat_night_case";
        }
        if ("front_main".equals(cameraId)) {
            return mbIsFrontMFNRSizeSupported ? CameraConstant.UseCase.FRONT_MFNR_NIGHT : "front_night_case";
        }
        if ("front_wide".equals(cameraId)) {
            return mbIsFrontMFNRSizeSupported ? CameraConstant.UseCase.FRONT_MFNR_NIGHT
                    : CameraConstant.UseCase.FRONT_SUB_NIGHT;
        }
        return "none_sat_night_case";
    }

    @Override
    protected void onConfigure(CameraSessionEntity cameraSessionEntity, SdkCameraDeviceConfig sdkCameraDeviceConfig,
            String str, @NonNull ApsRequestTag apsRequestTag) {
        cameraSessionEntity.setTemplate(1);
        mbAiNightMode = false;
        mbUltraDarkMode = false;
        mbTripodModeOpened = false;
        mbIsFrontMFNRSizeSupported = CameraConfigHelper.getConfigValue(CameraConfigBase.KEY_FRONT_MFNR_PICTURE_SIZE,
                null) != null;
    }

    @Override
    public void updateStageParameter(@NonNull Parameter parameter, String stage, String cameraId,
            @Nullable CameraRequestTag cameraRequestTag) {
        super.updateStageParameter(parameter, stage, cameraId, cameraRequestTag);

        if (Parameter.ParameterStage.BEFORE_TAKE_PICTURE.equals(stage)) {
            if (PlatformUtil.isMtkPlatform() && cameraRequestTag != null && cameraRequestTag.mCaptureEvList != null
                    && cameraRequestTag.mbInNightProcess && cameraRequestTag.mFeatureType != 29) {
                parameter.set(CaptureRequest.CONTROL_AE_LOCK, true);
            }

            if (PlatformUtil.isMtkPlatform()
                    && "1".equals(CameraConfigHelper.getConfigValue(DefaultUtill.KEY_NIGHT_FRONT_ZSL_DISABLE))
                    && "front_main".equals(cameraId)) {
                parameter.set(CaptureRequest.CONTROL_ENABLE_ZSL, false);
            }

            if (cameraRequestTag != null && cameraRequestTag.mbInNightProcess && cameraRequestTag.mFeatureType != 29) {
                parameter.set(CaptureRequest.CONTROL_AF_MODE, 1);
                parameter.set(CaptureRequest.CONTROL_AF_REGIONS, AEAFHelp.getDefaultWeightRegion());
                parameter.set(CaptureRequest.CONTROL_MODE, 1);
                parameter.set(CaptureRequest.CONTROL_AE_REGIONS, AEAFHelp.getDefaultWeightRegion());
            }

            if (PlatformUtil.isMtkPlatform() && cameraRequestTag != null) {
                boolean isUltraDark = cameraRequestTag.mApsDecisionFeatureType == 13
                        || cameraRequestTag.mApsDecisionFeatureType == 14
                        || cameraRequestTag.mApsDecisionFeatureType == 29;

                boolean isLowLight = cameraRequestTag.mApsDecisionFeatureType == 11
                        || cameraRequestTag.mApsDecisionFeatureType == 10;

                boolean isNight = cameraRequestTag.mApsDecisionFeatureType == 9;

                if (isUltraDark
                        || (isLowLight && CameraCharacteristicsHelper.isFrontCamera(cameraRequestTag.mCameraId))) {
                    cameraRequestTag.mbNeedPreviewStream = new boolean[cameraRequestTag.mRequestNum];
                    for (int i = 0; i < cameraRequestTag.mRequestNum; i++) {
                        cameraRequestTag.mbNeedPreviewStream[i] = false;
                    }
                } else if (isNight
                        || (isLowLight && !CameraCharacteristicsHelper.isFrontCamera(cameraRequestTag.mCameraId))) {
                    cameraRequestTag.mbNeedPreviewStream = new boolean[cameraRequestTag.mRequestNum];
                    for (int i = 0; i < cameraRequestTag.mRequestNum; i++) {
                        cameraRequestTag.mbNeedPreviewStream[i] = true;
                    }
                }
            }
        }
    }

    @Override
    public void updateStageParameterBuilder(@NonNull PreviewParameter.Builder builder, String stage, String cameraId,
            @Nullable CameraRequestTag cameraRequestTag) {
        super.updateStageParameterBuilder(builder, stage, cameraId, cameraRequestTag);

        int[] tripodMode = (int[]) builder.get(PreviewParameter.KEY_TRIPOD_MODE);
        mbTripodModeOpened = tripodMode != null && tripodMode.length > 0 && tripodMode[0] == 1;

        if (cameraRequestTag != null) {
            if (Parameter.ParameterStage.START_PREVIEW.equals(stage)) {
                if (builder.containsKey(PreviewParameter.KEY_STARBURST_MODE)) {
                    cameraRequestTag.mbStarburstEnable = (Boolean) builder.get(PreviewParameter.KEY_STARBURST_MODE);
                }
                checkColorTemperature(builder);
                cameraRequestTag.mb3DLutEnable = (Boolean) CameraConfigHelper
                        .getConfigValue(CameraConfigBase.KEY_3D_LUT_SUPPORT, false);
            } else if (Parameter.ParameterStage.BEFORE_TAKE_PICTURE.equals(stage)) {
                if (builder.containsKey(PreviewParameter.KEY_STARBURST_MODE)) {
                    cameraRequestTag.mbStarburstEnable = (Boolean) builder.get(PreviewParameter.KEY_STARBURST_MODE);
                    synchronized (mPreviewResultLock) {
                        if (mPreviewResult != null && cameraRequestTag.mbStarburstEnable) {
                            try {
                                cameraRequestTag.mStarburstInfo = (float[]) mPreviewResult.getCaptureResult()
                                        .get(ApsCameraMetadataKey.KEY_STARBURST_INFO);
                                builder.set(PreviewParameter.KEY_STARBURST_INFO, cameraRequestTag.mStarburstInfo);
                            } catch (Throwable th) {
                                CameraUnitLog.e(TAG,
                                        "updateStageParameterBuilder, vendor tag starburst info is not supported", th);
                            }
                        }
                    }
                }
                cameraRequestTag.mbUseMFNRSize = "front_main".equals(cameraId) && mbIsFrontMFNRSizeSupported
                        && (Boolean) CameraConfigHelper
                                .getConfigValue(CameraConfigBase.KEY_FRONT_NIGHT_USE_MFNR_PICTURE_SIZE_SUPPORT, false);
            }
        }
    }

    @Override
    public CameraRequestTag createRequestTag(String cameraId, Object obj, Handler handler, String stage,
            PreviewParameter.Builder builder) {
        CameraRequestTag tag = super.createRequestTag(cameraId, obj, handler, stage, builder);

        synchronized (mPreviewResultLock) {
            if (Parameter.ParameterStage.BEFORE_TAKE_PICTURE.equals(stage)) {
                tag.mbInNightProcess = Util.getNightStateDecision(mPreviewResult) > 0 && !tag.mbBurstShot;

                if (builder.containCustomKey(PreviewParameter.KEY_NIGHT_PRO_MODE)) {
                    tag.mbNightProMode = (Boolean) builder.get(PreviewParameter.KEY_NIGHT_PRO_MODE);
                }

                tag.mFeatureType = (Integer) mPreviewResult.get(ApsDecisionParameter.KEY_PREVIEW_FEATURE_TYPE);
                tag.mbUltraDarkMode = tag.mFeatureType == 13 || tag.mFeatureType == 14 || tag.mFeatureType == 29;

                if (PlatformUtil.isQualcommPlatform() && is10BitOpen(cameraId)) {
                    tag.mRequestFormat = 34;
                }
            }

            if (tag.mbInNightProcess) {
                tag.mCaptureEvList = (int[]) mPreviewResult.get(ApsDecisionParameter.KEY_PREVIEW_CAPTURE_EV_LIST);
                tag.mCaptureEtList = (long[]) mPreviewResult.get(ApsDecisionParameter.KEY_PREVIEW_CAPTURE_ET_LIST);
            }
        }
        return tag;
    }

    @Override
    protected boolean needAddToTarget(String cameraId, String stage, @NonNull SurfaceKey surfaceKey,
            PreviewParameter.Builder builder) {
        synchronized (mPreviewResultLock) {
            if ("surface_key_reprocess_yuv".equals(surfaceKey.getUsage())
                    && Parameter.ParameterStage.BEFORE_TAKE_PICTURE.equals(stage)
                    && Util.getNightStateDecision(mPreviewResult) == 0) {
                return false;
            }
            return super.needAddToTarget(cameraId, stage, surfaceKey, builder);
        }
    }

    @Override
    public int delayCloseForCapturTime() {
        if (mbAiNightMode || mbUltraDarkMode || mbSuperNightMode || mbPortraitSuperNight) {
            return (mbTripodModeOpened || PlatformUtil.isMtkPlatform() || Util.isSupportOfflineNight(getModeName())) ? 0
                    : 3000;
        }

        if (mbTripodModeOpened && Util.getNightStateDecision(mPreviewResult) != 0) {
            return 0;
        }

        return super.delayCloseForCapturTime();
    }

    @Override
    public boolean needStartPreview(CameraPreviewCallbackAdapter.PreviewResult previewResult) {
        boolean needStart = super.needStartPreview(previewResult);

        if (PlatformUtil.isQualcommPlatform()) {
            String[] algoFlags = (String[]) previewResult.get(ApsDecisionParameter.KEY_PREVIEW_ALGO_FLAG);
            if (algoFlags != null && algoFlags.length > 0) {
                String algo = algoFlags[0];
                int sceneMode = (Integer) previewResult.get(ApsDecisionParameter.KEY_PREVIEW_SCENE_MODE);

                mbUltraDarkMode = ParameterKeys.ALGO_NAME_DARKSIGHT.equals(algo) || sceneMode == 16;
                mbAiNightMode = ParameterKeys.ALGO_NAME_AI_NIGHT.equals(algo);
                mbSuperNightMode = ParameterKeys.ALGO_NAME_SUPERNIGHT.equals(algo);
                mbPortraitSuperNight = ParameterKeys.ALGO_NAME_FRONT_PORTRAIT_SUPERNIGHT.equals(algo);
            }
        } else {
            int featureType = (Integer) previewResult.get(ApsDecisionParameter.KEY_PREVIEW_FEATURE_TYPE);
            mbUltraDarkMode = featureType == 13 || featureType == 14 || featureType == 29;
        }

        return needStart;
    }

    @Override
    protected long getHalMemory() {
        if (mbTenBitOpen) {
            return super.getHalMemory();
        }

        boolean useDiffMemory = (Boolean) CameraConfigHelper
                .getConfigValue(CameraConfigBase.KEY_HAL_MEMORY_COMMON_SUPPORT_DIFFERENCE, false);
        int defaultMemory = (Integer) CameraConfigHelper.getConfigValue(CameraConfigBase.KEY_HAL_MEMORY_NIGHT, 0);

        if (useDiffMemory) {
            long totalMemory = AlgoSwitchConfig.getTotalMemory();
            if (totalMemory > CameraConstant.MEMORY_GB_8G) {
                return (Integer) CameraConfigHelper.getConfigValue(CameraConfigBase.KEY_HAL_MEMORY_NIGHT_12G,
                        defaultMemory);
            } else if (totalMemory > CameraConstant.MEMORY_GB_6G) {
                return (Integer) CameraConfigHelper.getConfigValue(CameraConfigBase.KEY_HAL_MEMORY_NIGHT_8G,
                        defaultMemory);
            } else if (totalMemory > CameraConstant.MEMORY_GB_4G) {
                return (Integer) CameraConfigHelper.getConfigValue(CameraConfigBase.KEY_HAL_MEMORY_NIGHT_6G,
                        defaultMemory);
            }
        }

        return defaultMemory;
    }

    @Override
    protected CameraDeviceInfoInterface createCameraDeviceInfo(String cameraId) {
        CameraDeviceInfoImpl deviceInfo = (CameraDeviceInfoImpl) super.createCameraDeviceInfo(cameraId);
        if ((Boolean) CameraConfigHelper.getConfigValue(CameraConfigBase.KEY_NIGHT_PRO_SUPPORT, false)) {
            deviceInfo.getPreviewParameterRangeMap().put(
                    PreviewParameter.KEY_COLOR_TEMPERATURE_RANGE.getName(),
                    CameraCharacteristicsHelper.getColorTemperatureValueList(cameraId));
        }
        return deviceInfo;
    }

    private void checkColorTemperature(PreviewParameter.Builder builder) {
        int[] temperature = (int[]) builder.get(PreviewParameter.KEY_COLOR_TEMPERATURE);
        if (temperature != null && temperature.length > 0 && temperature[0] != -1) {
            builder.set(CaptureRequest.CONTROL_AWB_MODE, PlatformUtil.isMtkPlatform() ? 10 : 0);
        } else {
            builder.set(CaptureRequest.CONTROL_AWB_MODE, 1);
        }
    }
}

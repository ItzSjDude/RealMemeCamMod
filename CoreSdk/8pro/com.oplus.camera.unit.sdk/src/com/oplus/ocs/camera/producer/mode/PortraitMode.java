package com.oplus.ocs.camera.producer.mode;

import android.hardware.camera2.CaptureRequest;
import android.os.Handler;
import android.util.Pair;
import android.util.Size;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

import com.oplus.ocs.camera.appinterface.CameraDeviceInfoInterface;
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
import com.oplus.ocs.camera.common.util.ParameterKeys;
import com.oplus.ocs.camera.common.util.PlatformUtil;
import com.oplus.ocs.camera.common.util.Util;
import com.oplus.ocs.camera.configure.CameraFeatureName;
import com.oplus.ocs.camera.consumer.apsAdapter.ApsAdapterConstant;
import com.oplus.ocs.camera.consumer.apsAdapter.adapter.ApsAdapterDecision;
import com.oplus.ocs.camera.consumer.apsAdapter.config.AlgoSwitchConfig;
import com.oplus.ocs.camera.producer.device.CameraSessionEntity;
import com.oplus.ocs.camera.producer.info.CameraCharacteristicsHelper;
import com.oplus.ocs.camera.producer.info.CameraCharacteristicsWrapper;
import com.oplus.ocs.camera.producer.info.CameraConfigHelper;
import com.oplus.ocs.camera.producer.info.CameraDeviceInfoImpl;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Objects;

/**
 * Implementation of the Portrait camera mode.
 * Handles complex logic for bokeh, body type detection, and Spatial Alignment
 * (SAT).
 */
public class PortraitMode extends BaseMode {
    private static final String TAG = "PortraitMode";

    private static final Size DEFAULT_REAR_PORTRAIT_SAT_FULL_BODY_MAIN_CAMERA_CAPTURE_SIZE = new Size(4096, 3072);
    private static final Size DEFAULT_REAR_PORTRAIT_SAT_FULL_BODY_WIDE_TELE_CAMERA_CAPTURE_SIZE = new Size(1440, 1080);
    private static final Size DEFAULT_REAR_PORTRAIT_SAT_HALF_BODY_MAIN_CAMERA_CAPTURE_SIZE = new Size(4000,
            ApsAdapterConstant.LOG_INTERVAL);
    private static final Size DEFAULT_REAR_PORTRAIT_SAT_HALF_BODY_WIDE_TELE_CAMERA_CAPTURE_SIZE = new Size(4096, 3072);

    private static final String TYPE_PORTRAIT_RETENTION = "portrait_retention";

    @Override
    protected String getModeName() {
        return "portrait_mode";
    }

    @Override
    public boolean useOplusCameraCase(String str) {
        return true;
    }

    @Override
    public CameraRequestTag createRequestTag(String cameraId, Object obj, Handler handler, String stage,
            PreviewParameter.Builder builder) {
        CameraRequestTag tag = super.createRequestTag(cameraId, obj, handler, stage, builder);
        tag.mBlurIndex = Objects.requireNonNull(this.mTagMap.get(cameraId)).mBlurIndex;
        tag.mbUseTuningData = PlatformUtil.isMtkPlatform();
        tag.mbSupportBokeh = isFullBodyType(cameraId) || isHalfBodyType(cameraId);
        tag.mbPortraitFullBody = isFullBodyType(cameraId);
        tag.mbPortraitHalfBody = isHalfBodyType(cameraId);
        tag.mAiColorEnable = TYPE_PORTRAIT_RETENTION.equals(builder.get(PreviewParameter.KEY_FILTER_TYPE));

        if (tag.mAiColorEnable) {
            tag.mRTBEnable = false;
        } else if ("rear_portrait".equals(cameraId) || "rear_second_portrait".equals(cameraId)
                || "rear_sat".equals(cameraId)
                || "rear_portrait_mono_1".equals(cameraId) || "rear_portrait_mono_2".equals(cameraId)
                || "front_dual".equals(cameraId)) {
            tag.mRTBEnable = true;
        }

        if ("rear_portrait_mono_1".equals(cameraId) || "rear_portrait_mono_2".equals(cameraId)) {
            tag.mbMonoPortraitEnable = true;
        }

        if (Parameter.ParameterStage.BEFORE_TAKE_PICTURE.equals(stage)) {
            tag.mbSatOpen = false;
            Parameter configureParameter = getConfigureParameter(cameraId);
            tag.mbMirrorEnable = "on".equals(configureParameter.get(ConfigureParameter.MIRROR_ENABLE));

            if ((Boolean) CameraConfigHelper.getConfigValue(CameraConfigBase.KEY_PORTRAIT_BACK_DUAL_CAPTURE_SUPPORT,
                    false)
                    && "rear_portrait".equals(cameraId)) {
                tag.mbPortraitBackForceDualCapture = true;
            }

            if (builder.containsKey(PreviewParameter.KEY_IS_FROM_MAIN_MENU)
                    && !(Boolean) builder.get(PreviewParameter.KEY_IS_FROM_MAIN_MENU)) {
                boolean hasHdr = false;
                if (tag.mApsAlgoFlags != null) {
                    for (String algo : tag.mApsAlgoFlags) {
                        if (ParameterKeys.ALGO_NAME_HDR.equals(algo)
                                || ParameterKeys.ALGO_NAME_TURBO_HDR.equals(algo)) {
                            hasHdr = true;
                            break;
                        }
                    }
                }

                if (!hasHdr && !"on".equals(builder.get(PreviewParameter.KEY_PORTRAIT_NEON_ENABLE))
                        && (PlatformUtil.isQualcommPlatform()
                                || !"on".equals(configureParameter.get(ConfigureParameter.PORTRAIT_STREAMER_ENABLE)))) {
                    tag.mRequestNum = 1;
                }
            }
        }

        tag.mApsRequestTag.mCaptureStreamNumber = getCaptureStreamNum(cameraId);
        tag.mApsRequestTag.mPreviewStreamNumber = getPreviewStreamNum(cameraId, tag.mCameraId);
        tag.mbSupportBokehHDR = tag.mApsRequestTag.mCaptureStreamNumber > 1;

        if ("rear_sat".equals(cameraId) || "rear_portrait".equals(cameraId)) {
            tag.mLogicCameraType = (Integer) CameraConfigHelper
                    .getConfigValue(CameraConfigBase.KEY_PORTRAIT_LOGIC_CAMERA_TYPE, 1);
        }

        if ("front_dual".equals(cameraId)) {
            CameraCharacteristicsWrapper characteristics = CameraCharacteristicsHelper
                    .getCameraCharacteristicsWrapper(cameraId);
            if (characteristics != null) {
                tag.mForceUpScaleSize = characteristics
                        .getIntArrayConfig(CameraCharacteristicsWrapper.KEY_BOKEH_FORCE_UPSCALE_SIZE);
            }
        }

        tag.mNeonEnable = "on".equals(builder.get(PreviewParameter.KEY_PORTRAIT_NEON_ENABLE));
        return tag;
    }

    @Override
    public void updateStageParameterBuilder(@NonNull PreviewParameter.Builder builder, String stage, String cameraId,
            @Nullable CameraRequestTag cameraRequestTag) {
        super.updateStageParameterBuilder(builder, stage, cameraId, cameraRequestTag);

        if (Parameter.ParameterStage.CONFIGURE.equals(stage)) {
            if (PlatformUtil.isMtkPlatform()) {
                int[] multiCamFeatures = CameraCharacteristicsHelper.getAvailableMultiCameraFeature(cameraId);
                if (multiCamFeatures != null && multiCamFeatures.length > 0) {
                    if (multiCamFeatures.length == 1) {
                        int mode = multiCamFeatures[0];
                        if (mode == 0 || mode == 1) {
                            builder.set(ConfigureParameter.KEY_MTK_MULTI_CAM_FEATURE_MODE, multiCamFeatures);
                        }
                    } else if (multiCamFeatures.length == 2) {
                        builder.set(ConfigureParameter.KEY_MTK_MULTI_CAM_FEATURE_MODE, new int[] { 1 });
                    }
                }

                if (!"front_main".equals(cameraId) && !isSupportRearAINRCapture()) {
                    builder.set(ConfigureParameter.KEY_CONTROL_CAPTURE_PERFORMANCE_OPTIMAL_MODE, new int[] { 0 });
                }

                if ("rear_sat".equals(cameraId)) {
                    if (isFullBodyType(cameraId)) {
                        builder.set(ConfigureParameter.KEY_VSDOF_OPTICAL_ZOOM, new int[] { 0 });
                    } else if (isHalfBodyType(cameraId)) {
                        builder.set(ConfigureParameter.KEY_VSDOF_OPTICAL_ZOOM, new int[] { 1 });
                    }
                }
            }

            if ("rear_portrait".equals(cameraId)) {
                builder.set(ConfigureParameter.KEY_VSDOF_PREVIEW_SIZE, Objects
                        .requireNonNull(this.mConfigMap.get(cameraId)).getDefaultPreviewSurface().getAppSurfaceSize());
            }

            if (!Util.isSystemCamera()) {
                builder.set(ConfigureParameter.KEY_REQUEST_ZSL_MODE, new byte[] { 1 });
                builder.set(CaptureRequest.STATISTICS_FACE_DETECT_MODE, 1);
            }
        } else if (Parameter.ParameterStage.START_PREVIEW.equals(stage)) {
            if (!builder.containsKey(PreviewParameter.KEY_BLUR_LEVEL)) {
                builder.set(PreviewParameter.KEY_BLUR_LEVEL, new float[] { getDefaultBlurValue() });
            } else {
                float[] blurLevel = (float[]) builder.get(PreviewParameter.KEY_BLUR_LEVEL);
                ApsRequestTag tag = this.mTagMap.get(cameraId);
                if (tag != null && blurLevel != null && blurLevel.length >= 1) {
                    tag.mBlurIndex = (int) (blurLevel[0] * 100.0f);
                }
            }

            if (cameraRequestTag != null && builder.containCustomKey(PreviewParameter.KEY_FACE_MAKEUP_TYPE)
                    && builder.containCustomKey(PreviewParameter.KEY_FACE_MAKEUP_VALUE)) {
                cameraRequestTag.mMakeupType = (String) builder.get(PreviewParameter.KEY_FACE_MAKEUP_TYPE);
                cameraRequestTag.mMakeupValue = (Integer) builder.get(PreviewParameter.KEY_FACE_MAKEUP_VALUE);
                cameraRequestTag.mb3DLutEnable = (Boolean) CameraConfigHelper
                        .getConfigValue(CameraConfigBase.KEY_3D_LUT_SUPPORT, false);
            }
        } else if (Parameter.ParameterStage.BEFORE_TAKE_PICTURE.equals(stage)) {
            if (cameraRequestTag != null) {
                if (builder.containCustomKey(PreviewParameter.KEY_FILTER_TYPE)) {
                    cameraRequestTag.mStreamerEnable = "on"
                            .equals(getConfigureParameter(cameraId).get(ConfigureParameter.PORTRAIT_STREAMER_ENABLE));
                    cameraRequestTag.mFilterType = (String) builder.get(PreviewParameter.KEY_FILTER_TYPE);
                    cameraRequestTag.mbFilterOpen = (Boolean) builder.get(PreviewParameter.KEY_FILTER_OPEN);
                    cameraRequestTag.mbFilterVignette = (Boolean) builder.get(PreviewParameter.KEY_FILTER_WITHVIGNETTE);
                }

                if (builder.containCustomKey(PreviewParameter.KEY_FACE_BEAUTY_ENABLE)) {
                    cameraRequestTag.mbFaceBeautyOpen = "on"
                            .equals(builder.get(PreviewParameter.KEY_FACE_BEAUTY_ENABLE));
                    cameraRequestTag.mFaceBeautyVersion = (String) builder
                            .get(PreviewParameter.KEY_FACE_BEAUTY_VERSION);
                    cameraRequestTag.mFaceBeautyParam = (int[]) builder.get(PreviewParameter.KEY_FACE_BEAUTY_PARAM);
                    cameraRequestTag.mFaceData = (int[]) builder.get(PreviewParameter.KEY_FACE_DATA);
                }

                if (builder.containCustomKey(PreviewParameter.KEY_FACE_MAKEUP_TYPE)) {
                    cameraRequestTag.mMakeupType = (String) builder.get(PreviewParameter.KEY_FACE_MAKEUP_TYPE);
                    cameraRequestTag.mMakeupValue = (Integer) builder.get(PreviewParameter.KEY_FACE_MAKEUP_VALUE);
                }
            }
        }
    }

    protected float getDefaultBlurValue() {
        return getBlurValue(60);
    }

    protected float getBlurValue(int i) {
        return new BigDecimal(i).multiply(CameraConstant.BLUR_VALUE_INDEX_TO_ALGORITHM).floatValue();
    }

    @Override
    protected List<Size> getPictureSizes(String cameraId, int format) {
        ArrayList<Size> sizes = new ArrayList<>();
        sizes.add(getBokehSizes(cameraId, "rear_main"));
        return sizes;
    }

    private Size getBodyTypeSizes(String cameraId, String surfaceType) {
        Size[] sizes = null;
        if ("rear_sat".equals(cameraId)) {
            if (isFullBodyType(cameraId)) {
                sizes = (Size[]) CameraConfigHelper
                        .getConfigValue(CameraConfigBase.KEY_REAR_PORTRAIT_SAT_FULL_BODY_SIZE, null);
                if (sizes == null) {
                    sizes = new Size[] { DEFAULT_REAR_PORTRAIT_SAT_FULL_BODY_MAIN_CAMERA_CAPTURE_SIZE,
                            DEFAULT_REAR_PORTRAIT_SAT_FULL_BODY_WIDE_TELE_CAMERA_CAPTURE_SIZE };
                }
            } else if (isHalfBodyType(cameraId)) {
                sizes = (Size[]) CameraConfigHelper
                        .getConfigValue(CameraConfigBase.KEY_REAR_PORTRAIT_SAT_HALF_BODY_SIZE, null);
                if (sizes == null) {
                    sizes = new Size[] { DEFAULT_REAR_PORTRAIT_SAT_HALF_BODY_MAIN_CAMERA_CAPTURE_SIZE,
                            DEFAULT_REAR_PORTRAIT_SAT_HALF_BODY_WIDE_TELE_CAMERA_CAPTURE_SIZE };
                }
            }
        }

        if (sizes == null)
            return null;

        if ("rear_main".equals(surfaceType)) {
            return sizes.length >= 1 ? sizes[0] : null;
        } else if (("rear_wide".equals(surfaceType) || "rear_tele".equals(surfaceType)) && sizes.length >= 2) {
            return sizes[1];
        }
        return null;
    }

    private Size getBokehSizes(String cameraId, String surfaceType) {
        Size size = null;
        if ("rear_main".equals(surfaceType) || "front_main".equals(surfaceType)) {
            size = getMainCameraPictureSize(cameraId);
        } else if ("rear_wide".equals(surfaceType) || CameraConstant.CameraType.REAR_MONO_CAMERA_1.equals(surfaceType)
                ||
                CameraConstant.CameraType.REAR_MONO_CAMERA_2.equals(surfaceType) || "front_wide".equals(surfaceType)) {
            size = getSubCameraPictureSize(cameraId);
        }

        CameraUnitLog.d(TAG,
                "getBokehSizes, cameraType: " + cameraId + ", surfaceType: " + surfaceType + ", size: " + size);
        return size;
    }

    private Size getMainCameraPictureSize(String cameraId) {
        Size configSize = getConfigPortraitSize(0);
        if (configSize != null) {
            return new Size(configSize.getWidth(), configSize.getHeight());
        }

        int[] characteristicsSizes = (int[]) Objects
                .requireNonNull(CameraCharacteristicsHelper.getCameraCharacteristicsWrapper(cameraId))
                .get(CameraCharacteristicsWrapper.KEY_BOKEH_PICTURE_SIZE);
        if (characteristicsSizes == null || characteristicsSizes.length < 2) {
            return null;
        }
        return new Size(characteristicsSizes[0], characteristicsSizes[1]);
    }

    private Size getMaxSize(CameraConfigBase.Key<Size[]> key, double aspectRatio) {
        Size[] sizes = (Size[]) CameraConfigHelper.getConfigValue(key, null);
        if (sizes == null) {
            CameraUnitLog.w(TAG, "getMaxSize, key not configured: " + key);
            return null;
        }

        Size result = Util.getMaxSizeByRatio(sizes, aspectRatio);
        if (result == null) {
            result = Util.getImpreciseMaxSizeByRatio(sizes, aspectRatio);
            CameraUnitLog.w(TAG, "getMaxSize, exact ratio match not found, using imprecise: " + result);
        }
        return result;
    }

    private Size getSubCameraPictureSize(String cameraId) {
        Size configSize = getConfigPortraitSize(1);
        if (configSize != null) {
            return new Size(configSize.getWidth(), configSize.getHeight());
        }

        int[] characteristicsSizes = (int[]) Objects
                .requireNonNull(CameraCharacteristicsHelper.getCameraCharacteristicsWrapper(cameraId))
                .get(CameraCharacteristicsWrapper.KEY_BOKEH_PICTURE_SIZE);
        if (characteristicsSizes == null || characteristicsSizes.length < 4) {
            return null;
        }
        return new Size(characteristicsSizes[2], characteristicsSizes[3]);
    }

    private Size getConfigPortraitSize(int index) {
        Size[] sizes = (Size[]) CameraConfigHelper.getConfigValue(CameraConfigBase.KEY_PORTRAIT_MODE_PICTURE_SIZE_1X,
                null);
        if (sizes == null || sizes.length <= index) {
            return null;
        }
        return sizes[index];
    }

    @Override
    protected void onConfigure(CameraSessionEntity cameraSessionEntity, SdkCameraDeviceConfig sdkCameraDeviceConfig,
            String cameraId, ApsRequestTag apsRequestTag) {
        cameraSessionEntity.setTemplate(1);
        cameraSessionEntity.setUseMetadataSurface(false);

        if (!Util.isSystemCamera() && "rear_portrait".equals(cameraId)) {
            Map<String, Map<String, String>> modeFeatures = CameraConfigHelper.getFeatureOperationMode()
                    .get(sdkCameraDeviceConfig.getModeName());
            if (modeFeatures != null) {
                Map<String, String> bodyTypeFeatures = modeFeatures.get(CameraFeatureName.P_PORTRAIT_BODY_TYPE);
                if (bodyTypeFeatures != null) {
                    String operationMode = bodyTypeFeatures.get("full_body");
                    if (operationMode != null) {
                        cameraSessionEntity.setOperationMode(operationMode);
                        CameraUnitLog.d(TAG, "onConfigure, set rear_portrait operation mode:" + operationMode);
                    }
                }
            }
        }
    }

    @Override
    protected CameraDeviceInfoInterface createCameraDeviceInfo(String cameraId) {
        CameraDeviceInfoImpl deviceInfo = (CameraDeviceInfoImpl) super.createCameraDeviceInfo(cameraId);
        HashMap<String, List<Integer>> rangeMap = new HashMap<>();
        ArrayList<Integer> blurLevels = new ArrayList<>();
        for (int i = 1; i <= 100; i++) {
            blurLevels.add(i);
        }
        rangeMap.put(PreviewParameter.KEY_BLUR_LEVEL_RANGE.getName(), blurLevels);
        deviceInfo.setPreviewParameterRangeMap(rangeMap);
        deviceInfo.setSupportPictureSizeList(getPictureSizes(cameraId, 0));

        if ("rear_portrait".equals(cameraId)) {
            Map<String, String> dualBokehParams = Collections
                    .singletonMap(ConfigureParameter.KEY_PORTAIT_BOKEH_TYPE.getName(), "dual_bokeh");
            List<Size> supportSizes = CameraConfigHelper.getSupportPreviewSizeByFeature("portrait_mode", cameraId,
                    dualBokehParams);
            if (supportSizes != null && supportSizes.size() > 1) {
                deviceInfo.setDefaultPreviewConfigSizes(Collections.singletonList(supportSizes.get(1)));
            }
        }

        deviceInfo.getPreviewParameterRangeMap().put(PreviewParameter.KEY_ZOOM_RATIO.getName(),
                new ZoomHelper(cameraId).getZoomRatioList(false, "rear_sat".equals(cameraId), false));

        return deviceInfo;
    }

    @Override
    protected int getRawFormat(String cameraId) {
        if (Util.isTurboHdr(this.mPreviewResult)) {
            return 32;
        }
        return super.getRawFormat(cameraId);
    }

    @Override
    public boolean needAddToTarget(String cameraId, String stage, @NonNull SurfaceKey surfaceKey,
            PreviewParameter.Builder builder) {
        if (Parameter.ParameterStage.BEFORE_TAKE_PICTURE.equals(stage) && "rear_sat".equals(cameraId)) {
            String usage = surfaceKey.getUsage();
            String camType = surfaceKey.getCameraType();
            int format = surfaceKey.getFormat();

            if (("surface_key_picture".equals(usage) || "surface_key_tuning_raw".equals(usage)) &&
                    ("rear_wide".equals(camType) || "rear_main".equals(camType) || "rear_tele".equals(camType))) {

                boolean isTurboRawSupported = (Boolean) CameraConfigHelper
                        .getConfigValue(CameraConfigBase.KEY_PORTRAIT_TURBO_RAW_SUPPORT, false);
                boolean needAdd = false;

                if ((!isTurboRawSupported && !isSupportRearMFNRCapture()) || (mPreviewResult != null)) {
                    int featureType = (Integer) mPreviewResult.get(ApsDecisionParameter.KEY_PREVIEW_FEATURE_TYPE);
                    if (((featureType == 3 || featureType == 1) && format == 35) ||
                            ((featureType == 48 || featureType == 49)
                                    && (format == 32 || "surface_key_tuning_raw".equals(usage)))
                            ||
                            (featureType == 2 && (format == 37 || "surface_key_tuning_raw".equals(usage)))) {
                        needAdd = true;
                    }
                }
                CameraUnitLog.e(TAG, "needAddToTarget, stage: " + stage + ", surfaceKey: " + surfaceKey
                        + ", needAddTarget: " + needAdd);
                return needAdd;
            }
        }
        return super.needAddToTarget(cameraId, stage, surfaceKey, builder);
    }

    @Override
    public Pair<Size, Size> getSurfaceSize(SdkCameraDeviceConfig sdkCameraDeviceConfig, String surfaceType,
            String configuredCameraType, String cameraId) {
        SurfaceWrapper defaultPreviewSurface = sdkCameraDeviceConfig.getDefaultPreviewSurface();
        SurfaceWrapper pictureSurface = sdkCameraDeviceConfig.getPictureSurfaces().get(0);
        Size appPreviewSize = defaultPreviewSurface.getAppSurfaceSize();
        Size halPreviewSize = defaultPreviewSurface.getHalSurfaceSize();
        boolean isFrontDualSupported = (Boolean) CameraConfigHelper
                .getConfigValue(CameraConfigBase.KEY_FRONT_DUAL_CAMERA_SUPPORT, false);

        CameraUnitLog.d(TAG, "getSurfaceSize, type:" + surfaceType + " , configuredCam:" + configuredCameraType
                + " , cam:" + cameraId);

        switch (surfaceType) {
            case "raw_output":
            case "raw16_output":
                if ((Boolean) CameraConfigHelper.getConfigValue(CameraConfigBase.KEY_PORTRAIT_TURBO_RAW_SUPPORT, false)
                        &&
                        ("rear_main".equals(configuredCameraType) || "rear_wide".equals(configuredCameraType))) {
                    return getCaptureSurfaceSizeBySurfaceType(isFrontDualSupported, "raw_output", cameraId,
                            configuredCameraType, pictureSurface, appPreviewSize);
                }
                return new Pair<>(pictureSurface.getAppSurfaceSize(),
                        CameraCharacteristicsHelper.getSizeByFormat(cameraId, 1.3333333333333333d, 32));

            case "preview":
            case "preview_frame":
                if ((("front_wide".equals(configuredCameraType) && "front_dual".equals(cameraId)
                        && isFrontDualSupported) || "rear_wide".equals(configuredCameraType))
                        && !(Boolean) CameraConfigHelper.getConfigValue(
                                CameraConfigBase.KEY_PORTRAIT_MTK_REAR_WIDE_PLATFORM_DEPTH_NOT_SUPPORT, false)
                        && PlatformUtil.isMtkPlatform()) {
                    Size size = CameraCharacteristicsHelper.getSizeByFormat(cameraId,
                            (double) appPreviewSize.getWidth() / (double) appPreviewSize.getHeight(), 538982489);
                    return new Pair<>(size, size);
                }

                if ((CameraConstant.CameraType.REAR_MONO_CAMERA_1.equals(configuredCameraType)
                        || CameraConstant.CameraType.REAR_MONO_CAMERA_2.equals(configuredCameraType))
                        && PlatformUtil.isMtkPlatform()) {
                    double ratio = (double) appPreviewSize.getWidth() / (double) appPreviewSize.getHeight();
                    int format = (Boolean) CameraConfigHelper
                            .getConfigValue(CameraConfigBase.KEY_REAR_SINGLE_BOKEH_SUPPORT, false) ? 35 : 538982489;
                    if ((Boolean) CameraConfigHelper
                            .getConfigValue(CameraConfigBase.KEY_REAR_DUALCAM_SOFT_DEPTH_SUPPORT, false)) {
                        return new Pair<>(appPreviewSize, halPreviewSize);
                    }
                    Size size = CameraCharacteristicsHelper.getSizeByFormat(cameraId, ratio, format);
                    return new Pair<>(size, size);
                }
                return new Pair<>(appPreviewSize, halPreviewSize);

            case "capture_raw":
                if (isSupportRearMFNRCapture() || isSupportRearAINRCapture()) {
                    return getCaptureSurfaceSizeBySurfaceType(isFrontDualSupported, "capture_yuv", cameraId,
                            configuredCameraType, pictureSurface, appPreviewSize);
                }
                return new Pair<>(pictureSurface.getAppSurfaceSize(),
                        CameraCharacteristicsHelper.getSizeByFormat(cameraId, 1.3333333333333333d, 32));

            case "capture_yuv":
                return getCaptureSurfaceSizeBySurfaceType(isFrontDualSupported, "capture_yuv", cameraId,
                        configuredCameraType, pictureSurface, appPreviewSize);

            case "capture":
                return getCaptureSurfaceSizeBySurfaceType(isFrontDualSupported, "capture", cameraId,
                        configuredCameraType, pictureSurface, appPreviewSize);

            case "tuning_data_raw":
                Size tuningRaw = CameraCharacteristicsHelper.getTuningDataSurfaceSize(cameraId, "tuning_data_raw");
                return new Pair<>(tuningRaw, tuningRaw);

            case "tuning_data_yuv":
                Size tuningYuv = CameraCharacteristicsHelper.getTuningDataSurfaceSize(cameraId, "tuning_data_yuv");
                return new Pair<>(tuningYuv, tuningYuv);

            case "capture_yuv_mfnr":
                double ratio = (double) appPreviewSize.getWidth() / (double) appPreviewSize.getHeight();
                Size mfnrSize = null;
                if ("front_main".equals(cameraId) || "front_wide".equals(cameraId)) {
                    mfnrSize = getMaxSize(CameraConfigBase.KEY_FRONT_MFNR_PICTURE_SIZE, ratio);
                    CameraUnitLog.i(TAG, "getSurfaceSize, front camera, mfnrSize: " + mfnrSize);
                }
                if (mfnrSize != null)
                    return new Pair<>(mfnrSize, mfnrSize);
                break;
        }

        ApsRequestTag tag = this.mTagMap.get(cameraId);
        return tag != null ? new Pair<>(tag.mPreviewSize, tag.mPreviewSize)
                : new Pair<>(appPreviewSize, appPreviewSize);
    }

    private Pair<Size, Size> getCaptureSurfaceSizeBySurfaceType(boolean isFrontDual, String surfaceType,
            String cameraId, String configuredCameraType, SurfaceWrapper pictureSurface, Size previewSize) {
        if ("front_dual".equals(configuredCameraType) && isFrontDual && "capture_yuv".equals(surfaceType)) {
            if ("front_main".equals(cameraId)) {
                Size size = getBokehSizes(configuredCameraType, "front_main");
                return new Pair<>(size, size);
            } else if ("front_wide".equals(cameraId)) {
                Size size = getBokehSizes(configuredCameraType, "front_wide");
                return new Pair<>(size, size);
            }
        }

        if ("rear_sat".equals(configuredCameraType)) {
            Size size = getBodyTypeSizes(configuredCameraType, cameraId);
            return new Pair<>(size, size);
        }

        if ("rear_main".equals(cameraId) || "front_main".equals(cameraId) || "front_wide".equals(cameraId)) {
            return new Pair<>(pictureSurface.getAppSurfaceSize(), pictureSurface.getHalSurfaceSize());
        }

        if ("rear_wide".equals(cameraId)) {
            Size size = getBokehSizes(configuredCameraType, "rear_wide");
            return new Pair<>(size, size);
        }

        if (CameraConstant.CameraType.REAR_MONO_CAMERA_1.equals(cameraId)) {
            Size size = getBokehSizes(configuredCameraType, CameraConstant.CameraType.REAR_MONO_CAMERA_1);
            return new Pair<>(size, size);
        }

        if (CameraConstant.CameraType.REAR_MONO_CAMERA_2.equals(cameraId)) {
            Size size = getBokehSizes(configuredCameraType, CameraConstant.CameraType.REAR_MONO_CAMERA_2);
            return new Pair<>(size, size);
        }

        double ratio = (double) previewSize.getWidth() / (double) previewSize.getHeight();
        if ("rear_portrait_mono_1".equals(configuredCameraType)
                && CameraConstant.CameraType.REAR_MONO_CAMERA_1.equals(cameraId)) {
            Size size = getMaxSize(CameraConfigBase.KEY_MONO1_PICTURE_SIZE, ratio);
            return new Pair<>(size, size);
        }

        if ("rear_portrait_mono_2".equals(configuredCameraType)
                && CameraConstant.CameraType.REAR_MONO_CAMERA_2.equals(cameraId)) {
            Size size = getMaxSize(CameraConfigBase.KEY_MONO2_PICTURE_SIZE, ratio);
            return new Pair<>(size, size);
        }

        ApsRequestTag tag = this.mTagMap.get(configuredCameraType);
        return tag != null ? new Pair<>(tag.mPreviewSize, tag.mPreviewSize) : new Pair<>(previewSize, previewSize);
    }

    @Override
    protected String getSurfaceUseCase(String cameraId, boolean z) {
        if ("front_dual".equals(cameraId))
            return CameraConstant.UseCase.FRONT_DUAL_PORTRAIT;
        if ("front_main".equals(cameraId) || "front_wide".equals(cameraId)) {
            return CameraConfigHelper.getConfigValue(CameraConfigBase.KEY_FRONT_MFNR_PICTURE_SIZE, null) != null
                    ? CameraConstant.UseCase.FRONT_SINGLE_MFNR_PORTRAIT
                    : "single_portrait_case";
        }
        if ("rear_main".equals(cameraId))
            return CameraConstant.UseCase.SINGLE_PHOTO;
        if ("rear_portrait_mono_1".equals(cameraId))
            return CameraConstant.UseCase.PORTRAIT_MONO1;
        if ("rear_portrait_mono_2".equals(cameraId))
            return CameraConstant.UseCase.PORTRAIT_MONO2;

        return "portrait_bokeh_case";
    }

    private boolean isFullBodyType(String cameraId) {
        SdkCameraDeviceConfig config = this.mConfigMap.get(cameraId);
        if (config == null)
            return false;
        return "full_body".equals(config.getConfigureParameter().get(ConfigureParameter.KEY_PORTAIT_BODY_TYPE));
    }

    private boolean isHalfBodyType(String cameraId) {
        SdkCameraDeviceConfig config = this.mConfigMap.get(cameraId);
        if (config == null)
            return false;
        return "half_body".equals(config.getConfigureParameter().get(ConfigureParameter.KEY_PORTAIT_BODY_TYPE));
    }

    public boolean isSupportDualCamera(boolean isFront) {
        return isFront ? CameraCharacteristicsHelper.isSupportFrontDualCamera()
                : CameraCharacteristicsHelper.isSupportBackDualCamera();
    }

    @Override
    public int getSurfaceFormatBySurfaceType(String surfaceType, String configuredCameraType, String cameraId) {
        if (PlatformUtil.isMtkPlatform() && ("preview".equals(surfaceType) || "preview_frame".equals(surfaceType)) &&
                ("rear_wide".equals(configuredCameraType)
                        || CameraConstant.CameraType.REAR_MONO_CAMERA_1.equals(configuredCameraType) ||
                        CameraConstant.CameraType.REAR_MONO_CAMERA_2.equals(configuredCameraType)
                        || "front_wide".equals(configuredCameraType))) {

            if ((Boolean) CameraConfigHelper.getConfigValue(CameraConfigBase.KEY_REAR_SINGLE_BOKEH_SUPPORT, false) ||
                    (Boolean) CameraConfigHelper.getConfigValue(CameraConfigBase.KEY_REAR_DUALCAM_SOFT_DEPTH_SUPPORT,
                            false)) {
                return 35;
            }

            if ((Boolean) CameraConfigHelper
                    .getConfigValue(CameraConfigBase.KEY_PORTRAIT_MTK_REAR_WIDE_PLATFORM_DEPTH_NOT_SUPPORT, false)) {
                return super.getSurfaceFormatBySurfaceType(surfaceType, configuredCameraType, cameraId);
            }
            return 538982489;
        }
        return super.getSurfaceFormatBySurfaceType(surfaceType, configuredCameraType, cameraId);
    }

    @Override
    protected long getHalMemory() {
        return (Integer) CameraConfigHelper.getConfigValue(CameraConfigBase.KEY_HAL_MEMORY_PORTRAIT, 0);
    }

    @Override
    protected int getPhysicalId(String cameraId, String configuredCameraType, String surfaceType) {
        if (PlatformUtil.isMtkPlatform() && "preview".equals(surfaceType) && "rear_wide".equals(configuredCameraType)) {
            if ((Boolean) CameraConfigHelper
                    .getConfigValue(CameraConfigBase.KEY_PORTRAIT_MTK_REAR_WIDE_PLATFORM_DEPTH_NOT_SUPPORT, false)) {
                return super.getPhysicalId(cameraId, configuredCameraType, surfaceType);
            }
            return -1;
        }

        if ("rear_portrait_mono_1".equals(cameraId)) {
            if ("rear_main".equals(configuredCameraType))
                return super.getPhysicalId(cameraId, configuredCameraType, surfaceType);
            if (CameraConstant.CameraType.REAR_MONO_CAMERA_1.equals(configuredCameraType)
                    && "capture_yuv".equals(surfaceType)) {
                return super.getPhysicalId(cameraId, configuredCameraType, surfaceType);
            }
            return "tuning_data_yuv".equals(surfaceType)
                    ? Objects.requireNonNull(CameraCharacteristicsHelper.getCameraIdType("rear_main")).getCameraId()
                    : -1;
        }

        if ("rear_portrait_mono_2".equals(cameraId)) {
            if ("rear_main".equals(configuredCameraType))
                return super.getPhysicalId(cameraId, configuredCameraType, surfaceType);
            if (CameraConstant.CameraType.REAR_MONO_CAMERA_2.equals(configuredCameraType)
                    && "capture_yuv".equals(surfaceType)) {
                return super.getPhysicalId(cameraId, configuredCameraType, surfaceType);
            }
            return "tuning_data_yuv".equals(surfaceType)
                    ? Objects.requireNonNull(CameraCharacteristicsHelper.getCameraIdType("rear_main")).getCameraId()
                    : -1;
        }

        if ("rear_portrait".equals(cameraId)) {
            if ((Boolean) CameraConfigHelper.getConfigValue(CameraConfigBase.KEY_REAR_PORTRAIT_PREVIEW_PHYSICALID,
                    false) && "preview".equals(surfaceType)) {
                return -1;
            }
            if ("tuning_data_yuv".equals(surfaceType))
                return Objects.requireNonNull(CameraCharacteristicsHelper.getCameraIdType("rear_main")).getCameraId();
            if ("capture_yuv".equals(surfaceType) || "rear_main".equals(configuredCameraType))
                return super.getPhysicalId(cameraId, configuredCameraType, surfaceType);

            if ("rear_wide".equals(configuredCameraType)
                    || CameraConstant.CameraType.REAR_MONO_CAMERA_1.equals(configuredCameraType)) {
                if ((isSupportRearMFNRCapture() || isSupportRearAINRCapture()
                        || (Boolean) CameraConfigHelper
                                .getConfigValue(CameraConfigBase.KEY_QUALCOMM_PHYSICAL_ID_SUPPORT, false))
                        &&
                        CameraCharacteristicsHelper.isSupportBackDualCamera()) {
                    return super.getPhysicalId(cameraId, configuredCameraType, surfaceType);
                }
            }
            return -1;
        }

        if ("rear_sat".equals(cameraId) && "tuning_data_yuv".equals(surfaceType)) {
            if (isFullBodyType(cameraId)) {
                if (isSupportRearMFNRCapture() && "rear_wide".equals(configuredCameraType)) {
                    return Objects.requireNonNull(CameraCharacteristicsHelper.getCameraIdType("rear_wide"))
                            .getCameraId();
                }
                return Objects.requireNonNull(CameraCharacteristicsHelper.getCameraIdType("rear_main")).getCameraId();
            } else if (isHalfBodyType(cameraId)) {
                if (isSupportRearMFNRCapture() && "rear_wide".equals(configuredCameraType)) {
                    return Objects.requireNonNull(CameraCharacteristicsHelper.getCameraIdType("rear_main"))
                            .getCameraId();
                }
                return Objects.requireNonNull(CameraCharacteristicsHelper.getCameraIdType("rear_tele")).getCameraId();
            }
            return -1;
        }

        if ("rear_second_portrait".equals(cameraId) && PlatformUtil.isMtkPlatform()) {
            if ((Boolean) CameraConfigHelper.getConfigValue(CameraConfigBase.KEY_REAR_PORTRAIT_PREVIEW_PHYSICALID,
                    false) && "preview".equals(surfaceType)) {
                return -1;
            }
            if ("tuning_data_yuv".equals(surfaceType) || "rear_main".equals(configuredCameraType)) {
                return Objects.requireNonNull(CameraCharacteristicsHelper.getCameraIdType("rear_tele")).getCameraId();
            }
            if ("capture_yuv".equals(surfaceType) && "rear_wide".equals(configuredCameraType)) {
                return Objects.requireNonNull(CameraCharacteristicsHelper.getCameraIdType("rear_main")).getCameraId();
            }
            return -1;
        }

        if (isFullBodyType(cameraId) || CameraCharacteristicsHelper.getCameraIdType("rear_tele") == null) {
            return super.getPhysicalId(cameraId, configuredCameraType, surfaceType);
        }

        int[] physicalIds1x = (int[]) CameraConfigHelper
                .getConfigValue(CameraConfigBase.KEY_PORTRAIT_MODE_PHYSICAL_CAMERA_ID_1X, null);
        if (isFullBodyType(cameraId) && physicalIds1x != null) {
            int targetId = Objects.requireNonNull(CameraCharacteristicsHelper.getCameraIdType(configuredCameraType))
                    .getCameraId();
            return physicalIds1x[0] == targetId ? physicalIds1x[0] : physicalIds1x[1];
        }

        int[] physicalIds2x = (int[]) CameraConfigHelper
                .getConfigValue(CameraConfigBase.KEY_PORTRAIT_MODE_PHYSICAL_CAMERA_ID_2X, null);
        if (isHalfBodyType(cameraId) && physicalIds2x != null) {
            int targetId = Objects.requireNonNull(CameraCharacteristicsHelper.getCameraIdType(configuredCameraType))
                    .getCameraId();
            return physicalIds2x[0] == targetId ? physicalIds2x[0] : physicalIds2x[1];
        }

        if ("rear_sat".equals(cameraId)) {
            if ("rear_main".equals(configuredCameraType))
                return Objects.requireNonNull(CameraCharacteristicsHelper.getCameraIdType("rear_tele")).getCameraId();
            if ("rear_wide".equals(configuredCameraType))
                return Objects.requireNonNull(CameraCharacteristicsHelper.getCameraIdType("rear_main")).getCameraId();
        }

        return super.getPhysicalId(cameraId, configuredCameraType, surfaceType);
    }

    @Override
    public boolean needMatchPreviewTimestamp(int i, String str, CameraRequestTag cameraRequestTag,
            ApsAdapterDecision.DecisionResult decisionResult) {
        if (cameraRequestTag == null)
            return false;
        boolean isFront = CameraCharacteristicsHelper.isFrontCamera(cameraRequestTag.mCameraId);
        if (!isFront && isSupportDualCamera(false)) {
            if (PlatformUtil.isQualcommPlatform() && i == 2 && decisionResult != null) {
                return decisionResult.mApsDecisionSceneMode == 12 || decisionResult.mApsDecisionSceneMode == 13
                        || decisionResult.mApsDecisionSceneMode == 30;
            }
            return false;
        }
        return super.needMatchPreviewTimestamp(i, str, cameraRequestTag, decisionResult);
    }

    @Override
    protected String getFeatureName(String cameraId) {
        if ("on".equals(getConfigureParameter(cameraId).get(ConfigureParameter.PORTRAIT_STREAMER_ENABLE))) {
            return CameraConstant.StreamerPortrait.STREAMER_PORTRAIT;
        }
        if ((Boolean) CameraConfigHelper.getConfigValue(CameraConfigBase.KEY_REAR_SINGLE_BOKEH_SUPPORT, false)
                && "rear_portrait_mono_1".equals(cameraId)) {
            return CameraConstant.MonoPortrait.MONO_PORTRAIT;
        }
        return super.getFeatureName(cameraId);
    }

    @Override
    protected Long getPreviewReaderUsage(String cameraId) {
        if (!Util.isSystemCamera() && (Boolean) CameraConfigHelper
                .getConfigValue(CameraConfigBase.KEY_THIRD_PARTY_MTK_PORTRAIT_PREVIEW_USAGE, false)) {
            return 3L;
        }
        return super.getPreviewReaderUsage(cameraId);
    }

    public int getPreviewStreamNum(String cameraId, int id) {
        if (isSupportPure3rdBokehPreview(id))
            return 1;
        return getSensorNumberFromConfig(cameraId);
    }

    public int getCaptureStreamNum(String cameraId) {
        return getSensorNumberFromConfig(cameraId);
    }

    private boolean isSupportPure3rdBokehPreview(int id) {
        return !CameraCharacteristicsHelper.isFrontCamera(id)
                && (Integer) CameraConfigHelper.getConfigValue(CameraConfigBase.KEY_BACK_PURE_3RD_BOKEH_PREVIEW, 0) > 0;
    }

    private boolean isSupportRearMFNRCapture() {
        return this.mRearFrontCameraId == 0 && AlgoSwitchConfig.getSupportCaptureAlgo("portrait", 0, "aps_algo_mfll");
    }

    private boolean isSupportRearAINRCapture() {
        return this.mRearFrontCameraId == 0 && AlgoSwitchConfig.getSupportCaptureAlgo("portrait", 0, "aps_algo_ainr");
    }
}
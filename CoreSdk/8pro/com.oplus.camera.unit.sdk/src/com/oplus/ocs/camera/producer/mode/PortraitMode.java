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

/* JADX INFO: loaded from: classes.dex */
public class PortraitMode extends BaseMode {
    private static final Size DEFAULT_REAR_PORTRAIT_SAT_FULL_BODY_MAIN_CAMERA_CAPTURE_SIZE = new Size(4096, 3072);
    private static final Size DEFAULT_REAR_PORTRAIT_SAT_FULL_BODY_WIDE_TELE_CAMERA_CAPTURE_SIZE = new Size(1440, 1080);
    private static final Size DEFAULT_REAR_PORTRAIT_SAT_HALF_BODY_MAIN_CAMERA_CAPTURE_SIZE = new Size(4000, ApsAdapterConstant.LOG_INTERVAL);
    private static final Size DEFAULT_REAR_PORTRAIT_SAT_HALF_BODY_WIDE_TELE_CAMERA_CAPTURE_SIZE = new Size(4096, 3072);
    private static final int DUAL_CAMERA_SIZE_MAIN_INDEX = 0;
    private static final int DUAL_CAMERA_SIZE_SUB_INDEX = 1;
    private static final int MTK_AVAILABLE_MULTI_CAM_FEATURE_MODE_ZOOM_AND_VSDOF = 2;
    private static final int MTK_AVAILABLE_MULTI_CAM_FEATURE_MODE_ZOOM_OR_VSDOF = 1;
    private static final String TAG = "PortraitMode";
    private static final String TYPE_PORTRAIT_RETENTION = "portrait_retention";

    @Override // com.oplus.ocs.camera.producer.mode.BaseMode
    protected String getModeName() {
        return "portrait_mode";
    }

    @Override // com.oplus.ocs.camera.producer.mode.BaseMode
    public boolean useOplusCameraCase(String str) {
        return true;
    }

    @Override // com.oplus.ocs.camera.producer.mode.BaseMode, com.oplus.ocs.camera.producer.mode.ModeInterface
    public CameraRequestTag createRequestTag(String str, Object obj, Handler handler, String str2, PreviewParameter.Builder builder) {
        CameraCharacteristicsWrapper cameraCharacteristicsWrapper;
        boolean z;
        CameraRequestTag cameraRequestTagCreateRequestTag = super.createRequestTag(str, obj, handler, str2, builder);
        cameraRequestTagCreateRequestTag.mBlurIndex = this.mTagMap.get(str).mBlurIndex;
        cameraRequestTagCreateRequestTag.mbUseTuningData = PlatformUtil.isMtkPlatform();
        cameraRequestTagCreateRequestTag.mbSupportBokeh = isFullBodyType(str) || isHalfBodyType(str);
        cameraRequestTagCreateRequestTag.mbPortraitFullBody = isFullBodyType(str);
        cameraRequestTagCreateRequestTag.mbPortraitHalfBody = isHalfBodyType(str);
        cameraRequestTagCreateRequestTag.mAiColorEnable = TYPE_PORTRAIT_RETENTION.equals(builder.get(PreviewParameter.KEY_FILTER_TYPE));
        if (cameraRequestTagCreateRequestTag.mAiColorEnable) {
            cameraRequestTagCreateRequestTag.mRTBEnable = false;
        } else if ("rear_portrait".equals(str) || "rear_second_portrait".equals(str) || "rear_sat".equals(str) || "rear_portrait_mono_1".equals(str) || "rear_portrait_mono_2".equals(str) || "front_dual".equals(str)) {
            cameraRequestTagCreateRequestTag.mRTBEnable = true;
        }
        if ("rear_portrait_mono_1".equals(str) || "rear_portrait_mono_2".equals(str)) {
            cameraRequestTagCreateRequestTag.mbMonoPortraitEnable = true;
        }
        if (Parameter.ParameterStage.BEFORE_TAKE_PICTURE.equals(str2)) {
            cameraRequestTagCreateRequestTag.mbSatOpen = false;
            Parameter configureParameter = getConfigureParameter(str);
            cameraRequestTagCreateRequestTag.mbMirrorEnable = "on".equals(configureParameter.get(ConfigureParameter.MIRROR_ENABLE));
            if (((Boolean) CameraConfigHelper.getConfigValue(CameraConfigBase.KEY_PORTRAIT_BACK_DUAL_CAPTURE_SUPPORT, false)).booleanValue() && "rear_portrait".equals(str)) {
                cameraRequestTagCreateRequestTag.mbPortraitBackForceDualCapture = true;
            }
            if (builder.containsKey(PreviewParameter.KEY_IS_FROM_MAIN_MENU) && !((Boolean) builder.get(PreviewParameter.KEY_IS_FROM_MAIN_MENU)).booleanValue()) {
                if (cameraRequestTagCreateRequestTag.mApsAlgoFlags != null) {
                    for (String str3 : cameraRequestTagCreateRequestTag.mApsAlgoFlags) {
                        if (ParameterKeys.ALGO_NAME_HDR.equals(str3) || ParameterKeys.ALGO_NAME_TURBO_HDR.equals(str3)) {
                            z = true;
                            break;
                        }
                    }
                    z = false;
                    if (!z && !"on".equals(builder.get(PreviewParameter.KEY_PORTRAIT_NEON_ENABLE)) && (PlatformUtil.isQualcommPlatform() || !"on".equals(configureParameter.get(ConfigureParameter.PORTRAIT_STREAMER_ENABLE)))) {
                        cameraRequestTagCreateRequestTag.mRequestNum = 1;
                    }
                } else {
                    z = false;
                    if (!z) {
                        cameraRequestTagCreateRequestTag.mRequestNum = 1;
                    }
                }
            }
        }
        cameraRequestTagCreateRequestTag.mApsRequestTag.mCaptureStreamNumber = getCaptureStreamNum(str);
        cameraRequestTagCreateRequestTag.mApsRequestTag.mPreviewStreamNumber = getPreviewStreamNum(str, cameraRequestTagCreateRequestTag.mCameraId);
        cameraRequestTagCreateRequestTag.mbSupportBokehHDR = cameraRequestTagCreateRequestTag.mApsRequestTag.mCaptureStreamNumber > 1;
        if ("rear_sat".equals(str) || "rear_portrait".equals(str)) {
            cameraRequestTagCreateRequestTag.mLogicCameraType = ((Integer) CameraConfigHelper.getConfigValue(CameraConfigBase.KEY_PORTRAIT_LOGIC_CAMERA_TYPE, 1)).intValue();
        }
        if ("front_dual".equals(str) && (cameraCharacteristicsWrapper = CameraCharacteristicsHelper.getCameraCharacteristicsWrapper(str)) != null) {
            cameraRequestTagCreateRequestTag.mForceUpScaleSize = cameraCharacteristicsWrapper.getIntArrayConfig(CameraCharacteristicsWrapper.KEY_BOKEH_FORCE_UPSCALE_SIZE);
        }
        cameraRequestTagCreateRequestTag.mNeonEnable = "on".equals(builder.get(PreviewParameter.KEY_PORTRAIT_NEON_ENABLE));
        return cameraRequestTagCreateRequestTag;
    }

    @Override // com.oplus.ocs.camera.producer.mode.BaseMode, com.oplus.ocs.camera.producer.mode.ModeInterface
    public void updateStageParameterBuilder(@NonNull PreviewParameter.Builder builder, String str, String str2, @Nullable CameraRequestTag cameraRequestTag) {
        super.updateStageParameterBuilder(builder, str, str2, cameraRequestTag);
        if (Parameter.ParameterStage.CONFIGURE.equals(str)) {
            if (PlatformUtil.isMtkPlatform()) {
                int[] availableMultiCameraFeature = CameraCharacteristicsHelper.getAvailableMultiCameraFeature(str2);
                if (availableMultiCameraFeature != null && availableMultiCameraFeature.length > 0) {
                    if (availableMultiCameraFeature.length == 1) {
                        int i = availableMultiCameraFeature[0];
                        if (i == 0 || i == 1) {
                            builder.set(ConfigureParameter.KEY_MTK_MULTI_CAM_FEATURE_MODE, availableMultiCameraFeature);
                        }
                    } else if (availableMultiCameraFeature.length == 2) {
                        builder.set(ConfigureParameter.KEY_MTK_MULTI_CAM_FEATURE_MODE, new int[]{1});
                    }
                }
                if (!"front_main".equals(str2) && !isSupportRearAINRCapture()) {
                    builder.set(ConfigureParameter.KEY_CONTROL_CAPTURE_PERFORMANCE_OPTIMAL_MODE, new int[]{0});
                }
                if ("rear_sat".equals(str2)) {
                    if (isFullBodyType(str2)) {
                        builder.set(ConfigureParameter.KEY_VSDOF_OPTICAL_ZOOM, new int[]{0});
                    } else if (isHalfBodyType(str2)) {
                        builder.set(ConfigureParameter.KEY_VSDOF_OPTICAL_ZOOM, new int[]{1});
                    }
                }
            }
            if ("rear_portrait".equals(str2)) {
                builder.set(ConfigureParameter.KEY_VSDOF_PREVIEW_SIZE, this.mConfigMap.get(str2).getDefaultPreviewSurface().getAppSurfaceSize());
            }
            if (Util.isSystemCamera()) {
                return;
            }
            builder.set(ConfigureParameter.KEY_REQUEST_ZSL_MODE, new byte[]{1});
            builder.set((CaptureRequest.Key<int>) CaptureRequest.STATISTICS_FACE_DETECT_MODE, 1);
            return;
        }
        if (Parameter.ParameterStage.START_PREVIEW.equals(str)) {
            if (!builder.containsKey((Parameter.Key<?>) PreviewParameter.KEY_BLUR_LEVEL)) {
                builder.set(PreviewParameter.KEY_BLUR_LEVEL, new float[]{getDefaultBlurValue()});
                return;
            }
            float[] fArr = (float[]) builder.get(PreviewParameter.KEY_BLUR_LEVEL);
            ApsRequestTag apsRequestTag = this.mTagMap.get(str2);
            if (apsRequestTag != null && fArr != null && fArr.length >= 1) {
                apsRequestTag.mBlurIndex = (int) (fArr[0] * 100.0f);
            }
            if (cameraRequestTag != null && builder.containCustomKey(PreviewParameter.KEY_FACE_MAKEUP_TYPE) && builder.containCustomKey(PreviewParameter.KEY_FACE_MAKEUP_VALUE)) {
                cameraRequestTag.mMakeupType = (String) builder.get(PreviewParameter.KEY_FACE_MAKEUP_TYPE);
                cameraRequestTag.mMakeupValue = ((Integer) builder.get(PreviewParameter.KEY_FACE_MAKEUP_VALUE)).intValue();
                cameraRequestTag.mb3DLutEnable = ((Boolean) CameraConfigHelper.getConfigValue(CameraConfigBase.KEY_3D_LUT_SUPPORT, false)).booleanValue();
                return;
            }
            return;
        }
        if (Parameter.ParameterStage.BEFORE_TAKE_PICTURE.equals(str)) {
            if (builder.containCustomKey(PreviewParameter.KEY_FILTER_TYPE)) {
                cameraRequestTag.mStreamerEnable = "on".equals(getConfigureParameter(str2).get(ConfigureParameter.PORTRAIT_STREAMER_ENABLE));
                cameraRequestTag.mFilterType = (String) builder.get(PreviewParameter.KEY_FILTER_TYPE);
                cameraRequestTag.mbFilterOpen = ((Boolean) builder.get(PreviewParameter.KEY_FILTER_OPEN)).booleanValue();
                cameraRequestTag.mbFilterVignette = ((Boolean) builder.get(PreviewParameter.KEY_FILTER_WITHVIGNETTE)).booleanValue();
            }
            if (builder.containCustomKey(PreviewParameter.KEY_FACE_BEAUTY_ENABLE)) {
                cameraRequestTag.mbFaceBeautyOpen = "on".equals(builder.get(PreviewParameter.KEY_FACE_BEAUTY_ENABLE));
                cameraRequestTag.mFaceBeautyVersion = (String) builder.get(PreviewParameter.KEY_FACE_BEAUTY_VERSION);
                cameraRequestTag.mFaceBeautyParam = (int[]) builder.get(PreviewParameter.KEY_FACE_BEAUTY_PARAM);
                cameraRequestTag.mFaceData = (int[]) builder.get(PreviewParameter.KEY_FACE_DATA);
            }
            if (builder.containCustomKey(PreviewParameter.KEY_FACE_MAKEUP_TYPE)) {
                cameraRequestTag.mMakeupType = (String) builder.get(PreviewParameter.KEY_FACE_MAKEUP_TYPE);
                cameraRequestTag.mMakeupValue = ((Integer) builder.get(PreviewParameter.KEY_FACE_MAKEUP_VALUE)).intValue();
            }
        }
    }

    protected float getDefaultBlurValue() {
        return getBlurValue(60);
    }

    protected float getBlurValue(int i) {
        return new BigDecimal(i).multiply(CameraConstant.BLUR_VALUE_INDEX_TO_ALGORITHM).floatValue();
    }

    @Override // com.oplus.ocs.camera.producer.mode.BaseMode
    protected List<Size> getPictureSizes(String str, int i) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(getBokehSizes(str, "rear_main"));
        return arrayList;
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0042  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private Size getBodyTypeSizes(String str, String str2) {
        Size[] sizeArr;
        if (!"rear_sat".equals(str)) {
            sizeArr = null;
        } else if (isFullBodyType(str)) {
            sizeArr = (Size[]) CameraConfigHelper.getConfigValue(CameraConfigBase.KEY_REAR_PORTRAIT_SAT_FULL_BODY_SIZE, null);
            if (sizeArr == null) {
                sizeArr = new Size[]{DEFAULT_REAR_PORTRAIT_SAT_FULL_BODY_MAIN_CAMERA_CAPTURE_SIZE, DEFAULT_REAR_PORTRAIT_SAT_FULL_BODY_WIDE_TELE_CAMERA_CAPTURE_SIZE};
            }
        } else if (isHalfBodyType(str)) {
            sizeArr = (Size[]) CameraConfigHelper.getConfigValue(CameraConfigBase.KEY_REAR_PORTRAIT_SAT_HALF_BODY_SIZE, null);
            if (sizeArr == null) {
                sizeArr = new Size[]{DEFAULT_REAR_PORTRAIT_SAT_HALF_BODY_MAIN_CAMERA_CAPTURE_SIZE, DEFAULT_REAR_PORTRAIT_SAT_HALF_BODY_WIDE_TELE_CAMERA_CAPTURE_SIZE};
            }
        }
        if (sizeArr == null) {
            return null;
        }
        if ("rear_main".equals(str2)) {
            if (sizeArr.length >= 1) {
                return sizeArr[0];
            }
        } else if (("rear_wide".equals(str2) || "rear_tele".equals(str2)) && sizeArr.length >= 2) {
            return sizeArr[1];
        }
        return null;
    }

    private Size getBokehSizes(String str, String str2) {
        Size mainCameraPictureSize;
        if ("rear_main".equals(str2) || "front_main".equals(str2)) {
            mainCameraPictureSize = getMainCameraPictureSize(str);
        } else {
            mainCameraPictureSize = ("rear_wide".equals(str2) || CameraConstant.CameraType.REAR_MONO_CAMERA_1.equals(str2) || CameraConstant.CameraType.REAR_MONO_CAMERA_2.equals(str2) || "front_wide".equals(str2)) ? getSubCameraPictureSize(str) : null;
        }
        CameraUnitLog.d(TAG, "getBokehSizes, cameraType: " + str + ", surfaceType: " + str2 + ", size: " + mainCameraPictureSize);
        return mainCameraPictureSize;
    }

    private Size getMainCameraPictureSize(String str) {
        Size configPortraitSize = getConfigPortraitSize(0);
        if (configPortraitSize != null) {
            return new Size(configPortraitSize.getWidth(), configPortraitSize.getHeight());
        }
        int[] iArr = (int[]) CameraCharacteristicsHelper.getCameraCharacteristicsWrapper(str).get(CameraCharacteristicsWrapper.KEY_BOKEH_PICTURE_SIZE);
        if (iArr == null || iArr.length < 2) {
            return null;
        }
        return new Size(iArr[0], iArr[1]);
    }

    private Size getMaxSize(CameraConfigBase.Key<Size[]> key, double d) {
        Size[] sizeArr = (Size[]) CameraConfigHelper.getConfigValue(key, null);
        if (sizeArr == null) {
            CameraUnitLog.w(TAG, "getMaxSize, has not configured the " + key + " in the vendor_tag_type_values");
            return null;
        }
        Size maxSizeByRatio = Util.getMaxSizeByRatio(sizeArr, d);
        if (maxSizeByRatio == null) {
            maxSizeByRatio = Util.getImpreciseMaxSizeByRatio(sizeArr, d);
            CameraUnitLog.w(TAG, "getMaxSize, can't find max size with ratio: " + d + ", use imprecise max size: " + maxSizeByRatio + " instead");
        }
        CameraUnitLog.d(TAG, "getMaxSize, keyName: " + key + ", ratio: " + d + ", finalSize: " + maxSizeByRatio);
        return maxSizeByRatio;
    }

    private Size getSubCameraPictureSize(String str) {
        Size configPortraitSize = getConfigPortraitSize(1);
        if (configPortraitSize != null) {
            return new Size(configPortraitSize.getWidth(), configPortraitSize.getHeight());
        }
        int[] iArr = (int[]) CameraCharacteristicsHelper.getCameraCharacteristicsWrapper(str).get(CameraCharacteristicsWrapper.KEY_BOKEH_PICTURE_SIZE);
        if (iArr == null || iArr.length < 4) {
            return null;
        }
        return new Size(iArr[2], iArr[3]);
    }

    private Size getConfigPortraitSize(int i) {
        Size[] sizeArr = (Size[]) CameraConfigHelper.getConfigValue(CameraConfigBase.KEY_PORTRAIT_MODE_PICTURE_SIZE_1X, null);
        if (sizeArr == null || sizeArr.length <= i) {
            CameraUnitLog.i(TAG, "getConfigPortraitSize, null");
            return null;
        }
        return sizeArr[i];
    }

    @Override // com.oplus.ocs.camera.producer.mode.BaseMode
    protected void onConfigure(CameraSessionEntity cameraSessionEntity, SdkCameraDeviceConfig sdkCameraDeviceConfig, String str, ApsRequestTag apsRequestTag) {
        Map<String, Map<String, String>> map;
        Map<String, String> map2;
        String str2;
        cameraSessionEntity.setTemplate(1);
        cameraSessionEntity.setUseMetadataSurface(false);
        if (Util.isSystemCamera() || !"rear_portrait".equals(str) || (map = CameraConfigHelper.getFeatureOperationMode().get(sdkCameraDeviceConfig.getModeName())) == null || (map2 = map.get(CameraFeatureName.P_PORTRAIT_BODY_TYPE)) == null || (str2 = map2.get("full_body")) == null) {
            return;
        }
        cameraSessionEntity.setOperationMode(str2);
        CameraUnitLog.d(TAG, "onConfigure, set rear_portrait operation mode:" + str2);
    }

    @Override // com.oplus.ocs.camera.producer.mode.BaseMode
    protected CameraDeviceInfoInterface createCameraDeviceInfo(String str) {
        LinkedList<Size> supportPreviewSizeByFeature;
        CameraDeviceInfoImpl cameraDeviceInfoImpl = (CameraDeviceInfoImpl) super.createCameraDeviceInfo(str);
        HashMap map = new HashMap();
        ArrayList arrayList = new ArrayList();
        for (int i = 1; i <= 100; i++) {
            arrayList.add(Integer.valueOf(i));
        }
        map.put(PreviewParameter.KEY_BLUR_LEVEL_RANGE.getName(), arrayList);
        cameraDeviceInfoImpl.setPreviewParameterRangeMap(map);
        cameraDeviceInfoImpl.setSupportPictureSizeList(getPictureSizes(str, 0));
        if ("rear_portrait".equals(str) && (supportPreviewSizeByFeature = CameraConfigHelper.getSupportPreviewSizeByFeature("portrait_mode", str, Collections.singletonMap(ConfigureParameter.KEY_PORTAIT_BOKEH_TYPE.getName(), "dual_bokeh"))) != null) {
            cameraDeviceInfoImpl.setDefaultPreviewConfigSizes(Collections.singletonList(supportPreviewSizeByFeature.get(1)));
        }
        cameraDeviceInfoImpl.getPreviewParameterRangeMap().put(PreviewParameter.KEY_ZOOM_RATIO.getName(), new ZoomHelper(str).getZoomRatioList(false, "rear_sat".equals(str), false));
        return cameraDeviceInfoImpl;
    }

    @Override // com.oplus.ocs.camera.producer.mode.BaseMode
    protected int getRawFormat(String str) {
        if (Util.isTurboHdr(this.mPreviewResult)) {
            return 32;
        }
        return super.getRawFormat(str);
    }

    @Override // com.oplus.ocs.camera.producer.mode.BaseMode
    public boolean needAddToTarget(String str, String str2, @NonNull SurfaceKey surfaceKey, PreviewParameter.Builder builder) {
        int iIntValue;
        if (Parameter.ParameterStage.BEFORE_TAKE_PICTURE.equals(str2) && (("surface_key_picture".equals(surfaceKey.getUsage()) || "surface_key_tuning_raw".equals(surfaceKey.getUsage())) && "rear_sat".equals(str) && ("rear_wide".equals(surfaceKey.getCameraType()) || "rear_main".equals(surfaceKey.getCameraType()) || "rear_tele".equals(surfaceKey.getCameraType())))) {
            boolean z = false;
            if ((!((Boolean) CameraConfigHelper.getConfigValue(CameraConfigBase.KEY_PORTRAIT_TURBO_RAW_SUPPORT, false)).booleanValue() && !isSupportRearMFNRCapture()) || (this.mPreviewResult != null && ((((iIntValue = ((Integer) this.mPreviewResult.get(ApsDecisionParameter.KEY_PREVIEW_FEATURE_TYPE)).intValue()) == 3 || iIntValue == 1) && 35 == surfaceKey.getFormat()) || (((iIntValue == 48 || iIntValue == 49) && (32 == surfaceKey.getFormat() || "surface_key_tuning_raw".equals(surfaceKey.getUsage()))) || (iIntValue == 2 && (37 == surfaceKey.getFormat() || "surface_key_tuning_raw".equals(surfaceKey.getUsage()))))))) {
                z = true;
            }
            CameraUnitLog.e(TAG, "needAddToTarget, stage: " + str2 + ", surfaceKey: " + surfaceKey + ", needAddTarget: " + z);
            return z;
        }
        return super.needAddToTarget(str, str2, surfaceKey, builder);
    }

    @Override // com.oplus.ocs.camera.producer.mode.BaseMode
    public Pair<Size, Size> getSurfaceSize(SdkCameraDeviceConfig sdkCameraDeviceConfig, String str, String str2, String str3) {
        SurfaceWrapper surfaceWrapper;
        Size appSurfaceSize;
        Size halSurfaceSize;
        boolean zBooleanValue;
        SurfaceWrapper defaultPreviewSurface = sdkCameraDeviceConfig.getDefaultPreviewSurface();
        surfaceWrapper = sdkCameraDeviceConfig.getPictureSurfaces().get(0);
        appSurfaceSize = defaultPreviewSurface.getAppSurfaceSize();
        halSurfaceSize = defaultPreviewSurface.getHalSurfaceSize();
        zBooleanValue = ((Boolean) CameraConfigHelper.getConfigValue(CameraConfigBase.KEY_FRONT_DUAL_CAMERA_SUPPORT, false)).booleanValue();
        CameraUnitLog.d(TAG, "getSurfaceSize, configuredSurfaceType:" + str + " , configuredCameraType:" + str2 + " , cameraType:" + str3 + " , isFrontDualCameraSupport:" + zBooleanValue);
        str.hashCode();
        switch (str) {
            case "raw_output":
            case "raw16_output":
                if (((Boolean) CameraConfigHelper.getConfigValue(CameraConfigBase.KEY_PORTRAIT_TURBO_RAW_SUPPORT, false)).booleanValue() && ("rear_main".equals(str2) || "rear_wide".equals(str2))) {
                    return getCaptureSurfaceSizeBySurfaceType(zBooleanValue, "raw_output", str3, str2, surfaceWrapper, appSurfaceSize);
                }
                return new Pair<>(surfaceWrapper.getAppSurfaceSize(), CameraCharacteristicsHelper.getSizeByFormat(str3, 1.3333333333333333d, 32));
            case "preview":
            case "preview_frame":
                if ((("front_wide".equals(str2) && "front_dual".equals(str3) && zBooleanValue) || "rear_wide".equals(str2)) && !((Boolean) CameraConfigHelper.getConfigValue(CameraConfigBase.KEY_PORTRAIT_MTK_REAR_WIDE_PLATFORM_DEPTH_NOT_SUPPORT, false)).booleanValue() && PlatformUtil.isMtkPlatform()) {
                    Size sizeByFormat = CameraCharacteristicsHelper.getSizeByFormat(str3, ((double) appSurfaceSize.getWidth()) / ((double) appSurfaceSize.getHeight()), 538982489);
                    return new Pair<>(sizeByFormat, sizeByFormat);
                }
                if ((CameraConstant.CameraType.REAR_MONO_CAMERA_1.equals(str2) || CameraConstant.CameraType.REAR_MONO_CAMERA_2.equals(str2)) && PlatformUtil.isMtkPlatform()) {
                    double width = ((double) appSurfaceSize.getWidth()) / ((double) appSurfaceSize.getHeight());
                    int i = ((Boolean) CameraConfigHelper.getConfigValue(CameraConfigBase.KEY_REAR_SINGLE_BOKEH_SUPPORT, false)).booleanValue() ? 35 : 538982489;
                    if (((Boolean) CameraConfigHelper.getConfigValue(CameraConfigBase.KEY_REAR_DUALCAM_SOFT_DEPTH_SUPPORT, false)).booleanValue()) {
                        return new Pair<>(appSurfaceSize, halSurfaceSize);
                    }
                    Size sizeByFormat2 = CameraCharacteristicsHelper.getSizeByFormat(str3, width, i);
                    return new Pair<>(sizeByFormat2, sizeByFormat2);
                }
                return new Pair<>(appSurfaceSize, halSurfaceSize);
            case "capture_raw":
                if (isSupportRearMFNRCapture() || isSupportRearAINRCapture()) {
                    return getCaptureSurfaceSizeBySurfaceType(zBooleanValue, "capture_yuv", str3, str2, surfaceWrapper, appSurfaceSize);
                }
                return new Pair<>(surfaceWrapper.getAppSurfaceSize(), CameraCharacteristicsHelper.getSizeByFormat(str3, 1.3333333333333333d, 32));
            case "capture_yuv":
                return getCaptureSurfaceSizeBySurfaceType(zBooleanValue, "capture_yuv", str3, str2, surfaceWrapper, appSurfaceSize);
            case "capture":
                return getCaptureSurfaceSizeBySurfaceType(zBooleanValue, "capture", str3, str2, surfaceWrapper, appSurfaceSize);
            case "tuning_data_raw":
                Size tuningDataSurfaceSize = CameraCharacteristicsHelper.getTuningDataSurfaceSize(str3, "tuning_data_raw");
                return new Pair<>(tuningDataSurfaceSize, tuningDataSurfaceSize);
            case "tuning_data_yuv":
                Size tuningDataSurfaceSize2 = CameraCharacteristicsHelper.getTuningDataSurfaceSize(str3, "tuning_data_yuv");
                return new Pair<>(tuningDataSurfaceSize2, tuningDataSurfaceSize2);
            case "capture_yuv_mfnr":
                double width2 = ((double) appSurfaceSize.getWidth()) / ((double) appSurfaceSize.getHeight());
                Size maxSize = null;
                if ("front_main".equals(str3) || "front_wide".equals(str3)) {
                    maxSize = getMaxSize(CameraConfigBase.KEY_FRONT_MFNR_PICTURE_SIZE, width2);
                    CameraUnitLog.i(TAG, "getSurfaceSize, front main camera, mfnrSize: " + maxSize);
                }
                if (maxSize != null) {
                    return new Pair<>(maxSize, maxSize);
                }
                break;
            default:
                CameraUnitLog.w(TAG, "getSurfaceSize, configuredSurfaceType not found");
                break;
        }
        return new Pair<>(this.mTagMap.get(str3).mPreviewSize, this.mTagMap.get(str3).mPreviewSize);
    }

    private Pair getCaptureSurfaceSizeBySurfaceType(boolean z, String str, String str2, String str3, SurfaceWrapper surfaceWrapper, Size size) {
        if ("front_dual".equals(str2) && z && "capture_yuv".equals(str)) {
            if ("front_main".equals(str3)) {
                Size bokehSizes = getBokehSizes(str2, "front_main");
                return new Pair(bokehSizes, bokehSizes);
            }
            if ("front_wide".equals(str3)) {
                Size bokehSizes2 = getBokehSizes(str2, "front_wide");
                return new Pair(bokehSizes2, bokehSizes2);
            }
        }
        if ("rear_sat".equals(str2)) {
            Size bodyTypeSizes = getBodyTypeSizes(str2, str3);
            return new Pair(bodyTypeSizes, bodyTypeSizes);
        }
        if ("rear_main".equals(str3) || "front_main".equals(str3) || "front_wide".equals(str3)) {
            return new Pair(surfaceWrapper.getAppSurfaceSize(), surfaceWrapper.getHalSurfaceSize());
        }
        if ("rear_wide".equals(str3)) {
            Size bokehSizes3 = getBokehSizes(str2, "rear_wide");
            return new Pair(bokehSizes3, bokehSizes3);
        }
        if (CameraConstant.CameraType.REAR_MONO_CAMERA_1.equals(str3)) {
            Size bokehSizes4 = getBokehSizes(str2, CameraConstant.CameraType.REAR_MONO_CAMERA_1);
            return new Pair(bokehSizes4, bokehSizes4);
        }
        if (CameraConstant.CameraType.REAR_MONO_CAMERA_2.equals(str3)) {
            Size bokehSizes5 = getBokehSizes(str2, CameraConstant.CameraType.REAR_MONO_CAMERA_2);
            return new Pair(bokehSizes5, bokehSizes5);
        }
        if ("rear_portrait_mono_1".equals(str2) && CameraConstant.CameraType.REAR_MONO_CAMERA_1.equals(str3)) {
            Size maxSize = getMaxSize(CameraConfigBase.KEY_MONO1_PICTURE_SIZE, ((double) size.getWidth()) / ((double) size.getHeight()));
            return new Pair(maxSize, maxSize);
        }
        if ("rear_portrait_mono_2".equals(str2) && CameraConstant.CameraType.REAR_MONO_CAMERA_2.equals(str3)) {
            Size maxSize2 = getMaxSize(CameraConfigBase.KEY_MONO2_PICTURE_SIZE, ((double) size.getWidth()) / ((double) size.getHeight()));
            return new Pair(maxSize2, maxSize2);
        }
        return new Pair(this.mTagMap.get(str2).mPreviewSize, this.mTagMap.get(str2).mPreviewSize);
    }

    @Override // com.oplus.ocs.camera.producer.mode.BaseMode
    protected String getSurfaceUseCase(String str, boolean z) {
        return "front_dual".equals(str) ? CameraConstant.UseCase.FRONT_DUAL_PORTRAIT : "front_main".equals(str) ? CameraConfigHelper.getConfigValue(CameraConfigBase.KEY_FRONT_MFNR_PICTURE_SIZE, null) != null ? CameraConstant.UseCase.FRONT_SINGLE_MFNR_PORTRAIT : "single_portrait_case" : "front_wide".equals(str) ? CameraConfigHelper.getConfigValue(CameraConfigBase.KEY_FRONT_MFNR_PICTURE_SIZE, null) != null ? CameraConstant.UseCase.FRONT_SINGLE_MFNR_PORTRAIT : "single_portrait_case" : "rear_main".equals(str) ? CameraConstant.UseCase.SINGLE_PHOTO : "rear_portrait_mono_1".equals(str) ? CameraConstant.UseCase.PORTRAIT_MONO1 : "rear_portrait_mono_2".equals(str) ? CameraConstant.UseCase.PORTRAIT_MONO2 : "portrait_bokeh_case";
    }

    private boolean isFullBodyType(String str) {
        SdkCameraDeviceConfig sdkCameraDeviceConfig = this.mConfigMap.get(str);
        if (sdkCameraDeviceConfig == null || !sdkCameraDeviceConfig.getConfigureParameter().containCustomKey(ConfigureParameter.KEY_PORTAIT_BODY_TYPE)) {
            return false;
        }
        return "full_body".equals(sdkCameraDeviceConfig.getConfigureParameter().get(ConfigureParameter.KEY_PORTAIT_BODY_TYPE));
    }

    private boolean isHalfBodyType(String str) {
        SdkCameraDeviceConfig sdkCameraDeviceConfig = this.mConfigMap.get(str);
        if (sdkCameraDeviceConfig == null || !sdkCameraDeviceConfig.getConfigureParameter().containCustomKey(ConfigureParameter.KEY_PORTAIT_BODY_TYPE)) {
            return false;
        }
        return "half_body".equals(sdkCameraDeviceConfig.getConfigureParameter().get(ConfigureParameter.KEY_PORTAIT_BODY_TYPE));
    }

    public boolean isSupportDualCamera(boolean z) {
        if (z) {
            return CameraCharacteristicsHelper.isSupportFrontDualCamera();
        }
        return CameraCharacteristicsHelper.isSupportBackDualCamera();
    }

    @Override // com.oplus.ocs.camera.producer.mode.BaseMode
    public int getSurfaceFormatBySurfaceType(String str, String str2, String str3) {
        if (PlatformUtil.isMtkPlatform() && (("preview".equals(str) || "preview_frame".equals(str)) && ("rear_wide".equals(str2) || CameraConstant.CameraType.REAR_MONO_CAMERA_1.equals(str2) || CameraConstant.CameraType.REAR_MONO_CAMERA_2.equals(str2) || "front_wide".equals(str2)))) {
            if (((Boolean) CameraConfigHelper.getConfigValue(CameraConfigBase.KEY_REAR_SINGLE_BOKEH_SUPPORT, false)).booleanValue() || ((Boolean) CameraConfigHelper.getConfigValue(CameraConfigBase.KEY_REAR_DUALCAM_SOFT_DEPTH_SUPPORT, false)).booleanValue()) {
                return 35;
            }
            if (((Boolean) CameraConfigHelper.getConfigValue(CameraConfigBase.KEY_PORTRAIT_MTK_REAR_WIDE_PLATFORM_DEPTH_NOT_SUPPORT, false)).booleanValue()) {
                return super.getSurfaceFormatBySurfaceType(str, str2, str3);
            }
            return 538982489;
        }
        return super.getSurfaceFormatBySurfaceType(str, str2, str3);
    }

    @Override // com.oplus.ocs.camera.producer.mode.BaseMode
    protected long getHalMemory() {
        return ((Integer) CameraConfigHelper.getConfigValue(CameraConfigBase.KEY_HAL_MEMORY_PORTRAIT, 0)).intValue();
    }

    @Override // com.oplus.ocs.camera.producer.mode.BaseMode
    protected int getPhysicalId(String str, String str2, String str3) {
        if (PlatformUtil.isMtkPlatform() && "preview".equals(str3) && "rear_wide".equals(str2)) {
            if (((Boolean) CameraConfigHelper.getConfigValue(CameraConfigBase.KEY_PORTRAIT_MTK_REAR_WIDE_PLATFORM_DEPTH_NOT_SUPPORT, false)).booleanValue()) {
                return super.getPhysicalId(str, str2, str3);
            }
            return -1;
        }
        if ("rear_portrait_mono_1".equals(str)) {
            cameraId = "rear_main".equals(str2) ? super.getPhysicalId(str, str2, str3) : -1;
            if (CameraConstant.CameraType.REAR_MONO_CAMERA_1.equals(str2) && str3.equals("capture_yuv")) {
                cameraId = super.getPhysicalId(str, str2, str3);
            }
            return "tuning_data_yuv".equals(str3) ? CameraCharacteristicsHelper.getCameraIdType("rear_main").getCameraId() : cameraId;
        }
        if ("rear_portrait_mono_2".equals(str)) {
            cameraId = "rear_main".equals(str2) ? super.getPhysicalId(str, str2, str3) : -1;
            if (CameraConstant.CameraType.REAR_MONO_CAMERA_2.equals(str2) && str3.equals("capture_yuv")) {
                cameraId = super.getPhysicalId(str, str2, str3);
            }
            return "tuning_data_yuv".equals(str3) ? CameraCharacteristicsHelper.getCameraIdType("rear_main").getCameraId() : cameraId;
        }
        if ("rear_portrait".equals(str)) {
            if (((Boolean) CameraConfigHelper.getConfigValue(CameraConfigBase.KEY_REAR_PORTRAIT_PREVIEW_PHYSICALID, false)).booleanValue() && "preview".equals(str3)) {
                return -1;
            }
            if ("tuning_data_yuv".equals(str3)) {
                cameraId = CameraCharacteristicsHelper.getCameraIdType("rear_main").getCameraId();
            } else if ("capture_yuv".equals(str3) || "rear_main".equals(str2)) {
                cameraId = super.getPhysicalId(str, str2, str3);
            }
            return ("rear_wide".equals(str2) || CameraConstant.CameraType.REAR_MONO_CAMERA_1.equals(str2)) ? ((isSupportRearMFNRCapture() || isSupportRearAINRCapture() || ((Boolean) CameraConfigHelper.getConfigValue(CameraConfigBase.KEY_QUALCOMM_PHYSICAL_ID_SUPPORT, false)).booleanValue()) && CameraCharacteristicsHelper.isSupportBackDualCamera()) ? super.getPhysicalId(str, str2, str3) : cameraId : cameraId;
        }
        if ("rear_sat".equals(str) && "tuning_data_yuv".equals(str3)) {
            if (isFullBodyType(str)) {
                if (isSupportRearMFNRCapture() && "rear_wide".equals(str2)) {
                    return CameraCharacteristicsHelper.getCameraIdType("rear_wide").getCameraId();
                }
                return CameraCharacteristicsHelper.getCameraIdType("rear_main").getCameraId();
            }
            if (!isHalfBodyType(str)) {
                return -1;
            }
            if (isSupportRearMFNRCapture() && "rear_wide".equals(str2)) {
                return CameraCharacteristicsHelper.getCameraIdType("rear_main").getCameraId();
            }
            return CameraCharacteristicsHelper.getCameraIdType("rear_tele").getCameraId();
        }
        if ("rear_second_portrait".equals(str) && PlatformUtil.isMtkPlatform()) {
            if (((Boolean) CameraConfigHelper.getConfigValue(CameraConfigBase.KEY_REAR_PORTRAIT_PREVIEW_PHYSICALID, false)).booleanValue() && "preview".equals(str3)) {
                return -1;
            }
            if ("tuning_data_yuv".equals(str3) || "rear_main".equals(str2)) {
                return CameraCharacteristicsHelper.getCameraIdType("rear_tele").getCameraId();
            }
            if ("capture_yuv".equals(str3) && "rear_wide".equals(str2)) {
                return CameraCharacteristicsHelper.getCameraIdType("rear_main").getCameraId();
            }
            return -1;
        }
        if (isFullBodyType(str) || CameraCharacteristicsHelper.getCameraIdType("rear_tele") == null) {
            return super.getPhysicalId(str, str2, str3);
        }
        int[] iArr = (int[]) CameraConfigHelper.getConfigValue(CameraConfigBase.KEY_PORTRAIT_MODE_PHYSICAL_CAMERA_ID_1X, null);
        if (isFullBodyType(str) && iArr != null) {
            if (iArr[0] == CameraCharacteristicsHelper.getCameraIdType(str2).getCameraId()) {
                return iArr[0];
            }
            return iArr[1];
        }
        int[] iArr2 = (int[]) CameraConfigHelper.getConfigValue(CameraConfigBase.KEY_PORTRAIT_MODE_PHYSICAL_CAMERA_ID_2X, null);
        if (isHalfBodyType(str) && iArr2 != null) {
            if (iArr2[0] == CameraCharacteristicsHelper.getCameraIdType(str2).getCameraId()) {
                return iArr2[0];
            }
            return iArr2[1];
        }
        if ("rear_sat".equals(str)) {
            if ("rear_main".equals(str2)) {
                cameraId = CameraCharacteristicsHelper.getCameraIdType("rear_tele").getCameraId();
            } else if ("rear_wide".equals(str2)) {
                cameraId = CameraCharacteristicsHelper.getCameraIdType("rear_main").getCameraId();
            }
        }
        return ("rear_portrait_mono_1".equals(str) || "rear_portrait_mono_2".equals(str)) ? super.getPhysicalId(str, str2, str3) : cameraId;
    }

    @Override // com.oplus.ocs.camera.producer.mode.BaseMode, com.oplus.ocs.camera.producer.mode.ModeInterface
    public boolean needMatchPreviewTimestamp(int i, String str, CameraRequestTag cameraRequestTag, ApsAdapterDecision.DecisionResult decisionResult) {
        if (cameraRequestTag == null) {
            return false;
        }
        if (!CameraCharacteristicsHelper.isFrontCamera(cameraRequestTag.mCameraId) && isSupportDualCamera(CameraCharacteristicsHelper.isFrontCamera(cameraRequestTag.mCameraId))) {
            if (PlatformUtil.isQualcommPlatform() && 2 == i && decisionResult != null) {
                return 12 == decisionResult.mApsDecisionSceneMode || 13 == decisionResult.mApsDecisionSceneMode || 30 == decisionResult.mApsDecisionSceneMode;
            }
            return false;
        }
        return super.needMatchPreviewTimestamp(i, str, cameraRequestTag, decisionResult);
    }

    @Override // com.oplus.ocs.camera.producer.mode.BaseMode
    protected String getFeatureName(String str) {
        return "on".equals((String) getConfigureParameter(str).get(ConfigureParameter.PORTRAIT_STREAMER_ENABLE)) ? CameraConstant.StreamerPortrait.STREAMER_PORTRAIT : (((Boolean) CameraConfigHelper.getConfigValue(CameraConfigBase.KEY_REAR_SINGLE_BOKEH_SUPPORT, false)).booleanValue() && "rear_portrait_mono_1".equals(str)) ? CameraConstant.MonoPortrait.MONO_PORTRAIT : super.getFeatureName(str);
    }

    @Override // com.oplus.ocs.camera.producer.mode.BaseMode
    protected Long getPreviewReaderUsage(String str) {
        if (!Util.isSystemCamera() && ((Boolean) CameraConfigHelper.getConfigValue(CameraConfigBase.KEY_THIRD_PARTY_MTK_PORTRAIT_PREVIEW_USAGE, false)).booleanValue()) {
            return 3L;
        }
        return super.getPreviewReaderUsage(str);
    }

    public int getPreviewStreamNum(String str, int i) {
        if (isSupportPure3rdBokehPreview(i)) {
            return 1;
        }
        return getSensorNumberFromConfig(str);
    }

    public int getCaptureStreamNum(String str) {
        return getSensorNumberFromConfig(str);
    }

    private boolean isSupportPure3rdBokehPreview(int i) {
        return !CameraCharacteristicsHelper.isFrontCamera(i) && (((Integer) CameraConfigHelper.getConfigValue(CameraConfigBase.KEY_BACK_PURE_3RD_BOKEH_PREVIEW, 0)).intValue() > 0);
    }

    private boolean isSupportRearMFNRCapture() {
        return this.mRearFrontCameraId == 0 && AlgoSwitchConfig.getSupportCaptureAlgo("portrait", this.mRearFrontCameraId, "aps_algo_mfll");
    }

    private boolean isSupportRearAINRCapture() {
        return this.mRearFrontCameraId == 0 && AlgoSwitchConfig.getSupportCaptureAlgo("portrait", this.mRearFrontCameraId, "aps_algo_ainr");
    }
}

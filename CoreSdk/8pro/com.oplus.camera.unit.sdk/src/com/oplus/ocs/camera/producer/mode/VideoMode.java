package com.oplus.ocs.camera.producer.mode;

import android.graphics.Bitmap;
import android.hardware.camera2.CameraCharacteristics;
import android.hardware.camera2.CaptureRequest;
import android.media.MediaRecorder;
import android.os.Bundle;
import android.os.Handler;
import android.text.TextUtils;
import android.util.Pair;
import android.util.Range;
import android.util.Size;
import android.view.Surface;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

import com.oplus.exif.OplusExifTag;
import com.oplus.ocs.camera.appinterface.CameraDeviceInfoInterface;
import com.oplus.ocs.camera.appinterface.CameraPictureCallbackAdapter;
import com.oplus.ocs.camera.appinterface.CameraPreviewCallbackAdapter;
import com.oplus.ocs.camera.common.parameter.ConfigureParameter;
import com.oplus.ocs.camera.common.parameter.Parameter;
import com.oplus.ocs.camera.common.parameter.PreviewParameter;
import com.oplus.ocs.camera.common.parameter.SdkCameraDeviceConfig;
import com.oplus.ocs.camera.common.statistics.StatisticsManager;
import com.oplus.ocs.camera.common.surface.SurfaceKey;
import com.oplus.ocs.camera.common.surface.SurfacePool;
import com.oplus.ocs.camera.common.surface.SurfaceWrapper;
import com.oplus.ocs.camera.common.util.ApsRequestTag;
import com.oplus.ocs.camera.common.util.CameraConfigBase;
import com.oplus.ocs.camera.common.util.CameraConstant;
import com.oplus.ocs.camera.common.util.CameraRequestTag;
import com.oplus.ocs.camera.common.util.CameraUnitLog;
import com.oplus.ocs.camera.common.util.ContextHolder;
import com.oplus.ocs.camera.common.util.PlatformUtil;
import com.oplus.ocs.camera.common.util.Util;
import com.oplus.ocs.camera.consumer.apsAdapter.adapter.ApsAdapterDecision;
import com.oplus.ocs.camera.consumer.apsAdapter.adapter.ApsParameters;
import com.oplus.ocs.camera.consumer.apsAdapter.adapter.DefaultUtill;
import com.oplus.ocs.camera.consumer.apsAdapter.config.AlgoSwitchConfig;
import com.oplus.ocs.camera.producer.device.CameraSessionEntity;
import com.oplus.ocs.camera.producer.info.CameraCharacteristicsHelper;
import com.oplus.ocs.camera.producer.info.CameraCharacteristicsWrapper;
import com.oplus.ocs.camera.producer.info.CameraConfigHelper;
import com.oplus.ocs.camera.producer.info.CameraDeviceInfoImpl;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

/**
 * Camera mode for video recording.
 */
public class VideoMode extends BaseMode {
    private static final String TAG = "VideoMode";
    private static final String EXPLORER_BOKEH = "explorer_bokeh";
    private static final int FPS_LOW = 20;
    private static final int INDEX_SIX = 6;
    private static final int INDEX_THREE = 3;
    private static final int STREAMING_FEATURE_DEFAULT_STAGGER_2EXP = 1;

    private static final int VIDEO_4K_FRAME_WIDTH = 3840;
    private static final int VIDEO_4K_FRAME_HEIGHT = 2160;
    private static final int VIDEO_8K_FRAME_WIDTH = 7680;
    private static final int VIDEO_8K_FRAME_HEIGHT = 4320;

    private static final int VIDEO_BOKEH_AI_DEPTH_WIDTH = 640;
    private static final int VIDEO_BOKEH_AI_DEPTH_HEIGHT = 480;
    private static final int VIDEO_BOKEH_AI_DEPTH_STREAM_NUMBER = 2;

    private static final String VIDEO_RESOLUTION = "resolution";
    private static final String VIDEO_RESOLUTION_8K = "8k";

    protected int mCurrentFps = 30;
    private Size mTargetVideoSize = null;
    private Range<Integer> mConfigFpsRange = null;
    private CameraPreviewCallbackAdapter.PreviewResult mDefaultPreviewResult = null;

    @Override
    protected String getModeName() {
        return "video_mode";
    }

    @Override
    protected boolean isCaptureModeType() {
        return false;
    }

    @Override
    public boolean isSupportVideoSnapShot(String cameraType) {
        return true;
    }

    protected boolean needPrepareVideoSurface() {
        return true;
    }

    @Override
    public LinkedList<SurfaceWrapper> buildStreamSurface(SdkCameraDeviceConfig deviceConfig, String cameraType) {
        LinkedList<SurfaceWrapper> surfaces = new LinkedList<>();
        Parameter configParam = deviceConfig.getConfigureParameter();
        boolean isUltraHighRes = "on".equals(configParam.get(ConfigureParameter.HIGH_PICTURE_SIZE_ENABLE));

        if ("video".equals(getSurfaceUseCase(cameraType, isUltraHighRes))) {
            SurfaceWrapper videoWrapper = deviceConfig.getVideoSurface();
            if (videoWrapper != null) {
                surfaces.add(videoWrapper);
            }
        }
        return surfaces;
    }

    @Override
    public int isAllowedToTakePicture(CameraPictureCallbackAdapter callbackAdapter, Handler handler,
            CameraRequestTag requestTag) {
        return super.isAllowedToTakePicture(callbackAdapter, handler, requestTag);
    }

    @Override
    public boolean needStartPreview(CameraPreviewCallbackAdapter.PreviewResult previewResult) {
        if (previewResult == null) {
            return true;
        }
        this.mDefaultPreviewResult = previewResult;
        return super.needStartPreview(previewResult);
    }

    @Override
    public boolean useOplusCameraCase(String cameraType) {
        if (Util.isSystemCamera()) {
            return true;
        }
        Parameter configParam = getConfigureParameter(cameraType);
        if (configParam == null) {
            return false;
        }
        if (configParam.containCustomKey(ConfigureParameter.VIDEO_STABILIZATION_MODE)
                || configParam.containCustomKey(ConfigureParameter.AI_NIGHT_VIDEO_MODE)) {
            return true;
        }
        if (configParam.containCustomKey(ConfigureParameter.VIDEO_3HDR_MODE)
                && !"off".equals(configParam.get(ConfigureParameter.VIDEO_3HDR_MODE))) {
            return true;
        }
        if (configParam.containCustomKey(ConfigureParameter.VIDEO_DYNAMIC_FPS)) {
            Range<Integer> range = (Range) configParam.get(ConfigureParameter.VIDEO_DYNAMIC_FPS);
            if (range != null && 60 == range.getUpper()) {
                return true;
            }
        }
        if ((configParam.containCustomKey(ConfigureParameter.VIDEO_FPS)
                && "video_60fps".equals(configParam.get(ConfigureParameter.VIDEO_FPS))) || isExplorerOpen(cameraType)) {
            return true;
        }
        return super.useOplusCameraCase(cameraType);
    }

    @Override
    protected void onConfigure(CameraSessionEntity sessionEntity, SdkCameraDeviceConfig deviceConfig, String cameraType,
            @NonNull ApsRequestTag apsRequestTag) {
        sessionEntity.setTemplate(3);
        Parameter configParam = getConfigureParameter(cameraType);

        apsRequestTag.mbPreviewProcessByAps = isPreviewProcessByAps(configParam, cameraType);
        apsRequestTag.mbVideoBlurOpen = "on".equals(configParam.get(ConfigureParameter.KEY_VIDEO_BLUR));
        apsRequestTag.mbAiFollowEnable = isAIFollowEnable(cameraType);
        SurfaceWrapper videoSurface = deviceConfig.getVideoSurface();

        if (videoSurface != null) {
            this.mTargetVideoSize = videoSurface.getAppSurfaceSize();
        } else {
            this.mTargetVideoSize = deviceConfig.getDefaultPreviewSurface().getAppSurfaceSize();
        }

        Range<Integer> fpsRange = (Range) configParam.get(ConfigureParameter.VIDEO_DYNAMIC_FPS);
        if (fpsRange != null) {
            this.mConfigFpsRange = fpsRange;
        }

        if (!useOplusCameraCase(cameraType)) {
            sessionEntity.setTemplate(1);
            sessionEntity.setOperationMode(String.valueOf(0));
            if (this.mTagMap.get(cameraType) != null) {
                this.mTagMap.get(cameraType).mModeName = "basic_preview_mode";
            }
            StatisticsManager.getInstance().setVideoSize(deviceConfig.getDefaultPreviewSurface().getAppSurfaceSize());
        } else {
            apsRequestTag.mbVideoWaterMarkEnable = "on"
                    .equals(configParam.get(ConfigureParameter.KEY_WATERMARK_VIDEO_ENABLE));
            if (isRearSuperEisOpen(cameraType)) {
                Map<String, String> mapSingletonMap = Collections
                        .singletonMap(ConfigureParameter.VIDEO_STABILIZATION_MODE.getName(), "super_stabilization");
                deviceConfig.updateHalPreviewSize(
                        getCameraDeviceInfo(cameraType).getPreviewMappingSizesFromConfig(cameraType, mapSingletonMap));
                deviceConfig.updateHalVideoSize(
                        getCameraDeviceInfo(cameraType).getVideoMappingSizesFromConfig(cameraType, mapSingletonMap));
            }
            if (videoSurface != null) {
                StatisticsManager.getInstance().setVideoSize(videoSurface.getAppSurfaceSize());
            }
            StatisticsManager.getInstance().setFeature(ConfigureParameter.VIDEO_STABILIZATION_MODE,
                    (String) configParam.get(ConfigureParameter.VIDEO_STABILIZATION_MODE));
            StatisticsManager.getInstance().setFeature(ConfigureParameter.VIDEO_3HDR_MODE,
                    (String) configParam.get(ConfigureParameter.VIDEO_3HDR_MODE));
        }

        // 8K Handling
        if (is8k30fps(cameraType)) {
            Map<String, String> opModes = CameraConfigHelper.getFeatureOperationMode().get(deviceConfig.getModeName())
                    .get(VIDEO_RESOLUTION);
            if (opModes != null) {
                String opMode8k = opModes.get(VIDEO_RESOLUTION_8K);
                if (opMode8k != null) {
                    sessionEntity.setOperationMode(opMode8k);
                    CameraUnitLog.d(TAG, "onConfigure, set 8K operation mode:" + opMode8k);
                }
            }
        }

        // Explorer Bokeh
        if (isExplorerVideoBokehOpen(configParam, cameraType)) {
            Map<String, String> opModes = CameraConfigHelper.getFeatureOperationMode().get(deviceConfig.getModeName())
                    .get(EXPLORER_BOKEH);
            if (opModes != null) {
                String opModeBokeh = opModes.get("on");
                if (opModeBokeh != null) {
                    sessionEntity.setOperationMode(opModeBokeh);
                    CameraUnitLog.d(TAG, "onConfigure, set explorer bokeh operation mode: " + opModeBokeh);
                }
            }
        }

        // AI Follow
        if (isAIFollowEnable(cameraType)) {
            Map<String, String> opModes = CameraConfigHelper.getFeatureOperationMode().get(deviceConfig.getModeName())
                    .get(CameraConstant.AI_FOLLOW);
            if (opModes != null) {
                String opModeFollow = opModes.get("on");
                if (opModeFollow != null) {
                    sessionEntity.setOperationMode(opModeFollow);
                }
            }
        }

        if (!Util.isSystemCamera() && configParam.containCustomKey(ConfigureParameter.PREVIEW_FACE_BEAUTY_LEVEL)) {
            apsRequestTag.mPreviewFaceBeautyLevel = (Integer) configParam
                    .get(ConfigureParameter.PREVIEW_FACE_BEAUTY_LEVEL);
        }

        apsRequestTag.mbVideo10BitsEnable = isVideo10BitOpen(cameraType);
        apsRequestTag.mbPhoto10BitsEnable = "on".equals(configParam.get(ConfigureParameter.PHOTO_10BIT_ENABLE));

    }

    @Override
    public void updateStageParameterBuilder(@NonNull PreviewParameter.Builder builder, String stage, String cameraType,
            @Nullable CameraRequestTag requestTag) {
        super.updateStageParameterBuilder(builder, stage, cameraType, requestTag);

        Parameter configParam = getConfigureParameter(cameraType);

        switch (stage) {
            case "before_take_picture":
                updateCaptureRequestTag(builder, requestTag);
                break;
            case "configure":
                if (!Util.isSystemCamera() && configParam != null) {
                    thirdPartyApp(configParam, builder, cameraType);
                }
                if (configParam != null && configParam.containCustomKey(ConfigureParameter.AI_NIGHT_VIDEO_MODE)) {
                    Integer nightMode = (Integer) configParam.get(ConfigureParameter.AI_NIGHT_VIDEO_MODE);
                    String stabMode = (String) configParam.get(ConfigureParameter.VIDEO_STABILIZATION_MODE);
                    boolean isSuperStab = "super_stabilization".equals(stabMode)
                            || "super_stabilization_front".equals(stabMode);

                    boolean hvxSupport = (Boolean) CameraConfigHelper
                            .getConfigValue(CameraConfigBase.KEY_THIRD_PARY_HVXSHDR_SUPPORT, true);
                    if (hvxSupport) {
                        String pkgWhiteList = (String) CameraConfigHelper
                                .getConfigValue(CameraConfigBase.KEY_THIRD_PARY_NOTNEEDPACKAGES_HVXSHDR_SUPPORT, "");
                        if (!TextUtils.isEmpty(pkgWhiteList)
                                && pkgWhiteList.contains(ContextHolder.getContext().getPackageName())) {
                            hvxSupport = false;
                        }
                    }

                    if ((((Boolean) CameraConfigHelper.getConfigValue(CameraConfigBase.KEY_REAR_HVXSHDR_SUPPORT, false))
                            && "rear_main".equals(cameraType))
                            || (((Boolean) CameraConfigHelper.getConfigValue(CameraConfigBase.KEY_FRONT_HVXSHDR_SUPPORT,
                                    false)) && "front_main".equals(cameraType))) {
                        if (Util.isSystemCamera() || hvxSupport) {
                            builder.set(ConfigureParameter.KEY_HVXSHDR_ENABLE, (byte) nightMode.intValue());
                        }
                    }

                    if (nightMode == 1 && (isSuperStab
                            || (!"front_main".equals(cameraType) && !"front_wide".equals(cameraType)))) {
                        builder.set(ConfigureParameter.AI_NIGHT_VIDEO_MODE, 1);
                    } else {
                        builder.set(ConfigureParameter.AI_NIGHT_VIDEO_MODE, 0);
                    }
                } else {
                    builder.set(ConfigureParameter.AI_NIGHT_VIDEO_MODE, 0);
                }

                builder.set(ConfigureParameter.KEY_TUNING_DATA_ENABLE, new byte[] { 0 });

                if (PlatformUtil.isQualcommPlatform()) {
                    builder.set(ConfigureParameter.KEY_VIDEO_EIS_RECORD_STATE, 0);
                } else if (!"front_main".equals(cameraType) || (Boolean) CameraConfigHelper
                        .getConfigValue(CameraConfigBase.KEY_SUPPORT_VIDEO_FRONT_EIS_RECORD, false)) {
                    builder.set(ConfigureParameter.KEY_VIDEO_EIS_RECORD_STATE, 1);
                }

                if (this.mConfigFpsRange != null) {
                    StatisticsManager.getInstance().setVideoFps(this.mConfigFpsRange.getUpper());
                } else {
                    StatisticsManager.getInstance().setVideoFps(30);
                }

                if ((Boolean) CameraConfigHelper
                        .getConfigValue(CameraConfigBase.KEY_SUPPORT_VIDEO_SUPER_EIS_PROCESS_ONLY_WIDE, false)) {
                    if (configParam != null && "super_stabilization"
                            .equals(configParam.get(ConfigureParameter.VIDEO_STABILIZATION_MODE))) {
                        builder.set(CaptureRequest.CONTROL_VIDEO_STABILIZATION_MODE, 1);
                    } else {
                        builder.set(CaptureRequest.CONTROL_VIDEO_STABILIZATION_MODE, 0);
                    }
                }
                break;
            case "start_recording":
                setVideoWaterMarkParams(builder, cameraType, requestTag);
                setVideoRecordingState(builder, cameraType, 1);
                break;
            case "stop_recording":
                setVideoRecordingState(builder, cameraType, 0);
                break;
            case "start_preview":
                if ("1".equals(CameraConfigHelper.getConfigValue(DefaultUtill.KEY_ENABLE_FRONT_CAMERA_SCALE))
                        && builder.containCustomKey(PreviewParameter.KEY_ZOOM_SCALE_ENABLE)
                        && (Boolean) builder.get(PreviewParameter.KEY_ZOOM_SCALE_ENABLE)) {
                    builder.set(PreviewParameter.KEY_ZOOM_SCALE, (Float) builder.get(PreviewParameter.KEY_ZOOM_RATIO));
                }
                CameraDeviceInfoInterface deviceInfo = getCameraDeviceInfo(cameraType);
                if (!builder.containsKey(PreviewParameter.KEY_FOCUS_MODE)
                        && deviceInfo.isSupportPreviewParameter(PreviewParameter.KEY_FOCUS_MODE.getName())) {
                    builder.set(PreviewParameter.KEY_FOCUS_MODE, 2);
                }
                if (requestTag != null) {
                    if (builder.containCustomKey(PreviewParameter.KEY_TILT_SHIFT_ENABLE)) {
                        requestTag.mbTiltShiftOpen = (Boolean) builder.get(PreviewParameter.KEY_TILT_SHIFT_ENABLE);
                    }
                    requestTag.mbVideoBlurOpen = "on".equals(builder.get(PreviewParameter.KEY_VIDEO_BLUR_ENABLE));
                    requestTag.mbVideoNeonOpen = "on".equals(builder.get(PreviewParameter.KEY_VIDEO_NEON_ENABLE));
                }
                if (this.mConfigFpsRange != null) {
                    builder.set(CaptureRequest.CONTROL_AE_TARGET_FPS_RANGE, this.mConfigFpsRange);
                }
                if (builder.containCustomKey(PreviewParameter.KEY_FACE_MAKEUP_TYPE)) {
                    requestTag.mMakeupType = (String) builder.get(PreviewParameter.KEY_FACE_MAKEUP_TYPE);
                    requestTag.mMakeupValue = (Integer) builder.get(PreviewParameter.KEY_FACE_MAKEUP_VALUE);
                }
                if (builder.containCustomKey(PreviewParameter.KEY_FILTER_TYPE)) {
                    requestTag.mbVideoAicolorEnable = "on"
                            .equals(builder.get(PreviewParameter.KEY_VIDEO_RETENTION_OPEN));
                }
                if (!Util.isSystemCamera()) {
                    int[] beautyLevels = (int[]) builder.get(CameraConstant.KEY_FACE_BEAUTY_LEVEL);
                    if (beautyLevels != null && beautyLevels.length > 0) {
                        requestTag.mPreviewFaceBeautyLevel = beautyLevels[0];
                    }
                }
                break;
        }

        if ("start_preview".equals(stage)) {
            Range<Integer> fpsRange = (Range) builder.get(ConfigureParameter.VIDEO_DYNAMIC_FPS);
            if (fpsRange != null) {
                this.mConfigFpsRange = fpsRange;
            }
        }
    }

    @Override
    protected Pair<Size, Size> getSurfaceSize(SdkCameraDeviceConfig deviceConfig, String surfaceType, String cameraType,
            String modeName) {
        if (CameraConstant.SessionSurfaceType.JSON_KEY_STREAM_VIDEO_AI_DEPTH.equals(surfaceType)) {
            Size size = new Size(VIDEO_BOKEH_AI_DEPTH_WIDTH, VIDEO_BOKEH_AI_DEPTH_HEIGHT);
            return new Pair<>(size, size);
        }

        if ("recording".equals(surfaceType) || "video".equals(surfaceType)) {
            SurfaceWrapper videoSurface = deviceConfig.getVideoSurface();
            if (videoSurface != null) {
                return new Pair<>(videoSurface.getAppSurfaceSize(), videoSurface.getHalSurfaceSize());
            }
            return new Pair<>(new Size(1920, 1080), new Size(1920, 1080));
        }
        return super.getSurfaceSize(deviceConfig, surfaceType, cameraType, modeName);
    }

    @Override
    protected String getSurfaceUseCase(String cameraType, boolean isUltraHighRes) {
        Parameter configParam = getConfigureParameter(cameraType);
        if (configParam == null)
            return super.getSurfaceUseCase(cameraType, isUltraHighRes);

        String stabMode = (String) configParam.get(ConfigureParameter.VIDEO_STABILIZATION_MODE);
        boolean isSuperStab = TextUtils.equals("super_stabilization", stabMode);

        if (!isVideoSnapShotByAps(cameraType) || isForceSnapShotByAps(cameraType)
                || isSuperEisSnapShotByHal(isSuperStab)) {
            return "on".equals(configParam.get(ConfigureParameter.KEY_WATERMARK_VIDEO_ENABLE))
                    ? "video_frame_snapshot_case"
                    : "video_recorder_snapshot_case";
        }

        if (isExplorerVideoBokehOpen(configParam, cameraType)) {
            return CameraConstant.UseCase.VIDEO_BLUR_AI_DEPTH;
        }

        if ("on".equals(configParam.get(ConfigureParameter.KEY_WATERMARK_VIDEO_ENABLE))) {
            boolean supportsDefaultFrame = (Boolean) CameraConfigHelper
                    .getConfigValue(CameraConfigBase.KEY_SUPPORT_DEFAULT_VIDEO_FRAME_RECORD, false);
            return (supportsDefaultFrame && "video_mode".equals(getModeName()) && isUltraHighRes)
                    ? "recorder_video_case"
                    : CameraConstant.UseCase.WATERMARK_VIDEO;
        }

        if (isSuperStab && (Boolean) CameraConfigHelper.getConfigValue(CameraConfigBase.KEY_APS_SUPPORT_VIDEO_SUPER_EIS,
                true)) {
            return "eis_pro_case";
        }

        if ("on".equals(configParam.get(ConfigureParameter.AI_FOLLOW_ENABLE))) {
            return CameraConstant.UseCase.AI_FOLLOW_CASE;
        }

        return "recorder_video_case";
    }

    @Override
    public void updateStageParameter(@NonNull Parameter parameter, String stage, String cameraType,
            @Nullable CameraRequestTag requestTag) {
        super.updateStageParameter(parameter, stage, cameraType, requestTag);

        if ("start_recording".equals(stage) && isEndOfStreamNeeded(parameter, cameraType)) {
            parameter.set(PreviewParameter.KEY_END_OF_STREAM, new byte[] { 0 });
        }
        if ("stop_recording".equals(stage) && isEndOfStreamNeeded(parameter, cameraType)) {
            parameter.set(PreviewParameter.KEY_END_OF_STREAM, new byte[] { 1 });
        }

        if ("before_take_picture".equals(stage) && isVideo10BitOpen(cameraType)
                && requestTag != null) {
            requestTag.mbPhoto10BitsEnable = true;
        }

        if ("start_preview".equals(stage)) {
            Range<Integer> fpsRange = (Range) parameter.get(ConfigureParameter.VIDEO_DYNAMIC_FPS);
            if (fpsRange != null) {
                this.mConfigFpsRange = fpsRange;
            }
        }
    }

    @Override
    protected Long getVideoFrameReaderUsage(String cameraType) {
        if (isSuperEisByAps(cameraType)) {
            return 131L;
        }
        if (this.mTargetVideoSize != null && this.mTargetVideoSize.getWidth() >= VIDEO_4K_FRAME_WIDTH) {
            return 1L;
        }
        return 128L;
    }

    @Override
    public void unInit() {
        super.unInit();
        this.mTargetVideoSize = null;
        this.mConfigFpsRange = null;
    }

    public boolean updateFpsRangeByVideoType(Parameter parameter, PreviewParameter.Builder builder, String str) {
        Range<Integer> fpsRange = (Range) parameter.get(ConfigureParameter.VIDEO_DYNAMIC_FPS);
        if (fpsRange != null) {
            this.mConfigFpsRange = new Range<>(fpsRange.getLower(), fpsRange.getUpper());
        }

        String stabMode = (String) parameter.get(ConfigureParameter.VIDEO_STABILIZATION_MODE);
        boolean isFrontSuperStab = "super_stabilization_front".equals(stabMode);

        Integer aiNightMode = (Integer) parameter.get(ConfigureParameter.AI_NIGHT_VIDEO_MODE);
        if (aiNightMode != null && aiNightMode == 1) {
            this.mConfigFpsRange = new Range<>(20, 30);
            CameraUnitLog.d(TAG, "updateFpsRangeByVideoType, aiNightVideoMode is on, set fps range to 20~30");
        }

        if (this.mConfigFpsRange != null) {
            CameraUnitLog.d(TAG,
                    "updateFpsRangeByVideoType, set CONTROL_AE_TARGET_FPS_RANGE to: " + this.mConfigFpsRange);
            builder.set(CaptureRequest.CONTROL_AE_TARGET_FPS_RANGE, this.mConfigFpsRange);
        }
        return false;
    }

    @Override
    protected CameraDeviceInfoInterface createCameraDeviceInfo(String cameraType) {
        CameraDeviceInfoImpl deviceInfo = (CameraDeviceInfoImpl) super.createCameraDeviceInfo(cameraType);
        if (TextUtils.equals(cameraType, "rear_main") || TextUtils.equals(cameraType, "rear_wide")
                || TextUtils.equals(cameraType, "rear_sat")) {
            deviceInfo.setConfigureParameterRangeMap(deviceInfo.getConfigureParameterRangeMap());
        }

        if (!Util.isSystemCamera() && "front_main".equals(cameraType) && (Boolean) CameraConfigHelper
                .getConfigValue(CameraConfigBase.KEY_THIRD_PARTY_FRONT_AINIGHTVIDEO_DISABLE, false)) {
            deviceInfo.getConfigureParameterRangeMap().remove(ConfigureParameter.AI_NIGHT_VIDEO_MODE.getName());
        }

        deviceInfo.getPreviewParameterRangeMap().put(PreviewParameter.KEY_ZOOM_RATIO.getName(),
                new ZoomHelper(cameraType).getZoomRatioList(false, "rear_sat".equals(cameraType), false));
        return deviceInfo;
    }

    @Override
    protected void updateAllParameterRanges(CameraDeviceInfoImpl deviceInfo, String cameraType) {
        super.updateAllParameterRanges(deviceInfo, cameraType);
        ArrayList<Range<Integer>> fpsRanges = new ArrayList<>();
        Range<Integer>[] availableRanges = (Range[]) deviceInfo
                .get(CameraCharacteristics.CONTROL_AE_AVAILABLE_TARGET_FPS_RANGES);
        if (availableRanges != null) {
            fpsRanges.addAll(Arrays.asList(availableRanges));
        }

        List<String> videoFpsList = (List) deviceInfo
                .getConfigureParameterRange(ConfigureParameter.VIDEO_FPS.getName());
        if (videoFpsList != null) {
            for (String fpsStr : videoFpsList) {
                int fps = Integer.parseInt(fpsStr.substring(6, fpsStr.length() - 3));
                Range<Integer> range = new Range<>(fps, fps);
                if (!fpsRanges.contains(range)) {
                    fpsRanges.add(range);
                }
            }
        }
        deviceInfo.getConfigureParameterRangeMap().put(ConfigureParameter.VIDEO_DYNAMIC_FPS.getName(), fpsRanges);
    }

    @Override
    protected boolean checkPreviewResult(CameraRequestTag requestTag) {
        ApsRequestTag apsTag = this.mTagMap.get(requestTag.mCameraType);
        if (apsTag == null || apsTag.mbPreviewProcessByAps) {
            return super.checkPreviewResult(requestTag);
        }
        return true;
    }

    @Override
    public CameraRequestTag createRequestTag(String cameraType, Object obj, Handler handler, String stage,
            PreviewParameter.Builder builder) {
        if (Parameter.ParameterStage.BEFORE_TAKE_PICTURE.equals(stage)) {
            ApsRequestTag apsTag = this.mTagMap.get(cameraType);
            if (apsTag != null && !apsTag.mbPreviewProcessByAps) {
                this.mPreviewResult = getDefaultPreviewResult();
            }
            if (is10BitOpen(cameraType) && apsTag != null) {
                apsTag.mbPhoto10BitsEnable = true;
            }
        }

        CameraRequestTag tag = super.createRequestTag(cameraType, obj, handler, stage, builder);
        Parameter configParam = getConfigureParameter(cameraType);
        String stabMode = (String) configParam.get(ConfigureParameter.VIDEO_STABILIZATION_MODE);

        tag.mbSuperEisOn = TextUtils.equals("super_stabilization", stabMode);
        tag.mbVideoCapture = true;
        tag.mbAntibandingEnable = "on".equals(configParam.get(ConfigureParameter.ANTI_BANDING_ENABLE));
        tag.mbVideoWaterMarkEnable = "on".equals(configParam.get(ConfigureParameter.KEY_WATERMARK_VIDEO_ENABLE));
        tag.mbNormalVideoHFR = "video_120fps".equals(configParam.get(ConfigureParameter.VIDEO_FPS));

        Boolean rearMirror = (Boolean) builder.get(PreviewParameter.KEY_REAR_MIRROR_ENABLE);
        tag.mbRearMirrorEnable = rearMirror != null && rearMirror;

        Object visualization = builder.get(PreviewParameter.KEY_PICTURE_VISUALIZATION_ENABLE);
        tag.mbPictureVisualizationEnable = visualization != null && "on".equals(visualization);

        if (isExplorerVideoBokehOpen(configParam, cameraType)) {
            tag.mApsRequestTag.mPreviewStreamNumber = 2;
            tag.mApsRequestTag.mCaptureStreamNumber = 2;
        }

        if (CameraCharacteristicsHelper.isFrontCamera(tag.mCameraId) || tag.mbRearMirrorEnable) {
            tag.mbMirrorEnable = "on".equals(configParam.get(ConfigureParameter.MIRROR_ENABLE));
        }

        return tag;
    }

    @Override
    protected String getFeatureName(String cameraType) {
        Parameter configParam = getConfigureParameter(cameraType);
        String stabMode = (String) configParam.get(ConfigureParameter.VIDEO_STABILIZATION_MODE);

        if ("super_stabilization".equals(stabMode)) {
            return "super_stabilization";
        }
        if (isExplorerVideoBokehOpen(configParam, cameraType)) {
            return CameraConstant.EXPLORER_VIDEO_BOKEH;
        }

        Integer nightMode = (Integer) configParam.get(ConfigureParameter.AI_NIGHT_VIDEO_MODE);
        if (nightMode != null && nightMode == 1) {
            StatisticsManager.getInstance().setAiEnhance(true);
            return String.valueOf(nightMode);
        }

        StatisticsManager.getInstance().setAiEnhance(false);
        if (CameraConstant.NightVideo.ULTRA_NIGHT_VIDEO.equals(configParam.get(ConfigureParameter.VIDEO_NIGHT_MODE))) {
            return CameraConstant.NightVideo.ULTRA_NIGHT_VIDEO;
        }
        if ("on".equals(configParam.get(ConfigureParameter.KEY_APS_VIDEO_RETENTION))) {
            return CameraConstant.ARC_VIDEO_RETENTION;
        }
        if ("on".equals(configParam.get(ConfigureParameter.AI_FOLLOW_ENABLE))) {
            return CameraConstant.AI_FOLLOW;
        }

        return null;
    }

    @Override
    public int getSurfaceFormatBySurfaceType(String surfaceType, String cameraType, String modeName) {
        if (("preview".equals(surfaceType) || "video_recorder".equals(surfaceType) || "video".equals(surfaceType))
                && isVideo10BitOpen(cameraType)) {
            return 34; // 10-bit format
        }
        if ("capture".equals(surfaceType)) {
            if (isVideo10BitOpen(cameraType)) {
                return (Integer) CameraConfigHelper.getConfigValue(CameraConfigBase.KEY_PHOTO_10BIT_FORMAT, 34);
            }
            return 35; // YUV_420_888
        }
        return super.getSurfaceFormatBySurfaceType(surfaceType, cameraType, modeName);
    }

    @Override
    protected boolean isExplorerOpen(String cameraType) {
        Parameter configParam = getConfigureParameter(cameraType);
        if (configParam == null)
            return false;

        Integer nightMode = (Integer) configParam.get(ConfigureParameter.AI_NIGHT_VIDEO_MODE);
        if (nightMode == null || nightMode != 1)
            return false;

        Integer hdrType = (Integer) CameraCharacteristicsHelper.getCameraCharacteristicsWrapper(cameraType)
                .get(CameraCharacteristicsWrapper.KEY_STREAMING_HDR_TYPE);
        if (hdrType != null && hdrType == 1) {
            return false; // Bypass explore for 2EXP stagger
        }
        return true;
    }

    private void updateCaptureRequestTag(PreviewParameter.Builder builder, CameraRequestTag tag) {
        Integer orientation = (Integer) builder.get(CaptureRequest.JPEG_ORIENTATION);
        tag.mPicOrientation = orientation != null ? orientation : 90;

        if (builder.containCustomKey(PreviewParameter.KEY_FILTER_TYPE)) {
            tag.mFilterType = (String) builder.get(PreviewParameter.KEY_FILTER_TYPE);
            tag.mbFilterOpen = (Boolean) builder.get(PreviewParameter.KEY_FILTER_OPEN);
            tag.mbFilterVignette = (Boolean) builder.get(PreviewParameter.KEY_FILTER_WITHVIGNETTE);
            tag.mbVideoRetentionOpen = "on".equals(builder.get(PreviewParameter.KEY_VIDEO_RETENTION_OPEN));
        }

        if (builder.containCustomKey(PreviewParameter.KEY_FACE_BEAUTY_ENABLE)) {
            tag.mbFaceBeautyOpen = "on".equals(builder.get(PreviewParameter.KEY_FACE_BEAUTY_ENABLE));
            tag.mFaceBeautyVersion = (String) builder.get(PreviewParameter.KEY_FACE_BEAUTY_VERSION);
            tag.mFaceBeautyParam = (int[]) builder.get(PreviewParameter.KEY_FACE_BEAUTY_PARAM);
            tag.mFaceData = (int[]) builder.get(PreviewParameter.KEY_FACE_DATA);
        }

        if (builder.containCustomKey(PreviewParameter.KEY_FACE_MAKEUP_TYPE)) {
            tag.mMakeupType = (String) builder.get(PreviewParameter.KEY_FACE_MAKEUP_TYPE);
            tag.mMakeupValue = (Integer) builder.get(PreviewParameter.KEY_FACE_MAKEUP_VALUE);
        }

        if (builder.containCustomKey(PreviewParameter.KEY_FACE_DERED_EYE_ENABLE)) {
            tag.mbDeRedEye = "on".equals(builder.get(PreviewParameter.KEY_FACE_DERED_EYE_ENABLE));
        }

        if ("on".equals(builder.get(PreviewParameter.KEY_VIDEO_BLUR_ENABLE))) {
            tag.mbVideoBlurOpen = true;
            tag.mVideoBlurParams = (String) builder.get(PreviewParameter.KEY_VIDEO_BLUR_PARAMS);
            Bundle effectParams = (Bundle) builder.get(PreviewParameter.KEY_VIDEO_EFFECT_PARAM);
            if (effectParams != null) {
                tag.mBlurIndex = effectParams.getInt("blur_level", 0);
                tag.mOrientation = effectParams.getInt("orientation", 0);
                tag.mBlurShow = effectParams.getFloat("blur_show", 0.0f);
            }
        } else if ("on".equals(builder.get(PreviewParameter.KEY_VIDEO_NEON_ENABLE))) {
            tag.mbVideoNeonOpen = true;
            tag.mVideoFusionEffect = (Integer) builder.get(PreviewParameter.KEY_VIDEO_FUSION_EFFECT);
            tag.mVideoNeonParams = (String) builder.get(PreviewParameter.KEY_VIDEO_NEON_PARAMS);
            Bundle effectParams = (Bundle) builder.get(PreviewParameter.KEY_VIDEO_EFFECT_PARAM);
            if (effectParams != null) {
                tag.mOrientation = effectParams.getInt("orientation", 0);
            }
        } else if ("on".equals(builder.get(PreviewParameter.KEY_VIDEO_RETENTION_OPEN))) {
            Bundle effectParams = (Bundle) builder.get(PreviewParameter.KEY_VIDEO_EFFECT_PARAM);
            if (effectParams != null) {
                tag.mbVideoRetentionEffectProcessed = effectParams.getBoolean("retention_process", false);
                tag.mOrientation = effectParams.getInt("orientation", 0);
            }
        }

        tag.mbPhotoWaterMarkEnable = tag.mbVideoWaterMarkEnable;
        Bundle wmParams = (Bundle) builder.get(PreviewParameter.KEY_WATERMARK_PARAM);
        if (wmParams != null && tag.mbPhotoWaterMarkEnable) {
            fillWatermarkParam(tag, wmParams);
        }
    }

    private boolean isExplorerVideoBokehOpen(Parameter parameter, String cameraType) {
        return (Boolean) CameraConfigHelper.getConfigValue(CameraConfigBase.KEY_VIDEO_BLUR_V3_SUPPORT, false)
                && "on".equals(parameter.get(ConfigureParameter.KEY_VIDEO_BLUR))
                && "rear_main".equals(cameraType);
    }

    private boolean isEndOfStreamNeeded(Parameter parameter, String cameraType) {
        Boolean supportEnd = (Boolean) CameraConfigHelper
                .getConfigValue(CameraConfigBase.KEY_SUPPORT_END_VIDEO_EIS_STREAM, true);
        Boolean satSupport = (Boolean) CameraConfigHelper.getConfigValue(CameraConfigBase.KEY_SAT_SUPPORT_PRE_VERSION,
                false);

        String stabMode = (String) parameter.get(ConfigureParameter.VIDEO_STABILIZATION_MODE);
        if ("super_stabilization".equals(stabMode) && !supportEnd)
            return false;

        if (satSupport && !"super_stabilization".equals(stabMode)) {
            if (this.mTargetVideoSize != null && this.mTargetVideoSize.getWidth() == VIDEO_4K_FRAME_WIDTH)
                return false;
            String fpsStr = (String) parameter.get(ConfigureParameter.VIDEO_FPS);
            if ("video_60fps".equals(fpsStr))
                return false;
        }

        if (!PlatformUtil.isQualcommPlatform())
            return false;

        byte[] eisEnd = (byte[]) CameraCharacteristicsHelper.getCameraCharacteristicsWrapper(cameraType)
                .get(CameraCharacteristicsWrapper.KEY_EIS_END_OF_STREAM);
        return eisEnd != null && eisEnd.length > 0;
    }

    private boolean isForceSnapShotByAps(String cameraType) {
        SdkCameraDeviceConfig config = this.mConfigMap.get(cameraType);
        if (config == null || config.getVideoSurface() == null)
            return false;

        Size videoSize = config.getVideoSurface().getAppSurfaceSize();
        if (videoSize.getWidth() == VIDEO_8K_FRAME_WIDTH)
            return true;

        return (Boolean) CameraConfigHelper.getConfigValue(CameraConfigBase.KEY_FORCE_4k_VIDEO_SNAPSHOT_BY_APS, false)
                && videoSize.getWidth() == VIDEO_4K_FRAME_WIDTH
                && !"video_120fps".equals(config.getConfigureParameter().get(ConfigureParameter.VIDEO_FPS));
    }

    private boolean isVideoSnapShotByHal(String cameraType) {
        return AlgoSwitchConfig.getApsVersion() == 2 || is4kOr8k(cameraType) || isVideo10BitOpen(cameraType);
    }

    private boolean isSuperEisSnapShotByHal(boolean isSuperStab) {
        return isSuperStab && (Boolean) CameraConfigHelper
                .getConfigValue(CameraConfigBase.KEY_SUPPORT_VIDEO_SUPER_EIS_PROCESS_ONLY_WIDE, false);
    }

    protected boolean is4kOr8k(String cameraType) {
        SdkCameraDeviceConfig config = this.mConfigMap.get(cameraType);
        if (config == null || config.getVideoSurface() == null)
            return false;
        Size size = config.getVideoSurface().getAppSurfaceSize();
        if (size.getWidth() == VIDEO_8K_FRAME_WIDTH)
            return true;
        return size.getWidth() == VIDEO_4K_FRAME_WIDTH
                && !"video_120fps".equals(config.getConfigureParameter().get(ConfigureParameter.VIDEO_FPS));
    }

    protected boolean is8k30fps(String cameraType) {
        SdkCameraDeviceConfig config = this.mConfigMap.get(cameraType);
        if (config == null || config.getVideoSurface() == null)
            return false;
        Size size = config.getVideoSurface().getAppSurfaceSize();
        return size.getWidth() == VIDEO_8K_FRAME_WIDTH
                && "video_30fps".equals(config.getConfigureParameter().get(ConfigureParameter.VIDEO_FPS));
    }

    protected boolean isVideo10BitOpen(String cameraType) {
        Parameter config = getConfigureParameter(cameraType);
        return config != null && "on".equals(config.get(ConfigureParameter.VIDEO_10BIT_ENABLE));
    }

    @Override
    public boolean isVideoSnapShotByAps(String cameraType) {
        return !isVideoSnapShotByHal(cameraType) || isForceSnapShotByAps(cameraType);
    }

    private boolean isRearSuperEisOpen(String cameraType) {
        if (CameraCharacteristicsHelper
                .isFrontCamera(CameraCharacteristicsHelper.getCameraIdType(cameraType).getCameraId()))
            return false;
        Parameter config = getConfigureParameter(cameraType);
        return config != null && TextUtils.equals("super_stabilization",
                (String) config.get(ConfigureParameter.VIDEO_STABILIZATION_MODE));
    }

    private boolean isSuperEisByAps(String cameraType) {
        return isRearSuperEisOpen(cameraType)
                && (Boolean) CameraConfigHelper.getConfigValue(CameraConfigBase.KEY_APS_SUPPORT_VIDEO_SUPER_EIS, true);
    }

    @Override
    protected int getImageReaderMaxImages(String cameraType) {
        return isSuperEisByAps(cameraType) ? 40 : 20;
    }

    protected static void prepareVideoSurface(SdkCameraDeviceConfig deviceConfig, Size size, Surface surface) {
        MediaRecorder recorder = new MediaRecorder();
        try {
            recorder.setInputSurface(surface);
            recorder.setVideoSource(2);
            recorder.setOutputFormat(2);
            recorder.setVideoSize(size.getWidth(), size.getHeight());

            Parameter config = deviceConfig.getConfigureParameter();
            if ("H265".equals(config.get(ConfigureParameter.VIDEO_ENCODER))) {
                recorder.setVideoEncoder(5);
                if ("on".equals(config.get(ConfigureParameter.VIDEO_10BIT_ENABLE))) {
                    recorder.setVideoEncodingProfileLevel(2, 4096);
                }
            } else {
                recorder.setVideoEncoder(2);
            }

            Integer bitrate = (Integer) config.get(ConfigureParameter.VIDEO_BITRATE);
            if (bitrate != null)
                recorder.setVideoEncodingBitRate(bitrate);

            File temp = File.createTempFile("VideoSurface", "tmp");
            recorder.setOutputFile(temp.getAbsolutePath());
            recorder.prepare();
            temp.delete();
        } catch (Exception e) {
            CameraUnitLog.e(TAG, "prepareVideoSurface failed", e);
        } finally {
            recorder.release();
        }
    }

    private static void setVideoRecordingState(PreviewParameter.Builder builder, String cameraType, int state) {
        if (PlatformUtil.isQualcommPlatform()) {
            builder.set(ConfigureParameter.KEY_VIDEO_EIS_RECORD_STATE, state);
            builder.set(PreviewParameter.KEY_VIDEO_EIS_RECORD_STATE, state);
        } else if (!"front_main".equals(cameraType)) {
            builder.set(PreviewParameter.KEY_VIDEO_EIS_RECORD_STATE, state);
        }
    }

    private void thirdPartyApp(Parameter config, PreviewParameter.Builder builder, String cameraType) {
        if ("super_stabilization".equals(config.get(ConfigureParameter.VIDEO_STABILIZATION_MODE))) {
            Range<Integer> fps = (Range) CameraConfigHelper
                    .getConfigValue(CameraConfigBase.KEY_THIRD_PARTY_SUPER_STABILIZATION_FPS, null);
            if (fps != null) {
                this.mConfigFpsRange = fps;
                builder.set(CaptureRequest.CONTROL_AE_TARGET_FPS_RANGE, fps);
            }
        }
    }

    private CameraPreviewCallbackAdapter.PreviewResult getDefaultPreviewResult() {
        if (this.mDefaultPreviewResult == null) {
            this.mDefaultPreviewResult = new CameraPreviewCallbackAdapter.PreviewResult.Builder()
                    .setApsDecisionResult(new ApsAdapterDecision.DecisionResult()).build();
        }
        return this.mDefaultPreviewResult;
    }

    protected boolean isPreviewProcessByAps(Parameter parameter, String cameraType) {
        if (!Util.isSystemCamera())
            return true;
        if ((Boolean) CameraConfigHelper.getConfigValue(CameraConfigBase.KEY_HIGH_FPS_VIDEO_PREVIEW_PROCESS_BY_APS,
                true))
            return true;
        if (parameter != null && "on".equals(parameter.get(ConfigureParameter.KEY_WATERMARK_VIDEO_ENABLE)))
            return true;
        if (parameter != null
                && "super_stabilization".equals(parameter.get(ConfigureParameter.VIDEO_STABILIZATION_MODE))) {
            return (Boolean) CameraConfigHelper.getConfigValue(CameraConfigBase.KEY_VIDEO_STABILIZATION_BY_APS, true);
        }
        return true;
    }

    private boolean isAIFollowEnable(String cameraType) {
        Parameter parameter = getConfigureParameter(cameraType);
        if (parameter == null)
            return false;
        return "on".equals(parameter.get(ConfigureParameter.AI_FOLLOW_ENABLE));
    }

    protected void updateCurrentFps(String fpsStr) {
        if (fpsStr == null)
            return;
        switch (fpsStr) {
            case "video_120fps":
                this.mCurrentFps = 120;
                break;
            case "video_240fps":
                this.mCurrentFps = 240;
                break;
            case "video_480fps":
                this.mCurrentFps = 480;
                break;
            case "video_960fps":
                this.mCurrentFps = 960;
                break;
            case "video_60fps":
                this.mCurrentFps = 60;
                break;
            default:
                this.mCurrentFps = 30;
                break;
        }
    }
}

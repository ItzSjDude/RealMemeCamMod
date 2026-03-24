package com.oplus.ocs.camera.producer.mode;

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
import com.oplus.ocs.camera.appinterface.CameraPreviewCallbackAdapter;
import com.oplus.ocs.camera.appinterface.adapter.CameraAdapterUtils;
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
import com.oplus.ocs.camera.common.util.Util;
import com.oplus.ocs.camera.consumer.apsAdapter.adapter.ApsAdapterDecision;
import com.oplus.ocs.camera.consumer.apsAdapter.adapter.ApsParameters;
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
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
/* loaded from: classes.dex */
public class VideoMode extends BaseMode {
    private static final int FPS_LOW = 20;
    private static final int INDEX_SIX = 6;
    private static final int INDEX_THREE = 3;
    private static final String TAG = "VideoMode";
    private static final int VIDEO_4K_FRAME_HEIGHT = 2160;
    private static final int VIDEO_4K_FRAME_WIDTH = 3840;
    private static final int VIDEO_8K_FRAME_HEIGHT = 4320;
    private static final int VIDEO_8K_FRAME_WIDTH = 7680;
    private static final String VIDEO_RESOLUTION = "resolution";
    private static final String VIDEO_RESOLUTION_8K = "8k";
    protected int mCurrentFps = 30;
    private Size mTargetVideoSize = null;
    private Range<Integer> mConfigFpsRange = null;
    private CameraPreviewCallbackAdapter.PreviewResult mDefaultPreviewResult = null;

    @Override // com.oplus.ocs.camera.producer.mode.BaseMode
    protected String getModeName() {
        return "video_mode";
    }

    @Override // com.oplus.ocs.camera.producer.mode.BaseMode
    protected boolean isCaptureModeType() {
        return false;
    }

    @Override // com.oplus.ocs.camera.producer.mode.BaseMode, com.oplus.ocs.camera.producer.mode.ModeInterface
    public boolean isSupportVideoSnapShot(String str) {
        return true;
    }

    protected boolean needPrepareVideoSurface() {
        return true;
    }

    @Override // com.oplus.ocs.camera.producer.mode.BaseMode, com.oplus.ocs.camera.common.surface.SurfaceControlInterface
    public LinkedList<SurfaceWrapper> buildStreamSurface(SdkCameraDeviceConfig sdkCameraDeviceConfig, String str) {
        LinkedList<SurfaceWrapper> buildStreamSurface = super.buildStreamSurface(sdkCameraDeviceConfig, str);
        if (buildStreamSurface == null) {
            return null;
        }
        SurfaceWrapper videoSurface = sdkCameraDeviceConfig.getVideoSurface();
        if (needPrepareVideoSurface() && (videoSurface == null || videoSurface.getSurface() == null)) {
            if (videoSurface != null) {
                this.mTargetVideoSize = videoSurface.getAppSurfaceSize();
            } else {
                CameraUnitLog.w(TAG, "get video surface wrapper failed, so use preview surface size to record.");
                this.mTargetVideoSize = sdkCameraDeviceConfig.getDefaultPreviewSurface().getAppSurfaceSize();
            }
            Surface videoSurface2 = SurfacePool.getInstance().getVideoSurface();
            if (videoSurface2 != null) {
                prepareVideoSurface(sdkCameraDeviceConfig, this.mTargetVideoSize, videoSurface2);
            }
            return buildStreamSurface;
        }
        return buildStreamSurface;
    }

    @Override // com.oplus.ocs.camera.producer.mode.BaseMode
    public boolean useOplusCameraCase(String str) {
        if (Util.isSystemCamera()) {
            return true;
        }
        Parameter configureParameter = getConfigureParameter(str);
        if (configureParameter == null) {
            return false;
        }
        if (configureParameter.containCustomKey(ConfigureParameter.VIDEO_STABILIZATION_MODE) || configureParameter.containCustomKey(ConfigureParameter.AI_NIGHT_VIDEO_MODE)) {
            return true;
        }
        if (!configureParameter.containCustomKey(ConfigureParameter.VIDEO_3HDR_MODE) || "off".equals(configureParameter.get(ConfigureParameter.VIDEO_3HDR_MODE))) {
            if (configureParameter.containCustomKey(ConfigureParameter.VIDEO_DYNAMIC_FPS) && 60 == ((Integer) ((Range) configureParameter.get(ConfigureParameter.VIDEO_DYNAMIC_FPS)).getUpper()).intValue()) {
                return true;
            }
            if (configureParameter.containCustomKey(ConfigureParameter.VIDEO_FPS) && "video_60fps".equals(configureParameter.get(ConfigureParameter.VIDEO_FPS))) {
                return true;
            }
            return super.useOplusCameraCase(str);
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.oplus.ocs.camera.producer.mode.BaseMode
    public void onConfigure(CameraSessionEntity cameraSessionEntity, SdkCameraDeviceConfig sdkCameraDeviceConfig, String str, ApsRequestTag apsRequestTag) {
        Map<String, String> map;
        String str2;
        cameraSessionEntity.setTemplate(3);
        Parameter configureParameter = getConfigureParameter(str);
        apsRequestTag.mbPreviewProcessByAps = isPreviewProcessByAps(configureParameter, str);
        if (!useOplusCameraCase(str)) {
            cameraSessionEntity.setTemplate(1);
            cameraSessionEntity.setOperationMode(String.valueOf(0));
            this.mTagMap.get(str).mModeName = "basic_preview_mode";
            StatisticsManager.getInstance().setVideoSize(sdkCameraDeviceConfig.getDefaultPreviewSurface().getAppSurfaceSize());
        } else {
            apsRequestTag.mbVideoWaterMarkEnable = "on".equals(sdkCameraDeviceConfig.getConfigureParameter().get(ConfigureParameter.KEY_WATERMARK_VIDEO_ENABLE));
            if (isRearSuperEisOpen(str)) {
                Map<String, String> singletonMap = Collections.singletonMap(ConfigureParameter.VIDEO_STABILIZATION_MODE.getName(), "super_stabilization");
                sdkCameraDeviceConfig.updateHalPreviewSize(getCameraDeviceInfo(str).getPreviewMappingSizesFromConfig(str, singletonMap));
                sdkCameraDeviceConfig.updateHalVideoSize(getCameraDeviceInfo(str).getVideoMappingSizesFromConfig(str, singletonMap));
            }
            SurfaceWrapper videoSurface = sdkCameraDeviceConfig.getVideoSurface();
            if (videoSurface != null) {
                StatisticsManager.getInstance().setVideoSize(videoSurface.getAppSurfaceSize());
            }
            StatisticsManager.getInstance().setFeature(ConfigureParameter.VIDEO_STABILIZATION_MODE, configureParameter.get(ConfigureParameter.VIDEO_STABILIZATION_MODE));
            StatisticsManager.getInstance().setFeature(ConfigureParameter.VIDEO_3HDR_MODE, configureParameter.get(ConfigureParameter.VIDEO_3HDR_MODE));
        }
        if (!is8k30fps(str) || (map = CameraConfigHelper.getFeatureOperationMode().get(sdkCameraDeviceConfig.getModeName()).get(VIDEO_RESOLUTION)) == null || (str2 = map.get(VIDEO_RESOLUTION_8K)) == null) {
            return;
        }
        cameraSessionEntity.setOperationMode(str2);
        CameraUnitLog.d(TAG, "onConfigure, set 8K operation mode:" + str2);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // com.oplus.ocs.camera.producer.mode.BaseMode, com.oplus.ocs.camera.producer.mode.ModeInterface
    public void updateStageParameterBuilder(@NonNull PreviewParameter.Builder builder, String str, String str2, @Nullable CameraRequestTag cameraRequestTag) {
        char c;
        super.updateStageParameterBuilder(builder, str, str2, cameraRequestTag);
        Parameter configureParameter = getConfigureParameter(str2);
        CameraUnitLog.d(TAG, "updateStageParameterBuilder, state: " + str);
        switch (str.hashCode()) {
            case -930917882:
                if (str.equals(Parameter.ParameterStage.BEFORE_TAKE_PICTURE)) {
                    c = 4;
                    break;
                }
                c = 65535;
                break;
            case -804429082:
                if (str.equals(Parameter.ParameterStage.CONFIGURE)) {
                    c = 0;
                    break;
                }
                c = 65535;
                break;
            case -588535212:
                if (str.equals(Parameter.ParameterStage.START_RECORDING)) {
                    c = 2;
                    break;
                }
                c = 65535;
                break;
            case -426842636:
                if (str.equals(Parameter.ParameterStage.STOP_RECORDING)) {
                    c = 3;
                    break;
                }
                c = 65535;
                break;
            case 2102512875:
                if (str.equals(Parameter.ParameterStage.START_PREVIEW)) {
                    c = 1;
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
                updateFpsRange(configureParameter, builder, str2);
                if (!Util.isSystemCamera()) {
                    thirdPartyApp(configureParameter, builder, str2);
                }
                if (configureParameter.containCustomKey(ConfigureParameter.AI_NIGHT_VIDEO_MODE)) {
                    Integer num = (Integer) configureParameter.get(ConfigureParameter.AI_NIGHT_VIDEO_MODE);
                    String str3 = (String) configureParameter.get(ConfigureParameter.VIDEO_STABILIZATION_MODE);
                    boolean z = "super_stabilization".equals(str3) || "super_stabilization_front".equals(str3);
                    if (("rear_main".equals(str2) && ((Boolean) CameraAdapterUtils.getConfigValue(CameraConfigBase.KEY_REAR_HVXSHDR_SUPPORT, false)).booleanValue()) || ("front_main".equals(str2) && ((Boolean) CameraAdapterUtils.getConfigValue(CameraConfigBase.KEY_FRONT_HVXSHDR_SUPPORT, false)).booleanValue())) {
                        builder.set((Parameter.Key<Parameter.Key<Byte>>) ConfigureParameter.KEY_HVXSHDR_ENABLE, (Parameter.Key<Byte>) Byte.valueOf((byte) num.intValue()));
                    }
                    if (1 == num.intValue() && (!"front_main".equals(str2) || z)) {
                        builder.set((Parameter.Key<Parameter.Key<Integer>>) ConfigureParameter.AI_NIGHT_VIDEO_MODE, (Parameter.Key<Integer>) 1);
                    } else {
                        builder.set((Parameter.Key<Parameter.Key<Integer>>) ConfigureParameter.AI_NIGHT_VIDEO_MODE, (Parameter.Key<Integer>) 0);
                    }
                } else {
                    builder.set((Parameter.Key<Parameter.Key<Integer>>) ConfigureParameter.AI_NIGHT_VIDEO_MODE, (Parameter.Key<Integer>) 0);
                }
                builder.set((Parameter.Key<Parameter.Key<byte[]>>) ConfigureParameter.KEY_TUNING_DATA_ENABLE, (Parameter.Key<byte[]>) new byte[]{0});
                if (Util.isQcomPlatform()) {
                    builder.set((Parameter.Key<Parameter.Key<Integer>>) ConfigureParameter.KEY_VIDEO_EIS_RECORD_STATE, (Parameter.Key<Integer>) 0);
                } else if (!"front_main".equals(str2) || ((Boolean) CameraAdapterUtils.getConfigValue(CameraConfigBase.KEY_SUPPORT_VIDEO_FRONT_EIS_RECORD, false)).booleanValue()) {
                    builder.set((Parameter.Key<Parameter.Key<Integer>>) ConfigureParameter.KEY_VIDEO_EIS_RECORD_STATE, (Parameter.Key<Integer>) 1);
                }
                StatisticsManager.getInstance().setVideoFps(this.mConfigFpsRange != null ? this.mConfigFpsRange.getUpper().intValue() : 30);
                if (((Boolean) CameraAdapterUtils.getConfigValue(CameraConfigBase.KEY_SUPPORT_VIDEO_SUPER_EIS_PROCESS_ONLY_WIDE, false)).booleanValue()) {
                    if (configureParameter.containCustomKey(ConfigureParameter.VIDEO_STABILIZATION_MODE)) {
                        if ("super_stabilization".equals((String) configureParameter.get(ConfigureParameter.VIDEO_STABILIZATION_MODE))) {
                            builder.set((CaptureRequest.Key<CaptureRequest.Key>) CaptureRequest.CONTROL_VIDEO_STABILIZATION_MODE, (CaptureRequest.Key) 1);
                            return;
                        } else {
                            builder.set((CaptureRequest.Key<CaptureRequest.Key>) CaptureRequest.CONTROL_VIDEO_STABILIZATION_MODE, (CaptureRequest.Key) 0);
                            return;
                        }
                    }
                    builder.set((CaptureRequest.Key<CaptureRequest.Key>) CaptureRequest.CONTROL_VIDEO_STABILIZATION_MODE, (CaptureRequest.Key) 0);
                    return;
                }
                return;
            case 1:
                CameraDeviceInfoInterface cameraDeviceInfo = getCameraDeviceInfo(str2);
                if (!builder.containsKey(PreviewParameter.KEY_FOCUS_MODE) && cameraDeviceInfo.isSupportPreviewParameter(PreviewParameter.KEY_FOCUS_MODE.getName())) {
                    builder.set((Parameter.Key<Parameter.Key<Integer>>) PreviewParameter.KEY_FOCUS_MODE, (Parameter.Key<Integer>) 2);
                }
                if (cameraRequestTag != null) {
                    if (builder.containCustomKey(PreviewParameter.KEY_TILT_SHIFT_ENABLE)) {
                        cameraRequestTag.mbTiltShiftOpen = ((Boolean) builder.get(PreviewParameter.KEY_TILT_SHIFT_ENABLE)).booleanValue();
                    }
                    cameraRequestTag.mbVideoBlurOpen = "on".equals(builder.get(PreviewParameter.KEY_VIDEO_BLUR_ENABLE));
                    cameraRequestTag.mbVideoNeonOpen = "on".equals(builder.get(PreviewParameter.KEY_VIDEO_NEON_ENABLE));
                }
                if (this.mConfigFpsRange != null) {
                    builder.set((CaptureRequest.Key<CaptureRequest.Key>) CaptureRequest.CONTROL_AE_TARGET_FPS_RANGE, (CaptureRequest.Key) this.mConfigFpsRange);
                }
                if (builder.containCustomKey(PreviewParameter.KEY_FACE_MAKEUP_TYPE) && builder.containCustomKey(PreviewParameter.KEY_FACE_MAKEUP_VALUE)) {
                    cameraRequestTag.mMakeupType = (String) builder.get(PreviewParameter.KEY_FACE_MAKEUP_TYPE);
                    cameraRequestTag.mMakeupValue = ((Integer) builder.get(PreviewParameter.KEY_FACE_MAKEUP_VALUE)).intValue();
                    return;
                }
                return;
            case 2:
                setVideoWaterMarkParams(builder, str2, cameraRequestTag);
                setVideoRecordingState(builder, str2, 1);
                return;
            case 3:
                setVideoRecordingState(builder, str2, 0);
                return;
            case 4:
                updateCaptureRequestTag(builder, cameraRequestTag);
                return;
            default:
                return;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.oplus.ocs.camera.producer.mode.BaseMode
    public CameraDeviceInfoInterface createCameraDeviceInfo(String str) {
        CameraDeviceInfoImpl cameraDeviceInfoImpl = (CameraDeviceInfoImpl) super.createCameraDeviceInfo(str);
        CameraUnitLog.d(TAG, "createCameraDeviceInfo, cameraType: " + str);
        if (TextUtils.equals(str, "rear_main") || TextUtils.equals(str, "rear_wide") || TextUtils.equals(str, "rear_sat")) {
            cameraDeviceInfoImpl.setConfigureParameterRangeMap(cameraDeviceInfoImpl.getConfigureParameterRangeMap());
        }
        cameraDeviceInfoImpl.getPreviewParameterRangeMap().put(PreviewParameter.KEY_ZOOM_RATIO.getName(), new ZoomHelper(str).getZoomRatioList(false, "rear_sat".equals(str), false));
        return cameraDeviceInfoImpl;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.oplus.ocs.camera.producer.mode.BaseMode
    public void updateAllParameterRanges(CameraDeviceInfoImpl cameraDeviceInfoImpl, String str) {
        super.updateAllParameterRanges(cameraDeviceInfoImpl, str);
        ArrayList arrayList = new ArrayList();
        Range[] rangeArr = (Range[]) cameraDeviceInfoImpl.get(CameraCharacteristics.CONTROL_AE_AVAILABLE_TARGET_FPS_RANGES);
        if (rangeArr != null && "video_mode".equals(getModeName())) {
            arrayList.addAll(Arrays.asList(rangeArr));
        }
        List<String> list = (List) cameraDeviceInfoImpl.getConfigureParameterRange(ConfigureParameter.VIDEO_FPS.getName());
        if (list != null) {
            for (String str2 : list) {
                int parseInt = Integer.parseInt(str2.substring(6, str2.length() - 3));
                Range range = new Range(Integer.valueOf(parseInt), Integer.valueOf(parseInt));
                if (!arrayList.contains(range)) {
                    arrayList.add(range);
                }
            }
        }
        cameraDeviceInfoImpl.getConfigureParameterRangeMap().put(ConfigureParameter.VIDEO_DYNAMIC_FPS.getName(), arrayList);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.oplus.ocs.camera.producer.mode.BaseMode
    public boolean checkPreviewResult(CameraRequestTag cameraRequestTag) {
        ApsRequestTag apsRequestTag = this.mTagMap.get(cameraRequestTag.mCameraType);
        if (apsRequestTag == null || apsRequestTag.mbPreviewProcessByAps) {
            return super.checkPreviewResult(cameraRequestTag);
        }
        return true;
    }

    @Override // com.oplus.ocs.camera.producer.mode.BaseMode, com.oplus.ocs.camera.producer.mode.ModeInterface
    public CameraRequestTag createRequestTag(String str, Object obj, Handler handler, String str2, PreviewParameter.Builder builder) {
        ApsRequestTag apsRequestTag;
        if (Parameter.ParameterStage.BEFORE_TAKE_PICTURE.equals(str2) && (apsRequestTag = this.mTagMap.get(str)) != null && !apsRequestTag.mbPreviewProcessByAps) {
            this.mPreviewResult = getDefaultPreviewResult();
        }
        CameraRequestTag createRequestTag = super.createRequestTag(str, obj, handler, str2, builder);
        Parameter configureParameter = getConfigureParameter(str);
        String str3 = (String) getConfigureParameter(str).get(ConfigureParameter.VIDEO_STABILIZATION_MODE);
        CameraUnitLog.v(TAG, "createRequestTag, value: " + str3);
        createRequestTag.mbSuperEisOn = TextUtils.equals("super_stabilization", str3);
        boolean z = true;
        createRequestTag.mbVideoCapture = true;
        createRequestTag.mbAntibandingEnable = "on".equals(configureParameter.get(ConfigureParameter.ANTI_BANDING_ENABLE));
        createRequestTag.mbVideoWaterMarkEnable = "on".equals(configureParameter.get(ConfigureParameter.KEY_WATERMARK_VIDEO_ENABLE));
        createRequestTag.mbNormalVideoHFR = "video_120fps".equals(configureParameter.get(ConfigureParameter.VIDEO_FPS));
        createRequestTag.mbRearMirrorEnable = builder.get(PreviewParameter.KEY_REAR_MIRROR_ENABLE) != null && ((Boolean) builder.get(PreviewParameter.KEY_REAR_MIRROR_ENABLE)).booleanValue();
        if (builder.get(PreviewParameter.KEY_PICTURE_VISUALIZATION_ENABLE) == null || !"on".equals(builder.get(PreviewParameter.KEY_PICTURE_VISUALIZATION_ENABLE))) {
            z = false;
        }
        createRequestTag.mbPictureVisualizationEnable = z;
        if (CameraCharacteristicsHelper.isFrontCamera(createRequestTag.mCameraId) || createRequestTag.mbRearMirrorEnable) {
            createRequestTag.mbMirrorEnable = "on".equals(configureParameter.get(ConfigureParameter.MIRROR_ENABLE));
        }
        return createRequestTag;
    }

    @Override // com.oplus.ocs.camera.producer.mode.BaseMode, com.oplus.ocs.camera.producer.mode.ModeInterface
    public void unInit() {
        super.unInit();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.oplus.ocs.camera.producer.mode.BaseMode
    public String getFeatureName(String str) {
        String str2 = (String) getConfigureParameter(str).get(ConfigureParameter.VIDEO_STABILIZATION_MODE);
        CameraUnitLog.i(TAG, "getFeatureName, cameraType: " + str + ", stabilizationValue: " + str2);
        if ("super_stabilization".equals(str2)) {
            return "super_stabilization";
        }
        Integer num = (Integer) getConfigureParameter(str).get(ConfigureParameter.AI_NIGHT_VIDEO_MODE);
        CameraUnitLog.i(TAG, "getFeatureName, cameraType: " + str + ", aiNightValue: " + num);
        if (num != null && 1 == num.intValue()) {
            StatisticsManager.getInstance().setAiEnhance(true);
            return String.valueOf(num);
        }
        StatisticsManager.getInstance().setAiEnhance(false);
        if (CameraConstant.NightVideo.ULTRA_NIGHT_VIDEO.equals((String) getConfigureParameter(str).get(ConfigureParameter.VIDEO_NIGHT_MODE))) {
            return CameraConstant.NightVideo.ULTRA_NIGHT_VIDEO;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static void prepareVideoSurface(SdkCameraDeviceConfig sdkCameraDeviceConfig, Size size, Surface surface) {
        CameraUnitLog.d(TAG, "prepareVideo, size: " + size);
        MediaRecorder mediaRecorder = new MediaRecorder();
        mediaRecorder.setInputSurface(surface);
        mediaRecorder.setVideoSource(2);
        mediaRecorder.setOutputFormat(2);
        mediaRecorder.setVideoSize(size.getWidth(), size.getHeight());
        Parameter configureParameter = sdkCameraDeviceConfig.getConfigureParameter();
        if ("H265".equals(configureParameter.get(ConfigureParameter.VIDEO_ENCODER))) {
            mediaRecorder.setVideoEncoder(5);
            if ("on".equals(configureParameter.get(ConfigureParameter.VIDEO_10BIT_ENABLE))) {
                mediaRecorder.setVideoEncodingProfileLevel(2, OplusExifTag.EXIF_TAG_AI_ID_PHOTO);
            }
        } else {
            mediaRecorder.setVideoEncoder(2);
            mediaRecorder.setVideoEncodingProfileLevel(8, 2048);
        }
        if (configureParameter.get(ConfigureParameter.VIDEO_BITRATE) != null) {
            mediaRecorder.setVideoEncodingBitRate(((Integer) configureParameter.get(ConfigureParameter.VIDEO_BITRATE)).intValue());
        }
        try {
            try {
                File createTempFile = File.createTempFile("VideoSurface", "TempMediaRecorder");
                mediaRecorder.setOutputFile(createTempFile.getAbsolutePath());
                mediaRecorder.prepare();
                createTempFile.delete();
            } catch (IOException e) {
                CameraUnitLog.e(TAG, "prepareVideoSurface", e);
            }
            mediaRecorder.reset();
            mediaRecorder.release();
            CameraUnitLog.d(TAG, "prepareVideo X");
        } catch (Throwable th) {
            mediaRecorder.reset();
            mediaRecorder.release();
            throw th;
        }
    }

    private static void setVideoRecordingState(PreviewParameter.Builder builder, String str, int i) {
        if (Util.isQcomPlatform()) {
            builder.set((Parameter.Key<Parameter.Key<Integer>>) ConfigureParameter.KEY_VIDEO_EIS_RECORD_STATE, (Parameter.Key<Integer>) Integer.valueOf(i));
            builder.set((Parameter.Key<Parameter.Key<Integer>>) PreviewParameter.KEY_VIDEO_EIS_RECORD_STATE, (Parameter.Key<Integer>) Integer.valueOf(i));
        } else if ("front_main".equals(str)) {
        } else {
            builder.set((Parameter.Key<Parameter.Key<Integer>>) PreviewParameter.KEY_VIDEO_EIS_RECORD_STATE, (Parameter.Key<Integer>) Integer.valueOf(i));
        }
    }

    private void updateCaptureRequestTag(PreviewParameter.Builder builder, CameraRequestTag cameraRequestTag) {
        Bundle bundle;
        if (builder.containCustomKey(PreviewParameter.KEY_FILTER_TYPE)) {
            cameraRequestTag.mFilterType = (String) builder.get(PreviewParameter.KEY_FILTER_TYPE);
            cameraRequestTag.mbFilterOpen = ((Boolean) builder.get(PreviewParameter.KEY_FILTER_OPEN)).booleanValue();
            cameraRequestTag.mbFilterVignette = ((Boolean) builder.get(PreviewParameter.KEY_FILTER_WITHVIGNETTE)).booleanValue();
            cameraRequestTag.mbVideoRetentionOpen = "on".equals(builder.get(PreviewParameter.KEY_VIDEO_RETENTION_OPEN));
        }
        if (builder.containCustomKey(PreviewParameter.KEY_FACE_BEAUTY_ENABLE)) {
            cameraRequestTag.mbFaceBeautyOpen = "on".equals(builder.get(PreviewParameter.KEY_FACE_BEAUTY_ENABLE));
            cameraRequestTag.mFaceBeautyVersion = (String) builder.get(PreviewParameter.KEY_FACE_BEAUTY_VERSION);
            cameraRequestTag.mFaceBeautyParam = (int[]) builder.get(PreviewParameter.KEY_FACE_BEAUTY_PARAM);
        }
        if (builder.containCustomKey(PreviewParameter.KEY_FACE_MAKEUP_TYPE)) {
            cameraRequestTag.mMakeupType = (String) builder.get(PreviewParameter.KEY_FACE_MAKEUP_TYPE);
            cameraRequestTag.mMakeupValue = ((Integer) builder.get(PreviewParameter.KEY_FACE_MAKEUP_VALUE)).intValue();
        }
        if (builder.containCustomKey(PreviewParameter.KEY_FACE_DERED_EYE_ENABLE)) {
            cameraRequestTag.mbDeRedEye = "on".equals(builder.get(PreviewParameter.KEY_FACE_DERED_EYE_ENABLE));
        }
        if ("on".equals(builder.get(PreviewParameter.KEY_VIDEO_BLUR_ENABLE))) {
            cameraRequestTag.mbVideoBlurOpen = true;
            cameraRequestTag.mVideoBlurParams = (String) builder.get(PreviewParameter.KEY_VIDEO_BLUR_PARAMS);
            Bundle bundle2 = (Bundle) builder.get(PreviewParameter.KEY_VIDEO_EFFECT_PARAM);
            if (bundle2 != null) {
                cameraRequestTag.mBlurIndex = bundle2.getInt("blur_level", 0);
                cameraRequestTag.mOrientation = bundle2.getInt("orientation", 0);
                cameraRequestTag.mBlurShow = bundle2.getFloat("blur_show", 0.0f);
            }
        } else if ("on".equals(builder.get(PreviewParameter.KEY_VIDEO_NEON_ENABLE))) {
            cameraRequestTag.mbVideoNeonOpen = true;
            cameraRequestTag.mVideoFusionEffect = ((Integer) builder.get(PreviewParameter.KEY_VIDEO_FUSION_EFFECT)).intValue();
            cameraRequestTag.mVideoNeonParams = (String) builder.get(PreviewParameter.KEY_VIDEO_NEON_PARAMS);
            Bundle bundle3 = (Bundle) builder.get(PreviewParameter.KEY_VIDEO_EFFECT_PARAM);
            if (bundle3 != null) {
                cameraRequestTag.mOrientation = bundle3.getInt("orientation", 0);
            }
        } else if ("on".equals(builder.get(PreviewParameter.KEY_VIDEO_RETENTION_OPEN)) && (bundle = (Bundle) builder.get(PreviewParameter.KEY_VIDEO_EFFECT_PARAM)) != null) {
            cameraRequestTag.mbVideoRetentionEffectProcessed = bundle.getBoolean("retention_process", false);
            cameraRequestTag.mOrientation = bundle.getInt("orientation", 0);
        }
        cameraRequestTag.mbPhotoWaterMarkEnable = cameraRequestTag.mbVideoWaterMarkEnable;
        if (cameraRequestTag.mbPhotoWaterMarkEnable && builder.containCustomKey(PreviewParameter.KEY_WATERMARK_PARAM)) {
            fillWatermarkParam(cameraRequestTag, (Bundle) builder.get(PreviewParameter.KEY_WATERMARK_PARAM));
        }
    }

    @Override // com.oplus.ocs.camera.producer.mode.BaseMode
    public Pair<Size, Size> getSurfaceSize(SdkCameraDeviceConfig sdkCameraDeviceConfig, String str, String str2, String str3) {
        SurfaceWrapper videoSurface = sdkCameraDeviceConfig.getVideoSurface();
        return new Pair<>(videoSurface.getAppSurfaceSize(), videoSurface.getHalSurfaceSize());
    }

    @Override // com.oplus.ocs.camera.producer.mode.BaseMode
    public String getSurfaceUseCase(String str) {
        Parameter configureParameter = getConfigureParameter(str);
        String str2 = (String) configureParameter.get(ConfigureParameter.VIDEO_STABILIZATION_MODE);
        boolean equals = TextUtils.equals("super_stabilization", str2);
        if (!isVideoSnapShotByAps(str) || isForceSnapShotByAps(str) || isSuperEisSnapShotByHal(equals)) {
            return "on".equals(configureParameter.get(ConfigureParameter.KEY_WATERMARK_VIDEO_ENABLE)) ? "video_frame_snapshot_case" : "video_recorder_snapshot_case";
        } else if ("on".equals(configureParameter.get(ConfigureParameter.KEY_WATERMARK_VIDEO_ENABLE))) {
            return CameraConstant.UseCase.WATERMARK_VIDEO;
        } else {
            CameraUnitLog.d(TAG, "selectUseCase, value: " + str2);
            return (equals && ((Boolean) CameraAdapterUtils.getConfigValue(CameraConfigBase.KEY_APS_SUPPORT_VIDEO_SUPER_EIS, true)).booleanValue()) ? "eis_pro_case" : "recorder_video_case";
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.oplus.ocs.camera.producer.mode.BaseMode
    public boolean needAddToTarget(String str, String str2, @NonNull SurfaceKey surfaceKey, PreviewParameter.Builder builder) {
        if (Parameter.ParameterStage.BEFORE_TAKE_PICTURE.equals(str2) && !isVideoSnapShotByAps(str) && CameraSessionEntity.SurfaceUsage.RECORDING.equals(surfaceKey.getUsage())) {
            return true;
        }
        return super.needAddToTarget(str, str2, surfaceKey, builder);
    }

    private void thirdPartyApp(Parameter parameter, PreviewParameter.Builder builder, String str) {
        Range<Integer> range;
        if (!"super_stabilization".equals((String) parameter.get(ConfigureParameter.VIDEO_STABILIZATION_MODE)) || (range = (Range) CameraConfigHelper.getConfigValue(CameraConfigBase.KEY_THIRD_PARTY_SUPER_STABILIZATION_FPS, null)) == null) {
            return;
        }
        CameraUnitLog.d(TAG, "thirdPartyApp, override super_stabilization fps range to: " + range);
        this.mConfigFpsRange = range;
        builder.set((CaptureRequest.Key<CaptureRequest.Key>) CaptureRequest.CONTROL_AE_TARGET_FPS_RANGE, (CaptureRequest.Key) range);
    }

    public void updateFpsRange(Parameter parameter, PreviewParameter.Builder builder, String str) {
        Integer num;
        if (((Boolean) CameraConfigHelper.getConfigValue(CameraConfigBase.KEY_SUPPORT_VIDEO_DYNAMIC_FPS_RANGE, true)).booleanValue() && parameter != null && parameter.containCustomKey(ConfigureParameter.VIDEO_DYNAMIC_FPS)) {
            Range range = (Range) parameter.get(ConfigureParameter.VIDEO_DYNAMIC_FPS);
            this.mConfigFpsRange = new Range<>(Integer.valueOf(((Integer) range.getLower()).intValue()), Integer.valueOf(((Integer) range.getUpper()).intValue()));
            CameraUnitLog.d(TAG, "updateFpsRange, set fps range by VIDEO_DYNAMIC_FPS, value: " + this.mConfigFpsRange);
        } else {
            updateCurrentFps(str);
            this.mConfigFpsRange = new Range<>(Integer.valueOf(this.mCurrentFps), Integer.valueOf(this.mCurrentFps));
        }
        if (!Util.isQcomPlatform() && (num = (Integer) parameter.get(ConfigureParameter.AI_NIGHT_VIDEO_MODE)) != null && 1 == num.intValue()) {
            CameraUnitLog.d(TAG, "updateFpsRange, aiNightVideoMode is on, will set fps range 20 ~30");
            this.mConfigFpsRange = new Range<>(20, 30);
        }
        CameraUnitLog.d(TAG, "updateFpsRange, set CONTROL_AE_TARGET_FPS_RANGE fps range to: " + this.mConfigFpsRange);
        builder.set((CaptureRequest.Key<CaptureRequest.Key>) CaptureRequest.CONTROL_AE_TARGET_FPS_RANGE, (CaptureRequest.Key) this.mConfigFpsRange);
    }

    @Override // com.oplus.ocs.camera.producer.mode.BaseMode, com.oplus.ocs.camera.producer.mode.ModeInterface
    public void updateStageParameter(@NonNull Parameter parameter, String str, String str2, @Nullable CameraRequestTag cameraRequestTag) {
        super.updateStageParameter(parameter, str, str2, cameraRequestTag);
        if (Parameter.ParameterStage.STOP_RECORDING.equals(str) && isEndOfStreamNeeded(parameter, str2)) {
            parameter.set((Parameter.Key<Parameter.Key<byte[]>>) PreviewParameter.KEY_END_OF_STREAM, (Parameter.Key<byte[]>) new byte[]{1});
        }
    }

    protected boolean isEndOfStreamNeeded(Parameter parameter, String str) {
        Boolean bool = (Boolean) CameraConfigHelper.getConfigValue(CameraConfigBase.KEY_SUPPORT_END_VIDEO_EIS_STREAM, true);
        Boolean bool2 = (Boolean) CameraConfigHelper.getConfigValue(CameraConfigBase.KEY_SAT_SUPPORT_PRE_VERSION, false);
        String str2 = (String) parameter.get(ConfigureParameter.VIDEO_STABILIZATION_MODE);
        String str3 = (String) parameter.get(ConfigureParameter.VIDEO_FPS);
        if (!"super_stabilization".equals(str2) || bool.booleanValue()) {
            if (!(bool2.booleanValue() && !"super_stabilization".equals(str2) && (VIDEO_4K_FRAME_WIDTH == this.mTargetVideoSize.getWidth() || "video_60fps".equals(str3) || (this.mConfigFpsRange != null && 60 == this.mConfigFpsRange.getUpper().intValue()))) && Util.isQcomPlatform()) {
                byte[] bArr = (byte[]) CameraCharacteristicsHelper.getCameraCharacteristicsWrapper(str).get(CameraCharacteristicsWrapper.KEY_EIS_END_OF_STREAM);
                CameraUnitLog.d(TAG, "isEndOfStreamNeeded, endOfStreamValue: " + Arrays.toString(bArr));
                return bArr != null && bArr.length > 0;
            }
            return false;
        }
        return false;
    }

    private boolean isForceSnapShotByAps(String str) {
        SdkCameraDeviceConfig sdkCameraDeviceConfig = this.mConfigMap.get(str);
        if (sdkCameraDeviceConfig == null || sdkCameraDeviceConfig.getVideoSurface() == null) {
            return false;
        }
        Size appSurfaceSize = sdkCameraDeviceConfig.getVideoSurface().getAppSurfaceSize();
        String str2 = (String) sdkCameraDeviceConfig.getConfigureParameter().get(ConfigureParameter.VIDEO_FPS);
        if (VIDEO_8K_FRAME_WIDTH == appSurfaceSize.getWidth() && VIDEO_8K_FRAME_HEIGHT == appSurfaceSize.getHeight()) {
            return true;
        }
        return ((Boolean) CameraAdapterUtils.getConfigValue(CameraConfigBase.KEY_FORCE_4k_VIDEO_SNAPSHOT_BY_APS, false)).booleanValue() && VIDEO_4K_FRAME_WIDTH == appSurfaceSize.getWidth() && VIDEO_4K_FRAME_HEIGHT == appSurfaceSize.getHeight() && !"video_120fps".equals(str2);
    }

    private boolean isVideoSnapShotByHal(String str) {
        return 2 == AlgoSwitchConfig.getApsVersion() || is4kOr8k(str) || isVideo10BitOpen(str);
    }

    private boolean isSuperEisSnapShotByHal(boolean z) {
        return z && ((Boolean) CameraAdapterUtils.getConfigValue(CameraConfigBase.KEY_SUPPORT_VIDEO_SUPER_EIS_PROCESS_ONLY_WIDE, false)).booleanValue();
    }

    protected boolean is4K(String str) {
        Size appSurfaceSize = this.mConfigMap.get(str).getVideoSurface().getAppSurfaceSize();
        return VIDEO_4K_FRAME_WIDTH == appSurfaceSize.getWidth() && VIDEO_4K_FRAME_HEIGHT == appSurfaceSize.getHeight();
    }

    protected boolean is4kOr8k(String str) {
        SdkCameraDeviceConfig sdkCameraDeviceConfig = this.mConfigMap.get(str);
        Size appSurfaceSize = sdkCameraDeviceConfig.getVideoSurface().getAppSurfaceSize();
        return (VIDEO_4K_FRAME_WIDTH == appSurfaceSize.getWidth() && VIDEO_4K_FRAME_HEIGHT == appSurfaceSize.getHeight() && !"video_120fps".equals((String) sdkCameraDeviceConfig.getConfigureParameter().get(ConfigureParameter.VIDEO_FPS))) || (VIDEO_8K_FRAME_WIDTH == appSurfaceSize.getWidth() && VIDEO_8K_FRAME_HEIGHT == appSurfaceSize.getHeight());
    }

    protected boolean is8k30fps(String str) {
        SdkCameraDeviceConfig sdkCameraDeviceConfig = this.mConfigMap.get(str);
        Size appSurfaceSize = sdkCameraDeviceConfig.getVideoSurface().getAppSurfaceSize();
        return VIDEO_8K_FRAME_WIDTH == appSurfaceSize.getWidth() && VIDEO_8K_FRAME_HEIGHT == appSurfaceSize.getHeight() && "video_30fps".equals((String) sdkCameraDeviceConfig.getConfigureParameter().get(ConfigureParameter.VIDEO_FPS));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean isVideo10BitOpen(String str) {
        return "on".equals(getConfigureParameter(str).get(ConfigureParameter.VIDEO_10BIT_ENABLE));
    }

    @Override // com.oplus.ocs.camera.producer.mode.BaseMode, com.oplus.ocs.camera.producer.mode.ModeInterface
    public boolean isVideoSnapShotByAps(String str) {
        return !isVideoSnapShotByHal(str) || isForceSnapShotByAps(str);
    }

    private boolean isRearSuperEisOpen(String str) {
        return !CameraCharacteristicsHelper.isFrontCamera(CameraCharacteristicsHelper.getCameraIdType(str).getCameraId()) && TextUtils.equals("super_stabilization", (String) getConfigureParameter(str).get(ConfigureParameter.VIDEO_STABILIZATION_MODE));
    }

    private boolean isSuperEisByAps(String str) {
        return isRearSuperEisOpen(str) && ((Boolean) CameraAdapterUtils.getConfigValue(CameraConfigBase.KEY_APS_SUPPORT_VIDEO_SUPER_EIS, true)).booleanValue();
    }

    @Override // com.oplus.ocs.camera.producer.mode.BaseMode
    protected int getImageReaderMaxImages(String str) {
        return isSuperEisByAps(str) ? 40 : 20;
    }

    @Override // com.oplus.ocs.camera.producer.mode.BaseMode
    protected Long getVideoFrameReaderUsage(String str) {
        if (isSuperEisByAps(str)) {
            return 131L;
        }
        return 128L;
    }

    @Override // com.oplus.ocs.camera.producer.mode.BaseMode
    protected boolean isExplorerOpen(String str, SdkCameraDeviceConfig sdkCameraDeviceConfig) {
        updateCurrentFps(str);
        Parameter configureParameter = sdkCameraDeviceConfig.getConfigureParameter();
        boolean equals = TextUtils.equals("on", (CharSequence) configureParameter.get(ConfigureParameter.KEY_VIDEO_BLUR));
        boolean z = configureParameter.containCustomKey(ConfigureParameter.AI_NIGHT_VIDEO_MODE) && 1 == ((Integer) configureParameter.get(ConfigureParameter.AI_NIGHT_VIDEO_MODE)).intValue();
        boolean equals2 = TextUtils.equals("super_stabilization_front", (CharSequence) configureParameter.get(ConfigureParameter.VIDEO_STABILIZATION_MODE));
        if (30 == this.mCurrentFps) {
            return "front_main".equals(str) ? (equals || equals2) ? false : true : z;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void updateCurrentFps(String str) {
        Parameter configureParameter = getConfigureParameter(str);
        if (configureParameter == null || !configureParameter.containCustomKey(ConfigureParameter.VIDEO_FPS)) {
            return;
        }
        String str2 = (String) configureParameter.get(ConfigureParameter.VIDEO_FPS);
        char c = 65535;
        switch (str2.hashCode()) {
            case -1947769698:
                if (str2.equals("video_120fps")) {
                    c = 2;
                    break;
                }
                break;
            case -1917293505:
                if (str2.equals("video_240fps")) {
                    c = 3;
                    break;
                }
                break;
            case -1856341119:
                if (str2.equals("video_480fps")) {
                    c = 4;
                    break;
                }
                break;
            case -1715042406:
                if (str2.equals("video_960fps")) {
                    c = 5;
                    break;
                }
                break;
            case 1324481704:
                if (str2.equals("video_30fps")) {
                    c = 0;
                    break;
                }
                break;
            case 1327252267:
                if (str2.equals("video_60fps")) {
                    c = 1;
                    break;
                }
                break;
        }
        switch (c) {
            case 0:
                this.mCurrentFps = 30;
                return;
            case 1:
                this.mCurrentFps = 60;
                return;
            case 2:
                this.mCurrentFps = 120;
                return;
            case 3:
                this.mCurrentFps = 240;
                return;
            case 4:
                this.mCurrentFps = 480;
                return;
            case 5:
                this.mCurrentFps = 960;
                return;
            default:
                return;
        }
    }

    private CameraPreviewCallbackAdapter.PreviewResult getDefaultPreviewResult() {
        if (this.mDefaultPreviewResult == null) {
            ApsAdapterDecision.DecisionResult decisionResult = new ApsAdapterDecision.DecisionResult();
            decisionResult.mApsAlgoFlag = new String[]{ApsParameters.ALGO_NAME_NONE};
            decisionResult.mCaptureETList = new long[]{0};
            decisionResult.mCaptureEVList = new int[]{0};
            decisionResult.mSensorMask = new int[]{0, 0, 0};
            this.mDefaultPreviewResult = new CameraPreviewCallbackAdapter.PreviewResult.Builder().setApsDecisionResult(new ApsAdapterDecision.DecisionResult()).build();
        }
        return this.mDefaultPreviewResult;
    }

    protected boolean isPreviewProcessByAps(Parameter parameter, String str) {
        if (!Util.isSystemCamera() || ((Boolean) CameraAdapterUtils.getConfigValue(CameraConfigBase.KEY_HIGH_FPS_VIDEO_PREVIEW_PROCESS_BY_APS, true)).booleanValue() || parameter == null || TextUtils.equals("on", (CharSequence) parameter.get(ConfigureParameter.KEY_WATERMARK_VIDEO_ENABLE)) || TextUtils.equals("super_stabilization", (CharSequence) parameter.get(ConfigureParameter.VIDEO_STABILIZATION_MODE)) || TextUtils.equals("super_stabilization_front", (CharSequence) parameter.get(ConfigureParameter.VIDEO_STABILIZATION_MODE))) {
            return true;
        }
        String str2 = (String) parameter.get(ConfigureParameter.VIDEO_FPS);
        return (TextUtils.equals("video_60fps", str2) || TextUtils.equals("video_120fps", str2) || (!is4K(str) && !((Boolean) CameraAdapterUtils.getConfigValue(CameraConfigBase.KEY_LOW_FPS_VIDEO_PREVIEW_PROCESS_BY_APS, true)).booleanValue())) ? false : true;
    }
}

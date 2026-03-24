package com.oplus.ocs.camera.producer.mode;

import android.hardware.camera2.CaptureRequest;
import android.os.Bundle;
import android.os.Handler;
import android.util.Pair;
import android.util.Size;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.oplus.ocs.camera.appinterface.CameraDeviceInfoInterface;
import com.oplus.ocs.camera.appinterface.CameraPictureCallbackAdapter;
import com.oplus.ocs.camera.appinterface.CameraPreviewCallbackAdapter;
import com.oplus.ocs.camera.common.parameter.ConfigureParameter;
import com.oplus.ocs.camera.common.parameter.Parameter;
import com.oplus.ocs.camera.common.parameter.PreviewParameter;
import com.oplus.ocs.camera.common.parameter.SdkCameraDeviceConfig;
import com.oplus.ocs.camera.common.parameter.apsadapter.ApsDecisionParameter;
import com.oplus.ocs.camera.common.parameter.apsadapter.ApsOtherParameter;
import com.oplus.ocs.camera.common.parameter.apsadapter.ApsTotalResultParameter;
import com.oplus.ocs.camera.common.statistics.StatisticConstant;
import com.oplus.ocs.camera.common.statistics.StatisticsManager;
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
import com.oplus.ocs.camera.consumer.ApsDataConvert;
import com.oplus.ocs.camera.consumer.apsAdapter.adapter.ApsAdapterDecision;
import com.oplus.ocs.camera.consumer.apsAdapter.adapter.DefaultUtill;
import com.oplus.ocs.camera.consumer.apsAdapter.config.AlgoSwitchConfig;
import com.oplus.ocs.camera.producer.device.CameraSessionEntity;
import com.oplus.ocs.camera.producer.info.CameraCharacteristicsHelper;
import com.oplus.ocs.camera.producer.info.CameraConfigHelper;
import com.oplus.ocs.camera.producer.info.CameraDeviceInfoImpl;
import java.util.Arrays;
import java.util.HashSet;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class PhotoMode extends BaseMode {
    private static final int ALL_AI_SCENE_DISABLE_VALUE = 0;
    private static final int ALL_AI_SCENE_ENABLE_VALUE = 67108863;
    private static final int DISABLE = 0;
    private static final int ENABLE = 1;
    private static final int QUICK_VIDEO_EIS_ANIMATION_DONE = 1;
    private static final String[] SELECTED_ALGOS_FOR_TIMESTAMP_MATCH = {ParameterKeys.PREVIEW_ALGO_NAME_SAT};
    private static final String TAG = "PhotoMode";
    private ApsAdapterDecision.DecisionResult mCurrentDecisionResult = null;
    private boolean mbQuickVideoRecording = false;
    private boolean mbSupportVideoSnapShot = false;
    private boolean mbVideoEisOn = false;
    private int mAsdMovingObjectPrev = 0;
    private int mZoomFeaturePrev = 0;
    private int mSensorMode = -1;
    private Object mVideoEisOnLock = new Object();
    private boolean mbIsFrontMFNRSizeSupported = true;
    private boolean mbPreviewInPreview = false;

    @Override // com.oplus.ocs.camera.producer.mode.BaseMode
    protected String getModeName() {
        return "photo_mode";
    }

    @Override // com.oplus.ocs.camera.producer.mode.BaseMode
    protected boolean isExplorerOpen(String str) {
        return true;
    }

    @Override // com.oplus.ocs.camera.producer.mode.BaseMode, com.oplus.ocs.camera.producer.mode.ModeInterface
    public boolean isVideoSnapShotByAps(String str) {
        return true;
    }

    @Override // com.oplus.ocs.camera.producer.mode.BaseMode
    protected void onConfigure(CameraSessionEntity cameraSessionEntity, SdkCameraDeviceConfig sdkCameraDeviceConfig, String str, @NonNull ApsRequestTag apsRequestTag) {
        cameraSessionEntity.setTemplate(1);
        if ("rear_main".equals(str) || "rear_wide".equals(str) || "rear_tele".equals(str)) {
            if (CameraCharacteristicsHelper.getCameraIdType("rear_sat") == null && CameraConfigHelper.getUseCaseValues("standard_photo_case") != null) {
                apsRequestTag.mModeName = "photo_mode";
            } else if ("rear_wide".equals(str) && !Util.isSystemCamera()) {
                apsRequestTag.mModeName = "professional_mode";
                cameraSessionEntity.setOperationMode("8009");
            } else {
                apsRequestTag.mModeName = "photo_mode";
                if (!Util.isSystemCamera()) {
                    cameraSessionEntity.setOperationMode(String.valueOf(0));
                }
            }
        } else if ("rear_sat".equals(str) || Util.isSystemCamera()) {
            apsRequestTag.mModeName = "photo_mode";
        } else {
            apsRequestTag.mModeName = "basic_capture_mode";
        }
        apsRequestTag.mbHighPictureSizeEnable = "on".equals(sdkCameraDeviceConfig.getConfigureParameter().get(ConfigureParameter.HIGH_PICTURE_SIZE_ENABLE));
        apsRequestTag.mbPhoto10BitsEnable = "on".equals(sdkCameraDeviceConfig.getConfigureParameter().get(ConfigureParameter.PHOTO_10BIT_ENABLE));
        this.mbIsFrontMFNRSizeSupported = true;
        this.mbQuickVideoRecording = false;
        if ("front_main".equals(str) && CameraConfigHelper.getConfigValue(CameraConfigBase.KEY_FRONT_MFNR_PICTURE_SIZE, null) != null) {
            List<SurfaceWrapper> pictureSurfaces = sdkCameraDeviceConfig.getPictureSurfaces();
            if (pictureSurfaces.size() > 0) {
                Size halSurfaceSize = pictureSurfaces.get(0).getHalSurfaceSize();
                Size sizeGeMaxSize = geMaxSize(CameraConfigBase.KEY_FRONT_MFNR_PICTURE_SIZE, ((double) halSurfaceSize.getWidth()) / ((double) halSurfaceSize.getHeight()));
                CameraUnitLog.v(TAG, "onConfigure, cameraType: " + str + ", pictureSize: " + halSurfaceSize + ", mfnrSize: " + sizeGeMaxSize);
                if (sizeGeMaxSize != null && halSurfaceSize.getHeight() <= sizeGeMaxSize.getHeight() && halSurfaceSize.getWidth() <= sizeGeMaxSize.getWidth()) {
                    this.mbIsFrontMFNRSizeSupported = false;
                }
            }
        }
        CameraUnitLog.d(TAG, "onConfigure, mModeName: " + apsRequestTag.mModeName);
    }

    @Override // com.oplus.ocs.camera.producer.mode.BaseMode
    public boolean useOplusCameraCase(String str) {
        if (this.mTagMap.get(str) != null) {
            return true;
        }
        return super.useOplusCameraCase(str);
    }

    @Override // com.oplus.ocs.camera.producer.mode.BaseMode
    protected boolean checkPreviewResult(CameraRequestTag cameraRequestTag) {
        ApsRequestTag apsRequestTag = this.mTagMap.get(cameraRequestTag.mCameraType);
        if (apsRequestTag == null || !"basic_capture_mode".equals(apsRequestTag.mModeName) || ((Integer) this.mPreviewResult.get(ApsDecisionParameter.KEY_PREVIEW_MULTI_FRAME_COUNT)).intValue() <= 0) {
            return super.checkPreviewResult(cameraRequestTag);
        }
        return true;
    }

    @Override // com.oplus.ocs.camera.producer.mode.BaseMode, com.oplus.ocs.camera.producer.mode.ModeInterface
    public CameraRequestTag createRequestTag(String str, Object obj, Handler handler, String str2, PreviewParameter.Builder builder) {
        CameraRequestTag cameraRequestTagCreateRequestTag = super.createRequestTag(str, obj, handler, str2, builder);
        boolean z = true;
        if (this.mbSupportVideoSnapShot) {
            cameraRequestTagCreateRequestTag.mbVideoCapture = true;
            cameraRequestTagCreateRequestTag.mbQuickVideo = true;
        }
        synchronized (this.mPreviewResultLock) {
            if (this.mPreviewResult != null && Parameter.ParameterStage.BEFORE_TAKE_PICTURE.equals(str2)) {
                cameraRequestTagCreateRequestTag.mbMirrorEnable = "on".equals(getConfigureParameter(str).get(ConfigureParameter.MIRROR_ENABLE));
                cameraRequestTagCreateRequestTag.mbAIShutter = ((Boolean) this.mPreviewResult.get(ApsDecisionParameter.KEY_PREVIEW_AI_SHUTTER)).booleanValue();
                cameraRequestTagCreateRequestTag.mbEeyEnhance = AlgoSwitchConfig.getSupportCaptureAlgo(cameraRequestTagCreateRequestTag.mCaptureMode, cameraRequestTagCreateRequestTag.mCameraId, ParameterKeys.ALGO_NAME_EYE_ENHANCE) && 1 == cameraRequestTagCreateRequestTag.mRearFrontCameraId && !cameraRequestTagCreateRequestTag.mbInThirdApp;
                if (Util.isHdrOn(this.mPreviewResult) && !cameraRequestTagCreateRequestTag.mbBurstShot) {
                    cameraRequestTagCreateRequestTag.mCaptureEvList = (int[]) this.mPreviewResult.get(ApsDecisionParameter.KEY_PREVIEW_CAPTURE_EV_LIST);
                    cameraRequestTagCreateRequestTag.mCaptureEtList = (long[]) this.mPreviewResult.get(ApsDecisionParameter.KEY_PREVIEW_CAPTURE_ET_LIST);
                }
                if (builder.get(PreviewParameter.KEY_ZOOM_RATIO) != null) {
                    cameraRequestTagCreateRequestTag.mZoomRatio = ((Float) builder.get(PreviewParameter.KEY_ZOOM_RATIO)).floatValue();
                }
                if (cameraRequestTagCreateRequestTag.mbBurstShot) {
                    int iIntValue = ((Integer) CameraConfigHelper.getConfigValue(CameraConfigBase.KEY_CSHOT_FIRST_REQUEST_NUM, 3)).intValue();
                    if (!CameraCharacteristicsHelper.isSupportCShot(cameraRequestTagCreateRequestTag.mCameraType)) {
                        iIntValue = 20;
                    }
                    cameraRequestTagCreateRequestTag.mRequestNum = iIntValue;
                }
                if (((Boolean) CameraConfigHelper.getConfigValue(CameraConfigBase.KEY_SE_NIGHT_SUPPORT, false)).booleanValue() && Util.getNightStateDecision(this.mPreviewResult) > 0 && !cameraRequestTagCreateRequestTag.mbBurstShot) {
                    cameraRequestTagCreateRequestTag.mbInNightProcess = true;
                }
                cameraRequestTagCreateRequestTag.mAISState = ((Integer) this.mPreviewResult.get(ApsDecisionParameter.KEY_PREVIEW_AIS_STATE)).intValue();
                cameraRequestTagCreateRequestTag.mAsdMovingObject = ((Integer) this.mPreviewResult.get(ApsDecisionParameter.KEY_PREVIEW_ASD_MOVING_OBJECT)).intValue();
                cameraRequestTagCreateRequestTag.mRequestSensorMode = ((Integer) this.mPreviewResult.get(ApsDecisionParameter.KEY_PREVIEW_SENSOR_MODE)).intValue();
                if (isApsAlgoHdr(cameraRequestTagCreateRequestTag) || isApsAlgoLowLightHdr(cameraRequestTagCreateRequestTag)) {
                    String str3 = (String) builder.get(PreviewParameter.KEY_HDR_MODE);
                    cameraRequestTagCreateRequestTag.mHdrMode = str3;
                    cameraRequestTagCreateRequestTag.mbHdrTrigger = "on".equals(str3) || ("auto".equals(str3) && Util.isHdrOn(this.mPreviewResult));
                }
                int[] iArr = (int[]) builder.get(PreviewParameter.KEY_TRIPOD_MODE);
                if (iArr == null || iArr.length <= 0 || 1 != iArr[0]) {
                    z = false;
                }
                cameraRequestTagCreateRequestTag.mbTripodEnable = z;
                if (builder.containCustomKey(PreviewParameter.KEY_NIGHT_SE_ENABLE)) {
                    cameraRequestTagCreateRequestTag.mNightSeEnable = ((Boolean) builder.get(PreviewParameter.KEY_NIGHT_SE_ENABLE)).booleanValue();
                }
            }
        }
        return cameraRequestTagCreateRequestTag;
    }

    private boolean isApsAlgoHdr(CameraRequestTag cameraRequestTag) {
        if (cameraRequestTag.mApsAlgoFlags != null) {
            for (String str : cameraRequestTag.mApsAlgoFlags) {
                if (ParameterKeys.ALGO_NAME_HDR.equals(str)) {
                    return true;
                }
            }
        }
        return false;
    }

    private boolean isApsAlgoLowLightHdr(CameraRequestTag cameraRequestTag) {
        if ("1".equals(CameraConfigHelper.getConfigValue(DefaultUtill.KEY_REAR_LOWLIGHT_HDR_SUPPORT)) && cameraRequestTag.mApsAlgoFlags != null) {
            for (String str : cameraRequestTag.mApsAlgoFlags) {
                if (ParameterKeys.ALGO_NAME_LOWLIGHT_HDR.equals(str)) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override // com.oplus.ocs.camera.producer.mode.BaseMode, com.oplus.ocs.camera.producer.mode.ModeInterface
    public void updateStageParameterBuilder(@NonNull PreviewParameter.Builder builder, String str, String str2, @Nullable CameraRequestTag cameraRequestTag) {
        super.updateStageParameterBuilder(builder, str, str2, cameraRequestTag);
        str.hashCode();
        switch (str) {
            case "before_take_picture":
            case "start_recording":
                if ("1".equals(CameraConfigHelper.getConfigValue(DefaultUtill.KEY_ENABLE_FRONT_CAMERA_SCALE)) && builder.containCustomKey(PreviewParameter.KEY_ZOOM_SCALE_ENABLE) && ((Boolean) builder.get(PreviewParameter.KEY_ZOOM_SCALE_ENABLE)).booleanValue()) {
                    builder.set(PreviewParameter.KEY_ZOOM_SCALE, (Float) builder.get(PreviewParameter.KEY_ZOOM_RATIO));
                }
                updateCameraRequestTag(builder, cameraRequestTag);
                return;
            case "configure":
                if (((Boolean) CameraConfigHelper.getConfigValue(CameraConfigBase.KEY_TELE_SMALL_PREVIEW_SUPPORT, false)).booleanValue() && PlatformUtil.isMtkPlatform() && getModeName().equals("photo_mode")) {
                    Size size = this.mTagMap.get(str2).mPreviewSize;
                    Size smallSizeByFormat = CameraCharacteristicsHelper.getSmallSizeByFormat(str2, ((double) size.getWidth()) / ((double) size.getHeight()), 35);
                    CameraUnitLog.v(TAG, "updateStageParameterBuilder, enable mtk pip, size: " + smallSizeByFormat);
                    builder.set(ConfigureParameter.KEY_MTK_NAVIGATION_NAVIGATIONMODE, new int[]{1});
                    if (smallSizeByFormat != null) {
                        builder.set(ConfigureParameter.KEY_MTK_NAVIGATION_STREAMSIZE, new int[]{smallSizeByFormat.getWidth(), smallSizeByFormat.getHeight()});
                        return;
                    }
                    return;
                }
                return;
            case "start_preview":
                if ("1".equals(CameraConfigHelper.getConfigValue(DefaultUtill.KEY_ENABLE_FRONT_CAMERA_SCALE)) && builder.containCustomKey(PreviewParameter.KEY_ZOOM_SCALE_ENABLE) && ((Boolean) builder.get(PreviewParameter.KEY_ZOOM_SCALE_ENABLE)).booleanValue()) {
                    builder.set(PreviewParameter.KEY_ZOOM_SCALE, (Float) builder.get(PreviewParameter.KEY_ZOOM_RATIO));
                }
                if (cameraRequestTag != null) {
                    if (builder.containCustomKey(PreviewParameter.KEY_TILT_SHIFT_ENABLE)) {
                        cameraRequestTag.mbTiltShiftOpen = ((Boolean) builder.get(PreviewParameter.KEY_TILT_SHIFT_ENABLE)).booleanValue();
                    }
                    if (builder.containCustomKey(PreviewParameter.KEY_FACE_DERED_EYE_ENABLE)) {
                        cameraRequestTag.mbDeRedEye = "on".equals(builder.get(PreviewParameter.KEY_FACE_DERED_EYE_ENABLE));
                    }
                    if (builder.containCustomKey(PreviewParameter.KEY_NIGHT_SE_ENABLE)) {
                        cameraRequestTag.mNightSeEnable = ((Boolean) builder.get(PreviewParameter.KEY_NIGHT_SE_ENABLE)).booleanValue();
                    }
                    if (builder.containCustomKey(PreviewParameter.KEY_PREVIEW_IN_PREVIEW_ENABLE)) {
                        this.mbPreviewInPreview = "on".equals(builder.get(PreviewParameter.KEY_PREVIEW_IN_PREVIEW_ENABLE));
                    } else {
                        this.mbPreviewInPreview = false;
                    }
                    if (((Boolean) CameraConfigHelper.getConfigValue(CameraConfigBase.KEY_SUPPORT_IZOOM_PREVIEW_ENABLE, false)).booleanValue()) {
                        synchronized (this.mPreviewResultLock) {
                            if (this.mPreviewResult != null) {
                                cameraRequestTag.mSupportCaptureZoomFeature = ((Integer) this.mPreviewResult.get(ApsDecisionParameter.KEY_PREVIEW_SUPPORT_ZOOM_FEATURE)).intValue();
                                builder.set(PreviewParameter.KEY_IZOOM_PREVIEW, new int[]{4 == cameraRequestTag.mSupportCaptureZoomFeature ? 1 : 0});
                            }
                            break;
                        }
                    }
                    synchronized (this.mPreviewResultLock) {
                        if (this.mPreviewResult != null) {
                            int iIntValue = ((Integer) this.mPreviewResult.get(ApsDecisionParameter.KEY_PREVIEW_SENSOR_MODE)).intValue();
                            cameraRequestTag.mCaptureSensorMode = iIntValue;
                            if (-1 != iIntValue) {
                                builder.set(PreviewParameter.KEY_SENSOR_MODE, new int[]{iIntValue});
                            }
                        }
                        break;
                    }
                    synchronized (this.mPreviewResultLock) {
                        if (this.mPreviewResult != null) {
                            builder.set(PreviewParameter.KEY_MOVING_OBJECT, new int[]{((Integer) this.mPreviewResult.get(ApsDecisionParameter.KEY_PREVIEW_ASD_MOVING_OBJECT)).intValue()});
                        }
                        break;
                    }
                    if (builder.get(PreviewParameter.KEY_FACE_MAKEUP_TYPE) != null && builder.get(PreviewParameter.KEY_FACE_MAKEUP_VALUE) != null) {
                        cameraRequestTag.mMakeupType = (String) builder.get(PreviewParameter.KEY_FACE_MAKEUP_TYPE);
                        cameraRequestTag.mMakeupValue = ((Integer) builder.get(PreviewParameter.KEY_FACE_MAKEUP_VALUE)).intValue();
                    }
                    if (getModeName().equals("photo_mode")) {
                        cameraRequestTag.mb3DLutEnable = ((Boolean) CameraConfigHelper.getConfigValue(CameraConfigBase.KEY_3D_LUT_SUPPORT, false)).booleanValue();
                        return;
                    }
                    return;
                }
                return;
            default:
                return;
        }
    }

    @Override // com.oplus.ocs.camera.producer.mode.BaseMode, com.oplus.ocs.camera.producer.mode.ModeInterface
    public void updateStageParameter(@NonNull Parameter parameter, String str, String str2, @Nullable CameraRequestTag cameraRequestTag) {
        super.updateStageParameter(parameter, str, str2, cameraRequestTag);
        if (Parameter.ParameterStage.BEFORE_TAKE_PICTURE.equals(str)) {
            Boolean bool = (Boolean) CameraConfigHelper.getConfigValue(CameraConfigBase.KEY_TUNING_DATA_BUFFER_SUPPORT, false);
            if (PlatformUtil.isMtkPlatform() && cameraRequestTag != null && CameraCharacteristicsHelper.isFrontCamera(cameraRequestTag.mCameraId) && cameraRequestTag.mbInNightProcess && cameraRequestTag.mCaptureEvList != null && Util.isSupportOfflineNight(getModeName())) {
                parameter.set((CaptureRequest.Key<boolean>) CaptureRequest.CONTROL_AE_LOCK, true);
                if (Util.isTurboHdr(this.mPreviewResult)) {
                    parameter.set((CaptureRequest.Key<boolean>) CaptureRequest.CONTROL_ENABLE_ZSL, true);
                } else {
                    parameter.set((CaptureRequest.Key<boolean>) CaptureRequest.CONTROL_ENABLE_ZSL, false);
                }
                CameraUnitLog.d(TAG, "updateStageParameter, set aeLock true and disable zsl");
            }
            if (bool != null && bool.booleanValue() && cameraRequestTag != null) {
                parameter.set(PreviewParameter.KEY_TUNING_DATA_ENABLE, new byte[]{2});
                parameter.set(PreviewParameter.KEY_TUNING_DATA_REQUEST, CameraRequestTag.RequestMode.CAPTURE_RAW == cameraRequestTag.getRequestMode() ? new byte[]{1} : new byte[]{2});
                if (32 == cameraRequestTag.mRequestFormat) {
                    parameter.set((Parameter.Key<int>) PreviewParameter.KEY_CAPTURE_PROCESS_RAW_ENABLE, 1);
                    parameter.set(PreviewParameter.KEY_CAPTURE_RAW_BITS_PER_PIXEL, new int[]{12});
                } else if (34 == cameraRequestTag.mRequestFormat) {
                    parameter.set(PreviewParameter.KEY_CAPTURE_PRIVATE_RAW_ENABLE, new int[]{1});
                } else if (37 == cameraRequestTag.mRequestFormat) {
                    parameter.set((Parameter.Key<int>) PreviewParameter.KEY_CAPTURE_PROCESS_RAW_ENABLE, 1);
                    parameter.set(PreviewParameter.KEY_CAPTURE_RAW_BITS_PER_PIXEL, new int[]{10});
                } else if (36 == cameraRequestTag.mRequestFormat) {
                    parameter.set((Parameter.Key<int>) PreviewParameter.KEY_CAPTURE_PROCESS_RAW_ENABLE, 0);
                    parameter.set(PreviewParameter.KEY_CAPTURE_RAW_BITS_PER_PIXEL, new int[]{12});
                }
            }
            if (cameraRequestTag != null) {
                parameter.set(PreviewParameter.FEATURE_AI_SHUT_CAPTURE, new int[]{cameraRequestTag.mbAIShutter ? 1 : 0});
            }
            if (cameraRequestTag.getRequestMode() == CameraRequestTag.RequestMode.CAPTURE_REPROCESS && is10BitOpen(str2)) {
                cameraRequestTag.mRequestFormat = 34;
            } else {
                cameraRequestTag.mRequestFormat = 35;
            }
            if (is10BitOpen(str2)) {
                cameraRequestTag.mbPhoto10BitsEnable = true;
            }
            if (cameraRequestTag != null && cameraRequestTag.mbBurstShot) {
                parameter.set(PreviewParameter.KEY_APS_FEATURE_TYPE, new int[]{0});
                parameter.set(PreviewParameter.KEY_BRACKET_MODE, new int[]{0});
            }
            if (cameraRequestTag.mbInNightProcess || CameraRequestTag.RequestMode.CAPTURE_REPROCESS == cameraRequestTag.getRequestMode()) {
                synchronized (this.mPreviewResultLock) {
                    parameter.set(PreviewParameter.KEY_NIGHT_MODE, new int[]{Util.getNightStateDecision(this.mPreviewResult)});
                    Parameter.Key<int[]> key = PreviewParameter.KEY_BRACKET_MODE;
                    int[] iArr = new int[1];
                    iArr[0] = this.mPreviewResult != null ? ((Integer) this.mPreviewResult.get(ApsDecisionParameter.KEY_PREVIEW_BRACKET_MODE)).intValue() : 0;
                    parameter.set(key, iArr);
                }
            } else if (!cameraRequestTag.mbInNightProcess) {
                synchronized (this.mPreviewResultLock) {
                    parameter.set(PreviewParameter.KEY_NIGHT_MODE, new int[]{0});
                }
            }
            if (PlatformUtil.isMtkPlatform() && cameraRequestTag != null && "rear_sat".equals(str2) && cameraRequestTag.mSensorSizes == null) {
                cameraRequestTag.mSensorSizes = getCaptureSizeArrayByCameraType(str2);
            }
            synchronized (this.mPreviewResultLock) {
                if (PlatformUtil.isMtkPlatform()) {
                    int iIntValue = this.mPreviewResult != null ? ((Integer) this.mPreviewResult.get(ApsDecisionParameter.KEY_PREVIEW_FEATURE_TYPE)).intValue() : 0;
                    if (cameraRequestTag.mbNeedPreviewStream != null && cameraRequestTag.mbNeedPreviewStream.length > 0 && 50 == iIntValue) {
                        Arrays.fill(cameraRequestTag.mbNeedPreviewStream, false);
                    }
                }
            }
        }
    }

    public Size[] getCaptureSizeArrayByCameraType(String str) {
        Size size = this.mTagMap.get(str).mPreviewSize;
        double width = ((double) size.getWidth()) / ((double) size.getHeight());
        if ("rear_sat".equals(str)) {
            return new Size[]{geMaxSize(CameraConfigBase.KEY_SAT_SUB_PICTURE_SIZE, width), geMaxSize(CameraConfigBase.KEY_SAT_MAIN_PICTURE_SIZE, width), geMaxSize(CameraConfigBase.KEY_SAT_THIRD_PICTURE_SIZE, width)};
        }
        return null;
    }

    @Override // com.oplus.ocs.camera.producer.mode.BaseMode
    public String getSurfaceUseCase(String str, boolean z) {
        return ("rear_main".equals(str) || "rear_wide".equals(str) || "rear_tele".equals(str)) ? ("rear_main".equals(str) && "on".equals((String) getConfigureParameter(str).get(ConfigureParameter.HIGH_PICTURE_SIZE_ENABLE)) && CameraConfigHelper.getConfigValue(CameraConfigBase.KEY_HIGH_MFNR_PICTURE_SIZE, null) != null) ? CameraConstant.UseCase.MFNR_PHOTO : ("rear_wide".equals(str) && "on".equals((String) getConfigureParameter(str).get(ConfigureParameter.HIGH_PICTURE_SIZE_ENABLE)) && CameraConfigHelper.getConfigValue(CameraConfigBase.KEY_HIGH_MFNR_WIDE_PICTURE_SIZE, null) != null) ? CameraConstant.UseCase.MFNR_PHOTO : ("rear_tele".equals(str) && "on".equals((String) getConfigureParameter(str).get(ConfigureParameter.HIGH_PICTURE_SIZE_ENABLE)) && CameraConfigHelper.getConfigValue(CameraConfigBase.KEY_HIGH_MFNR_TELE_PICTURE_SIZE, null) != null) ? CameraConstant.UseCase.MFNR_PHOTO : (CameraCharacteristicsHelper.getCameraIdType("rear_sat") != null || CameraConfigHelper.getUseCaseValues("standard_photo_case") == null) ? Util.isSystemCamera() ? (!needInputSurface(str) || "on".equals(getConfigureParameter(str).get(ConfigureParameter.HIGH_PICTURE_SIZE_ENABLE))) ? "on".equals(getConfigureParameter(str).get(ConfigureParameter.HIGH_PICTURE_SIZE_ENABLE)) ? "simple_photo_case" : CameraConstant.UseCase.SINGLE_PHOTO : "none_sat_night_case" : "simple_photo_case" : "standard_photo_case" : "rear_sat".equals(str) ? CameraConstant.MonoFilterType.BLACK_WHITE.equals(this.mTagMap.get(str).mFeatureName) ? CameraConstant.UseCase.MONO_CAMERA1 : "sat_photo_case" : ("front_main".equals(str) || "front_wide".equals(str)) ? (!Util.isSystemCamera() || ((Boolean) CameraConfigHelper.getConfigValue(CameraConfigBase.KEY_USE_FRONT_SINGLE_PHOTO, false)).booleanValue()) ? CameraConstant.UseCase.FRONT_SINGLE_PHOTO : CameraConfigHelper.getConfigValue(CameraConfigBase.KEY_FRONT_MFNR_PICTURE_SIZE, null) != null ? (Util.isSupportOfflineNight(getModeName()) && z && "1".equals(CameraConfigHelper.getConfigValue(DefaultUtill.KEY_PHOTO_USE_OFFLINE_R2Y))) ? this.mbIsFrontMFNRSizeSupported ? CameraConstant.UseCase.FRONT_MFNR_NIGHT : "front_night_case" : this.mbIsFrontMFNRSizeSupported ? CameraConstant.UseCase.FRONT_SINGLE_MFNR_PHOTO : CameraConstant.UseCase.FRONT_SINGLE_PHOTO : (Util.isSupportOfflineNight(getModeName()) && z) ? "front_night_case" : CameraConstant.UseCase.FRONT_SINGLE_PHOTO : CameraConstant.CameraType.REAR_MONO_CAMERA_1.equals(str) ? CameraConstant.UseCase.MONO_CAMERA1 : "simple_photo_case";
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:157:0x02d3  */
    /* JADX WARN: Removed duplicated region for block: B:187:0x0356  */
    /* JADX WARN: Removed duplicated region for block: B:188:0x0362  */
    /* JADX WARN: Removed duplicated region for block: B:4:0x0057  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x018d  */
    @Override // com.oplus.ocs.camera.producer.mode.BaseMode
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Pair<Size, Size> getSurfaceSize(SdkCameraDeviceConfig sdkCameraDeviceConfig, String str, String str2, String str3) {
        Size size;
        double width;
        List<SurfaceWrapper> pictureSurfaces;
        Size size2;
        Size size3;
        Size sizeGeMaxSize;
        size = this.mTagMap.get(str3).mPreviewSize;
        width = ((double) size.getWidth()) / ((double) size.getHeight());
        pictureSurfaces = sdkCameraDeviceConfig.getPictureSurfaces();
        CameraUnitLog.d(TAG, "getSurfaceSize, configuredSurfaceType: " + str + ", targetCameraType: " + str2 + ", cameraType: " + str3);
        str.hashCode();
        switch (str) {
            case "reprocess_input":
            case "capture_raw":
            case "raw16_output":
            case "capture_raw_dol":
                size2 = size;
                return new Pair<>(pictureSurfaces.size() <= 0 ? pictureSurfaces.get(0).getAppSurfaceSize() : size2, CameraCharacteristicsHelper.getSizeByFormat(str3, 1.3333333333333333d, 32));
            case "raw_output":
                size2 = size;
                if (((Boolean) CameraConfigHelper.getConfigValue(CameraConfigBase.KEY_MTK_SAT_FUSION_SUPPORT, false)).booleanValue() && "rear_sat".equals(str3)) {
                    str2.hashCode();
                    switch (str2) {
                        case "rear_main":
                            Size size4 = ((Size[]) CameraConfigHelper.getConfigValue(CameraConfigBase.KEY_SAT_FUSION_MAIN_RAW_SIZE, null))[0];
                            return new Pair<>(size4, size4);
                        case "rear_tele":
                            Size size5 = ((Size[]) CameraConfigHelper.getConfigValue(CameraConfigBase.KEY_SAT_FUSION_TELE_RAW_SIZE, null))[0];
                            return new Pair<>(size5, size5);
                        case "rear_wide":
                            Size size6 = ((Size[]) CameraConfigHelper.getConfigValue(CameraConfigBase.KEY_SAT_FUSION_WIDE_RAW_SIZE, null))[0];
                            return new Pair<>(size6, size6);
                        default:
                            return new Pair<>(pictureSurfaces.size() <= 0 ? pictureSurfaces.get(0).getAppSurfaceSize() : size2, CameraCharacteristicsHelper.getSizeByFormat(str3, 1.3333333333333333d, 32));
                    }
                }
                return new Pair<>(pictureSurfaces.size() > 0 ? pictureSurfaces.get(0).getAppSurfaceSize() : size2, CameraCharacteristicsHelper.getSizeByFormat(str3, 1.3333333333333333d, 32));
            case "preview":
                if (CameraConstant.CameraType.REAR_MONO_CAMERA_1.equals(str3) || CameraConstant.CameraType.REAR_MONO_CAMERA_2.equals(str3)) {
                    if (CameraConstant.CameraType.REAR_MONO_CAMERA_1.equals(str2)) {
                        Size sizeGeMaxSize2 = geMaxSize(CameraConfigBase.KEY_MONO1_PICTURE_SIZE, width);
                        return new Pair<>(sizeGeMaxSize2, sizeGeMaxSize2);
                    }
                    if (CameraConstant.CameraType.REAR_MONO_CAMERA_2.equals(str2)) {
                        Size sizeGeMaxSize3 = geMaxSize(CameraConfigBase.KEY_MONO2_PICTURE_SIZE, width);
                        return new Pair<>(sizeGeMaxSize3, sizeGeMaxSize3);
                    }
                }
                return new Pair<>(size, size);
            case "capture_yuv":
            case "capture":
            case "reprocess_yuv":
                if ("rear_sat".equals(str3)) {
                    str2.hashCode();
                    switch (str2) {
                        case "rear_mono_1":
                            Size sizeGeMaxSize4 = geMaxSize(CameraConfigBase.KEY_MONO1_PICTURE_SIZE, width);
                            return new Pair<>(sizeGeMaxSize4, sizeGeMaxSize4);
                        case "rear_sat":
                            Size maxSize = Util.getMaxSize(new Size[]{geMaxSize(CameraConfigBase.KEY_SAT_MAIN_PICTURE_SIZE, width), geMaxSize(CameraConfigBase.KEY_SAT_SUB_PICTURE_SIZE, width), geMaxSize(CameraConfigBase.KEY_SAT_THIRD_PICTURE_SIZE, width)});
                            return new Pair<>(maxSize, maxSize);
                        case "rear_main":
                            Size sizeGeMaxSize5 = geMaxSize(CameraConfigBase.KEY_SAT_MAIN_PICTURE_SIZE, width);
                            return new Pair<>(sizeGeMaxSize5, sizeGeMaxSize5);
                        case "rear_tele":
                            Size sizeGeMaxSize6 = geMaxSize(CameraConfigBase.KEY_SAT_THIRD_PICTURE_SIZE, width);
                            return new Pair<>(sizeGeMaxSize6, sizeGeMaxSize6);
                        case "rear_wide":
                            Size sizeGeMaxSize7 = geMaxSize(CameraConfigBase.KEY_SAT_SUB_PICTURE_SIZE, width);
                            return new Pair<>(sizeGeMaxSize7, sizeGeMaxSize7);
                    }
                    return new Pair<>(size, size);
                }
                if ("rear_wide".equals(str2) && (size3 = (Size) CameraConfigHelper.getConfigValue(CameraConfigBase.KEY_HIGH_PICTURE_SIZE_REAR_WIDE, null)) != null) {
                    return new Pair<>(size3, size3);
                }
                if ((CameraConstant.CameraType.REAR_MONO_CAMERA_1.equals(str3) || CameraConstant.CameraType.REAR_MONO_CAMERA_2.equals(str3)) && "rear_main".equals(str2)) {
                    Size sizeGeMaxSize8 = geMaxSize(CameraConfigBase.KEY_MAIN_PICTURE_SIZE, width);
                    return new Pair<>(sizeGeMaxSize8, sizeGeMaxSize8);
                }
                if (pictureSurfaces.size() > 0) {
                    return new Pair<>(pictureSurfaces.get(0).getAppSurfaceSize(), pictureSurfaces.get(0).getHalSurfaceSize());
                }
                return new Pair<>(size, size);
            case "preview_in_preview":
                Size smallSizeByFormat = CameraCharacteristicsHelper.getSmallSizeByFormat(str3, width, 35);
                return new Pair<>(smallSizeByFormat, smallSizeByFormat);
            case "tuning_data_raw":
                Size tuningDataSurfaceSize = CameraCharacteristicsHelper.getTuningDataSurfaceSize(str3, "tuning_data_raw");
                return new Pair<>(tuningDataSurfaceSize, tuningDataSurfaceSize);
            case "tuning_data_yuv":
                Size tuningDataSurfaceSize2 = CameraCharacteristicsHelper.getTuningDataSurfaceSize(str3, "tuning_data_yuv");
                return new Pair<>(tuningDataSurfaceSize2, tuningDataSurfaceSize2);
            case "capture_yuv_mfnr":
                if ("front_main".equals(str3) || "front_wide".equals(str3)) {
                    sizeGeMaxSize = geMaxSize(CameraConfigBase.KEY_FRONT_MFNR_PICTURE_SIZE, width);
                    CameraUnitLog.i(TAG, "getSurfaceSize, front main camera, mfnrSize: " + sizeGeMaxSize);
                } else {
                    sizeGeMaxSize = getCaptureYuvMfnrSize(str3);
                }
                if (sizeGeMaxSize != null) {
                    return new Pair<>(sizeGeMaxSize, sizeGeMaxSize);
                }
                if (pictureSurfaces.size() > 0) {
                    return new Pair<>(pictureSurfaces.get(0).getAppSurfaceSize(), pictureSurfaces.get(0).getHalSurfaceSize());
                }
                return new Pair<>(size, size);
            default:
                return new Pair<>(size, size);
        }
    }

    @Override // com.oplus.ocs.camera.producer.mode.BaseMode
    protected CameraDeviceInfoInterface createCameraDeviceInfo(String str) {
        CameraDeviceInfoImpl cameraDeviceInfoImpl = (CameraDeviceInfoImpl) super.createCameraDeviceInfo(str);
        cameraDeviceInfoImpl.setSupportPictureSizeList(getPictureSizes(str, 256));
        cameraDeviceInfoImpl.getPreviewParameterRangeMap().put(PreviewParameter.KEY_ZOOM_RATIO.getName(), new ZoomHelper(str).getZoomRatioList(false, "rear_sat".equals(str), false));
        return cameraDeviceInfoImpl;
    }

    @Override // com.oplus.ocs.camera.producer.mode.BaseMode
    protected boolean needAddToTarget(String str, String str2, @NonNull SurfaceKey surfaceKey, PreviewParameter.Builder builder) {
        if (Parameter.ParameterStage.START_PREVIEW.equals(str2)) {
            if ("on".equals(builder.get(PreviewParameter.KEY_PREVIEW_IN_PREVIEW_ENABLE)) && "surface_key_preview_in_preview".equals(surfaceKey.getUsage())) {
                return true;
            }
        } else if (Parameter.ParameterStage.BEFORE_TAKE_PICTURE.equals(str2)) {
            if (isVideoSnapShotByAps(str) && "on".equals(builder.get(PreviewParameter.KEY_QUICK_VIDEO_RECORD_ENABLE)) && ("surface_key_tuning_raw".equals(surfaceKey.getUsage()) || "surface_key_tuning_yuv".equals(surfaceKey.getUsage()))) {
                return false;
            }
            boolean zEquals = "on".equals(builder.get(PreviewParameter.KEY_BURST_SHOT_ENABLE));
            boolean z = (this.mPreviewResult == null || zEquals || (32 != ((Integer) this.mPreviewResult.get(ApsDecisionParameter.KEY_PREVIEW_REQUEST_FORMAT)).intValue() && 34 != ((Integer) this.mPreviewResult.get(ApsDecisionParameter.KEY_PREVIEW_REQUEST_FORMAT)).intValue() && 36 != ((Integer) this.mPreviewResult.get(ApsDecisionParameter.KEY_PREVIEW_REQUEST_FORMAT)).intValue())) ? false : true;
            if (this.mPreviewResult != null) {
                int iIntValue = ((Integer) this.mPreviewResult.get(ApsDecisionParameter.KEY_PREVIEW_MASTER_PIPELINE)).intValue();
                if ("rear_sat".equals(str) && zEquals) {
                    if ("rear_wide".equals(surfaceKey.getCameraType()) && 35 == surfaceKey.getFormat()) {
                        return iIntValue == 0;
                    }
                    if ("rear_main".equals(surfaceKey.getCameraType()) && 35 == surfaceKey.getFormat()) {
                        return 1 == iIntValue;
                    }
                }
                if ((Util.isAIOrPoitraitNight(this.mPreviewResult) || Util.isTurboHdr(this.mPreviewResult)) && z) {
                    if ("surface_key_picture_dol".equals(surfaceKey.getUsage())) {
                        return 50 == (this.mPreviewResult != null ? ((Integer) this.mPreviewResult.get(ApsDecisionParameter.KEY_PREVIEW_FEATURE_TYPE)).intValue() : 0) && surfaceKey.getFormat() == 32;
                    }
                    if (surfaceKey.getFormat() == 32) {
                        return true;
                    }
                    if (surfaceKey.getFormat() == 37) {
                        return false;
                    }
                }
            }
        }
        return super.needAddToTarget(str, str2, surfaceKey, builder);
    }

    @Override // com.oplus.ocs.camera.producer.mode.BaseMode, com.oplus.ocs.camera.producer.mode.ModeInterface
    public boolean isPreviewInPreviewOn() {
        return this.mbPreviewInPreview;
    }

    @Override // com.oplus.ocs.camera.producer.mode.BaseMode
    protected boolean needRemoveTarget(String str, String str2, @NonNull SurfaceKey surfaceKey, PreviewParameter.Builder builder) {
        if (Parameter.ParameterStage.START_PREVIEW.equals(str2) && "surface_key_preview_in_preview".equals(surfaceKey.getUsage()) && (!builder.containCustomKey(PreviewParameter.KEY_PREVIEW_IN_PREVIEW_ENABLE) || "off".equals(builder.get(PreviewParameter.KEY_PREVIEW_IN_PREVIEW_ENABLE)))) {
            return true;
        }
        return super.needRemoveTarget(str, str2, surfaceKey, builder);
    }

    @Override // com.oplus.ocs.camera.producer.mode.BaseMode, com.oplus.ocs.camera.producer.mode.ModeInterface
    public boolean isSupportVideoSnapShot(String str) {
        return this.mbSupportVideoSnapShot;
    }

    @Override // com.oplus.ocs.camera.producer.mode.BaseMode, com.oplus.ocs.camera.producer.mode.ModeInterface
    public boolean needStartPreview(CameraPreviewCallbackAdapter.PreviewResult previewResult) {
        boolean z;
        synchronized (this.mVideoEisOnLock) {
            if (previewResult.containsKey(ApsTotalResultParameter.KEY_PREVIEW_VIDEO_EIS.getName())) {
                int iIntValue = ((Integer) previewResult.get(ApsTotalResultParameter.KEY_PREVIEW_VIDEO_EIS)).intValue();
                if (1 == iIntValue) {
                    this.mbVideoEisOn = true;
                } else if (this.mbVideoEisOn && 1 != iIntValue) {
                    this.mbVideoEisOn = false;
                    this.mbQuickVideoRecording = false;
                    z = true;
                }
                z = false;
            } else {
                z = false;
            }
        }
        if (((Boolean) CameraConfigHelper.getConfigValue(CameraConfigBase.KEY_SUPPORT_IZOOM_PREVIEW_ENABLE, false)).booleanValue() && this.mZoomFeaturePrev != ((Integer) previewResult.get(ApsDecisionParameter.KEY_PREVIEW_SUPPORT_ZOOM_FEATURE)).intValue()) {
            int iIntValue2 = ((Integer) previewResult.get(ApsDecisionParameter.KEY_PREVIEW_SUPPORT_ZOOM_FEATURE)).intValue();
            int i = this.mZoomFeaturePrev;
            if (i != iIntValue2 && (4 == iIntValue2 || 4 == i)) {
                z = true;
            }
            this.mZoomFeaturePrev = iIntValue2;
        }
        int iIntValue3 = ((Integer) previewResult.get(ApsDecisionParameter.KEY_PREVIEW_SENSOR_MODE)).intValue();
        if (iIntValue3 != this.mSensorMode) {
            this.mSensorMode = iIntValue3;
            z = true;
        }
        int iIntValue4 = ((Integer) previewResult.get(ApsDecisionParameter.KEY_PREVIEW_ASD_MOVING_OBJECT)).intValue();
        if (this.mAsdMovingObjectPrev != iIntValue4) {
            this.mAsdMovingObjectPrev = iIntValue4;
            z = true;
        }
        return super.needStartPreview(previewResult) || z;
    }

    protected Size geMaxSize(CameraConfigBase.Key<Size[]> key, double d) {
        Size[] sizeArr = (Size[]) CameraConfigHelper.getConfigValue(key, null);
        if (sizeArr == null) {
            CameraUnitLog.w(TAG, "getSatSize, don't configure the " + key + " in the vendor_tag_type_values");
            return null;
        }
        Size maxSizeByRatio = Util.getMaxSizeByRatio(sizeArr, d);
        if (maxSizeByRatio == null) {
            maxSizeByRatio = Util.getImpreciseMaxSizeByRatio(sizeArr, d);
            CameraUnitLog.w(TAG, "getSatSize, can't find max size with ratio: " + d + ", use imprecise max size: " + maxSizeByRatio + " instead");
        }
        CameraUnitLog.d(TAG, "getSatSize, keyName: " + key + ", ratio: " + d + ", finalSize: " + maxSizeByRatio);
        return maxSizeByRatio;
    }

    private boolean needInputSurface(String str) {
        return PlatformUtil.isQualcommPlatform() && !((Boolean) CameraConfigHelper.getConfigValue(CameraConfigBase.KEY_DISABLE_RAW, false)).booleanValue() && AlgoSwitchConfig.getSupportCaptureAlgo(ApsDataConvert.getApsModeName(getModeName(), this.mRearFrontCameraId), this.mRearFrontCameraId, ParameterKeys.ALGO_NAME_SUPERNIGHT);
    }

    private void updateCaptureHdrMode(@NonNull String str, @NonNull PreviewParameter.Builder builder, String str2) {
        if (str2 == null) {
            return;
        }
        if ("auto".equals(str2) || "off".equals(str2)) {
            builder.set((CaptureRequest.Key<int>) CaptureRequest.CONTROL_SCENE_MODE, 0);
        } else if ("on".equals(str2)) {
            builder.set((CaptureRequest.Key<int>) CaptureRequest.CONTROL_SCENE_MODE, 18);
        }
        builder.set(PreviewParameter.KEY_AUTO_HDR_ENABLE, new int[]{"auto".equals(str2) ? 1 : 0});
        StatisticsManager.getInstance().setFeature(ConfigureParameter.VIDEO_3HDR_MODE, str2);
        StatisticsManager.getInstance().setHdrStatus("on".equals(str2) ? 1 : 0);
    }

    private void updateAiPhoto(@NonNull String str, @NonNull PreviewParameter.Builder builder, String str2) {
        builder.set(PreviewParameter.KEY_PI_ENABLE, new int[]{"on".equals(str2) ? 1 : 0});
        Parameter.Key<int[]> key = PreviewParameter.KEY_PI_ENABLE_LIST;
        int[] iArr = new int[1];
        iArr[0] = "on".equals(str2) ? ALL_AI_SCENE_ENABLE_VALUE : 0;
        builder.set(key, iArr);
        builder.set(PreviewParameter.KEY_AI_SCN_ENABLE, new int[]{"on".equals(str2) ? 1 : 0});
    }

    @Override // com.oplus.ocs.camera.producer.mode.BaseMode
    protected void updatePreviewRequestTag(PreviewParameter.Builder builder, CameraRequestTag cameraRequestTag, String str, String str2) {
        super.updatePreviewRequestTag(builder, cameraRequestTag, str, str2);
        updateCaptureHdrMode(str2, builder, (String) builder.get(PreviewParameter.KEY_HDR_MODE));
        updateAiPhoto(str2, builder, (String) builder.get(PreviewParameter.KEY_AI_PHOTO));
        CameraDeviceInfoInterface cameraDeviceInfo = getCameraDeviceInfo(str2);
        if (!builder.containCustomKey(PreviewParameter.KEY_FOCUS_MODE) && cameraDeviceInfo.isSupportPreviewParameter(PreviewParameter.KEY_FOCUS_MODE.getName())) {
            builder.set((Parameter.Key<int>) PreviewParameter.KEY_FOCUS_MODE, 1);
        }
        synchronized (this.mVideoEisOnLock) {
            if (cameraRequestTag != null) {
                if ("on".equals(builder.get(PreviewParameter.KEY_QUICK_VIDEO_RECORD_ENABLE)) && !CameraConstant.MonoFilterType.BLACK_WHITE.equals(this.mTagMap.get(str2).mFeatureName)) {
                    this.mbVideoEisOn = false;
                    this.mbQuickVideoRecording = true;
                    this.mbSupportVideoSnapShot = true;
                    cameraRequestTag.mbQuickVideo = true;
                    cameraRequestTag.mRecordingCapture = true;
                    builder.set(PreviewParameter.KEY_CONTROL_GYRO_ENABLE, new int[]{1});
                } else {
                    cameraRequestTag.mbQuickVideo = false;
                    cameraRequestTag.mRecordingCapture = false;
                    if (CameraCharacteristicsHelper.isFrontCamera(cameraRequestTag.mCameraId)) {
                        this.mbQuickVideoRecording = false;
                    }
                    this.mbSupportVideoSnapShot = false;
                }
            }
        }
        if (!this.mbQuickVideoRecording) {
            builder.set(PreviewParameter.KEY_CONTROL_GYRO_ENABLE, new int[]{0});
        }
        if (cameraRequestTag != null) {
            Integer num = (Integer) builder.get(PreviewParameter.KEY_AIS_DCT_SUPPORT);
            cameraRequestTag.mIsSupportDCT = num != null ? num.intValue() : 0;
            Integer num2 = (Integer) builder.get(PreviewParameter.KEY_AIS_DCT_AINR_SUPPORT);
            cameraRequestTag.mIsSupportDCTAndAINR = num2 != null ? num2.intValue() : 0;
            Integer num3 = (Integer) builder.get(PreviewParameter.KEY_AIS_BRACKET);
            cameraRequestTag.mAISBracket = num3 != null ? num3.intValue() : 0;
            ApsRequestTag apsRequestTag = this.mTagMap.get(cameraRequestTag.mCameraType);
            if (apsRequestTag != null) {
                apsRequestTag.mIsSupportDCT = cameraRequestTag.mIsSupportDCT;
                apsRequestTag.mIsSupportDCTAndAINR = cameraRequestTag.mIsSupportDCTAndAINR;
                apsRequestTag.mAISBracket = cameraRequestTag.mAISBracket;
            }
            if (this.mRuntimeIndex > 10) {
                this.mRuntimeMemorySize = getRuntimeMemorySize(cameraRequestTag);
                this.mRuntimeIndex = 0;
            }
            this.mRuntimeIndex++;
            cameraRequestTag.mRuntimeMemorySize = this.mRuntimeMemorySize;
            cameraRequestTag.mRuntimeHalMemorySize = getHalMemory() * 1048576;
        }
    }

    private void updateCameraRequestTag(PreviewParameter.Builder builder, CameraRequestTag cameraRequestTag) {
        Bundle bundle;
        CameraUnitLog.d(TAG, "updateCameraRequestTag");
        if (builder.containCustomKey(PreviewParameter.KEY_FILTER_TYPE)) {
            cameraRequestTag.mFilterType = (String) builder.get(PreviewParameter.KEY_FILTER_TYPE);
            cameraRequestTag.mbFilterOpen = ((Boolean) builder.get(PreviewParameter.KEY_FILTER_OPEN)).booleanValue();
            cameraRequestTag.mbFilterVignette = ((Boolean) builder.get(PreviewParameter.KEY_FILTER_WITHVIGNETTE)).booleanValue();
        }
        if (builder.containCustomKey(PreviewParameter.KEY_FACE_MAKEUP_TYPE)) {
            cameraRequestTag.mMakeupType = (String) builder.get(PreviewParameter.KEY_FACE_MAKEUP_TYPE);
            cameraRequestTag.mMakeupValue = ((Integer) builder.get(PreviewParameter.KEY_FACE_MAKEUP_VALUE)).intValue();
        }
        if (builder.containCustomKey(PreviewParameter.KEY_SUPPORT_MAKEUP)) {
            cameraRequestTag.mbSupportMakeup = ((Boolean) builder.get(PreviewParameter.KEY_SUPPORT_MAKEUP)).booleanValue();
        }
        if (builder.containCustomKey(PreviewParameter.KEY_FACE_BEAUTY_ENABLE)) {
            cameraRequestTag.mbFaceBeautyOpen = "on".equals(builder.get(PreviewParameter.KEY_FACE_BEAUTY_ENABLE));
            cameraRequestTag.mFaceBeautyVersion = (String) builder.get(PreviewParameter.KEY_FACE_BEAUTY_VERSION);
            cameraRequestTag.mFaceBeautyParam = (int[]) builder.get(PreviewParameter.KEY_FACE_BEAUTY_PARAM);
            cameraRequestTag.mFaceData = (int[]) builder.get(PreviewParameter.KEY_FACE_DATA);
        }
        if (builder.containCustomKey(PreviewParameter.KEY_FACE_DERED_EYE_ENABLE)) {
            cameraRequestTag.mbDeRedEye = "on".equals(builder.get(PreviewParameter.KEY_FACE_DERED_EYE_ENABLE));
        }
        if (cameraRequestTag.mbBurstShot) {
            int iIntValue = ((Integer) CameraConfigHelper.getConfigValue(CameraConfigBase.KEY_CSHOT_FIRST_REQUEST_NUM, 3)).intValue();
            if (!CameraCharacteristicsHelper.isSupportCShot(cameraRequestTag.mCameraType)) {
                iIntValue = 20;
            }
            cameraRequestTag.mRequestNum = iIntValue;
            cameraRequestTag.mApsDecisionFeatureType = 0;
        }
        if (builder.containCustomKey(PreviewParameter.KEY_AI_PHOTO)) {
            cameraRequestTag.mbPiEnable = "on".equals(builder.get(PreviewParameter.KEY_AI_PHOTO));
        }
        if (builder.containCustomKey(PreviewParameter.KEY_TILT_SHIFT_PARAM) && (bundle = (Bundle) builder.get(PreviewParameter.KEY_TILT_SHIFT_PARAM)) != null) {
            cameraRequestTag.mbTiltShiftOpen = true;
            cameraRequestTag.mTiltShiftPreviewSize = bundle.getString(CameraConstant.TiltShiftParamKeys.PREVIEW_SIZE, "");
            cameraRequestTag.mTiltShiftBlurValue = bundle.getInt(CameraConstant.TiltShiftParamKeys.BLUR_VALUE, 0);
            cameraRequestTag.mTiltShiftType = bundle.getString(CameraConstant.TiltShiftParamKeys.TYPE, "");
            cameraRequestTag.mTiltShiftCenterPosition = bundle.getString(CameraConstant.TiltShiftParamKeys.CENTER_POSITION, "");
            cameraRequestTag.mTiltShiftClearDistance = bundle.getString(CameraConstant.TiltShiftParamKeys.CLEAR_DISTANCE, "");
            cameraRequestTag.mTiltShiftRotateAngle = bundle.getString(CameraConstant.TiltShiftParamKeys.ROTATE_ANGLE, "");
        }
        synchronized (this.mPreviewResultLock) {
            if (!cameraRequestTag.mbBurstShot && this.mPreviewResult != null) {
                cameraRequestTag.mRequestNum = ((Integer) this.mPreviewResult.get(ApsDecisionParameter.KEY_PREVIEW_MULTI_FRAME_COUNT)).intValue();
                cameraRequestTag.mSupportCaptureZoomFeature = ((Integer) this.mPreviewResult.get(ApsDecisionParameter.KEY_PREVIEW_SUPPORT_ZOOM_FEATURE)).intValue();
                cameraRequestTag.mApsDecisionFeatureType = ((Integer) this.mPreviewResult.get(ApsDecisionParameter.KEY_PREVIEW_FEATURE_TYPE)).intValue();
                cameraRequestTag.mApsBracketMode = ((Integer) this.mPreviewResult.get(ApsDecisionParameter.KEY_PREVIEW_BRACKET_MODE)).intValue();
                cameraRequestTag.mAsdSceneValue = ((Integer) this.mPreviewResult.get(ApsDecisionParameter.KEY_PREVIEW_ASD_SCENE_VALUE)).intValue();
                cameraRequestTag.mMFSRFrameCount = ((Integer) this.mPreviewResult.get(ApsDecisionParameter.KEY_PREVIEW_MFSR_FRAME_COUNT)).intValue();
                cameraRequestTag.mPreCollectFrameCount = ((Integer) this.mPreviewResult.get(ApsDecisionParameter.KEY_PREVIEW_PRECOLLECT_FRAME_COUNT)).intValue();
            }
        }
        CameraUnitLog.d(TAG, "updateCaptureRequestTag, mbCaptureSloganOpen: " + cameraRequestTag.mbPhotoWaterMarkEnable + ", mFilterType: " + cameraRequestTag.mFilterType + ", mbFilterOpen: " + cameraRequestTag.mbFilterOpen + ", tag.mbPiEnable: " + cameraRequestTag.mbPiEnable + ", mMakeupType: " + cameraRequestTag.mMakeupType + ", tag.mSupportCaptureZoomFeature: " + cameraRequestTag.mSupportCaptureZoomFeature);
    }

    @Override // com.oplus.ocs.camera.producer.mode.BaseMode
    protected long[] getFlexibleCapabilities(String str) {
        long[] jArr;
        boolean zEquals = "1".equals(CameraConfigHelper.getConfigValue(DefaultUtill.KEY_SUPPORT_WCG2));
        boolean zIs10BitOpen = is10BitOpen(str);
        boolean z = ((Boolean) CameraConfigHelper.getConfigValue(CameraConfigBase.KEY_TELE_SMALL_PREVIEW_SUPPORT, false)).booleanValue() && PlatformUtil.isMtkPlatform() && getModeName().equals("photo_mode") && !"front_main".equals(str) && !"front_wide".equals(str) && ((Boolean) getConfigureParameter(str).get(ConfigureParameter.KEY_IS_FROM_MAIN_MENU)).booleanValue();
        Size size = this.mTagMap.get(str).mPreviewSize;
        double width = ((double) size.getWidth()) / ((double) size.getHeight());
        Size smallSizeByFormat = CameraCharacteristicsHelper.getSmallSizeByFormat(str, width, 35);
        if (zIs10BitOpen) {
            HashSet<Size> hashSet = new HashSet();
            Size sizeGeMaxSize = geMaxSize(CameraConfigBase.KEY_SAT_MAIN_PICTURE_SIZE, width);
            Size sizeGeMaxSize2 = geMaxSize(CameraConfigBase.KEY_SAT_SUB_PICTURE_SIZE, width);
            Size sizeGeMaxSize3 = geMaxSize(CameraConfigBase.KEY_SAT_THIRD_PICTURE_SIZE, width);
            if (sizeGeMaxSize != null) {
                hashSet.add(sizeGeMaxSize);
            }
            if (sizeGeMaxSize2 != null) {
                hashSet.add(sizeGeMaxSize2);
            }
            if (sizeGeMaxSize3 != null) {
                hashSet.add(sizeGeMaxSize3);
            }
            if (!zEquals) {
                jArr = new long[hashSet.size() * 8];
            } else if (z) {
                jArr = new long[(hashSet.size() + 2) * 8];
            } else {
                jArr = new long[(hashSet.size() + 1) * 8];
            }
            int i = 0;
            for (Size size2 : hashSet) {
                int i2 = i + 1;
                jArr[i] = 0;
                int i3 = i2 + 1;
                jArr[i2] = 0;
                int i4 = i3 + 1;
                jArr[i3] = 1;
                int i5 = i4 + 1;
                jArr[i4] = size2.getWidth();
                int i6 = i5 + 1;
                jArr[i5] = size2.getHeight();
                int i7 = i6 + 1;
                jArr[i6] = 0;
                int i8 = i7 + 1;
                jArr[i7] = 1;
                i = i8 + 1;
                jArr[i8] = 0;
            }
            if (zEquals) {
                int i9 = i + 1;
                jArr[i] = 0;
                int i10 = i9 + 1;
                jArr[i9] = 0;
                int i11 = i10 + 1;
                jArr[i10] = 0;
                int i12 = i11 + 1;
                jArr[i11] = size.getWidth();
                int i13 = i12 + 1;
                jArr[i12] = size.getHeight();
                int i14 = i13 + 1;
                jArr[i13] = 1;
                int i15 = i14 + 1;
                jArr[i14] = 0;
                int i16 = i15 + 1;
                jArr[i15] = 1;
                if (z && smallSizeByFormat != null) {
                    int i17 = i16 + 1;
                    jArr[i16] = 0;
                    int i18 = i17 + 1;
                    jArr[i17] = 0;
                    int i19 = i18 + 1;
                    jArr[i18] = 0;
                    int i20 = i19 + 1;
                    jArr[i19] = smallSizeByFormat.getWidth();
                    int i21 = i20 + 1;
                    jArr[i20] = smallSizeByFormat.getHeight();
                    int i22 = i21 + 1;
                    jArr[i21] = 1;
                    jArr[i22] = 0;
                    jArr[i22 + 1] = 1;
                }
            }
        } else {
            jArr = z ? new long[16] : new long[8];
            jArr[0] = 0;
            jArr[1] = 0;
            jArr[2] = 0;
            jArr[3] = size.getWidth();
            jArr[4] = size.getHeight();
            jArr[5] = 1;
            jArr[6] = 0;
            jArr[7] = 1;
            if (z && smallSizeByFormat != null) {
                jArr[8] = 0;
                jArr[9] = 0;
                jArr[10] = 0;
                jArr[11] = smallSizeByFormat.getWidth();
                jArr[12] = smallSizeByFormat.getHeight();
                jArr[13] = 1;
                jArr[14] = 0;
                jArr[15] = 1;
            }
        }
        CameraUnitLog.d(TAG, "getFlexibleCapabilities, value: " + Arrays.toString(jArr));
        return jArr;
    }

    @Override // com.oplus.ocs.camera.producer.mode.BaseMode
    protected long getHalMemory() {
        int iIntValue;
        long totalMemory = AlgoSwitchConfig.getTotalMemory();
        if (this.mbTenBitOpen) {
            int iIntValue2 = ((Integer) CameraConfigHelper.getConfigValue(CameraConfigBase.KEY_HAL_MEMORY_10BIT, 0)).intValue();
            if (CameraConstant.MEMORY_GB_8G < totalMemory) {
                iIntValue = ((Integer) CameraConfigHelper.getConfigValue(CameraConfigBase.KEY_HAL_MEMORY_10BIT_12G, Integer.valueOf(iIntValue2))).intValue();
            } else if (CameraConstant.MEMORY_GB_6G < totalMemory) {
                iIntValue = ((Integer) CameraConfigHelper.getConfigValue(CameraConfigBase.KEY_HAL_MEMORY_10BIT_8G, Integer.valueOf(iIntValue2))).intValue();
            } else {
                if (CameraConstant.MEMORY_GB_4G >= totalMemory) {
                    return iIntValue2;
                }
                iIntValue = ((Integer) CameraConfigHelper.getConfigValue(CameraConfigBase.KEY_HAL_MEMORY_10BIT_6G, Integer.valueOf(iIntValue2))).intValue();
            }
        } else if (((Boolean) CameraConfigHelper.getConfigValue(CameraConfigBase.KEY_HAL_MEMORY_COMMON_SUPPORT_DIFFERENCE, false)).booleanValue()) {
            int iIntValue3 = ((Integer) CameraConfigHelper.getConfigValue(CameraConfigBase.KEY_HAL_MEMORY_COMMON, 0)).intValue();
            if (CameraConstant.MEMORY_GB_8G < totalMemory) {
                iIntValue = ((Integer) CameraConfigHelper.getConfigValue(CameraConfigBase.KEY_HAL_MEMORY_COMMON_12G, Integer.valueOf(iIntValue3))).intValue();
            } else if (CameraConstant.MEMORY_GB_6G < totalMemory) {
                iIntValue = ((Integer) CameraConfigHelper.getConfigValue(CameraConfigBase.KEY_HAL_MEMORY_COMMON_8G, Integer.valueOf(iIntValue3))).intValue();
            } else {
                if (CameraConstant.MEMORY_GB_4G >= totalMemory) {
                    return iIntValue3;
                }
                iIntValue = ((Integer) CameraConfigHelper.getConfigValue(CameraConfigBase.KEY_HAL_MEMORY_COMMON_6G, Integer.valueOf(iIntValue3))).intValue();
            }
        } else {
            iIntValue = ((Integer) CameraConfigHelper.getConfigValue(CameraConfigBase.KEY_HAL_MEMORY_COMMON, 0)).intValue();
        }
        return iIntValue;
    }

    @Override // com.oplus.ocs.camera.producer.mode.BaseMode
    public int getSurfaceFormatBySurfaceType(String str, String str2, String str3) {
        if ("capture_yuv".equals(str) || "reprocess_yuv".equals(str) || CameraConstant.SessionSurfaceType.JSON_KEY_STREAM_CAPTURE_YUV_MFNR.equals(str)) {
            if (is10BitOpen(str3)) {
                return ((Integer) CameraConfigHelper.getConfigValue(CameraConfigBase.KEY_PHOTO_10BIT_FORMAT, 34)).intValue();
            }
            return 35;
        }
        if ("capture_raw".equals(str) && ((Boolean) CameraConfigHelper.getConfigValue(CameraConfigBase.KEY_SE_NIGHT_SUPPORT, false)).booleanValue()) {
            return 32;
        }
        return super.getSurfaceFormatBySurfaceType(str, str2, str3);
    }

    @Override // com.oplus.ocs.camera.producer.mode.BaseMode
    protected int getRawFormat(String str) {
        if (((Boolean) CameraConfigHelper.getConfigValue(CameraConfigBase.KEY_SE_NIGHT_SUPPORT, false)).booleanValue() || Util.isAIOrPoitraitNight(this.mPreviewResult) || Util.isTurboHdr(this.mPreviewResult) || isHybridRaw(this.mPreviewResult)) {
            return 32;
        }
        if (((Boolean) CameraConfigHelper.getConfigValue(CameraConfigBase.KEY_CAPTURE_WITH_RAW10, false)).booleanValue() && "on".equals(getConfigureParameter(str).get(ConfigureParameter.HIGH_PICTURE_SIZE_ENABLE))) {
            return 37;
        }
        return super.getRawFormat(str);
    }

    @Override // com.oplus.ocs.camera.producer.mode.BaseMode
    protected boolean is10BitOpen(String str) {
        this.mbTenBitOpen = "on".equals(getConfigureParameter(str).get(ConfigureParameter.PHOTO_10BIT_ENABLE));
        return this.mbTenBitOpen;
    }

    @Override // com.oplus.ocs.camera.producer.mode.BaseMode, com.oplus.ocs.camera.producer.mode.ModeInterface
    public int isAllowedToTakePicture(CameraPictureCallbackAdapter cameraPictureCallbackAdapter, Handler handler, CameraRequestTag cameraRequestTag) {
        boolean z;
        int iIsAllowedToTakePicture = super.isAllowedToTakePicture(cameraPictureCallbackAdapter, handler, cameraRequestTag);
        if (iIsAllowedToTakePicture == 0 && "photo_mode".equals(getModeName())) {
            int i = -1;
            iIsAllowedToTakePicture = 0;
            int currentSensorMode = -1;
            int i2 = 0;
            while (true) {
                z = true;
                if (i2 >= 30) {
                    break;
                }
                currentSensorMode = cameraRequestTag.mConsumerInterface.getCurrentSensorMode();
                if (currentSensorMode == cameraRequestTag.mRequestSensorMode || !(3 == currentSensorMode || 3 == cameraRequestTag.mRequestSensorMode)) {
                    break;
                }
                try {
                    Thread.sleep(30L);
                } catch (InterruptedException e) {
                    e.printStackTrace();
                }
                i2++;
            }
            CameraUnitLog.v(TAG, "isAllowedToTakePicture, wait for seamless switch end, cost " + (((long) i2) * 30) + "ms, currentSensorMode is " + currentSensorMode + ", requestSensorMode is " + cameraRequestTag.mRequestSensorMode, true);
            if (currentSensorMode != cameraRequestTag.mRequestSensorMode && (3 == currentSensorMode || 3 == cameraRequestTag.mRequestSensorMode)) {
                CameraUnitLog.e(TAG, "isAllowedToTakePicture, wait for request sensor mode(" + cameraRequestTag.mRequestSensorMode + ") timeout, current sensor mode is " + currentSensorMode + ", fail!");
                z = false;
                i = 3;
            }
            if (!z && cameraPictureCallbackAdapter != null && handler != null) {
                CameraUnitLog.e(TAG, "isAllowedToTakePicture, code: " + i);
                StatisticsManager.getInstance().reportFunctionalError(StatisticConstant.FunctionalErrorKeys.KEY_CAPTURE_FAILED, 25);
                cameraPictureCallbackAdapter.onCaptureFailed((CaptureRequest) null, new CameraPictureCallbackAdapter.PictureResult.Builder().set(ApsOtherParameter.KEY_CAPTURE_FAIL_CODE, Integer.valueOf(i)).build());
                return 3;
            }
        }
        return iIsAllowedToTakePicture;
    }

    @Override // com.oplus.ocs.camera.producer.mode.BaseMode, com.oplus.ocs.camera.producer.mode.ModeInterface
    public boolean needMatchPreviewTimestamp(int i, String str, CameraRequestTag cameraRequestTag, ApsAdapterDecision.DecisionResult decisionResult) {
        if (cameraRequestTag == null || cameraRequestTag.mbBurstShot) {
            return false;
        }
        if (this.mbQuickVideoRecording) {
            return true;
        }
        if (PlatformUtil.isQualcommPlatform()) {
            if (2 == i && this.mbCaptureNotMatchMeta) {
                return false;
            }
            if (!CameraCharacteristicsHelper.isFrontCamera(cameraRequestTag.mCameraId) || (!cameraRequestTag.mbFaceBeautyOpen && cameraRequestTag.mMakeupType.equals("none"))) {
                return (1 == i || 2 == i) ? false : true;
            }
            return true;
        }
        return super.needMatchPreviewTimestamp(i, str, cameraRequestTag, decisionResult);
    }

    @Override // com.oplus.ocs.camera.producer.mode.BaseMode
    protected String[] selectAlgosMatchTimestamp() {
        return SELECTED_ALGOS_FOR_TIMESTAMP_MATCH;
    }

    @Override // com.oplus.ocs.camera.producer.mode.BaseMode
    protected String getFeatureName(String str) {
        String str2 = (String) getConfigureParameter(str).get(ConfigureParameter.KEY_MONO_FILTER_TYPE);
        return CameraConstant.MonoFilterType.BLACK_WHITE.equals(str2) ? str2 : super.getFeatureName(str);
    }

    private boolean isHybridRaw(CameraPreviewCallbackAdapter.PreviewResult previewResult) {
        if (previewResult == null) {
            CameraUnitLog.e(TAG, "isHybridRaw, previewResult is null , return false.");
            return false;
        }
        String[] strArr = (String[]) previewResult.get(ApsDecisionParameter.KEY_PREVIEW_ALGO_FLAG);
        if (strArr == null || strArr.length <= 0) {
            return false;
        }
        return ParameterKeys.ALGO_NAME_HYBRIDRAW.equals(strArr[0]);
    }
}

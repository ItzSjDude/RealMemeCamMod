package com.oplus.ocs.camera.common.util;

import android.location.Location;
import android.os.Handler;
import android.util.Size;
import android.view.Surface;
import com.oplus.ocs.camera.ProducerConsumerInterfaceContract;
import com.oplus.ocs.camera.common.surface.SurfaceKey;
import com.oplus.ocs.camera.consumer.apsAdapter.adapter.ApsWatermarkParam;
import com.oplus.ocs.camera.producer.device.CaptureRequestProxy;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public final class CameraRequestTag implements Cloneable {
    private static final String TAG = "CameraRequestTag";
    public Object mCallback;
    public Handler mUserCallbackHandler;
    public boolean mbSuperTextOpen = false;
    public boolean mbFilterOpen = false;
    public boolean mbFaceRectify = false;
    public boolean mbFaceBeautyOpen = false;
    public boolean mbRawOnReprocess = false;
    public boolean mbLongExposureCaptureEnable = false;
    public boolean mbRaw2yuvEnable = false;
    public boolean mbRectifyEnable = false;
    public boolean mbRepeatingRequestCapture = false;
    public boolean mbStarVideoVerifyFrame = false;
    public boolean mbStarVideoEnable = false;
    public boolean mbTimeLapsePro = false;
    public String mMakeupType = "none";
    public int mMakeupValue = 0;
    public boolean mbSupportMakeup = false;
    public boolean mbDeRedEye = false;
    public boolean mbHighPictureSizeOpened = false;
    public String mSingleBlurAlgoName = null;
    public int mSinglePortraitEffectMode = 0;
    public boolean mbVideoBlurOpen = false;
    public boolean mbPortraitFullBody = false;
    public boolean mbPortraitHalfBody = false;
    public boolean mbVideoRetentionOpen = false;
    public boolean mbPortraitRepairOpen = true;
    public boolean mbVideoRetentionEffectProcessed = false;
    public boolean mbTiltShiftOpen = false;
    public boolean mbVideoNeonOpen = false;
    public boolean mbFilterVignette = false;
    public String mFilterType = "default";
    public boolean mbBurstShot = false;
    public int mReceiveCshotNum = 0;
    public int mMaxBustShotNum = 20;
    public boolean mbUseMediaCodec = false;
    public int mRequestNum = 1;
    public int mRequestFormat = 0;
    public int mOutputFormat = 0;
    public int mRawFormatHint = 0;
    public int mFrameFlag = 0;
    public boolean mbCaptureForVideo = false;
    public boolean mbRearMirrorEnable = false;
    public boolean mbPictureVisualizationEnable = false;
    public boolean mbInThirdApp = false;
    public boolean mbInOplusThirdApp = false;
    public boolean mbFromMainMenu = true;
    public boolean mbFromSystemApp = false;
    public String mCaptureMode = "";
    public long mShutterButtonClickTime = 0;
    public int mCameraId = -1;
    public int mProperCameraId = 0;
    public String mHdrMode = "";
    public boolean mbHdrTrigger = false;
    public boolean mbMsnrMoveRight = false;
    public String mPicSizeType = "";
    public String mShutterType = "";
    public boolean mbAeAfLock = false;
    public int mScreenBrightness = 0;
    public String mTouchXY = "";
    public String mIsWideAngle = "";
    public String mPortraitHdrType = null;
    public int mOrientation = -1;
    public int mPicOrientation = -1;
    public String[] mApsAlgoFlags = null;
    public int[] mCaptureEvList = null;
    public long[] mCaptureEtList = null;
    public boolean mbRetentionEnable = false;
    public boolean mbPiEnable = false;
    public boolean mb3DLutEnable = false;
    public boolean mbVisualizationEnable = false;
    public boolean mbGestureEnable = false;
    public boolean mbMirrorEnable = false;
    public int mMetaIndex = -1;
    public int mNightTotalExpTime = 0;
    public int mSuperNightScene = 0;
    public int mTurboRawScene = 0;
    public int[] mCaptureEVList = null;
    public int mAiScene = 0;
    public int mAiComboScene = 0;
    public boolean mSCPEnable = false;
    public boolean mbStickerOpen = false;
    public boolean mbAnimojiOpen = false;
    public boolean mbMutiStickerOpen = false;
    public int mBlurIndex = 60;
    public float mBlurShow = 0.0f;
    public int mDeviceHash = 0;
    public int mPreviewTemplate = 1;
    public int mSensorNumber = 1;
    public int[] mSensorMask = null;
    public Size[] mSensorSizes = null;
    public int mMasterPipeline = -1;
    public int mSupportCaptureZoomFeature = 0;
    public int mApsBracketMode = 0;
    public int mAsdSceneValue = 0;
    public int mApsDecisionFeatureType = 0;
    public int mAsdMovingObject = 0;
    public boolean mbPortraitBackForceDualCapture = false;
    public boolean mbDecisionRequestMixedFormat = false;
    public int mDecisionHdrBrightenIndex = -1;
    public int mSequenceId = -1;
    public int mSpecificProcessAlgo = 0;
    public int mApsDecisionSceneMode = 0;
    public int mApsRequest = -1;
    public int mMFSRFrameCount = 0;
    public int mPreCollectFrameCount = 0;
    public int mCaptureSensorMode = -1;
    public boolean mbInNightProcess = false;
    public boolean mbNightProMode = false;
    public String mbHeicCodecFormat = null;
    public Set<String> mPhysicalIds = null;
    public Map<String, Long> mMetaMaps = null;
    public Location mLocation = null;
    public boolean mbWatchRequest = false;
    public long mCaptureTime = 0;
    public boolean mSuperRawEnable = false;
    public float mZoomValue = 1.0f;
    public int mTouchEVValue = 0;
    public boolean mbAIShutter = false;
    public boolean mbEeyEnhance = false;
    public boolean mRTBEnable = false;
    public boolean mAiColorEnable = false;
    public boolean mbVideoAicolorEnable = false;
    public boolean[] mbNeedPreviewStream = null;
    public int mMaxImages = 0;
    public boolean mbSupportQuickJpeg = false;
    public int[] mUpScaleOutputSize = null;
    public int[] mForceUpScaleSize = null;
    public int mCaptureIntent = -1;
    public int mCaptureSurface = -1;
    public boolean mbUltraDarkMode = false;
    public boolean mbSuperEisOn = false;
    public boolean mbFastCapture = true;
    public boolean mbSatOpen = false;
    public boolean mbTripodEnable = false;
    public boolean mbUltraResolutionEnabled = false;
    public boolean mbUseTuningData = false;
    public boolean mbFaceRectifyOpen = false;
    public boolean mNeonEnable = false;
    public boolean mStreamerEnable = false;
    public boolean mRecordingCapture = false;
    public int mCaptureTuningYUVStreamAddTargetNum = 0;
    public int mCaptureTuningRAWStreamAddTargetNum = 0;
    public int mFeatureType = -1;
    public int mRearFrontCameraId = -1;
    public int mStreetRawEnable = 0;
    public float mZoomRatio = 1.0f;
    public float mZoomScale = 1.0f;
    public boolean mbScaleEnable = false;
    public long mNightCaptureTotalTime = 0;
    public String mRawValue = "none";
    public ApsRequestTag mApsRequestTag = null;
    public Handler mHalCallbackHandler = null;
    public boolean mbVideoCapture = false;
    public boolean mbAntibandingEnable = true;
    public HashMap<SurfaceKey, Surface> mAddTargetSurfaces = null;
    public HashMap<SurfaceKey, Surface> mRemoveTargetSurfaces = null;
    public HashMap<SurfaceKey, Surface> mUselessTargetSurfaces = null;
    public ProducerConsumerInterfaceContract.ConsumerInterface mConsumerInterface = null;
    public String mCameraType = null;
    public String mAllFeatureStates = null;
    public Object mAppOpaqueObj = null;
    public int mLogicCameraType = 0;
    public String mSuperTextVertices = null;
    public int mExif = 0;
    public boolean mbSupportBokehHDR = false;
    public boolean mbSupportBokeh = false;
    public boolean mbNormalVideoHFR = false;
    public boolean mbVideoWaterMarkEnable = false;
    public int mVideoWaterMarkOrientation = 0;
    public ApsWatermarkParam mApsWatermarkParam = null;
    public int mWatermarkBolderX = 0;
    public int mWatermarkBolderY = 0;
    public int mWatermarkBolderBackUpX = -1;
    public int mWatermarkBolderBackUpY = -1;
    public boolean mbWatermarkNeedScale = false;
    public boolean mbPhotoWaterMarkEnable = false;
    public int mInputWidth = 0;
    public boolean mbWatermarkMakeupEnable = false;
    public int mbWatermarkMakeupWidth = 0;
    public int mbWatermarkMakeupHeight = 0;
    public int mbWatermarkMakeupStartX = 0;
    public int mbWatermarkMakeupStartY = 0;
    public String mFaceBeautyVersion = null;
    public int[] mFaceBeautyParam = null;
    public int[] mFaceData = null;
    public int mPreviewFaceBeautyLevel = -1;
    public int mRearSelfCaptureEnable = -1;
    public int mVideoFusionEffect = 0;
    public String mVideoNeonParams = null;
    public String mVideoBlurParams = null;
    public long mBurstShotFlagId = -1;
    public String mBurstShotPath = null;
    public int mHyperLapseRate = 0;
    public boolean mbVideoRecordingPaused = false;
    public boolean mbEnableLsd = true;
    public boolean mbRawSREnable = false;
    public boolean mbSetPreviewFrameSurface = false;
    public boolean mbQuickVideo = false;
    public boolean mbStarburstEnable = false;
    public float[] mStarburstInfo = null;
    public boolean mbUseMFNRSize = false;
    public boolean mbFishEyeEnable = false;
    public boolean mbPhoto10BitsEnable = false;
    public int mMicroscopeCapturePreviewState = 0;
    public boolean mbSupportFocusPeaking = false;
    public String mFocusPeakingFeature = null;
    public boolean mbEdgeFilterEnable = true;
    public String mbEdgeFilterLineSize = "1";
    public String mbEdgeFilterColorU = "186";
    public String mbEdgeFilterColorV = "75";
    public int mTiltShiftBlurValue = 0;
    public String mTiltShiftPreviewSize = null;
    public String mTiltShiftType = null;
    public String mTiltShiftCenterPosition = null;
    public String mTiltShiftClearDistance = null;
    public String mTiltShiftRotateAngle = null;
    public boolean mbIsFlashRequired = false;
    public boolean isHyperLapseOpen = false;
    public boolean mbStopPreviewAfterCapture = false;
    public boolean mbStarryProcess = false;
    public boolean mbMonoPortraitEnable = false;
    public boolean mb3dPhotoEnable = false;
    public boolean mNightSeEnable = false;
    public boolean mbFastShotEnable = false;
    public int mAISState = 0;
    public int mIsSupportDCT = 0;
    public int mIsSupportDCTAndAINR = 0;
    public int mAISBracket = 0;
    public long mRuntimeMemorySize = -1;
    public long mRuntimeHalMemorySize = -1;
    public int m2DOLCaptureStreamNumber = -1;
    public int mRequestSensorMode = -1;
    public int mThermalAlgoMask = 0;
    public int mIsoValue = -1;
    public long mExposureTime = -1;
    public CaptureRequestProxy.Builder mCaptureBuild = null;
    public boolean mbIsDetectFace = false;
    public String mHDRState = null;
    public boolean[] mbUseTuningDataList = null;
    public String[] mApsBurstAlgoFlags = null;
    public int[] mRequestFormatList = null;
    public HashMap<SurfaceKey, Surface>[] mCaptureTargetSurfacesList = null;
    public String mAutoTransmit = null;
    public int mSizeRatioType = -1;
    public boolean mbBlurEditEnable = false;
    public float[] mBlurSupportValues = null;
    public float[] mBlurSupportApertures = null;
    public boolean mbWatermarkEnable = false;
    private RequestMode mRequestMode = RequestMode.PREVIEW;

    public enum RequestMode {
        PREVIEW,
        CAPTURE,
        CAPTURE_RAW,
        CAPTURE_REPROCESS
    }

    public CameraRequestTag(Object obj, Handler handler) {
        this.mUserCallbackHandler = null;
        this.mCallback = null;
        this.mCallback = obj;
        this.mUserCallbackHandler = handler;
    }

    public void setRequestMode(RequestMode requestMode) {
        this.mRequestMode = requestMode;
    }

    public RequestMode getRequestMode() {
        return this.mRequestMode;
    }

    public int hashCode() {
        return super.hashCode();
    }

    public Object clone() {
        try {
            return super.clone();
        } catch (CloneNotSupportedException e) {
            e.printStackTrace();
            return this;
        }
    }

    public String toString() {
        return String.format(Locale.ENGLISH, "CameraRequestTag: {mCameraId: %d, mRearFrontCameraId: %d, mCameraType: %s, mRequestNum: %d, mbUltraDarkMode: %s, mRequestFormat: %d, mCaptureEvList: %s, mCaptureEtList: %s, mAddTargetSurfaces: %s, mRemoveTargetSurfaces: %s, mRequestMode: %s, mbSatOpen: %s, mbInNightProcess: %s, mNightCaptureTotalTime: %s, mbVideoWaterMarkEnable: %s, mVideoWaterMarkOrientation: %d, mbAntibandingEnable: %s, mHyperLapseRate: %d, mbVideoRecordingPaused: %s, mbFilterOpen: %s,mbMirrorEnable: %s, mbRearMirrorEnable: %s, mbFaceBeautyOpen: %s, mbVideoBlurOpen: %s, mbPhotoWaterMarkEnable: %s, mbSetPreviewFrameSurface: %s, mMakeupType: %s, mbStarburst: %s, mbFishEyeEnable: %s, mbTiltShiftOpen: %s, mTiltShiftPreviewSize: %s, mTiltShiftBlurValue: %d, mTiltShiftType: %s, mTiltShiftCenterPosition: %s, mTiltShiftClearDistance: %s, mTiltShiftRotateAngle: %s, mSupportCaptureZoomFeature: %d, mbNormalVideoHFR: %s, mbLongExposureCaptureEnable: %s, mbRawOnReprocess: %s, mAISState: %d, mIsSupportDCT: %d, mIsSupportDCTAndAINR: %d, mAISBracket: %d, mApsBracketMode: %d, mRawFormatHint: %d, mForceUpScaleSize: %s, mRuntimeMemorySize: %s, mbIsDetectFace: %s, mHDRState: %s, mbUseTuningDataList: %s, mApsBurstAlgoFlags: %s, mPortraitHdrType: %s, mCaptureTuningRAWStreamAddTargetNum: %d, mCaptureTuningYUVStreamAddTargetNum: %d, mAsdMovingObject: %s, mCaptureSensorMode: %d }", Integer.valueOf(this.mCameraId), Integer.valueOf(this.mRearFrontCameraId), this.mCameraType, Integer.valueOf(this.mRequestNum), Boolean.valueOf(this.mbUltraDarkMode), Integer.valueOf(this.mRequestFormat), Arrays.toString(this.mCaptureEvList), Arrays.toString(this.mCaptureEtList), this.mAddTargetSurfaces, this.mRemoveTargetSurfaces, this.mRequestMode, Boolean.valueOf(this.mbSatOpen), Boolean.valueOf(this.mbInNightProcess), Long.valueOf(this.mNightCaptureTotalTime), Boolean.valueOf(this.mbVideoWaterMarkEnable), Integer.valueOf(this.mVideoWaterMarkOrientation), Boolean.valueOf(this.mbAntibandingEnable), Integer.valueOf(this.mHyperLapseRate), Boolean.valueOf(this.mbVideoRecordingPaused), Boolean.valueOf(this.mbFilterOpen), Boolean.valueOf(this.mbMirrorEnable), Boolean.valueOf(this.mbRearMirrorEnable), Boolean.valueOf(this.mbFaceBeautyOpen), Boolean.valueOf(this.mbVideoBlurOpen), Boolean.valueOf(this.mbPhotoWaterMarkEnable), Boolean.valueOf(this.mbSetPreviewFrameSurface), this.mMakeupType, Boolean.valueOf(this.mbStarburstEnable), Boolean.valueOf(this.mbFishEyeEnable), Boolean.valueOf(this.mbTiltShiftOpen), this.mTiltShiftPreviewSize, Integer.valueOf(this.mTiltShiftBlurValue), this.mTiltShiftType, this.mTiltShiftCenterPosition, this.mTiltShiftClearDistance, this.mTiltShiftRotateAngle, Integer.valueOf(this.mSupportCaptureZoomFeature), Boolean.valueOf(this.mbNormalVideoHFR), Boolean.valueOf(this.mbLongExposureCaptureEnable), Boolean.valueOf(this.mbRawOnReprocess), Integer.valueOf(this.mAISState), Integer.valueOf(this.mIsSupportDCT), Integer.valueOf(this.mIsSupportDCTAndAINR), Integer.valueOf(this.mAISBracket), Integer.valueOf(this.mApsBracketMode), Integer.valueOf(this.mRawFormatHint), Arrays.toString(this.mForceUpScaleSize), Long.valueOf(this.mRuntimeMemorySize), Boolean.valueOf(this.mbIsDetectFace), this.mHDRState, Arrays.toString(this.mbUseTuningDataList), Arrays.toString(this.mApsBurstAlgoFlags), this.mPortraitHdrType, Integer.valueOf(this.mCaptureTuningRAWStreamAddTargetNum), Integer.valueOf(this.mCaptureTuningYUVStreamAddTargetNum), Integer.valueOf(this.mAsdMovingObject), Integer.valueOf(this.mCaptureSensorMode));
    }
}

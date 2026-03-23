package com.oplus.ocs.camera.consumer;

import android.graphics.Bitmap;
import android.graphics.Rect;
import android.graphics.RectF;
import android.hardware.HardwareBuffer;
import android.hardware.camera2.CaptureRequest;
import android.hardware.camera2.CaptureResult;
import android.hardware.camera2.TotalCaptureResult;
import android.hardware.camera2.params.Face;
import android.media.Image;
import android.media.ImageReader;
import android.os.ConditionVariable;
import android.text.TextUtils;
import android.util.Size;
import android.view.Surface;
import androidx.annotation.Nullable;
import com.common.StaticsConstant;
import com.oplus.ocs.camera.common.statistics.StatisticConstant;
import com.oplus.ocs.camera.common.statistics.StatisticsManager;
import com.oplus.ocs.camera.common.surface.SurfaceKey;
import com.oplus.ocs.camera.common.surface.SurfacePool;
import com.oplus.ocs.camera.common.util.ApsConstant;
import com.oplus.ocs.camera.common.util.ApsRequestTag;
import com.oplus.ocs.camera.common.util.CameraConfigBase;
import com.oplus.ocs.camera.common.util.CameraConstant;
import com.oplus.ocs.camera.common.util.CameraImage;
import com.oplus.ocs.camera.common.util.CameraRequestTag;
import com.oplus.ocs.camera.common.util.CameraUnitLog;
import com.oplus.ocs.camera.common.util.ContextHolder;
import com.oplus.ocs.camera.common.util.ParameterKeys;
import com.oplus.ocs.camera.common.util.PlatformUtil;
import com.oplus.ocs.camera.common.util.Util;
import com.oplus.ocs.camera.consumer.ApsProcessor;
import com.oplus.ocs.camera.consumer.ApsProcessorContract;
import com.oplus.ocs.camera.consumer.apsAdapter.APSClient;
import com.oplus.ocs.camera.consumer.apsAdapter.ApsCameraRequestTag;
import com.oplus.ocs.camera.consumer.apsAdapter.adapter.ApsAdapterDecision;
import com.oplus.ocs.camera.consumer.apsAdapter.adapter.ApsAdapterImpl;
import com.oplus.ocs.camera.consumer.apsAdapter.adapter.ApsAdapterInterface;
import com.oplus.ocs.camera.consumer.apsAdapter.adapter.ApsCaptureResult;
import com.oplus.ocs.camera.consumer.apsAdapter.adapter.ApsExifData;
import com.oplus.ocs.camera.consumer.apsAdapter.adapter.ApsInitParameter;
import com.oplus.ocs.camera.consumer.apsAdapter.adapter.ApsParameters;
import com.oplus.ocs.camera.consumer.apsAdapter.adapter.ApsResult;
import com.oplus.ocs.camera.consumer.apsAdapter.adapter.ApsTotalResult;
import com.oplus.ocs.camera.consumer.apsAdapter.adapter.ApsUtils;
import com.oplus.ocs.camera.consumer.apsAdapter.adapter.ImageCategory;
import com.oplus.ocs.camera.consumer.apsAdapter.config.AlgoSwitchConfig;
import com.oplus.ocs.camera.consumer.apsAdapter.service.ApsAdapterListener;
import com.oplus.ocs.camera.consumer.debug.PropProvider;
import com.oplus.ocs.camera.producer.device.CameraSessionEntity;
import com.oplus.ocs.camera.producer.info.CameraCharacteristicsHelper;
import com.oplus.ocs.camera.producer.info.CameraConfigHelper;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
/* loaded from: classes.dex */
public class ApsProcessor implements ApsProcessorContract.IProcessor, ApsAdapterInterface.ImageProcessListener {
    private static final int APS_DECISION_INTERVAL_PREVIEW_FRAME = 3;
    private static final int BLOCK_TIME_OUT = 500;
    private static final int DIED_TYPE_CAPTURE_FAILED = 0;
    private static final String KEY_CAPTURE_INIT = "capture_init";
    private static final String KEY_CAPTURE_PROCESS = "capture_process";
    private static final String KEY_JNI_version = "com.oplus.camera.jni.version";
    private static final String KEY_PREVIEW_INIT = "preview_init";
    private static final String KEY_PREVIEW_PROCESS = "preview_process";
    private static final float MAX_AVAILABLE_MEMORY_RATIO = 0.33333334f;
    private static final String TAG = "ApsProcessor";
    private static final int UPSCALE_INPUT_ARRAY_SIZE = 4;
    private static final int UPSCALE_INPUT_HEIGHT_INDEX = 1;
    private static final int UPSCALE_INPUT_SCANLINE_INDEX = 3;
    private static final int UPSCALE_INPUT_STRIDE_INDEX = 2;
    private static final int UPSCALE_INPUT_WIDTH_INDEX = 0;
    private static final int UPSCALE_OUTPUT_ARRAY_SIZE = 4;
    private static final int UPSCALE_OUTPUT_HEIGHT_INDEX = 1;
    private static final int UPSCALE_OUTPUT_SCANLINE_INDEX = 3;
    private static final int UPSCALE_OUTPUT_STRIDE_INDEX = 2;
    private static final int UPSCALE_OUTPUT_WIDTH_INDEX = 0;
    private ApsAdapterInterface mApsAdapter;
    private ApsProcessorContract.IConsumer mConsumerContract;
    private final Object mApsAdapterLock = new Object();
    private final Object mRequestTagLock = new Object();
    private final ConditionVariable mProcessingPreviewCondition = new ConditionVariable();
    private final ConditionVariable mApsConnectCondition = new ConditionVariable();
    private ApsInitParameter mApsInitParameter = new ApsInitParameter();
    private CameraRequestTag mPreviewRequestTag = null;
    private CameraRequestTag mRecordingRequestTag = null;
    private CameraRequestTag mPictureRequestTag = null;
    private CameraRequestTag mTempStopRequestTag = null;
    private ApsRequestTag mApsRequestTag = null;
    private ApsDecisionListener mApsDecisionListener = new ApsDecisionListener();
    private Set<Long> mProcessingPreviewFrameSet = Collections.synchronizedSet(new HashSet());
    private int mReceiveBurstPictureCount = 0;
    private int mFaceCount = 0;
    private boolean mbHasFaceInfo = false;
    private boolean mbSkipFrameSupport = true;
    private ApsAdapterListener.ApsServiceListener mApsServiceListener = new ApsServiceListener();
    private int mMergeIndex = 0;
    private long mCaptureMergeIdentity = 0;
    private int mCaptureStartedCallbackNum = 0;
    private int mFirstCaptureHash = 0;
    private long mFirstExposureTime = 0;
    private long mNightCaptureTotalTime = 0;
    private Long mNightProcessTime = 0L;
    private Long mReprocessApsWaitTime = 0L;
    private long mReprocessStartTime = 0;
    private long mReprocessMetadataTimeStamp = 0;
    private int mAPSDecisionPreviewFrameCount = 0;
    private volatile boolean mbNeedUnInitAlgo = false;
    private boolean mIsFirstFrame = false;
    private final ConcurrentHashMap<String, CameraRequestTag> mPreviewRequestTagMap = new ConcurrentHashMap<>();
    private ApsTotalResult mApsVideoTotalResult = null;
    private boolean mbHighFrameInterpolationStarted = false;
    private boolean mbVideoImageNeedDetach = false;
    private boolean mbVideoRecording = false;
    private String mCurrentModeName = "";
    private int mPicOrientation = 90;
    private String mPreviewCallbackType = "0";
    private long mAvaiMemory = 0;
    private int mAvaiMemoryIndex = 0;
    private long mSingleShotTimestamp = 0;
    private volatile int[] mNewestMasterPipeline = null;
    private boolean mbApsConnected = false;

    private String getErrorTypeInfo(int i) {
        if (i != 0) {
            return null;
        }
        return "DIED_TYPE_CAPTURE_FAILED";
    }

    private boolean isNeedUpscale(int i, int i2, int i3, int i4, int i5, int i6) {
        return (i == 0 || i5 == 0 || i == i5 || i2 == 0 || i6 == 0 || i2 == i6 || i3 == 0 || i4 == 0) ? false : true;
    }

    @Override // com.oplus.ocs.camera.consumer.apsAdapter.adapter.ApsAdapterInterface.ImageProcessListener
    public void initHeifCodec(long j) {
    }

    @Override // com.oplus.ocs.camera.consumer.apsAdapter.adapter.ApsAdapterInterface.ImageProcessListener
    public void onPreviewReceived(ApsResult apsResult, ImageCategory.ImageItemInfo imageItemInfo) {
    }

    @Override // com.oplus.ocs.camera.consumer.apsAdapter.adapter.ApsAdapterInterface.ImageProcessListener
    public void processHeifCodec(long j, HardwareBuffer hardwareBuffer, ApsExifData apsExifData, int i, int i2) {
    }

    @Override // com.oplus.ocs.camera.consumer.apsAdapter.adapter.ApsAdapterInterface.ImageProcessListener
    public void uninitHeifCodec(long j) {
    }

    static /* synthetic */ int access$2108(ApsProcessor apsProcessor) {
        int i = apsProcessor.mAPSDecisionPreviewFrameCount;
        apsProcessor.mAPSDecisionPreviewFrameCount = i + 1;
        return i;
    }

    public ApsProcessor(ApsProcessorContract.IConsumer iConsumer) {
        this.mApsAdapter = null;
        this.mConsumerContract = null;
        this.mConsumerContract = iConsumer;
        if (this.mApsAdapter == null) {
            ApsAdapterImpl apsAdapterImpl = new ApsAdapterImpl(this);
            this.mApsAdapter = apsAdapterImpl;
            apsAdapterImpl.connectAps(CameraConfigHelper.getVendorTagMap().get(KEY_JNI_version));
        }
    }

    public void notifyErrorType(int i, long j, int i2, int i3, ImageCategory.ImageItemInfo imageItemInfo) {
        CameraUnitLog.e(TAG, "notifyErrorType, type: " + getErrorTypeInfo(i) + ", timestamp: " + j + ", imageNum: " + i2 + ", mergeNum: " + i3);
        if (i != 0) {
            return;
        }
        handleCaptureFailed(j, i2, i3, imageItemInfo);
    }

    private void handleCaptureFailed(long j, int i, int i2, ImageCategory.ImageItemInfo imageItemInfo) {
        this.mApsAdapter.onCaptureFailed(j, i, i2, true, imageItemInfo);
    }

    @Override // com.oplus.ocs.camera.consumer.ApsProcessorContract.IProcessor
    public void release() {
        CameraUnitLog.w(TAG, "release");
        synchronized (this.mApsAdapterLock) {
            this.mApsAdapter.onDestroy();
        }
    }

    @Override // com.oplus.ocs.camera.consumer.ApsProcessorContract.IProcessor
    public void onCameraClosed() {
        CameraUnitLog.w(TAG, "onCameraClosed");
        synchronized (this.mApsAdapterLock) {
            this.mApsAdapter.closeCamera();
            this.mApsAdapter.waitAddFrameFinish(true);
        }
    }

    @Override // com.oplus.ocs.camera.consumer.ApsProcessorContract.IProcessor
    public void onSessionClosed(boolean z) {
        CameraUnitLog.v(TAG, "sessionClosed, needUnitAlgo: " + z);
        synchronized (this.mApsAdapterLock) {
            if (z) {
                this.mApsAdapter.sessionClosed(true);
                this.mbNeedUnInitAlgo = false;
            } else {
                this.mApsAdapter.sessionClosed(false);
                this.mbNeedUnInitAlgo = true;
            }
            this.mApsAdapter.onBeforeOpenCamera();
        }
        if (this.mProcessingPreviewFrameSet.isEmpty()) {
            return;
        }
        CameraUnitLog.e(TAG, "onSessionClosed, clear mProcessingPreviewFrameSet, size " + this.mProcessingPreviewFrameSet.size());
        this.mProcessingPreviewFrameSet.clear();
    }

    @Override // com.oplus.ocs.camera.consumer.ApsProcessorContract.IProcessor
    public void startPreview(CameraRequestTag cameraRequestTag) {
        setPreviewRequestTag(cameraRequestTag);
        for (Map.Entry<SurfaceKey, Surface> entry : cameraRequestTag.mAddTargetSurfaces.entrySet()) {
            SurfaceKey key = entry.getKey();
            if ("surface_key_preview".equals(key.getUsage())) {
                Surface value = entry.getValue();
                if (value != null && value.isValid() && !Util.isSystemCamera()) {
                    attachPreviewSurface(CameraCharacteristicsHelper.getCameraIdType(key.getCameraType()).getCameraId(), value);
                }
                this.mPreviewRequestTagMap.put(key.getCameraType(), cameraRequestTag);
            }
        }
        this.mCurrentModeName = cameraRequestTag.mCaptureMode;
    }

    @Override // com.oplus.ocs.camera.consumer.ApsProcessorContract.IProcessor
    public void stopPreview(String str) {
        setPreviewRequestTag(null);
        if (this.mPreviewRequestTagMap.containsKey(str)) {
            if (!this.mProcessingPreviewFrameSet.isEmpty()) {
                CameraUnitLog.i(TAG, "stopPreview, waiting preview image processing...");
                long currentTimeMillis = System.currentTimeMillis();
                if (!TextUtils.equals("0", this.mApsRequestTag.mPreviewCallbackType)) {
                    this.mProcessingPreviewCondition.close();
                    this.mProcessingPreviewCondition.block(500L);
                }
                if (!this.mProcessingPreviewFrameSet.isEmpty()) {
                    CameraUnitLog.e(TAG, "stopPreview, waiting preview timeout, clear mProcessingPreviewFrameSet, size " + this.mProcessingPreviewFrameSet.size());
                    this.mProcessingPreviewFrameSet.clear();
                }
                CameraUnitLog.i(TAG, String.format(Locale.ENGLISH, "stopPreview, waiting preview cost %s ms", Long.valueOf(System.currentTimeMillis() - currentTimeMillis)));
            }
            int cameraId = CameraCharacteristicsHelper.getCameraIdType(str).getCameraId();
            if (!Util.isSystemCamera()) {
                detachPreviewSurface(cameraId);
            }
            CameraRequestTag cameraRequestTag = this.mPreviewRequestTagMap.get(str);
            if (cameraRequestTag != null) {
                if (this.mbVideoRecording) {
                    this.mTempStopRequestTag = cameraRequestTag;
                } else {
                    cameraRequestTag.mCallback = null;
                }
            }
            this.mPreviewRequestTagMap.remove(str);
        }
    }

    private void attachPreviewSurface(int i, Surface surface) {
        CameraUnitLog.d(TAG, "attachPreviewSurface, targetLogicCameraId: " + i + ", surface: " + surface);
        this.mApsConnectCondition.close();
        if (!this.mbApsConnected) {
            this.mApsConnectCondition.block();
        }
        this.mApsAdapter.attachPreviewSurface(i, surface, surface.hashCode());
    }

    private void detachPreviewSurface(int i) {
        CameraUnitLog.d(TAG, "detachPreviewSurface, targetLogicCameraId: " + i);
        this.mApsAdapter.detachPreviewSurface(i);
    }

    private void setPreviewRequestTag(CameraRequestTag cameraRequestTag) {
        synchronized (this.mRequestTagLock) {
            this.mPreviewRequestTag = cameraRequestTag;
        }
    }

    private CameraRequestTag getPreviewRequestTag() {
        CameraRequestTag cameraRequestTag;
        synchronized (this.mRequestTagLock) {
            cameraRequestTag = this.mPreviewRequestTag;
        }
        return cameraRequestTag;
    }

    @Override // com.oplus.ocs.camera.consumer.ApsProcessorContract.IProcessor
    public void onSessionConfigured(ApsRequestTag apsRequestTag) {
        ApsInitParameter apsInitParameter = new ApsInitParameter();
        int cameraId = CameraCharacteristicsHelper.getCameraIdType(apsRequestTag.mCameraType).getCameraId();
        boolean isFrontCamera = CameraCharacteristicsHelper.isFrontCamera(cameraId);
        String apsModeName = ApsDataConvert.getApsModeName(apsRequestTag.mModeName, isFrontCamera ? 1 : 0);
        apsInitParameter.mVendorTags = CameraCharacteristicsHelper.getCameraCharacteristicsWrapper(apsRequestTag.mCameraType).getVendorTagAndId();
        apsInitParameter.setParameter(ParameterKeys.KEY_CAPTURE_MODE, apsModeName);
        apsInitParameter.setParameter(ParameterKeys.KEY_CAMERA_FEATURE, ApsDataConvert.getApsFeatureName(apsRequestTag.mModeName, apsRequestTag.mFeatureName, apsRequestTag.mCameraType));
        apsInitParameter.setParameter(ParameterKeys.KEY_CAMERA_ID, Integer.toString(isFrontCamera ? 1 : 0));
        apsInitParameter.setParameter(ParameterKeys.KEY_LOGIC_CAMERA_ID, Integer.valueOf(cameraId));
        apsInitParameter.setParameter(ParameterKeys.KEY_HIGHT_PICTURE_SIZE_ENABLE, ParameterKeys.getFlagState(apsRequestTag.mbHighPictureSizeEnable));
        apsInitParameter.setParameter(ParameterKeys.KEY_PHOTO_10BIT_ENABLE, ParameterKeys.getFlagState(apsRequestTag.mbPhoto10BitsEnable));
        apsInitParameter.setParameter(ParameterKeys.KEY_OPERATION_MODE, String.valueOf(apsRequestTag.mOperationMode));
        apsInitParameter.setParameter(ParameterKeys.KEY_PREVIEW_SIZE, apsRequestTag.mPreviewSize);
        apsInitParameter.setParameter(ParameterKeys.KEY_VIDEO_SIZE, apsRequestTag.mInputVideoSize);
        apsInitParameter.setParameter(ParameterKeys.KEY_OUTPUT_VIDEO_SIZE, apsRequestTag.mOutputVideoSize);
        apsInitParameter.setParameter(ParameterKeys.KEY_QUICK_JPEG, Boolean.valueOf(apsRequestTag.mbSupportQuickJpeg));
        apsInitParameter.setParameter(ParameterKeys.KEY_TORCH_FLASH, (Boolean) CameraConfigHelper.getConfigValue(CameraConfigBase.KEY_TORCH_FLASH, false));
        apsInitParameter.setParameter(ParameterKeys.KEY_AI_FLASH, (Boolean) CameraConfigHelper.getConfigValue(CameraConfigBase.KEY_AI_FLASH_SUPPORT, false));
        this.mPreviewCallbackType = apsRequestTag.mPreviewCallbackType;
        apsInitParameter.setParameter(ParameterKeys.KEY_PREVIEW_CALLBACK_TYPE, this.mPreviewCallbackType);
        apsInitParameter.setParameter(ParameterKeys.KEY_IS_FROM_MAIN_MENU_APP, true);
        apsInitParameter.setParameter(ParameterKeys.KEY_IS_VIDEO_3HDR_10BIT, ParameterKeys.getFlagState(apsRequestTag.mbVideo10BitsEnable));
        apsInitParameter.setParameter(ParameterKeys.KEY_ASD_DEFAULT_STATE, String.valueOf(needEnableAsd(cameraId) ? 1 : 0));
        apsInitParameter.setParameter(ParameterKeys.KEY_SIMULATION_FLAG, Integer.valueOf(ApsUtils.getSimulationMode()));
        apsInitParameter.setParameter(ParameterKeys.KEY_SIMULATION_TIMES, Integer.valueOf(ApsUtils.getSimulationTimes()));
        if (!TextUtils.isEmpty(ApsUtils.getSimulationCaseId())) {
            apsInitParameter.setParameter(ParameterKeys.KEY_SIMULATION_CASE_ID, ApsUtils.getSimulationCaseId());
        }
        fillAlgoSwitchParameter(apsInitParameter);
        this.mApsRequestTag = apsRequestTag;
        this.mApsInitParameter = apsInitParameter;
        if (!apsRequestTag.mbPreviewProcessByAps) {
            initAPS(1, apsInitParameter, getUnInitAlgos());
        } else {
            initAPS(3, apsInitParameter, getUnInitAlgos());
        }
        this.mbHasFaceInfo = false;
        this.mAPSDecisionPreviewFrameCount = 0;
    }

    private boolean needEnableAsd(int i) {
        if (Util.isSystemCamera()) {
            return (((Boolean) CameraConfigHelper.getConfigValue(CameraConfigBase.KEY_MAINCAMERA_ASD_AISCENE_SUPPORT, false)).booleanValue() && CameraCharacteristicsHelper.getRearMainCameraId() == i) || (((Boolean) CameraConfigHelper.getConfigValue(CameraConfigBase.KEY_WIDECAMERA_ASD_AISCENE_SUPPORT, false)).booleanValue() && CameraCharacteristicsHelper.getRearSubCameraId() == i) || (((Boolean) CameraConfigHelper.getConfigValue(CameraConfigBase.KEY_SATCAMERA_AISCENE_SUPPORT, false)).booleanValue() && CameraCharacteristicsHelper.getRearSATCameraId() == i);
        }
        return false;
    }

    public void initAPS(int i, ApsInitParameter apsInitParameter, Set<String> set) {
        String str;
        ApsInitParameter apsInitParameter2 = new ApsInitParameter();
        CameraRequestTag previewRequestTag = getPreviewRequestTag();
        if (previewRequestTag != null) {
            apsInitParameter.setParameter(ParameterKeys.KEY_IS_FROM_MAIN_MENU_APP, Boolean.valueOf(Util.isSystemCamera() && previewRequestTag.mbFromMainMenu));
        }
        apsInitParameter.setParameter(ParameterKeys.KEY_IS_FROM_SYSTEM_CAMERA, Boolean.valueOf(Util.isSystemCamera()));
        apsInitParameter2.mParameterMap = new HashMap(apsInitParameter.mParameterMap);
        if (apsInitParameter.mVendorTags != null) {
            apsInitParameter2.mVendorTags = (String[]) Arrays.copyOf(apsInitParameter.mVendorTags, apsInitParameter.mVendorTags.length);
        }
        apsInitParameter2.setParameter(ParameterKeys.KEY_UNINIT_ALGOS, set);
        apsInitParameter2.mApsModule = i;
        apsInitParameter2.mVideoSurface = SurfacePool.getInstance().getVideoSurface();
        apsInitParameter2.mbHeicProcessInApp = !this.mApsRequestTag.mbHighPictureSizeEnable && ((Boolean) CameraConfigHelper.getConfigValue(CameraConfigBase.KEY_ONLY_HIGH_PICTURE_SIZE_HEIF_IN_APS, false)).booleanValue();
        if (TextUtils.isEmpty((CharSequence) apsInitParameter2.get(ParameterKeys.KEY_CAMERA_FEATURE))) {
            str = (String) apsInitParameter2.get(ParameterKeys.KEY_CAPTURE_MODE);
        } else {
            str = (String) apsInitParameter2.get(ParameterKeys.KEY_CAMERA_FEATURE);
        }
        String str2 = str;
        int parseInt = Integer.parseInt((String) apsInitParameter2.get(ParameterKeys.KEY_CAMERA_ID));
        apsInitParameter2.mPreviewConfig = AlgoSwitchConfig.getPreviewConfig(str2, parseInt, (Size) apsInitParameter2.get(ParameterKeys.KEY_PREVIEW_SIZE), (Size) apsInitParameter2.get(ParameterKeys.KEY_VIDEO_SIZE), (Size) apsInitParameter2.get(ParameterKeys.KEY_OUTPUT_VIDEO_SIZE), this.mApsRequestTag.mbVideoWaterMarkEnable, "commonVideoSatHal".equals(str2) || "4kVideo".equals(str2) || ApsConstant.FEATURE_REC_LIVE_HDR.equals(str2) || ApsConstant.FEATURE_REC_ULTRA_NIGHT.equals(str2) || ("commonVideo".equals(str2) && 1 == parseInt) || ("fastVideo".equals(str2) && 1 == parseInt), "slowVideo".equals(str2) && parseInt == 0);
        Integer num = (Integer) apsInitParameter2.get(ParameterKeys.KEY_LOGIC_CAMERA_ID);
        if (num != null && !String.valueOf(num).isEmpty()) {
            apsInitParameter2.setParameter(ParameterKeys.KEY_CAMERA_CHARACTERISTICS, CameraCharacteristicsHelper.getCameraInfo(num.intValue()));
        }
        if (this.mApsRequestTag.mThermalLevel != 0) {
            apsInitParameter2.setParameter(ParameterKeys.KEY_THERMAL_LEVEL, Integer.valueOf(this.mApsRequestTag.mThermalLevel));
        }
        if (-1 != this.mApsRequestTag.mPreviewFaceBeautyLevel) {
            apsInitParameter2.setParameter(ParameterKeys.KEY_THIRD_CUSTOM_BEAUTY_PARAM, CameraConstant.PREVIEW_FACE_BEAUTY_PARAMS.replace(CameraConstant.PREVIEW_FACE_BEAUTY_LEVEL_PLACEHOLDER, String.valueOf(this.mApsRequestTag.mPreviewFaceBeautyLevel)));
        }
        synchronized (this.mApsAdapterLock) {
            this.mApsAdapter.init(apsInitParameter2);
            PropProvider.getInstance().setEnableAPSAlgoNode(this.mApsAdapter);
        }
    }

    public Set<String> getUnInitAlgos() {
        HashSet hashSet = new HashSet();
        synchronized (this.mRequestTagLock) {
            CameraRequestTag previewRequestTag = getPreviewRequestTag();
            if (previewRequestTag != null) {
                if (!previewRequestTag.mbVideoBlurOpen && !previewRequestTag.mbVideoNeonOpen) {
                    hashSet.add(ParameterKeys.ALGO_NAME_VIDEO_BLUR);
                }
                if (!previewRequestTag.mbSupportBokeh) {
                    hashSet.add(ParameterKeys.ALGO_NAME_BOKEH);
                }
                if (!previewRequestTag.mbVideoRetentionOpen) {
                    hashSet.add(ParameterKeys.ALGO_NAME_VIDEO_RETENTION);
                }
                if (!previewRequestTag.mbFaceRectifyOpen || (this.mFaceCount == 0 && !this.mbHasFaceInfo)) {
                    hashSet.add(ParameterKeys.ALGO_NAME_FACE_RECTIFY);
                }
                String apsModeName = ApsDataConvert.getApsModeName(previewRequestTag.mApsRequestTag.mModeName, previewRequestTag.mRearFrontCameraId);
                boolean supportCaptureAlgo = AlgoSwitchConfig.getSupportCaptureAlgo(apsModeName, previewRequestTag.mRearFrontCameraId, ParameterKeys.ALGO_NAME_FACE_RESTORE);
                boolean supportCaptureAlgo2 = AlgoSwitchConfig.getSupportCaptureAlgo(apsModeName, previewRequestTag.mRearFrontCameraId, ParameterKeys.ALGO_NAME_FACEBASE_RETOUCH);
                if (previewRequestTag.mRearFrontCameraId == 0 && ((!previewRequestTag.mbFaceBeautyOpen || (this.mFaceCount == 0 && !this.mbHasFaceInfo)) && !previewRequestTag.mbPiEnable && !previewRequestTag.mbBurstShot && !supportCaptureAlgo && !supportCaptureAlgo2)) {
                    hashSet.add(ParameterKeys.ALGO_NAME_FACE_INFO);
                } else if (!Util.isSystemCamera() && !previewRequestTag.mbFaceBeautyOpen) {
                    hashSet.add(ParameterKeys.ALGO_NAME_FACE_INFO);
                }
                if (!previewRequestTag.mb3DLutEnable && !previewRequestTag.mbPiEnable) {
                    hashSet.add(ParameterKeys.ALGO_NAME_PF_V1);
                }
                if (!previewRequestTag.mSCPEnable) {
                    hashSet.add(ParameterKeys.ALGO_NAME_SCPORTRAIT);
                }
                if (!previewRequestTag.mbFilterOpen && !Util.isSystemCamera()) {
                    hashSet.add(ParameterKeys.ALGO_NAME_FILTER);
                }
                if (!previewRequestTag.mbPhotoWaterMarkEnable && !Util.isSystemCamera()) {
                    hashSet.add(ParameterKeys.ALGO_NAME_WATERMARK);
                }
                if (!previewRequestTag.mbPiEnable && !previewRequestTag.mbFaceBeautyOpen && !previewRequestTag.mbBurstShot && "none".equals(previewRequestTag.mMakeupType) && !previewRequestTag.mbQuickVideo) {
                    hashSet.add(ParameterKeys.ALGO_NAME_FACE_BEAUTY);
                }
                if (!"rear_wide".equals(previewRequestTag.mCameraType) && !"rear_sat".equals(previewRequestTag.mCameraType) && !"front_wide".equals(previewRequestTag.mCameraType) && (!((Boolean) CameraConfigHelper.getConfigValue(CameraConfigBase.KEY_FRONT_MAIN_WIDE_CAMERA_SUPPORT, false)).booleanValue() || !"front_main".equals(previewRequestTag.mCameraType))) {
                    hashSet.add(ParameterKeys.ALGO_NAME_RECTIFY);
                }
                if (!previewRequestTag.mbTiltShiftOpen) {
                    hashSet.add(ParameterKeys.ALGO_NAME_TILT_SHIFT);
                }
                if (!previewRequestTag.mbFromMainMenu) {
                    hashSet.add("aps_algo_ainr");
                }
                if (!previewRequestTag.mbPortraitRepairOpen) {
                    hashSet.add(ParameterKeys.ALGO_NAME_FRONT_PORTRAIT_REPAIR);
                }
                if (!Util.isSystemCamera()) {
                    hashSet.add(ParameterKeys.ALGO_NAME_AI_SR);
                    hashSet.add(ParameterKeys.ALGO_NAME_ICE_AINR);
                    hashSet.add("aps_algo_ainr");
                    if (PlatformUtil.isMtkPlatform() && "photo_mode".equals(previewRequestTag.mCaptureMode)) {
                        hashSet.add(ParameterKeys.ALGO_NAME_SUPERNIGHT);
                    }
                }
            } else {
                ApsRequestTag apsRequestTag = this.mApsRequestTag;
                if (apsRequestTag != null && !apsRequestTag.mbVideoBlurOpen) {
                    hashSet.add(ParameterKeys.ALGO_NAME_VIDEO_BLUR);
                }
            }
        }
        return hashSet;
    }

    @Override // com.oplus.ocs.camera.consumer.ApsProcessorContract.IProcessor
    public void addPreview(ImageReader imageReader, Image image, ImageCategory.ItemInfoType itemInfoType, String str, SurfaceKey surfaceKey) {
        if (image == null) {
            CameraUnitLog.e(TAG, "addPreview, image is null.");
            return;
        }
        try {
            ImageCategory.ImageItemInfo generateImageInfo = generateImageInfo(imageReader, image, this.mApsRequestTag, itemInfoType, surfaceKey, str, false, false);
            if (generateImageInfo != null) {
                this.mApsAdapter.addPreviewImage(generateImageInfo);
            }
        } catch (IllegalStateException e) {
            CameraUnitLog.e(TAG, "addPreview", e);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x010c  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x010e  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0128  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x012a  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0134  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0136  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0140  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0142  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x0337  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x036d  */
    /* JADX WARN: Removed duplicated region for block: B:89:0x03f7  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x0430  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void setPreviewMetaCommonParameters(android.hardware.camera2.CaptureRequest r9, android.hardware.camera2.CaptureResult r10, com.oplus.ocs.camera.consumer.apsAdapter.adapter.ImageCategory.ItemInfoType r11, java.lang.Long r12, com.oplus.ocs.camera.consumer.apsAdapter.adapter.ImageCategory.MetaItemInfo r13) {
        /*
            Method dump skipped, instructions count: 1149
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.oplus.ocs.camera.consumer.ApsProcessor.setPreviewMetaCommonParameters(android.hardware.camera2.CaptureRequest, android.hardware.camera2.CaptureResult, com.oplus.ocs.camera.consumer.apsAdapter.adapter.ImageCategory$ItemInfoType, java.lang.Long, com.oplus.ocs.camera.consumer.apsAdapter.adapter.ImageCategory$MetaItemInfo):void");
    }

    private void fillAlgoSwitchParameter(ApsParameters.ParameterModel parameterModel) {
        if (parameterModel == null) {
            CameraUnitLog.w(TAG, "fillAlgoSwitchParameter, metaItemInfo is null");
            return;
        }
        for (Map.Entry<String, String> entry : ApsUtils.getTurnOffAlgoList().entrySet()) {
            String key = entry.getKey();
            String value = entry.getValue();
            if (!TextUtils.isEmpty(key) && !TextUtils.isEmpty(value)) {
                key.hashCode();
                char c = 65535;
                switch (key.hashCode()) {
                    case -1362995417:
                        if (key.equals(KEY_PREVIEW_INIT)) {
                            c = 0;
                            break;
                        }
                        break;
                    case -116660618:
                        if (key.equals(KEY_CAPTURE_PROCESS)) {
                            c = 1;
                            break;
                        }
                        break;
                    case 766767721:
                        if (key.equals(KEY_CAPTURE_INIT)) {
                            c = 2;
                            break;
                        }
                        break;
                    case 1661559032:
                        if (key.equals(KEY_PREVIEW_PROCESS)) {
                            c = 3;
                            break;
                        }
                        break;
                }
                switch (c) {
                    case 0:
                        parameterModel.setParameter(ParameterKeys.KEY_TURN_OFF_PREVIEW_ALGO_LIST_INIT, value);
                        continue;
                    case 1:
                        parameterModel.setParameter(ParameterKeys.KEY_TURN_OFF_CAPTURE_ALGO_LIST_PROCESS, value);
                        continue;
                    case 2:
                        parameterModel.setParameter(ParameterKeys.KEY_TURN_OFF_CAPTURE_ALGO_LIST_INIT, value);
                        continue;
                    case 3:
                        parameterModel.setParameter(ParameterKeys.KEY_TURN_OFF_PREVIEW_ALGO_LIST_PROCESS, value);
                        continue;
                }
            }
        }
    }

    @Override // com.oplus.ocs.camera.consumer.ApsProcessorContract.IProcessor
    public void addPreviewMeta(CaptureRequest captureRequest, TotalCaptureResult totalCaptureResult, ImageCategory.ItemInfoType itemInfoType) {
        if (AlgoSwitchConfig.getSupportApsPreview() && captureRequest.getTag() != null) {
            ImageCategory.MetaItemInfo metaItemInfo = new ImageCategory.MetaItemInfo();
            setPreviewMetaCommonParameters(captureRequest, totalCaptureResult, itemInfoType, (Long) totalCaptureResult.get(CaptureResult.SENSOR_TIMESTAMP), metaItemInfo);
            metaItemInfo.setParameter(ParameterKeys.KEY_CAPTURE_RESULT, totalCaptureResult);
            metaItemInfo.setParameter(ParameterKeys.KEY_FRAME_NUMBER, Long.valueOf(totalCaptureResult.getFrameNumber()));
            metaItemInfo.setParameter(ParameterKeys.KEY_META_MAP, ApsUtils.assembleMetaMap(totalCaptureResult, String.valueOf(metaItemInfo.get(ParameterKeys.KEY_LOGIC_CAMERA_ID))));
            this.mApsAdapter.addPreviewMetadata(metaItemInfo);
        }
    }

    @Override // com.oplus.ocs.camera.consumer.ApsProcessorContract.IProcessor
    public void addPreviewMeta(CaptureRequest captureRequest, ImageReader imageReader, Image image, ImageCategory.ItemInfoType itemInfoType) {
        if (AlgoSwitchConfig.getSupportApsPreview() && captureRequest.getTag() != null) {
            ImageCategory.MetaItemInfo metaItemInfo = new ImageCategory.MetaItemInfo();
            Long valueOf = Long.valueOf(image.getTimestamp());
            setPreviewMetaCommonParameters(captureRequest, null, itemInfoType, valueOf, metaItemInfo);
            metaItemInfo.mImageBuffer = new ApsResult.ImageBuffer(imageReader, image, Util.getHardwareBuffer(image), valueOf.longValue());
            this.mApsAdapter.addPreviewMetadata(metaItemInfo);
        }
    }

    private ImageCategory.MetaItemInfo createMetaItemInfo(CameraRequestTag cameraRequestTag) {
        CameraUnitLog.i(TAG, "createMetaItemInfo, tag: " + cameraRequestTag);
        ImageCategory.MetaItemInfo metaItemInfo = new ImageCategory.MetaItemInfo();
        fillMetaItemForCapture(cameraRequestTag, metaItemInfo);
        metaItemInfo.setParameter(ParameterKeys.KEY_CAPTURE_SCENE, Integer.valueOf(cameraRequestTag.mApsDecisionSceneMode));
        metaItemInfo.setParameter(ParameterKeys.KEY_CAPTURE_MFNR_NUM, Integer.valueOf(cameraRequestTag.mMFSRFrameCount));
        metaItemInfo.setParameter(ParameterKeys.KEY_META_INDEX, String.valueOf(cameraRequestTag.mMetaIndex));
        metaItemInfo.setParameter(ParameterKeys.KEY_CAPTURE_FRAME_COUNT, Integer.valueOf(cameraRequestTag.mRequestNum));
        metaItemInfo.setParameter(ParameterKeys.KEY_CAPTURE_FEATURE_TYPE, Integer.valueOf(cameraRequestTag.mApsDecisionFeatureType));
        metaItemInfo.setParameter(ParameterKeys.KEY_AIS_STATE, String.valueOf(cameraRequestTag.mAISState));
        metaItemInfo.setParameter(ParameterKeys.KEY_INPUT_EVLIST, Arrays.toString(cameraRequestTag.mCaptureEVList));
        metaItemInfo.setParameter(ParameterKeys.KEY_SUPER_NIGHT_SCENE, String.valueOf(cameraRequestTag.mSuperNightScene));
        metaItemInfo.setParameter(ParameterKeys.KEY_TURBO_RAW_SENCE, String.valueOf(cameraRequestTag.mTurboRawScene));
        metaItemInfo.setParameter(ParameterKeys.KEY_CAPTURE_SENSOR_MODE, Integer.valueOf(cameraRequestTag.mCaptureSensorMode));
        metaItemInfo.setParameter(ParameterKeys.KEY_KEY_DECISION_FEATURE_TYPE, Integer.valueOf(cameraRequestTag.mApsDecisionFeatureType));
        metaItemInfo.setParameter(ParameterKeys.KEY_KEY_DECISION_BRACKET_MODE, Integer.valueOf(cameraRequestTag.mApsBracketMode));
        metaItemInfo.setParameter(ParameterKeys.KEY_REQUEST_NUM, Integer.valueOf(cameraRequestTag.mRequestNum));
        if (cameraRequestTag.mRearSelfCaptureEnable >= 0) {
            metaItemInfo.setParameter(ParameterKeys.KEY_REAR_SELF_MODE, Integer.valueOf(cameraRequestTag.mRearSelfCaptureEnable));
        }
        metaItemInfo.setParameter(ParameterKeys.KEY_PORTRAIT_HDR_TYPE, cameraRequestTag.mPortraitHdrType);
        metaItemInfo.setParameter(ParameterKeys.KEY_IS_FACE_DETECTED, Boolean.valueOf(cameraRequestTag.mbIsDetectFace));
        metaItemInfo.setParameter(ParameterKeys.KEY_DECISION_REQUEST_MIXED_FORMAT, Boolean.valueOf(cameraRequestTag.mbDecisionRequestMixedFormat));
        metaItemInfo.setParameter(ParameterKeys.KEY_CAPTURE_ALGO_LIST, cameraRequestTag.mApsAlgoFlags != null ? cameraRequestTag.mApsAlgoFlags : getAlgoFromApp(cameraRequestTag, null));
        metaItemInfo.setParameter(ParameterKeys.KEY_BURST_SHOT, Boolean.valueOf(cameraRequestTag.mbBurstShot));
        metaItemInfo.setParameter(ParameterKeys.KEY_IS_TUNING_DATA, Boolean.valueOf(cameraRequestTag.mbUseTuningData));
        metaItemInfo.setParameter(ParameterKeys.KEY_HDR_STATE, cameraRequestTag.mHDRState);
        metaItemInfo.setParameter(ParameterKeys.KEY_MASTER_PIPELINE, Integer.valueOf((this.mNewestMasterPipeline == null || this.mNewestMasterPipeline.length <= 0) ? cameraRequestTag.mMasterPipeline : this.mNewestMasterPipeline[0]));
        metaItemInfo.setParameter(ParameterKeys.KEY_THERMAL_ALGO_MASK, String.valueOf(cameraRequestTag.mThermalAlgoMask));
        if (50 == cameraRequestTag.mApsDecisionFeatureType) {
            metaItemInfo.setParameter(ParameterKeys.KEY_CAPTURE_STREAM_NUMBER, Integer.valueOf(this.mApsRequestTag.mCaptureStreamNumber));
        }
        if (AlgoSwitchConfig.isUseApsDecision() && cameraRequestTag.mbBurstShot) {
            metaItemInfo.setParameter(ParameterKeys.KEY_CAPTURE_ALGO_LIST, cameraRequestTag.mApsBurstAlgoFlags);
        }
        if (cameraRequestTag.mbPhotoWaterMarkEnable) {
            metaItemInfo.setParameter(ParameterKeys.KEY_APS_WATERMARK_PARAM, cameraRequestTag.mApsWatermarkParam);
            if (cameraRequestTag.mbWatermarkMakeupEnable) {
                metaItemInfo.setParameter(ParameterKeys.KEY_WATERAMRK_MAKEUP_ENABLE, "1");
                metaItemInfo.setParameter(ParameterKeys.KEY_WATERAMRK_MAKEUP_WIDTH, Integer.valueOf(cameraRequestTag.mbWatermarkMakeupWidth));
                metaItemInfo.setParameter(ParameterKeys.KEY_WATERAMRK_MAKEUP_HEIGHT, Integer.valueOf(cameraRequestTag.mbWatermarkMakeupHeight));
                metaItemInfo.setParameter(ParameterKeys.KEY_WATERAMRK_MAKEUP_START_X, Integer.valueOf(cameraRequestTag.mbWatermarkMakeupStartX));
                metaItemInfo.setParameter(ParameterKeys.KEY_WATERAMRK_MAKEUP_START_Y, Integer.valueOf(cameraRequestTag.mbWatermarkMakeupStartY));
            } else {
                metaItemInfo.setParameter(ParameterKeys.KEY_WATERAMRK_MAKEUP_ENABLE, "0");
            }
        }
        return metaItemInfo;
    }

    @Override // com.oplus.ocs.camera.consumer.ApsProcessorContract.IProcessor
    public void startCapture(CameraRequestTag cameraRequestTag) {
        ApsAdapterInterface apsAdapterInterface = this.mApsAdapter;
        if (apsAdapterInterface != null) {
            apsAdapterInterface.startCapture(createMetaItemInfo(cameraRequestTag));
        }
    }

    private void fillMetaItemForCapture(CameraRequestTag cameraRequestTag, ImageCategory.MetaItemInfo metaItemInfo) {
        metaItemInfo.setParameter(ParameterKeys.KEY_AUTO_TRANSMIT_BY_UNIT, cameraRequestTag.mAutoTransmit);
    }

    @Override // com.oplus.ocs.camera.consumer.ApsProcessorContract.IProcessor
    public int abortCaptures() {
        return this.mApsAdapter.abortCaptures();
    }

    @Override // com.oplus.ocs.camera.consumer.ApsProcessorContract.IProcessor
    public void beforeCapture(ImageCategory.MetaItemInfo metaItemInfo) {
        this.mApsAdapter.beforeCapture(metaItemInfo);
    }

    @Override // com.oplus.ocs.camera.consumer.ApsProcessorContract.IProcessor
    public boolean isApsCaptureAlgoInitializing() {
        return this.mApsAdapter.isApsCaptureAlgoInitializing();
    }

    @Override // com.oplus.ocs.camera.consumer.ApsProcessorContract.IProcessor
    public void capture(boolean z) {
        if (!z) {
            this.mCaptureStartedCallbackNum = 0;
        }
        this.mMergeIndex = 0;
        this.mFirstCaptureHash = 0;
    }

    @Override // com.oplus.ocs.camera.consumer.ApsProcessorContract.IProcessor
    public void videoSnapshot(ApsAdapterListener.CaptureCallback captureCallback, ApsCameraRequestTag apsCameraRequestTag) {
        ApsAdapterInterface apsAdapterInterface = this.mApsAdapter;
        if (apsAdapterInterface != null) {
            apsAdapterInterface.videoSnapshot(captureCallback, apsCameraRequestTag);
            this.mMergeIndex = 0;
        }
    }

    @Override // com.oplus.ocs.camera.consumer.ApsProcessorContract.IProcessor
    public void onApsCaptureStarted(long j) {
        this.mCaptureMergeIdentity = j;
    }

    @Override // com.oplus.ocs.camera.consumer.ApsProcessorContract.IProcessor
    public void onPictureMetaStart(CaptureRequest captureRequest, long j) {
        CameraRequestTag cameraRequestTag = (CameraRequestTag) captureRequest.getTag();
        synchronized (this.mRequestTagLock) {
            this.mPictureRequestTag = cameraRequestTag;
        }
        int i = this.mCaptureStartedCallbackNum;
        boolean z = false;
        boolean z2 = i == 0;
        this.mIsFirstFrame = z2;
        this.mCaptureStartedCallbackNum = i + 1;
        if (Util.isSupportOfflineNight(cameraRequestTag.mCaptureMode) && cameraRequestTag != null && cameraRequestTag.mbInNightProcess) {
            z = true;
        }
        if ((PlatformUtil.isQualcommPlatform() || (cameraRequestTag != null && "super_raw".equals(cameraRequestTag.mRawValue))) && !z && cameraRequestTag != null && cameraRequestTag.mMetaIndex == this.mCaptureStartedCallbackNum) {
            CameraUnitLog.d(TAG, "onPictureMetaStart, we save the use reprocess's metadata's timestamp: " + j);
            this.mReprocessMetadataTimeStamp = j;
        }
        if (z2) {
            this.mCaptureMergeIdentity = j;
            this.mFirstCaptureHash = captureRequest.hashCode();
        }
        if (cameraRequestTag != null) {
            this.mPicOrientation = cameraRequestTag.mOrientation;
        }
    }

    @Override // com.oplus.ocs.camera.consumer.ApsProcessorContract.IProcessor
    public boolean isFirstFrame() {
        return this.mIsFirstFrame;
    }

    @Override // com.oplus.ocs.camera.consumer.ApsProcessorContract.IProcessor
    public int getFirstFrameHashCode() {
        return this.mFirstCaptureHash;
    }

    @Override // com.oplus.ocs.camera.consumer.ApsProcessorContract.IProcessor
    public long getNightCaptureTotalTime() {
        return this.mNightCaptureTotalTime;
    }

    @Override // com.oplus.ocs.camera.consumer.ApsProcessorContract.IProcessor
    public long getFirstExposureTime() {
        return this.mFirstExposureTime;
    }

    @Override // com.oplus.ocs.camera.consumer.ApsProcessorContract.IProcessor
    public void onCaptureFailed(CaptureRequest captureRequest) {
        CameraRequestTag cameraRequestTag = (CameraRequestTag) captureRequest.getTag();
        if (cameraRequestTag != null) {
            int i = this.mApsRequestTag.mCaptureStreamNumber;
            int i2 = this.mApsRequestTag.mCaptureStreamNumber;
            if (!cameraRequestTag.mbBurstShot) {
                i = (!(CameraRequestTag.RequestMode.CAPTURE_RAW == cameraRequestTag.getRequestMode() || CameraRequestTag.RequestMode.CAPTURE_REPROCESS == cameraRequestTag.getRequestMode()) || 48 == cameraRequestTag.mApsDecisionFeatureType || 50 == cameraRequestTag.mApsDecisionFeatureType) ? this.mApsRequestTag.mCaptureStreamNumber : 1;
                i2 = cameraRequestTag.mRequestNum * i;
                if (-1 != cameraRequestTag.mDecisionHdrBrightenIndex) {
                    i2 += i;
                }
            }
            try {
                byte[] bArr = (byte[]) captureRequest.get(CameraConstant.KEY_MTK_TUNING_DATA_REQUEST);
                if (bArr != null && bArr.length > 0) {
                    if (CameraConstant.MTK_TUNING_REQUEST_RAW_AND_YUV[0] == bArr[0]) {
                        i *= 2;
                    }
                }
            } catch (Exception e) {
                CameraUnitLog.e(TAG, "onCaptureFailed, e: " + e.getMessage());
            }
            notifyCaptureFailed(this.mCaptureMergeIdentity, i, i2);
        }
    }

    private void notifyCaptureFailed(long j, int i, int i2) {
        ImageCategory.ImageItemInfo imageItemInfo = new ImageCategory.ImageItemInfo();
        imageItemInfo.mApsServiceListener = this.mApsServiceListener;
        if (i >= 1) {
            notifyErrorType(0, j, i, i2, imageItemInfo);
        }
    }

    @Override // com.oplus.ocs.camera.consumer.ApsProcessorContract.IProcessor
    public void addPictureImage(ImageReader imageReader, Image image, int i, CameraRequestTag cameraRequestTag, String str) {
        ApsResult.ImageBuffer imageBuffer = new ApsResult.ImageBuffer(imageReader, image, Util.getHardwareBuffer(image), image.getTimestamp(), str);
        if (!cameraRequestTag.mbBurstShot) {
            this.mSingleShotTimestamp = cameraRequestTag.mCaptureTime;
        }
        addPictureImage(imageBuffer, i, cameraRequestTag);
    }

    @Override // com.oplus.ocs.camera.consumer.ApsProcessorContract.IProcessor
    public void addPictureImage(ApsResult.ImageBuffer imageBuffer, int i, CameraRequestTag cameraRequestTag) {
        int i2;
        ImageCategory.ImageItemInfo imageItemInfo = new ImageCategory.ImageItemInfo();
        imageItemInfo.mImageBuffer = imageBuffer;
        imageItemInfo.mApsServiceListener = this.mApsServiceListener;
        imageItemInfo.setParameter(ParameterKeys.KEY_IMAGE_FORMAT, Integer.valueOf(imageBuffer.getHardwareBuffer().getFormat()));
        imageItemInfo.setParameter(ParameterKeys.KEY_IMAGE_WIDTH, Integer.valueOf(imageBuffer.getHardwareBuffer().getWidth()));
        imageItemInfo.setParameter(ParameterKeys.KEY_IMAGE_HEIGHT, Integer.valueOf(imageBuffer.getHardwareBuffer().getHeight()));
        imageItemInfo.setParameter(ParameterKeys.KEY_IMAGE_ROLE, Integer.valueOf(i));
        imageItemInfo.setParameter(ParameterKeys.KEY_TIME_STAMP, Long.valueOf(imageBuffer.getTimestamp()));
        ApsParameters.Key<Integer> key = ParameterKeys.KEY_REC_BURST_NUMBER;
        if (cameraRequestTag.mbBurstShot) {
            i2 = this.mReceiveBurstPictureCount + 1;
            this.mReceiveBurstPictureCount = i2;
        } else {
            i2 = -1;
        }
        imageItemInfo.setParameter(key, Integer.valueOf(i2));
        imageItemInfo.setParameter(ParameterKeys.KEY_BURST_SHOT, Boolean.valueOf(cameraRequestTag.mbBurstShot));
        if (cameraRequestTag.mbBurstShot) {
            imageItemInfo.setParameter(ParameterKeys.KEY_VALID_BURST_SHOT_IMAGE, true);
            imageItemInfo.setParameter(ParameterKeys.KEY_BURST_SHOT_FLAG_ID, Long.valueOf(cameraRequestTag.mBurstShotFlagId));
            imageItemInfo.setParameter(ParameterKeys.KEY_CSHOT_PATH, cameraRequestTag.mBurstShotPath);
        }
        if (cameraRequestTag.mbRawOnReprocess) {
            cameraRequestTag.mbRawOnReprocess = false;
            imageItemInfo.setParameter(ParameterKeys.KEY_RAW_ON_REPROCESS, true);
        }
        imageItemInfo.setParameter(ParameterKeys.KEY_ITEM_INFO_TYPE, ImageCategory.ItemInfoType.CAPTURE);
        imageItemInfo.setParameter(ParameterKeys.KEY_DATE, Long.valueOf(System.currentTimeMillis()));
        imageItemInfo.setParameter(ParameterKeys.KEY_RAW_SR_ENABLE, ParameterKeys.getFlagState(cameraRequestTag.mbRawSREnable));
        imageItemInfo.setParameter(ParameterKeys.KEY_AI_HIGH_PIXEL_ENABLE, Boolean.valueOf(this.mApsRequestTag.mbAiHighPixelEnable));
        CameraUnitLog.v(TAG, "addPictureImage, imageItem: " + imageItemInfo);
        this.mApsAdapter.addImage(imageItemInfo);
    }

    @Override // com.oplus.ocs.camera.consumer.ApsProcessorContract.IProcessor
    public void addPictureMeta(CaptureRequest captureRequest, TotalCaptureResult totalCaptureResult) {
        CameraRequestTag cameraRequestTag = (CameraRequestTag) captureRequest.getTag();
        if (CameraRequestTag.RequestMode.CAPTURE_RAW == cameraRequestTag.getRequestMode() && captureRequest.hashCode() == this.mFirstCaptureHash) {
            Long l = (Long) totalCaptureResult.get(CaptureResult.SENSOR_EXPOSURE_TIME);
            this.mFirstExposureTime = l != null ? l.longValue() : 0L;
            if (cameraRequestTag.mNightTotalExpTime != 0) {
                this.mNightCaptureTotalTime = cameraRequestTag.mNightTotalExpTime;
            } else {
                this.mNightCaptureTotalTime = this.mFirstExposureTime / 1000000;
            }
        }
        addPictureMeta(cameraRequestTag, new ApsCaptureResult(new ApsTotalResult(totalCaptureResult, null, null, 0L), Integer.toString(cameraRequestTag.mCameraId)), false);
    }

    private void fillMeta(ImageCategory.MetaItemInfo metaItemInfo, CameraRequestTag cameraRequestTag) {
        if (AlgoSwitchConfig.isUseApsDecision()) {
            if (cameraRequestTag == null) {
                cameraRequestTag = getPreviewRequestTag();
            }
            if (cameraRequestTag != null) {
                metaItemInfo.setParameter(ParameterKeys.KEY_BURST_CAPTURE, Integer.valueOf(cameraRequestTag.mbBurstShot ? 1 : 0));
                metaItemInfo.setParameter(ParameterKeys.KEY_SAT_OPEN, Integer.valueOf(cameraRequestTag.mbSatOpen ? 1 : 0));
                metaItemInfo.setParameter(ParameterKeys.KEY_CAMERA_TYPE, cameraRequestTag.mCameraType);
                metaItemInfo.setParameter(ParameterKeys.KEY_FACE_RECTIFY_OPEN, Integer.valueOf(cameraRequestTag.mbFaceRectifyOpen ? 1 : 0));
                metaItemInfo.setParameter(ParameterKeys.KEY_SINGLE_BLUR_NAME, cameraRequestTag.mSingleBlurAlgoName);
                metaItemInfo.setParameter(ParameterKeys.KEY_FACE_BEAUTY_ENABLE, ParameterKeys.getFlagState(cameraRequestTag.mbFaceBeautyOpen));
                metaItemInfo.setParameter(ParameterKeys.KEY_OPEN_SUPERTEXT, Integer.valueOf(cameraRequestTag.mbSuperTextOpen ? 1 : 0));
                metaItemInfo.setParameter(ParameterKeys.KEY_FACE_BEAUTY_ENABLE, cameraRequestTag.mbFaceBeautyOpen ? "1" : "0");
                metaItemInfo.setParameter(ParameterKeys.KEY_DERED_EYS, Integer.valueOf(cameraRequestTag.mbDeRedEye ? 1 : 0));
                metaItemInfo.setParameter(ParameterKeys.KEY_VIDEO_BLUR_OPEN, Integer.valueOf(cameraRequestTag.mbVideoBlurOpen ? 1 : 0));
                metaItemInfo.setParameter(ParameterKeys.KEY_VIDEO_NEON_OPEN, Integer.valueOf(cameraRequestTag.mbVideoNeonOpen ? 1 : 0));
                metaItemInfo.setParameter(ParameterKeys.KEY_APS_MODE_NAME, cameraRequestTag.mApsRequestTag.mModeName);
                metaItemInfo.setParameter(ParameterKeys.KEY_FILTER_OPEN, Integer.valueOf(cameraRequestTag.mbFilterOpen ? 1 : 0));
                metaItemInfo.setParameter(ParameterKeys.KEY_ENHANCE_EYS, Integer.valueOf(cameraRequestTag.mbEeyEnhance ? 1 : 0));
                metaItemInfo.setParameter(ParameterKeys.KEY_BLUR_VALUE, String.valueOf(cameraRequestTag.mBlurIndex));
                metaItemInfo.setParameter(ParameterKeys.KEY_TILTSHIFT_OPEN, Integer.valueOf(cameraRequestTag.mbTiltShiftOpen ? 1 : 0));
                metaItemInfo.setParameter(ParameterKeys.KEY_3D_PHOTO_OPEN, Integer.valueOf(cameraRequestTag.mb3dPhotoEnable ? 1 : 0));
                metaItemInfo.setParameter(ParameterKeys.KEY_VIDEO_RETENTION_OPEN, Integer.valueOf(cameraRequestTag.mbVideoRetentionOpen ? 1 : 0));
                metaItemInfo.setParameter(ParameterKeys.KEY_VIDEO_AICOLOR_ENABLE, ParameterKeys.getFlagState(cameraRequestTag.mbVideoAicolorEnable));
                metaItemInfo.setParameter(ParameterKeys.KEY_VIDEO_CAPTURE, Integer.valueOf(cameraRequestTag.mbVideoCapture ? 1 : 0));
                String apsModeName = ApsDataConvert.getApsModeName(cameraRequestTag.mApsRequestTag.mModeName, cameraRequestTag.mRearFrontCameraId);
                metaItemInfo.setParameter(ParameterKeys.KEY_SUPPORT_FULL_PROFESSIONAL, Integer.valueOf(AlgoSwitchConfig.getSupportCameraFeature(ApsDataConvert.CAPTURE_MODE_PROFESSIONAL_FULL, cameraRequestTag.mRearFrontCameraId) ? 1 : 0));
                metaItemInfo.setParameter(ParameterKeys.KEY_SUPPORT_FACEINFO, Integer.valueOf(AlgoSwitchConfig.getSupportCaptureAlgo(apsModeName, cameraRequestTag.mRearFrontCameraId, ParameterKeys.ALGO_NAME_FACE_INFO) ? 1 : 0));
                metaItemInfo.setParameter(ParameterKeys.KEY_FACEBASE_RETOUCH_ENABLE, Integer.valueOf(AlgoSwitchConfig.getSupportCaptureAlgo(apsModeName, cameraRequestTag.mRearFrontCameraId, ParameterKeys.ALGO_NAME_FACEBASE_RETOUCH) ? 1 : 0));
                int i = (CameraRequestTag.RequestMode.CAPTURE_REPROCESS == cameraRequestTag.getRequestMode() && cameraRequestTag.mbStarburstEnable) ? 1 : 0;
                metaItemInfo.setParameter(ParameterKeys.KEY_CAPTURE_REPROCESS, Integer.valueOf(i));
                metaItemInfo.setParameter(ParameterKeys.KEY_START_BURST_ENABLE, Integer.valueOf(i));
                metaItemInfo.setParameter(ParameterKeys.KEY_MIRROR_OPEN, Integer.valueOf(AlgoSwitchConfig.getSupportCaptureAlgo(apsModeName, cameraRequestTag.mRearFrontCameraId, ParameterKeys.ALGO_NAME_ROTATE_MIRROR) ? 1 : 0));
                metaItemInfo.setParameter(ParameterKeys.KEY_UPSCALE_OPEN, Integer.valueOf(AlgoSwitchConfig.getSupportCaptureAlgo(apsModeName, cameraRequestTag.mRearFrontCameraId, ParameterKeys.ALGO_NAME_UPSCALE) ? 1 : 0));
                metaItemInfo.setParameter(ParameterKeys.KEY_FACE_RESTORE_ENABLE, Integer.valueOf(AlgoSwitchConfig.getSupportCaptureAlgo(apsModeName, cameraRequestTag.mRearFrontCameraId, ParameterKeys.ALGO_NAME_FACE_RESTORE) ? 1 : 0));
                if (cameraRequestTag.mRearSelfCaptureEnable >= 0) {
                    metaItemInfo.setParameter(ParameterKeys.KEY_REAR_SELF_MODE, Integer.valueOf(cameraRequestTag.mRearSelfCaptureEnable));
                }
                if (PlatformUtil.isMtkPlatform() && "longExposure".equals(apsModeName) && AlgoSwitchConfig.getSupportCaptureAlgo(apsModeName, cameraRequestTag.mRearFrontCameraId, ParameterKeys.ALGO_NAME_RAW2YUV)) {
                    metaItemInfo.setParameter(ParameterKeys.KEY_SUPPORT_RAW2YUV, 1);
                }
            }
            if (this.mApsRequestTag != null) {
                metaItemInfo.setParameter(ParameterKeys.KEY_WATER_MARK_ENABLE, Integer.valueOf(this.mApsRequestTag.mbPhotoWaterMarkEnable ? 1 : 0));
            }
        }
    }

    private String[] getAlgoFromApp(CameraRequestTag cameraRequestTag, ApsCaptureResult apsCaptureResult) {
        boolean equals;
        ArrayList arrayList = new ArrayList();
        String apsModeName = ApsDataConvert.getApsModeName(cameraRequestTag.mApsRequestTag.mModeName, cameraRequestTag.mRearFrontCameraId);
        boolean z = true;
        if (cameraRequestTag.mbSatOpen && apsCaptureResult != null) {
            equals = apsCaptureResult.mSensorMask != null && apsCaptureResult.mSensorMask.length >= 3 && apsCaptureResult.mSensorMask[0] == 1;
        } else {
            equals = "rear_wide".equals(cameraRequestTag.mCameraType);
        }
        if (cameraRequestTag.mbBurstShot && equals) {
            arrayList.add(ParameterKeys.ALGO_NAME_RECTIFY);
        }
        if (cameraRequestTag.mbFaceRectifyOpen && !cameraRequestTag.mbBurstShot) {
            arrayList.add(ParameterKeys.ALGO_NAME_FACE_RECTIFY);
        }
        if (cameraRequestTag.mSingleBlurAlgoName != null) {
            arrayList.add(cameraRequestTag.mSingleBlurAlgoName);
        }
        if (PlatformUtil.isMtkPlatform()) {
            if (AlgoSwitchConfig.getSupportCaptureAlgo(apsModeName, cameraRequestTag.mRearFrontCameraId, ParameterKeys.ALGO_NAME_RAW2YUV) && cameraRequestTag.mbRaw2yuvEnable) {
                arrayList.add(ParameterKeys.ALGO_NAME_RAW2YUV);
            }
            if (AlgoSwitchConfig.getSupportCaptureAlgo(apsModeName, cameraRequestTag.mRearFrontCameraId, ParameterKeys.ALGO_NAME_RECTIFY) && equals && cameraRequestTag.mbRectifyEnable) {
                arrayList.add(ParameterKeys.ALGO_NAME_RECTIFY);
            }
        }
        if (cameraRequestTag.mbFaceBeautyOpen || cameraRequestTag.mbDeRedEye || !"none".equals(cameraRequestTag.mMakeupType)) {
            if (AlgoSwitchConfig.getSupportCaptureAlgo(apsModeName, cameraRequestTag.mRearFrontCameraId, ParameterKeys.ALGO_NAME_FACE_INFO)) {
                arrayList.add(ParameterKeys.ALGO_NAME_FACE_INFO);
            }
            if (cameraRequestTag.mbFaceBeautyOpen) {
                arrayList.add(ParameterKeys.ALGO_NAME_FACE_BEAUTY);
            }
            if (!"none".equals(cameraRequestTag.mMakeupType) && !arrayList.contains(ParameterKeys.ALGO_NAME_FACE_BEAUTY)) {
                arrayList.add(ParameterKeys.ALGO_NAME_FACE_BEAUTY);
            }
            if (cameraRequestTag.mbDeRedEye) {
                arrayList.add(ParameterKeys.ALGO_NAME_DERED_EYE);
            }
        }
        if (cameraRequestTag.mbVideoBlurOpen || cameraRequestTag.mbVideoNeonOpen) {
            arrayList.add(ParameterKeys.ALGO_NAME_VIDEO_BLUR);
        }
        if (cameraRequestTag.mbVideoRetentionOpen) {
            arrayList.add(ParameterKeys.ALGO_NAME_VIDEO_RETENTION);
        }
        if (cameraRequestTag.mbFilterOpen) {
            arrayList.add("microscope_capture_mode".equals(cameraRequestTag.mApsRequestTag.mModeName) || "microscope_video_mode".equals(cameraRequestTag.mApsRequestTag.mModeName) ? ParameterKeys.ALGO_NAME_FILTER_MICROSCOPE : ParameterKeys.ALGO_NAME_FILTER);
        }
        if (cameraRequestTag.mbEeyEnhance) {
            arrayList.add(ParameterKeys.ALGO_NAME_EYE_ENHANCE);
        }
        if (cameraRequestTag.mSuperTextVertices == null || cameraRequestTag.mSuperTextVertices.length() <= 0) {
            z = false;
        }
        if (cameraRequestTag.mbSuperTextOpen && z) {
            arrayList.add(ParameterKeys.ALGO_NAME_SUPER_TEXT);
        }
        if (CameraRequestTag.RequestMode.CAPTURE_REPROCESS == cameraRequestTag.getRequestMode() && cameraRequestTag.mbStarburstEnable) {
            arrayList.add(ParameterKeys.ALGO_NAME_STARBURST);
        }
        if (cameraRequestTag.mbFishEyeEnable) {
            arrayList.add(ParameterKeys.ALGO_NAME_FISH_EYE);
        }
        if (cameraRequestTag.mbTiltShiftOpen && cameraRequestTag.mTiltShiftBlurValue > 0) {
            arrayList.add(ParameterKeys.ALGO_NAME_TILT_SHIFT);
        }
        if (cameraRequestTag.mb3dPhotoEnable) {
            arrayList.add(ParameterKeys.ALGO_NAME_3D_PHOTO);
        }
        if (AlgoSwitchConfig.getSupportCaptureAlgo(apsModeName, cameraRequestTag.mRearFrontCameraId, ParameterKeys.ALGO_NAME_ROTATE_MIRROR) || cameraRequestTag.mbVideoCapture) {
            arrayList.add(ParameterKeys.ALGO_NAME_ROTATE_MIRROR);
        }
        if (AlgoSwitchConfig.getSupportCaptureAlgo(apsModeName, cameraRequestTag.mRearFrontCameraId, ParameterKeys.ALGO_NAME_UPSCALE)) {
            arrayList.add(ParameterKeys.ALGO_NAME_UPSCALE);
        }
        if (AlgoSwitchConfig.getSupportCaptureAlgo(apsModeName, cameraRequestTag.mRearFrontCameraId, ParameterKeys.ALGO_NAME_FACE_RESTORE)) {
            arrayList.add(ParameterKeys.ALGO_NAME_FACE_RESTORE);
        }
        if (cameraRequestTag.mbPhotoWaterMarkEnable) {
            arrayList.add(ParameterKeys.ALGO_NAME_WATERMARK);
        }
        return (String[]) arrayList.toArray(new String[0]);
    }

    /* JADX WARN: Can't wrap try/catch for region: R(108:1|(2:3|(87:365|8|9|10|11|(3:13|(1:360)(1:19)|20)(1:361)|21|(1:359)(1:24)|25|(1:27)(1:358)|28|(3:31|(1:46)(1:37)|(1:45))|(1:50)|51|(2:53|(1:55))|56|(1:62)|63|(1:65)|66|(1:357)|72|(1:74)|75|(1:77)(1:354)|78|(1:353)(1:82)|83|(1:352)(1:86)|87|(1:89)|90|(2:94|(1:98))|99|(1:101)|102|(1:351)(1:106)|107|(1:109)(1:350)|110|(1:349)(1:113)|(1:115)(1:348)|116|(2:344|(1:346)(1:347))|120|(1:343)|(1:131)(1:342)|132|(1:341)(7:135|(2:329|(3:331|(1:333)(1:335)|334)(3:336|(1:338)(1:340)|339))(2:147|(7:149|(1:151)(1:317)|152|(2:154|(1:156)(2:312|(1:314)(1:315)))(1:316)|157|(1:159)(1:311)|160)(2:318|(5:320|(1:322)(1:328)|323|(1:325)(1:327)|326)))|161|(1:163)(1:310)|164|(1:166)(1:309)|167)|168|(1:308)|172|(1:174)|175|(1:177)|178|(1:180)(2:300|(2:305|(1:307))(1:304))|181|(1:183)|184|(1:186)(1:299)|187|(1:189)(1:298)|190|(1:192)|193|(1:196)|197|(3:(1:280)(1:297)|281|(1:296)(3:287|(1:295)(1:293)|294))(5:201|(1:203)|204|(1:206)|207)|208|(5:210|(1:212)(1:233)|(1:232)(1:220)|221|(1:231)(1:230))|(1:235)(1:278)|236|(1:277)(1:240)|241|(1:276)(1:249)|(1:251)|252|(1:275)(1:256)|257|(1:261)|262|(1:264)|265|(1:267)(1:274)|268|(2:270|271)(1:273)))(1:366)|7|8|9|10|11|(0)(0)|21|(0)|359|25|(0)(0)|28|(6:31|(1:33)|46|(2:39|41)|43|45)|(2:48|50)|51|(0)|56|(3:58|60|62)|63|(0)|66|(1:68)|355|357|72|(0)|75|(0)(0)|78|(1:80)|353|83|(0)|352|87|(0)|90|(3:92|94|(2:96|98))|99|(0)|102|(1:104)|351|107|(0)(0)|110|(0)|349|(0)(0)|116|(1:118)|344|(0)(0)|120|(1:122)|343|(0)(0)|132|(0)|341|168|(1:170)|308|172|(0)|175|(0)|178|(0)(0)|181|(0)|184|(0)(0)|187|(0)(0)|190|(0)|193|(1:196)|197|(1:199)|(0)(0)|281|(1:283)|296|208|(0)|(0)(0)|236|(1:238)|277|241|(3:243|245|247)|276|(0)|252|(1:254)|275|257|(2:259|261)|262|(0)|265|(0)(0)|268|(0)(0)) */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x0068, code lost:
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0069, code lost:
        com.oplus.ocs.camera.common.util.CameraUnitLog.e(com.oplus.ocs.camera.consumer.ApsProcessor.TAG, "addPictureMeta, failed to print log ", r0);
     */
    /* JADX WARN: Removed duplicated region for block: B:104:0x030e  */
    /* JADX WARN: Removed duplicated region for block: B:116:0x0391  */
    /* JADX WARN: Removed duplicated region for block: B:125:0x0462  */
    /* JADX WARN: Removed duplicated region for block: B:126:0x0464  */
    /* JADX WARN: Removed duplicated region for block: B:134:0x0475  */
    /* JADX WARN: Removed duplicated region for block: B:135:0x0477  */
    /* JADX WARN: Removed duplicated region for block: B:142:0x0490  */
    /* JADX WARN: Removed duplicated region for block: B:143:0x0492  */
    /* JADX WARN: Removed duplicated region for block: B:156:0x04b7  */
    /* JADX WARN: Removed duplicated region for block: B:157:0x04d8  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0073  */
    /* JADX WARN: Removed duplicated region for block: B:235:0x06cd  */
    /* JADX WARN: Removed duplicated region for block: B:238:0x06dc  */
    /* JADX WARN: Removed duplicated region for block: B:241:0x06eb  */
    /* JADX WARN: Removed duplicated region for block: B:242:0x0709  */
    /* JADX WARN: Removed duplicated region for block: B:252:0x0762  */
    /* JADX WARN: Removed duplicated region for block: B:255:0x07b9  */
    /* JADX WARN: Removed duplicated region for block: B:256:0x07bb  */
    /* JADX WARN: Removed duplicated region for block: B:259:0x07c9  */
    /* JADX WARN: Removed duplicated region for block: B:260:0x07cc  */
    /* JADX WARN: Removed duplicated region for block: B:263:0x07ec  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x00a1  */
    /* JADX WARN: Removed duplicated region for block: B:281:0x083e  */
    /* JADX WARN: Removed duplicated region for block: B:282:0x0840  */
    /* JADX WARN: Removed duplicated region for block: B:301:0x08b4  */
    /* JADX WARN: Removed duplicated region for block: B:326:0x09ac  */
    /* JADX WARN: Removed duplicated region for block: B:327:0x09b2  */
    /* JADX WARN: Removed duplicated region for block: B:345:0x0a23  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00e8  */
    /* JADX WARN: Removed duplicated region for block: B:360:0x0b5e  */
    /* JADX WARN: Removed duplicated region for block: B:363:0x0b78  */
    /* JADX WARN: Removed duplicated region for block: B:364:0x0b7d  */
    /* JADX WARN: Removed duplicated region for block: B:367:0x0b9e  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00ea  */
    /* JADX WARN: Removed duplicated region for block: B:371:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:62:0x01cf  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x0250  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x02b8  */
    /* JADX WARN: Removed duplicated region for block: B:89:0x02d4  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x02d6  */
    @Override // com.oplus.ocs.camera.consumer.ApsProcessorContract.IProcessor
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void addPictureMeta(com.oplus.ocs.camera.common.util.CameraRequestTag r25, com.oplus.ocs.camera.consumer.apsAdapter.adapter.ApsCaptureResult r26, boolean r27) {
        /*
            Method dump skipped, instructions count: 2978
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.oplus.ocs.camera.consumer.ApsProcessor.addPictureMeta(com.oplus.ocs.camera.common.util.CameraRequestTag, com.oplus.ocs.camera.consumer.apsAdapter.adapter.ApsCaptureResult, boolean):void");
    }

    @Override // com.oplus.ocs.camera.consumer.ApsProcessorContract.IProcessor
    public void addVideoImage(ImageReader imageReader, Image image, ImageCategory.ItemInfoType itemInfoType) {
        String str = this.mCurrentModeName;
        this.mApsAdapter.addVideoImage(generateImageInfo(imageReader, image, this.mApsRequestTag, itemInfoType, null, null, str != null && str.equals("slowvideo_mode") && this.mbVideoImageNeedDetach, true));
    }

    @Override // com.oplus.ocs.camera.consumer.ApsProcessorContract.IProcessor
    @Deprecated
    public Bitmap processBitmap(Bitmap bitmap, CaptureResult captureResult, ImageCategory.MetaItemInfo metaItemInfo) {
        ApsAdapterInterface apsAdapterInterface = this.mApsAdapter;
        return apsAdapterInterface != null ? apsAdapterInterface.processBitmap(bitmap, captureResult, metaItemInfo) : bitmap;
    }

    @Override // com.oplus.ocs.camera.consumer.ApsProcessorContract.IProcessor
    public void updateThumbnailMap(long j) {
        ApsAdapterInterface apsAdapterInterface = this.mApsAdapter;
        if (apsAdapterInterface != null) {
            apsAdapterInterface.updateThumbnailMap(j);
        }
    }

    @Override // com.oplus.ocs.camera.consumer.ApsProcessorContract.IProcessor
    public boolean notifyLastCaptureFrame(ImageCategory.ImageItemInfo imageItemInfo, ImageCategory.MetaItemInfo metaItemInfo) {
        if (this.mApsAdapter != null) {
            imageItemInfo.mApsServiceListener = this.mApsServiceListener;
            return this.mApsAdapter.notifyLastCaptureFrame(imageItemInfo, metaItemInfo);
        }
        return false;
    }

    @Override // com.oplus.ocs.camera.consumer.ApsProcessorContract.IProcessor
    public void previewDecision(CaptureResult captureResult) {
        int i = this.mAPSDecisionPreviewFrameCount;
        this.mAPSDecisionPreviewFrameCount = i + 1;
        if (i < 3) {
            return;
        }
        this.mAPSDecisionPreviewFrameCount = 0;
        synchronized (this.mRequestTagLock) {
            CameraRequestTag previewRequestTag = getPreviewRequestTag();
            if (previewRequestTag == null) {
                return;
            }
            initAPS(2, this.mApsInitParameter, getUnInitAlgos());
            ApsAdapterDecision.DecisionControlData decisionControlData = new ApsAdapterDecision.DecisionControlData();
            int i2 = previewRequestTag.mCameraId;
            decisionControlData.mCameraId = CameraCharacteristicsHelper.isFrontCamera(i2) ? 1 : 0;
            decisionControlData.mLogicCameraId = String.valueOf(i2);
            decisionControlData.mPiEnable = previewRequestTag.mbPiEnable ? 1 : 0;
            decisionControlData.mAlgoVisualizationEnable = previewRequestTag.mbVisualizationEnable ? 1 : 0;
            decisionControlData.mZoomValue = previewRequestTag.mZoomRatio;
            decisionControlData.mTripodEnable = previewRequestTag.mbTripodEnable ? 1 : 0;
            decisionControlData.mLogicCameraType = previewRequestTag.mLogicCameraType;
            decisionControlData.mCaptureMode = ApsDataConvert.getApsModeName(this.mApsRequestTag.mModeName, previewRequestTag.mRearFrontCameraId);
            decisionControlData.mCaptureResult = captureResult;
            decisionControlData.mDecisionCallback = this.mApsDecisionListener;
            decisionControlData.mUltraHighResolutionEnable = 0;
            decisionControlData.mSuperRawEnable = "super_raw".equals(previewRequestTag.mRawValue) ? 1 : 0;
            decisionControlData.mAvailMem = Util.getAvailMemory(ContextHolder.getContext());
            ImageCategory.MetaItemInfo metaItemInfo = new ImageCategory.MetaItemInfo();
            decisionControlData.mAlgoHashMap = new HashMap<>(metaItemInfo.mParameterMap.size());
            fillMeta(metaItemInfo, previewRequestTag);
            for (Map.Entry<ApsParameters.Key<?>, ApsParameters.ValueWrapper<?>> entry : metaItemInfo.mParameterMap.entrySet()) {
                decisionControlData.mAlgoHashMap.put(entry.getKey().getName(), String.valueOf(entry.getValue().getValue().get()));
            }
            this.mApsAdapter.onDecisionControlData(decisionControlData);
        }
    }

    @Override // com.oplus.ocs.camera.consumer.ApsProcessorContract.IProcessor
    public void addTuningInfo(ImageCategory.TuningItemInfo tuningItemInfo) {
        CameraUnitLog.d(TAG, "addTuningInfo, tuningItem: " + tuningItemInfo);
        this.mApsAdapter.addTuningItem(tuningItemInfo);
    }

    @Override // com.oplus.ocs.camera.consumer.ApsProcessorContract.IProcessor
    public void onRecordingResult(int i) {
        if (1 != i) {
            if (4 == i) {
                this.mApsAdapter.setEnableAPSPipeline(ApsParameters.APS_PIPELINE_NAME_VIDEO, false);
                return;
            }
            return;
        }
        CameraRequestTag cameraRequestTag = this.mRecordingRequestTag;
        if (cameraRequestTag != null && cameraRequestTag.isHyperLapseOpen && !this.mbVideoRecording) {
            this.mbVideoRecording = true;
        }
        this.mbHighFrameInterpolationStarted = false;
        this.mApsAdapter.setEnableAPSPipeline(ApsParameters.APS_PIPELINE_NAME_VIDEO, true);
    }

    @Override // com.oplus.ocs.camera.consumer.ApsProcessorContract.IProcessor
    public void setRecordingTag(CameraRequestTag cameraRequestTag) {
        this.mRecordingRequestTag = cameraRequestTag;
    }

    @Override // com.oplus.ocs.camera.consumer.ApsProcessorContract.IProcessor
    public void onRecordingFrameInterpolated() {
        if (!this.mbHighFrameInterpolationStarted) {
            this.mApsAdapter.setEnableAPSPipeline(ApsParameters.APS_PIPELINE_NAME_VIDEO, false);
        }
        this.mbHighFrameInterpolationStarted = true;
    }

    @Override // com.oplus.ocs.camera.consumer.ApsProcessorContract.IProcessor
    public boolean checkRuntimeState(long j, long j2) {
        long totalMemory = Util.getTotalMemory(ContextHolder.getContext());
        long j3 = j2 * 1048576;
        long j4 = totalMemory > CameraConstant.MEMORY_GB_12G ? CameraConstant.MEMORY_GB_4G : ((float) totalMemory) * MAX_AVAILABLE_MEMORY_RATIO;
        APSClient.APSRuntimeInfo runtimeInfo = this.mApsAdapter.getRuntimeInfo();
        if (runtimeInfo != null) {
            long j5 = runtimeInfo.mInputMemSize * 1048576;
            long j6 = runtimeInfo.mSingleAlgoMaxRunMem * 1048576;
            int i = runtimeInfo.mTotalTimeEstimate;
            long j7 = Runtime.getRuntime().totalMemory();
            CameraUnitLog.d(TAG, "checkRuntimeState, needMemory: " + j + ", totalMemory: " + totalMemory + ", maxAvailableMemory: " + j4 + ", mInputMemSize: " + j5 + ", singleAlgoMaxRunMem: " + j6 + ", cameraMem: " + j3 + ", jvmTotalMem: " + j7 + ", timeLimit: 25000, totalTimeEstimate: " + i, true);
            return totalMemory < CameraConstant.MEMORY_GB_4G ? ((j5 + j) + j3) + j6 < j4 && ((long) i) < 25000 : (((j5 + j) + j3) + j6) + j7 < j4 && ((long) i) < 25000;
        }
        return false;
    }

    @Override // com.oplus.ocs.camera.consumer.ApsProcessorContract.IProcessor
    public long getRuntimeMemorySize(long j) {
        long j2 = j * 1048576;
        APSClient.APSRuntimeInfo runtimeInfo = this.mApsAdapter.getRuntimeInfo();
        if (runtimeInfo != null) {
            long j3 = runtimeInfo.mInputMemSize * 1048576;
            long j4 = runtimeInfo.mSingleAlgoMaxRunMem * 1048576;
            CameraUnitLog.d(TAG, "getRuntimeMemorySize, mInputMemSize: " + j3 + ", singleAlgoMaxRunMem: " + j4 + ", cameraMem: " + j2);
            return j3 + j2 + j4;
        }
        return j2;
    }

    @Override // com.oplus.ocs.camera.consumer.ApsProcessorContract.IProcessor
    public boolean checkInputMemSize() {
        APSClient.APSRuntimeInfo runtimeInfo = this.mApsAdapter.getRuntimeInfo();
        StringBuilder sb = new StringBuilder();
        sb.append("checkInputMemSize, inputMemSize: ");
        sb.append(runtimeInfo == null ? null : Integer.valueOf(runtimeInfo.mInputMemSize));
        CameraUnitLog.d(TAG, sb.toString(), true);
        return runtimeInfo == null || runtimeInfo.mInputMemSize > 0;
    }

    @Override // com.oplus.ocs.camera.consumer.apsAdapter.adapter.ApsAdapterInterface.ImageProcessListener
    public void afterAddFrame(ImageCategory.ImageItemInfo imageItemInfo, ImageCategory.MetaItemInfo metaItemInfo) {
        if (this.mApsVideoTotalResult != null && metaItemInfo != null && imageItemInfo != null && imageItemInfo.mImageBuffer != null && this.mApsVideoTotalResult.getMetaImage() != null && this.mApsVideoTotalResult.getMetaImage() == imageItemInfo.mImageBuffer.getImage()) {
            CameraUnitLog.v(TAG, "afterAddFrame, meta image: " + imageItemInfo.mImageBuffer.getImage());
            metaItemInfo.mImageBuffer.getHardwareBuffer().close();
            metaItemInfo.mImageBuffer = null;
            this.mApsVideoTotalResult.setInvalid();
        }
        if (imageItemInfo == null || imageItemInfo.mApsServiceListener == null) {
            return;
        }
        imageItemInfo.mApsServiceListener.onFinishAddFrame(imageItemInfo, metaItemInfo);
    }

    @Override // com.oplus.ocs.camera.consumer.apsAdapter.adapter.ApsAdapterInterface.ImageProcessListener
    public void afterProcessImage(int i, ImageCategory.ImageItemInfo imageItemInfo, ImageCategory.MetaItemInfo metaItemInfo) {
        CameraUnitLog.v(TAG, "afterProcessImage, processResult: " + i + ", imageItemInfo: " + imageItemInfo + ", metaItemInfo: " + metaItemInfo);
        this.mApsAdapter.countBurstShot(imageItemInfo, metaItemInfo);
        this.mConsumerContract.afterProcessImage(i, imageItemInfo, metaItemInfo);
    }

    @Override // com.oplus.ocs.camera.consumer.apsAdapter.adapter.ApsAdapterInterface.ImageProcessListener
    public void onProcessQueueEmpty() {
        CameraUnitLog.v(TAG, "onProcessQueueEmpty");
    }

    @Override // com.oplus.ocs.camera.consumer.apsAdapter.adapter.ApsAdapterInterface.ImageProcessListener
    public void onJpegReceived(ApsResult apsResult) {
        CameraUnitLog.v(TAG, "onJpegReceived, result: " + apsResult + ", mPicOrientation: " + this.mPicOrientation);
        this.mConsumerContract.onApsJpegArrived(new CameraImage(apsResult.mCopyBuffer, apsResult.mBufferType, apsResult.mWidth, apsResult.mHeight, apsResult.mStride, apsResult.mScanline, this.mPicOrientation, apsResult.mIdentity, apsResult.mbHeifProcessInAps, "", 1), apsResult);
    }

    @Override // com.oplus.ocs.camera.consumer.apsAdapter.adapter.ApsAdapterInterface.ImageProcessListener
    public void onHeicReceived(ApsResult apsResult) {
        CameraUnitLog.v(TAG, "onHeicReceived, result: " + apsResult + ", mPicOrientation: " + this.mPicOrientation);
        this.mConsumerContract.onApsJpegArrived(new CameraImage(apsResult.mCopyBuffer, apsResult.mBufferType, apsResult.mWidth, apsResult.mHeight, apsResult.mStride, apsResult.mScanline, this.mPicOrientation, apsResult.mIdentity, apsResult.mbHeifProcessInAps, "", 2), apsResult);
    }

    @Override // com.oplus.ocs.camera.consumer.apsAdapter.adapter.ApsAdapterInterface.ImageProcessListener
    public void onReprocess(ImageCategory imageCategory, ApsResult apsResult) {
        ImageCategory.ImageItemInfo imageItemInfo = imageCategory.mImageItemList.get(0);
        ImageCategory.MetaItemInfo metaItemInfo = imageCategory.mMetaItem;
        if (imageItemInfo != null && imageItemInfo.mApsServiceListener != null) {
            if (apsResult.getImage() == null) {
                imageItemInfo.mImageBuffer.getImage().getPlanes()[0].getBuffer().put(apsResult.mCopyBuffer, 0, imageItemInfo.mImageBuffer.getImage().getPlanes()[0].getBuffer().remaining());
                imageItemInfo.mImageBuffer.getImage();
            }
            if (PlatformUtil.isMtkPlatform()) {
                CameraRequestTag cameraRequestTag = (CameraRequestTag) ((ApsCameraRequestTag) metaItemInfo.get(ApsParameters.KEY_CAMERA_REQUEST_TAG)).mTag;
                TotalCaptureResult totalCaptureResult = (TotalCaptureResult) metaItemInfo.get(ApsParameters.KEY_CAPTURE_RESULT);
                if (cameraRequestTag != null && totalCaptureResult != null && !"super_raw".equals(cameraRequestTag.mRawValue)) {
                    ApsCaptureResult apsCaptureResult = new ApsCaptureResult(new ApsTotalResult(totalCaptureResult, null, null, 0L), Integer.toString(cameraRequestTag.mCameraId));
                    cameraRequestTag.mbRawOnReprocess = true;
                    addPictureImage(imageItemInfo.mImageBuffer, 0, cameraRequestTag);
                    addPictureMeta(cameraRequestTag, apsCaptureResult, false);
                    return;
                }
            }
            imageItemInfo.mApsServiceListener.onReprocess(imageItemInfo.mImageBuffer.getImage(), (TotalCaptureResult) metaItemInfo.get(ApsParameters.KEY_CAPTURE_RESULT), new Rect(apsResult.mCropLeft, apsResult.mCropTop, apsResult.mCropRight, apsResult.mCropBottom), (ApsCameraRequestTag) metaItemInfo.get(ApsParameters.KEY_CAMERA_REQUEST_TAG));
        }
        if (apsResult.mProcTimes != null && metaItemInfo.get(ApsParameters.KEY_APS_PROCESS_ALGO_TYPE) != null && ((String[]) metaItemInfo.get(ApsParameters.KEY_APS_PROCESS_ALGO_TYPE)).length > 0) {
            this.mReprocessApsWaitTime = apsResult.mProcTimes.get(ParameterKeys.KEY_REPROCESS_APS_WAIT_TIME.getName());
            String substring = ((String[]) metaItemInfo.get(ApsParameters.KEY_APS_PROCESS_ALGO_TYPE))[0].substring(9);
            if (apsResult.mProcTimes.get(substring) != null) {
                this.mNightProcessTime = apsResult.mProcTimes.get(substring);
                this.mReprocessStartTime = System.currentTimeMillis();
                return;
            }
            CameraUnitLog.e(TAG, "onReprocess, no reprocess algo found in procTimer!");
            this.mNightProcessTime = 0L;
            this.mReprocessStartTime = 0L;
            this.mReprocessApsWaitTime = 0L;
            return;
        }
        CameraUnitLog.e(TAG, "onReprocess, procTimer is null!");
        this.mNightProcessTime = 0L;
        this.mReprocessStartTime = 0L;
        this.mReprocessApsWaitTime = 0L;
    }

    @Override // com.oplus.ocs.camera.consumer.apsAdapter.adapter.ApsAdapterInterface.ImageProcessListener
    public void onBurstShotStart(long j) {
        this.mConsumerContract.onBurstShotStart(j);
    }

    @Override // com.oplus.ocs.camera.consumer.apsAdapter.adapter.ApsAdapterInterface.ImageProcessListener
    public void onBurstShotEnd(ImageCategory.ImageItemInfo imageItemInfo, ImageCategory.MetaItemInfo metaItemInfo) {
        this.mConsumerContract.onBurstShotEnd(imageItemInfo, metaItemInfo);
        this.mReceiveBurstPictureCount = 0;
    }

    @Override // com.oplus.ocs.camera.consumer.apsAdapter.adapter.ApsAdapterInterface.ImageProcessListener
    public HashMap<String, String> fillApsParameters(ImageCategory imageCategory, int i, boolean z) {
        HashMap<String, String> hashMap = new HashMap<>();
        if (imageCategory == null) {
            return hashMap;
        }
        ImageCategory.MetaItemInfo metaItemInfo = imageCategory.mMetaItem;
        ImageCategory.ImageItemInfo imageItemInfo = imageCategory.mImageItemList != null ? imageCategory.mImageItemList.get(0) : null;
        if (metaItemInfo != null) {
            for (Map.Entry<ApsParameters.Key<?>, ApsParameters.ValueWrapper<?>> entry : metaItemInfo.mParameterMap.entrySet()) {
                ApsParameters.Key<?> key = entry.getKey();
                if (1 == key.getCategory()) {
                    hashMap.put(key.getName(), String.valueOf(entry.getValue().getValue().get()));
                }
            }
        }
        if (imageItemInfo != null) {
            for (Map.Entry<ApsParameters.Key<?>, ApsParameters.ValueWrapper<?>> entry2 : imageItemInfo.mParameterMap.entrySet()) {
                ApsParameters.Key<?> key2 = entry2.getKey();
                if (1 == key2.getCategory()) {
                    hashMap.put(key2.getName(), String.valueOf(entry2.getValue().getValue().get()));
                }
            }
        }
        if (1 == i && metaItemInfo != null && imageItemInfo != null) {
            hashMap.put(ApsParameters.KEY_PIPELINE, ApsParameters.APS_PIPELINE_NAME_CAPTURE);
            hashMap.put(ApsParameters.KEY_PROCESS_IMAGE_IDENTITY, String.valueOf(metaItemInfo.get(ParameterKeys.KEY_MERGE_IDENTITY)));
            hashMap.put(ParameterKeys.KEY_CUSTOM_BEAUTY_PARAM.getName(), Arrays.toString((int[]) metaItemInfo.get(ParameterKeys.KEY_CUSTOM_BEAUTY_PARAM)));
            hashMap.put(ParameterKeys.KEY_FACE_DATA.getName(), Arrays.toString((int[]) metaItemInfo.get(ParameterKeys.KEY_FACE_DATA)));
            if (((Long) metaItemInfo.get(ParameterKeys.KEY_DATE)).longValue() != 0) {
                hashMap.put(ParameterKeys.KEY_PICTURE_DATE_TIME, String.valueOf(metaItemInfo.get(ParameterKeys.KEY_DATE)));
            } else {
                hashMap.put(ParameterKeys.KEY_PICTURE_DATE_TIME, String.valueOf(imageItemInfo.get(ParameterKeys.KEY_DATE)));
            }
            if (metaItemInfo.get(ParameterKeys.KEY_PICTURE_EXIF_FLAG) != null) {
                hashMap.put(ParameterKeys.KEY_PICTURE_EXIF_FLAG.getName(), ((String) metaItemInfo.get(ParameterKeys.KEY_PICTURE_EXIF_FLAG)).substring(6));
            }
            if (imageItemInfo.get(ParameterKeys.KEY_BURST_SHOT) != null) {
                hashMap.put(ParameterKeys.KEY_BURST_SHOT.getName(), String.valueOf(imageItemInfo.get(ParameterKeys.KEY_BURST_SHOT)));
            }
            if (imageItemInfo.get(ParameterKeys.KEY_BURST_SHOT_FLAG_ID) != null) {
                hashMap.put(ParameterKeys.KEY_BURST_SHOT_FLAG_ID.getName(), String.valueOf(imageItemInfo.get(ParameterKeys.KEY_BURST_SHOT_FLAG_ID)));
                hashMap.put(ParameterKeys.KEY_REC_BURST_NUMBER.getName(), String.valueOf(imageItemInfo.get(ApsParameters.KEY_REC_BURST_NUMBER)));
            }
            if (metaItemInfo.get(ParameterKeys.KEY_NIGHT_ALGO_PROCESS_TIME) != null) {
                hashMap.put(ParameterKeys.KEY_NIGHT_ALGO_PROCESS_TIME.getName(), String.valueOf(metaItemInfo.get(ParameterKeys.KEY_NIGHT_ALGO_PROCESS_TIME)));
            }
            if (metaItemInfo.get(ParameterKeys.KEY_REPROCESS_TIME) != null) {
                hashMap.put(ParameterKeys.KEY_REPROCESS_TIME.getName(), String.valueOf(metaItemInfo.get(ParameterKeys.KEY_REPROCESS_TIME)));
            }
            if (metaItemInfo.get(ParameterKeys.KEY_REPROCESS_APS_WAIT_TIME) != null) {
                hashMap.put(ParameterKeys.KEY_REPROCESS_APS_WAIT_TIME.getName(), String.valueOf(metaItemInfo.get(ParameterKeys.KEY_REPROCESS_APS_WAIT_TIME)));
            }
            if (metaItemInfo.get(ParameterKeys.KEY_REPROCESS_META_DATA) != null) {
                hashMap.put(ParameterKeys.KEY_REPROCESS_META_DATA.getName(), String.valueOf(metaItemInfo.get(ParameterKeys.KEY_REPROCESS_META_DATA)));
            }
            CameraUnitLog.i(TAG, "fillApsParameters, isProcessImage: " + z);
            if (z) {
                this.mConsumerContract.fillApsParameters(i, hashMap);
            }
        } else if (2 == i || 3 == i || 4 == i) {
            hashMap.put(ParameterKeys.KEY_PREVIEW_CALLBACK_TYPE.getName(), this.mPreviewCallbackType);
            if (imageItemInfo != null) {
                hashMap.put(ApsParameters.KEY_PROCESS_IMAGE_IDENTITY, String.valueOf(imageItemInfo.get(ParameterKeys.KEY_TIME_STAMP)));
            }
            if (4 == i) {
                hashMap.put(ApsParameters.KEY_PIPELINE, ApsParameters.APS_PIPELINE_NAME_CAPTURE);
            } else {
                hashMap.put(ApsParameters.KEY_PIPELINE, ApsParameters.APS_PIPELINE_NAME_PREVIEW);
            }
        }
        return hashMap;
    }

    @Override // com.oplus.ocs.camera.consumer.apsAdapter.adapter.ApsAdapterInterface.ImageProcessListener
    public HashMap<String, String> fillApsParameters(ApsInitParameter apsInitParameter) {
        HashMap<String, String> hashMap = new HashMap<>();
        if (apsInitParameter == null) {
            return hashMap;
        }
        for (Map.Entry<ApsParameters.Key<?>, ApsParameters.ValueWrapper<?>> entry : apsInitParameter.mParameterMap.entrySet()) {
            ApsParameters.Key<?> key = entry.getKey();
            if (1 == key.getCategory()) {
                hashMap.put(key.getName(), String.valueOf(entry.getValue().getValue().get()));
            }
        }
        return hashMap;
    }

    @Override // com.oplus.ocs.camera.consumer.apsAdapter.adapter.ApsAdapterInterface.ImageProcessListener
    public ApsInitParameter getApsInitParameter(ApsInitParameter apsInitParameter, ApsInitParameter apsInitParameter2) {
        Set<String> initAlgos = getInitAlgos((String) apsInitParameter.get(ParameterKeys.KEY_CAPTURE_MODE), (String) apsInitParameter.get(ParameterKeys.KEY_CAMERA_ID), (Set) apsInitParameter.get(ParameterKeys.KEY_UNINIT_ALGOS));
        if (needInit(apsInitParameter, apsInitParameter2, initAlgos)) {
            ApsInitParameter apsInitParameter3 = new ApsInitParameter();
            apsInitParameter3.mVendorTags = apsInitParameter.mVendorTags;
            apsInitParameter3.mVendorTagKeyMap = apsInitParameter.mVendorTagKeyMap;
            apsInitParameter3.setParameter(ParameterKeys.KEY_CAPTURE_MODE, (String) apsInitParameter.get(ParameterKeys.KEY_CAPTURE_MODE));
            apsInitParameter3.setParameter(ParameterKeys.KEY_CAMERA_FEATURE, (String) apsInitParameter.get(ParameterKeys.KEY_CAMERA_FEATURE));
            apsInitParameter3.setParameter(ParameterKeys.KEY_CAMERA_ID, (String) apsInitParameter.get(ParameterKeys.KEY_CAMERA_ID));
            apsInitParameter3.setParameter(ParameterKeys.KEY_LOGIC_CAMERA_ID, (Integer) apsInitParameter.get(ParameterKeys.KEY_LOGIC_CAMERA_ID));
            apsInitParameter3.setParameter(ParameterKeys.KEY_HIGHT_PICTURE_SIZE_ENABLE, (String) apsInitParameter.get(ParameterKeys.KEY_HIGHT_PICTURE_SIZE_ENABLE));
            apsInitParameter3.setParameter(ParameterKeys.KEY_PHOTO_10BIT_ENABLE, (String) apsInitParameter.get(ParameterKeys.KEY_PHOTO_10BIT_ENABLE));
            apsInitParameter3.setParameter(ParameterKeys.KEY_OPERATION_MODE, (String) apsInitParameter.get(ParameterKeys.KEY_OPERATION_MODE));
            apsInitParameter3.setParameter(ParameterKeys.KEY_PREVIEW_SIZE, (Size) apsInitParameter.get(ParameterKeys.KEY_PREVIEW_SIZE));
            apsInitParameter3.setParameter(ParameterKeys.KEY_VIDEO_SIZE, (Size) apsInitParameter.get(ParameterKeys.KEY_VIDEO_SIZE));
            apsInitParameter3.setParameter(ParameterKeys.KEY_QUICK_JPEG, (Boolean) apsInitParameter.get(ParameterKeys.KEY_QUICK_JPEG));
            apsInitParameter3.setParameter(ParameterKeys.KEY_UNINIT_ALGOS, new HashSet((Collection) apsInitParameter.get(ParameterKeys.KEY_UNINIT_ALGOS)));
            apsInitParameter3.mApsModule = apsInitParameter.mApsModule;
            apsInitParameter3.mInitAlgo = new String[initAlgos.size()];
            int i = 0;
            for (String str : initAlgos) {
                apsInitParameter3.mInitAlgo[i] = str;
                i++;
            }
            return apsInitParameter3;
        }
        return null;
    }

    @Override // com.oplus.ocs.camera.consumer.apsAdapter.adapter.ApsAdapterInterface.ImageProcessListener
    public void onPreviewFrameProcessStarted(long j, Long l) {
        ApsRequestTag apsRequestTag = this.mApsRequestTag;
        if (apsRequestTag != null && !"slowvideo_mode".equals(apsRequestTag.mModeName)) {
            this.mProcessingPreviewFrameSet.add(l);
        }
        this.mConsumerContract.onHalPreviewCollected(l);
    }

    @Override // com.oplus.ocs.camera.consumer.apsAdapter.adapter.ApsAdapterInterface.ImageProcessListener
    public void onFirstCaptureFrameAdd(ImageCategory imageCategory) {
        CameraUnitLog.d(TAG, "onFirstCaptureFrameAdd");
        this.mConsumerContract.onFirstCaptureFrameAdd(imageCategory);
    }

    @Override // com.oplus.ocs.camera.consumer.apsAdapter.adapter.ApsAdapterInterface.ImageProcessListener
    public void onApsConnected() {
        this.mbApsConnected = true;
        this.mApsConnectCondition.open();
    }

    private Set<String> getInitAlgos(String str, String str2, Set<String> set) {
        HashSet hashSet = new HashSet();
        AlgoSwitchConfig.CaptureConfig captureConfig = AlgoSwitchConfig.getCaptureConfig(str, Integer.parseInt(str2));
        if (captureConfig != null && captureConfig.mbEnable) {
            hashSet.addAll(captureConfig.mAlgos);
            hashSet.removeAll(set);
        }
        if (hashSet.size() == 0) {
            hashSet.add(ApsParameters.ALGO_NAME_NONE);
        }
        return hashSet;
    }

    private boolean needInit(ApsInitParameter apsInitParameter, ApsInitParameter apsInitParameter2, Set<String> set) {
        if (AlgoSwitchConfig.getApsMode() == 0 || apsInitParameter.get(ParameterKeys.KEY_CAPTURE_MODE) == null || apsInitParameter.get(ParameterKeys.KEY_CAMERA_ID) == null || set == null || apsInitParameter.get(ParameterKeys.KEY_HIGHT_PICTURE_SIZE_ENABLE) == null || apsInitParameter.get(ParameterKeys.KEY_PHOTO_10BIT_ENABLE) == null || apsInitParameter.get(ParameterKeys.KEY_OPERATION_MODE) == null || apsInitParameter.get(ParameterKeys.KEY_PREVIEW_SIZE) == null) {
            return false;
        }
        if (apsInitParameter2 == null) {
            return (AlgoSwitchConfig.getApsVersion() == 2 && apsInitParameter.mApsModule == 3) ? false : true;
        }
        return (((String) apsInitParameter2.get(ParameterKeys.KEY_CAPTURE_MODE)).equals(apsInitParameter.get(ParameterKeys.KEY_CAPTURE_MODE)) && ((String) apsInitParameter2.get(ParameterKeys.KEY_CAMERA_ID)).equals(apsInitParameter.get(ParameterKeys.KEY_CAMERA_ID)) && getInitAlgos((String) apsInitParameter2.get(ParameterKeys.KEY_CAPTURE_MODE), (String) apsInitParameter2.get(ParameterKeys.KEY_CAMERA_ID), (Set) apsInitParameter2.get(ParameterKeys.KEY_UNINIT_ALGOS)).equals(set) && ((String) apsInitParameter2.get(ParameterKeys.KEY_HIGHT_PICTURE_SIZE_ENABLE)).equals(apsInitParameter.get(ParameterKeys.KEY_HIGHT_PICTURE_SIZE_ENABLE)) && apsInitParameter2.mApsModule == apsInitParameter.mApsModule && ((String) apsInitParameter2.get(ParameterKeys.KEY_OPERATION_MODE)).equals(apsInitParameter.get(ParameterKeys.KEY_OPERATION_MODE)) && ((Size) apsInitParameter.get(ParameterKeys.KEY_PREVIEW_SIZE)).equals(apsInitParameter2.get(ParameterKeys.KEY_PREVIEW_SIZE)) && ((apsInitParameter2.get(ParameterKeys.KEY_VIDEO_SIZE) == null && apsInitParameter.get(ParameterKeys.KEY_VIDEO_SIZE) == null) || (apsInitParameter2.get(ParameterKeys.KEY_VIDEO_SIZE) != null && ((Size) apsInitParameter2.get(ParameterKeys.KEY_VIDEO_SIZE)).equals(apsInitParameter.get(ParameterKeys.KEY_VIDEO_SIZE)))) && ((apsInitParameter2.get(ParameterKeys.KEY_CAMERA_FEATURE) == null && apsInitParameter.get(ParameterKeys.KEY_CAMERA_FEATURE) == null) || (apsInitParameter2.get(ParameterKeys.KEY_CAMERA_FEATURE) != null && ((String) apsInitParameter2.get(ParameterKeys.KEY_CAMERA_FEATURE)).equals(apsInitParameter.get(ParameterKeys.KEY_CAMERA_FEATURE))))) ? false : true;
    }

    private ImageCategory.ImageItemInfo generateImageInfo(ImageReader imageReader, Image image, ApsRequestTag apsRequestTag, ImageCategory.ItemInfoType itemInfoType, SurfaceKey surfaceKey, String str, boolean z, boolean z2) {
        HardwareBuffer hardwareBuffer;
        int format;
        int i;
        int i2;
        if (image == null || itemInfoType == null || apsRequestTag == null) {
            CameraUnitLog.e(TAG, "generateImageInfo, params error, image: " + image + ", tag: " + apsRequestTag + ", type: " + itemInfoType);
            return null;
        }
        try {
            synchronized (ContextHolder.getContext()) {
                hardwareBuffer = Util.getHardwareBuffer(image);
                format = image.getFormat();
            }
            if (ImageCategory.ItemInfoType.PREVIEW.equals(itemInfoType)) {
                if ("rear_main".equals(str) || "rear_sat".equals(str)) {
                    if (surfaceKey != null && CameraSessionEntity.SurfaceUsage.AI_DEPTH.equals(surfaceKey.getUsage())) {
                        i = 17;
                        i2 = i;
                    }
                    i2 = 0;
                } else {
                    if ("rear_wide".equals(str) || CameraConstant.CameraType.REAR_MONO_CAMERA_1.equals(str) || CameraConstant.CameraType.REAR_MONO_CAMERA_2.equals(str)) {
                        i = 2;
                    } else if ("rear_tele".equals(str)) {
                        i = 3;
                    } else if ("front_main".equals(str)) {
                        i2 = 1;
                    } else {
                        if ("front_wide".equals(str)) {
                            i = 5;
                        }
                        i2 = 0;
                    }
                    i2 = i;
                }
            } else {
                if (ImageCategory.ItemInfoType.VIDEO.equals(itemInfoType)) {
                    i = 100;
                    i2 = i;
                }
                i2 = 0;
            }
            String apsFeatureName = ApsDataConvert.getApsFeatureName(this.mApsRequestTag.mModeName, this.mApsRequestTag.mFeatureName, this.mApsRequestTag.mCameraType);
            if (TextUtils.isEmpty(apsFeatureName)) {
                apsFeatureName = ApsDataConvert.getApsModeName(this.mApsRequestTag.mModeName, this.mApsRequestTag.mRearFrontCameraId);
            }
            String str2 = apsFeatureName;
            ImageCategory.ImageItemInfo imageItemInfo = new ImageCategory.ImageItemInfo();
            imageItemInfo.mImageBuffer = new ApsResult.ImageBuffer(imageReader, image, hardwareBuffer, image.getTimestamp(), format);
            imageItemInfo.mApsServiceListener = this.mApsServiceListener;
            imageItemInfo.setParameter(ParameterKeys.KEY_IMAGE_WIDTH, Integer.valueOf(image.getWidth()));
            imageItemInfo.setParameter(ParameterKeys.KEY_IMAGE_HEIGHT, Integer.valueOf(image.getHeight()));
            imageItemInfo.setParameter(ParameterKeys.KEY_IMAGE_ROLE, Integer.valueOf(i2));
            ApsRequestTag apsRequestTag2 = this.mApsRequestTag;
            if (!z2 && apsRequestTag2 != null && !apsRequestTag2.mbPreviewProcessByAps) {
                imageItemInfo.setParameter(ParameterKeys.KEY_TIME_STAMP, Long.valueOf(apsRequestTag2.mVideoSnapShotTimeStamp));
            } else {
                imageItemInfo.setParameter(ParameterKeys.KEY_TIME_STAMP, Long.valueOf(image.getTimestamp()));
            }
            imageItemInfo.setParameter(ParameterKeys.KEY_REC_BURST_NUMBER, -1);
            imageItemInfo.setParameter(ParameterKeys.KEY_BURST_SHOT, false);
            imageItemInfo.setParameter(ParameterKeys.KEY_DATE, Long.valueOf(System.currentTimeMillis()));
            imageItemInfo.setParameter(ParameterKeys.KEY_ITEM_INFO_TYPE, itemInfoType);
            imageItemInfo.setParameter(ParameterKeys.KEY_NEED_META_DATA, Boolean.valueOf(apsRequestTag.mbNeedPreviewMetadata));
            imageItemInfo.setParameter(ParameterKeys.KEY_NEED_VIDEO_META_DATA, Boolean.valueOf(apsRequestTag.mbNeedVideoMetadata));
            CameraRequestTag cameraRequestTag = this.mPreviewRequestTag;
            if (TextUtils.isEmpty(str2)) {
                imageItemInfo.setParameter(ParameterKeys.KEY_NEED_MATCH_TIME_STAMP, true);
            } else if (cameraRequestTag != null && this.mConsumerContract != null) {
                imageItemInfo.setParameter(ParameterKeys.KEY_NEED_MATCH_TIME_STAMP, Boolean.valueOf(this.mConsumerContract.needMatchPreviewTimestamp(str2, cameraRequestTag)));
            }
            imageItemInfo.setParameter(ParameterKeys.KEY_ORIENTATION, Integer.valueOf(apsRequestTag.mJpegOrientation));
            imageItemInfo.setParameter(ParameterKeys.KEY_IS_DETACHED, Boolean.valueOf(z));
            imageItemInfo.setParameter(ParameterKeys.KEY_PREVIEW_STREAM_NUMBER, Integer.valueOf(apsRequestTag.mPreviewStreamNumber));
            imageItemInfo.setParameter(ParameterKeys.KEY_CAPTURE_STREAM_NUMBER, Integer.valueOf(apsRequestTag.mCaptureStreamNumber));
            setIntelligentHighFrameParameters(apsRequestTag, imageItemInfo, setImageInfoFromApp(image, imageItemInfo));
            return imageItemInfo;
        } catch (IllegalStateException e) {
            CameraUnitLog.d(TAG, "generateImageInfo, getHardwareBuffer exception, e: " + e, e);
            return null;
        }
    }

    private Map<String, Object> setImageInfoFromApp(Image image, ImageCategory.ImageItemInfo imageItemInfo) {
        Map<String, Object> generateImageInfo = this.mConsumerContract.generateImageInfo(image);
        if (generateImageInfo == null) {
            return null;
        }
        if (generateImageInfo.get(ParameterKeys.KEY_SKIP_PROCESS.getName()) != null) {
            imageItemInfo.setParameter(ParameterKeys.KEY_SKIP_PROCESS, Boolean.valueOf(Boolean.parseBoolean((String) generateImageInfo.get(ParameterKeys.KEY_SKIP_PROCESS.getName()))));
        }
        if (generateImageInfo.get(ParameterKeys.KEY_FRAMES_CAN_NOT_SKIP.getName()) != null) {
            imageItemInfo.setParameter(ParameterKeys.KEY_FRAMES_CAN_NOT_SKIP, (Set) generateImageInfo.get(ParameterKeys.KEY_FRAMES_CAN_NOT_SKIP.getName()));
        }
        if (generateImageInfo.get(ParameterKeys.KEY_CAN_NOT_DROP.getName()) != null) {
            imageItemInfo.setParameter(ParameterKeys.KEY_CAN_NOT_DROP, Boolean.valueOf(Boolean.parseBoolean((String) generateImageInfo.get(ParameterKeys.KEY_CAN_NOT_DROP.getName()))));
        }
        return generateImageInfo;
    }

    private void setIntelligentHighFrameParameters(ApsRequestTag apsRequestTag, ImageCategory.ImageItemInfo imageItemInfo, @Nullable Map<String, Object> map) {
        if (apsRequestTag.mSlowVideoHfrSurface == null || apsRequestTag.mSlowVideoHfrFps == 0) {
            return;
        }
        imageItemInfo.setParameter(ParameterKeys.KEY_IS_DETACHED, true);
        imageItemInfo.setParameter(ParameterKeys.KEY_SLOW_VIDEO_HIGH_FRAME, true);
        if (map != null) {
            apsRequestTag.mSlowVideoHfrMotionDetectCoordinate = (RectF) map.get(ParameterKeys.KEY_INTELLIGENT_CROP_REGION.getName());
        }
        if (apsRequestTag.mSlowVideoHfrMotionDetectCoordinate != null) {
            imageItemInfo.setParameter(ParameterKeys.KEY_INTELLIGENT_OPENED, "1");
            imageItemInfo.setParameter(ParameterKeys.KEY_INTELLIGENT_CROP_REGION, Arrays.toString(new int[]{(int) apsRequestTag.mSlowVideoHfrMotionDetectCoordinate.left, (int) apsRequestTag.mSlowVideoHfrMotionDetectCoordinate.top, (int) apsRequestTag.mSlowVideoHfrMotionDetectCoordinate.right, (int) apsRequestTag.mSlowVideoHfrMotionDetectCoordinate.bottom}));
        }
        if (apsRequestTag.mSensorManagerClient != null) {
            imageItemInfo.setParameter(ParameterKeys.KEY_ACCELEROMETER_USE, Integer.valueOf("1"));
            imageItemInfo.setParameter(ParameterKeys.KEY_ACCELEROMETER_DATA, Arrays.toString(apsRequestTag.mSensorManagerClient.getAccelerometers()));
        }
        if (apsRequestTag.mSlowVideoHfrFps != 0) {
            imageItemInfo.setParameter(ParameterKeys.KEY_INTELLIGENT_FPS_RANGE, String.valueOf(apsRequestTag.mSlowVideoHfrFps));
        }
        imageItemInfo.setParameter(ApsParameters.KEY_SURFACE, apsRequestTag.mSlowVideoHfrSurface);
    }

    private void updateUpscaleSize(ApsCaptureResult apsCaptureResult, ImageCategory.MetaItemInfo metaItemInfo, CameraRequestTag cameraRequestTag) {
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        int i11;
        if (apsCaptureResult.mUpscaleInputSize != null && apsCaptureResult.mUpscaleInputSize.length == 4) {
            i4 = apsCaptureResult.mUpscaleInputSize[0];
            i3 = apsCaptureResult.mUpscaleInputSize[1];
            i2 = apsCaptureResult.mUpscaleInputSize[2];
            i = apsCaptureResult.mUpscaleInputSize[3];
        } else {
            CameraUnitLog.w(TAG, "updateUpscaleSize, upscaleInputArray is null");
            i = 0;
            i2 = 0;
            i3 = 0;
            i4 = 0;
        }
        if (apsCaptureResult.mUpscaleOutputSize != null && apsCaptureResult.mUpscaleOutputSize.length == 4) {
            int i12 = apsCaptureResult.mUpscaleOutputSize[0];
            int i13 = apsCaptureResult.mUpscaleOutputSize[1];
            int i14 = apsCaptureResult.mUpscaleOutputSize[2];
            i7 = apsCaptureResult.mUpscaleOutputSize[3];
            i8 = i14;
            i5 = i12;
            i6 = i13;
        } else {
            CameraUnitLog.w(TAG, "updateUpscaleSize, upscaleOutputArray is null");
            i5 = 0;
            i6 = 0;
            i7 = 0;
            i8 = 0;
        }
        Size size = (cameraRequestTag.mSensorSizes == null || apsCaptureResult.mMasterPipeline == null) ? cameraRequestTag.mApsRequestTag.mPictureSize : cameraRequestTag.mSensorSizes[apsCaptureResult.mMasterPipeline[0]];
        boolean z = Util.isSupportOfflineNight(cameraRequestTag.mCaptureMode) && cameraRequestTag.mbInNightProcess;
        if (((!PlatformUtil.isMtkPlatform() && !cameraRequestTag.mbScaleEnable) || cameraRequestTag.mbQuickVideo) && !z) {
            size = null;
        }
        CameraUnitLog.d(TAG, "updateUpscaleSize, tag.mSensorSizes: " + Arrays.toString(cameraRequestTag.mSensorSizes) + ", result.mMasterPipeline: " + Arrays.toString(apsCaptureResult.mMasterPipeline) + ", outputSize: " + size + ", tag.mbScaleEnable: " + cameraRequestTag.mbScaleEnable);
        if (size != null) {
            metaItemInfo.setParameter(ParameterKeys.KEY_OUTPUT_SIZE, new int[]{size.getWidth(), size.getHeight(), 0, 0});
            metaItemInfo.setParameter(ParameterKeys.KEY_OUTPUT_WIDTH, String.valueOf(size.getWidth()));
            metaItemInfo.setParameter(ParameterKeys.KEY_OUTPUT_HEIGHT, String.valueOf(size.getHeight()));
            if (!cameraRequestTag.mApsRequestTag.mbHighPictureSizeEnable) {
                boolean z2 = ((Boolean) CameraConfigHelper.getConfigValue(CameraConfigBase.KEY_FRONT_SENSOR_BINNING, false)).booleanValue() && CameraCharacteristicsHelper.isFrontCamera(cameraRequestTag.mCameraId) && needCropImage(cameraRequestTag);
                CameraUnitLog.d(TAG, "updateUpscaleSize, isBinningSize: " + z2 + ", tag.mbDecisionRequestMixedFormat: " + cameraRequestTag.mbDecisionRequestMixedFormat + ", tag.mbFromMainMenu: " + cameraRequestTag.mbFromMainMenu + ", tag.mbFromSystemApp: " + cameraRequestTag.mbFromSystemApp);
                metaItemInfo.setParameter(ParameterKeys.KEY_CROP_WIDTH, String.valueOf(z2 ? size.getWidth() / 2 : size.getWidth()));
                metaItemInfo.setParameter(ParameterKeys.KEY_CROP_HEIGHT, String.valueOf(z2 ? size.getHeight() / 2 : size.getHeight()));
            }
        }
        int i15 = i;
        int i16 = i2;
        int i17 = i3;
        int i18 = i4;
        if (isNeedUpscale(i4, i3, i2, i15, i5, i6)) {
            i11 = i18;
            i10 = i17;
            i9 = i16;
            metaItemInfo.setParameter(ParameterKeys.KEY_INPUT_SIZE, new int[]{i11, i10, i9, i15});
            metaItemInfo.setParameter(ParameterKeys.KEY_OUTPUT_SIZE, new int[]{i5, i6, i8, i7});
            metaItemInfo.setParameter(ParameterKeys.KEY_OUTPUT_WIDTH, String.valueOf(i5));
            metaItemInfo.setParameter(ParameterKeys.KEY_OUTPUT_HEIGHT, String.valueOf(i6));
            cameraRequestTag.mbWatermarkNeedScale = true;
        } else {
            i9 = i16;
            i10 = i17;
            i11 = i18;
        }
        if (CameraRequestTag.RequestMode.CAPTURE_REPROCESS == cameraRequestTag.getRequestMode()) {
            CameraUnitLog.v(TAG, "updateUpscaleSize, inputWidth: " + i11 + ", inputHeight: " + i10 + ", inputStride: " + i9 + ", inputScanline: " + i15);
            metaItemInfo.setParameter(ParameterKeys.KEY_INPUT_SIZE, new int[]{i11, i10, i9, i15});
            metaItemInfo.setParameter(ParameterKeys.KEY_OUTPUT_SIZE, new int[]{i11, i10, i9, i15});
            cameraRequestTag.mbWatermarkNeedScale = false;
        }
        if (cameraRequestTag.mUpScaleOutputSize != null) {
            metaItemInfo.setParameter(ParameterKeys.KEY_OUTPUT_WIDTH, String.valueOf(cameraRequestTag.mUpScaleOutputSize[0]));
            metaItemInfo.setParameter(ParameterKeys.KEY_OUTPUT_HEIGHT, String.valueOf(cameraRequestTag.mUpScaleOutputSize[1]));
            metaItemInfo.setParameter(ParameterKeys.KEY_OUTPUT_SIZE, cameraRequestTag.mUpScaleOutputSize);
            cameraRequestTag.mbWatermarkNeedScale = true;
        }
        if (CameraConstant.ModeName.HIGH_PIXEL_MODE.equals(this.mCurrentModeName)) {
            cameraRequestTag.mbWatermarkNeedScale = false;
        }
        int[] iArr = cameraRequestTag.mForceUpScaleSize;
        if (iArr == null || iArr.length <= 1 || metaItemInfo.get(ParameterKeys.KEY_OUTPUT_SIZE) != null) {
            return;
        }
        metaItemInfo.setParameter(ParameterKeys.KEY_OUTPUT_SIZE, new int[]{iArr[0], iArr[1], 0, 0});
        metaItemInfo.setParameter(ParameterKeys.KEY_OUTPUT_WIDTH, String.valueOf(iArr[0]));
        metaItemInfo.setParameter(ParameterKeys.KEY_OUTPUT_HEIGHT, String.valueOf(iArr[1]));
        metaItemInfo.setParameter(ParameterKeys.KEY_CROP_WIDTH, String.valueOf(iArr[0]));
        metaItemInfo.setParameter(ParameterKeys.KEY_CROP_HEIGHT, String.valueOf(iArr[1]));
        CameraUnitLog.d(TAG, "updateUpscaleSize, output_size: " + iArr[0] + "x" + iArr[1]);
    }

    private boolean needCropImage(CameraRequestTag cameraRequestTag) {
        return (cameraRequestTag.mbDecisionRequestMixedFormat && cameraRequestTag.mbFromSystemApp) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setFace(CaptureResult captureResult) {
        Face[] faceArr = (Face[]) captureResult.get(CaptureResult.STATISTICS_FACES);
        int length = faceArr == null ? 0 : faceArr.length;
        this.mFaceCount = length;
        if (length <= 0 || this.mbHasFaceInfo) {
            return;
        }
        this.mbHasFaceInfo = true;
    }

    /* loaded from: classes.dex */
    private class ApsDecisionListener implements ApsAdapterDecision.DecisionCallback {
        private ApsDecisionListener() {
        }

        @Override // com.oplus.ocs.camera.consumer.apsAdapter.adapter.ApsAdapterDecision.DecisionCallback
        public void onDecisionResult(ApsAdapterDecision.DecisionResult decisionResult) {
            ApsProcessor.this.mConsumerContract.onDecisionArrived(decisionResult);
            if (decisionResult != null) {
                ApsProcessor.this.mNewestMasterPipeline = new int[]{decisionResult.mMasterPipeline};
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class ApsServiceListener implements ApsAdapterListener.ApsServiceListener {
        private ApsServiceListener() {
        }

        @Override // com.oplus.ocs.camera.consumer.apsAdapter.service.ApsAdapterListener.ApsServiceListener
        public void onFinishAddFrame(ImageCategory.ImageItemInfo imageItemInfo, ImageCategory.MetaItemInfo metaItemInfo) {
            CameraUnitLog.v(ApsProcessor.TAG, "onFinishAddFrame");
            ApsProcessor.this.mConsumerContract.onFinishAddFrame(imageItemInfo, metaItemInfo, ApsProcessor.this.mPictureRequestTag);
            ApsProcessor.this.mPictureRequestTag = null;
            ApsProcessor.this.mSingleShotTimestamp = 0L;
        }

        @Override // com.oplus.ocs.camera.consumer.apsAdapter.service.ApsAdapterListener.ApsServiceListener
        public void onReprocess(Image image, TotalCaptureResult totalCaptureResult, Rect rect, ApsCameraRequestTag apsCameraRequestTag) {
            ((CameraRequestTag) apsCameraRequestTag.mTag).mNightCaptureTotalTime = ApsProcessor.this.mNightCaptureTotalTime;
            ApsProcessor.this.mConsumerContract.onReprocess(image, totalCaptureResult, rect, (CameraRequestTag) apsCameraRequestTag.mTag);
        }

        @Override // com.oplus.ocs.camera.consumer.apsAdapter.service.ApsAdapterListener.ApsServiceListener
        public void onPreviewReceived(final ApsResult apsResult, final ApsTotalResult apsTotalResult) {
            final TotalCaptureResult totalResult = apsTotalResult.getTotalResult();
            ApsProcessor.this.mConsumerContract.onPreviewReceived(apsResult, apsTotalResult);
            ApsProcessor.this.mConsumerContract.getPreviewReceivedWorkHandler().post(new Runnable() { // from class: com.oplus.ocs.camera.consumer.ApsProcessor$ApsServiceListener$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    ApsProcessor.ApsServiceListener.this.m4x2f585223(totalResult, apsResult, apsTotalResult);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: lambda$onPreviewReceived$0$com-oplus-ocs-camera-consumer-ApsProcessor$ApsServiceListener  reason: not valid java name */
        public /* synthetic */ void m4x2f585223(TotalCaptureResult totalCaptureResult, ApsResult apsResult, ApsTotalResult apsTotalResult) {
            if (totalCaptureResult != null || (ApsProcessor.this.mApsRequestTag != null && !ApsProcessor.this.mApsRequestTag.mbNeedPreviewMetadata)) {
                ApsProcessor.this.mApsDecisionListener.onDecisionResult(apsResult.mDecisionResult);
            }
            if (totalCaptureResult != null) {
                Long.valueOf(apsResult.mIdentity);
                if (apsTotalResult.getTotalResult() != null) {
                    ApsProcessor.this.mProcessingPreviewFrameSet.remove(Long.valueOf(apsResult.mIdentity));
                    ApsProcessor.this.setFace(apsTotalResult.getTotalResult());
                }
                if (apsTotalResult.getMetaImage() != null) {
                    apsTotalResult.setInvalid();
                }
                if (ApsProcessor.this.mProcessingPreviewFrameSet.isEmpty()) {
                    ApsProcessor.this.mProcessingPreviewCondition.open();
                }
                synchronized (ApsProcessor.this.mRequestTagLock) {
                    if (ApsProcessor.this.mPreviewRequestTag != null && ApsProcessor.this.mConsumerContract.isApsFinishAddFrame() && ApsProcessor.this.mConsumerContract.isApsFinishProcessFrame() && ApsProcessor.access$2108(ApsProcessor.this) >= 3) {
                        ApsProcessor.this.mAPSDecisionPreviewFrameCount = 0;
                        ApsProcessor apsProcessor = ApsProcessor.this;
                        apsProcessor.initAPS(2, apsProcessor.mApsInitParameter, ApsProcessor.this.getUnInitAlgos());
                    }
                }
            }
        }

        @Override // com.oplus.ocs.camera.consumer.apsAdapter.service.ApsAdapterListener.ApsServiceListener
        public void onVideoReceived(ApsResult apsResult) {
            ApsResult.ImageBuffer imageBuffer = apsResult.getImageBuffer();
            if (imageBuffer != null) {
                imageBuffer.close();
            }
            Image image = apsResult.getImage();
            if (image != null) {
                image.close();
            }
            if (1 == apsResult.mIsLastVideoFrame) {
                CameraUnitLog.d(ApsProcessor.TAG, "onVideoReceived, lastVideoFrameCome, mbNeedUnInitAlgo: " + ApsProcessor.this.mbNeedUnInitAlgo);
                synchronized (ApsProcessor.this.mApsAdapterLock) {
                    if (ApsProcessor.this.mbNeedUnInitAlgo) {
                        ApsProcessor.this.mApsAdapter.unInitApsAlgo(1);
                        ApsProcessor.this.mbNeedUnInitAlgo = false;
                    }
                }
                ApsProcessor.this.mConsumerContract.onStopRecordingFrame();
            }
            if (Util.isSystemCamera()) {
                if (!ApsProcessor.this.mbVideoRecording) {
                    ApsProcessor.this.mbVideoRecording = true;
                }
                ApsProcessor.this.mConsumerContract.onVideoReceived(apsResult);
                if (1 == apsResult.mIsStartInterpolationFrame) {
                    ApsProcessor.this.mConsumerContract.onFrameInterpolationStarted();
                }
                if (ApsProcessor.this.mCurrentModeName != null && ApsProcessor.this.mCurrentModeName.equals("slowvideo_mode")) {
                    ApsProcessor.this.mbVideoImageNeedDetach = apsResult.mbNeedDetach;
                }
                if (1 == apsResult.mIsLastVideoFrame) {
                    ApsProcessor.this.mbVideoRecording = false;
                    if (ApsProcessor.this.mTempStopRequestTag != null) {
                        ApsProcessor.this.mTempStopRequestTag.mCallback = null;
                    }
                }
            }
        }

        @Override // com.oplus.ocs.camera.consumer.apsAdapter.service.ApsAdapterListener.ApsServiceListener
        public void reportDataToDcs(StaticsConstant.EventType eventType, String str, int i) {
            StatisticsManager.getInstance().reportDcsData(new StatisticConstant.EventType(eventType.mAppId, eventType.mCategory, eventType.mEventId), str, String.valueOf(i));
        }
    }
}

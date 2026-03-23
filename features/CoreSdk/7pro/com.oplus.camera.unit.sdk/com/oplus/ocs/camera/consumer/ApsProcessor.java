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
import com.oplus.exif.OplusExifTag;
import com.oplus.ocs.camera.appinterface.adapter.CameraAdapterUtils;
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
import com.oplus.ocs.camera.common.util.OplusExif;
import com.oplus.ocs.camera.common.util.ParameterKeys;
import com.oplus.ocs.camera.common.util.Util;
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
import com.oplus.ocs.camera.consumer.apsAdapter.adapter.DefaultUtill;
import com.oplus.ocs.camera.consumer.apsAdapter.adapter.ImageCategory;
import com.oplus.ocs.camera.consumer.apsAdapter.config.AlgoSwitchConfig;
import com.oplus.ocs.camera.consumer.apsAdapter.service.ApsAdapterListener;
import com.oplus.ocs.camera.consumer.debug.PropProvider;
import com.oplus.ocs.camera.producer.device.CameraSessionEntity;
import com.oplus.ocs.camera.producer.info.CameraCharacteristicsHelper;
import java.time.Instant;
import java.time.ZoneId;
import java.time.ZonedDateTime;
import java.time.format.DateTimeFormatter;
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
    private ApsAdapterListener.ApsServiceListener mApsServiceListener = new ApsServiceListener();
    private int mMergeIndex = 0;
    private long mCaptureMergeIdentity = 0;
    private int mCaptureStartedCallbackNum = 0;
    private int mFirstCaptureHash = 0;
    private long mFirstExposureTime = 0;
    private long mNightCaptureTotalTime = 0;
    private long mNightProcessTime = 0;
    private long mReprocessApsWaitTime = 0;
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

    static /* synthetic */ int access$1208(ApsProcessor apsProcessor) {
        int i = apsProcessor.mAPSDecisionPreviewFrameCount;
        apsProcessor.mAPSDecisionPreviewFrameCount = i + 1;
        return i;
    }

    public ApsProcessor(ApsProcessorContract.IConsumer iConsumer) {
        this.mApsAdapter = null;
        this.mConsumerContract = null;
        this.mConsumerContract = iConsumer;
        if (this.mApsAdapter == null) {
            this.mApsAdapter = new ApsAdapterImpl(this);
            this.mApsAdapter.connectAps();
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
            try {
                if (z) {
                    this.mApsAdapter.sessionClosed(true);
                    this.mbNeedUnInitAlgo = false;
                } else {
                    this.mApsAdapter.sessionClosed(false);
                    this.mbNeedUnInitAlgo = true;
                }
                this.mApsAdapter.onBeforeOpenCamera();
            } catch (Throwable th) {
                throw th;
            }
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
            if (CameraSessionEntity.SurfaceUsage.PREVIEW.equals(key.getUsage())) {
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
        APSClient.attachPreviewSurface(i, surface, surface.hashCode());
    }

    private void detachPreviewSurface(int i) {
        CameraUnitLog.d(TAG, "detachPreviewSurface, targetLogicCameraId: " + i);
        APSClient.detachPreviewSurface(i);
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
        this.mPreviewCallbackType = apsRequestTag.mPreviewCallbackType;
        apsInitParameter.setParameter(ParameterKeys.KEY_PREVIEW_CALLBACK_TYPE, this.mPreviewCallbackType);
        apsInitParameter.setParameter(ParameterKeys.KEY_IS_FROM_MAIN_MENU_APP, true);
        apsInitParameter.setParameter(ParameterKeys.KEY_IS_VIDEO_3HDR_10BIT, ParameterKeys.getFlagState(apsRequestTag.mbVideo10BitsEnable));
        apsInitParameter.setParameter(ParameterKeys.KEY_ASD_DEFAULT_STATE, String.valueOf(needEnableAsd(cameraId) ? 1 : 0));
        this.mApsRequestTag = apsRequestTag;
        this.mApsInitParameter = apsInitParameter;
        if (!this.mApsRequestTag.mbPreviewProcessByAps) {
            initAPS(1, apsInitParameter, getUnInitAlgos());
        } else {
            initAPS(3, apsInitParameter, getUnInitAlgos());
        }
        this.mbHasFaceInfo = false;
        this.mAPSDecisionPreviewFrameCount = 0;
    }

    private boolean needEnableAsd(int i) {
        return (((Boolean) CameraAdapterUtils.getConfigValue(CameraConfigBase.KEY_MAINCAMERA_ASD_AISCENE_SUPPORT, false)).booleanValue() && CameraCharacteristicsHelper.getRearMainCameraId() == i) || (((Boolean) CameraAdapterUtils.getConfigValue(CameraConfigBase.KEY_WIDECAMERA_ASD_AISCENE_SUPPORT, false)).booleanValue() && CameraCharacteristicsHelper.getRearSubCameraId() == i) || (((Boolean) CameraAdapterUtils.getConfigValue(CameraConfigBase.KEY_SATCAMERA_AISCENE_SUPPORT, false)).booleanValue() && CameraCharacteristicsHelper.getRearSATCameraId() == i);
    }

    public void initAPS(int i, ApsInitParameter apsInitParameter, Set<String> set) {
        String str;
        ApsInitParameter apsInitParameter2 = new ApsInitParameter();
        CameraRequestTag previewRequestTag = getPreviewRequestTag();
        if (previewRequestTag != null) {
            apsInitParameter.setParameter(ParameterKeys.KEY_IS_FROM_MAIN_MENU_APP, Boolean.valueOf(previewRequestTag.mbFromMainMenu));
        }
        apsInitParameter2.mParameterMap = new HashMap(apsInitParameter.mParameterMap);
        if (apsInitParameter.mVendorTags != null) {
            apsInitParameter2.mVendorTags = (String[]) Arrays.copyOf(apsInitParameter.mVendorTags, apsInitParameter.mVendorTags.length);
        }
        apsInitParameter2.setParameter(ParameterKeys.KEY_UNINIT_ALGOS, set);
        apsInitParameter2.mApsModule = i;
        apsInitParameter2.mVideoSurface = SurfacePool.getInstance().getVideoSurface();
        apsInitParameter2.mbHeicProcessInApp = !this.mApsRequestTag.mbHighPictureSizeEnable && ((Boolean) CameraAdapterUtils.getConfigValue(CameraConfigBase.KEY_ONLY_HIGH_PICTURE_SIZE_HEIF_IN_APS, false)).booleanValue();
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
                if (previewRequestTag.mRearFrontCameraId == 0 && ((!previewRequestTag.mbFaceBeautyOpen || (this.mFaceCount == 0 && !this.mbHasFaceInfo)) && !previewRequestTag.mbPiEnable && !previewRequestTag.mbBurstShot)) {
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
                if (!previewRequestTag.mbPiEnable && !previewRequestTag.mbFaceBeautyOpen && !previewRequestTag.mbBurstShot && "none".equals(previewRequestTag.mMakeupType)) {
                    hashSet.add(ParameterKeys.ALGO_NAME_FACE_BEAUTY);
                }
                if (!"rear_wide".equals(previewRequestTag.mCameraType) && !"rear_sat".equals(previewRequestTag.mCameraType)) {
                    hashSet.add(ParameterKeys.ALGO_NAME_RECTIFY);
                }
                if (!previewRequestTag.mbTiltShiftOpen) {
                    hashSet.add(ParameterKeys.ALGO_NAME_TILT_SHIFT);
                }
                if (!previewRequestTag.mbFromMainMenu) {
                    hashSet.add(ParameterKeys.ALGO_NAME_AINR);
                }
                if (!Util.isSystemCamera()) {
                    hashSet.add(ParameterKeys.ALGO_NAME_AI_SR);
                }
            }
        }
        return hashSet;
    }

    @Override // com.oplus.ocs.camera.consumer.ApsProcessorContract.IProcessor
    public void addPreview(ImageReader imageReader, Image image, ImageCategory.ItemInfoType itemInfoType, String str) {
        if (image == null) {
            CameraUnitLog.e(TAG, "addPreview, image is null.");
            return;
        }
        try {
            ImageCategory.ImageItemInfo generateImageInfo = generateImageInfo(imageReader, image, this.mApsRequestTag, itemInfoType, str, false, false);
            if (generateImageInfo != null) {
                this.mApsAdapter.addPreviewImage(generateImageInfo);
            }
        } catch (IllegalStateException e) {
            CameraUnitLog.e(TAG, "addPreview", e);
        }
    }

    private void setPreviewMetaCommonParameters(CaptureRequest captureRequest, CaptureResult captureResult, ImageCategory.ItemInfoType itemInfoType, Long l, ImageCategory.MetaItemInfo metaItemInfo) {
        if (this.mApsRequestTag == null) {
            CameraUnitLog.e(TAG, "setPreviewMetaCommonParameters, mApsRequestTag is null.");
            return;
        }
        CameraRequestTag cameraRequestTag = (CameraRequestTag) captureRequest.getTag();
        ApsRequestTag apsRequestTag = this.mApsRequestTag;
        if (apsRequestTag != null && !apsRequestTag.mbPreviewProcessByAps) {
            metaItemInfo.setParameter(ParameterKeys.KEY_TIME_STAMP, Long.valueOf(apsRequestTag.mVideoSnapShotTimeStamp));
        } else {
            metaItemInfo.setParameter(ParameterKeys.KEY_TIME_STAMP, l);
        }
        metaItemInfo.setParameter(ParameterKeys.KEY_MERGE_IDENTITY, l);
        metaItemInfo.setParameter(ParameterKeys.KEY_CAMERA_ID, String.valueOf(cameraRequestTag.mRearFrontCameraId));
        metaItemInfo.setParameter(ParameterKeys.KEY_LOGIC_CAMERA_ID, Integer.valueOf(cameraRequestTag.mCameraId));
        metaItemInfo.setParameter(ParameterKeys.KEY_ITEM_INFO_TYPE, itemInfoType);
        metaItemInfo.setParameter(ParameterKeys.KEY_PREVIEW_STREAM_NUMBER, Integer.valueOf(this.mApsRequestTag.mPreviewStreamNumber));
        metaItemInfo.setParameter(ParameterKeys.KEY_CAPTURE_STREAM_NUMBER, Integer.valueOf(this.mApsRequestTag.mCaptureStreamNumber));
        metaItemInfo.setParameter(ParameterKeys.KEY_HYPER_LAPSE_RATE, String.valueOf(cameraRequestTag.mHyperLapseRate));
        metaItemInfo.setParameter(ParameterKeys.KEY_HYPER_LAPSE_RECORDING_STATUS, Integer.valueOf(!cameraRequestTag.mbVideoRecordingPaused ? 1 : 0));
        metaItemInfo.setParameter(ParameterKeys.KEY_MONO_PORTRAIT, cameraRequestTag.mbMonoPortraitEnable ? "1" : "0");
        metaItemInfo.setParameter(ParameterKeys.KEY_PREVIEW_CALLBACK_TYPE, this.mPreviewCallbackType);
        metaItemInfo.setParameter(ParameterKeys.KEY_CAMERA_REQUEST_TAG, Util.createApsRequestTag(cameraRequestTag, metaItemInfo));
        metaItemInfo.setParameter(ParameterKeys.KEY_RTB_ENABLE, cameraRequestTag.mRTBEnable ? "1" : "0");
        metaItemInfo.setParameter(ParameterKeys.KEY_AICOLOR_ENABLE, cameraRequestTag.mAiColorEnable ? "1" : "0");
        metaItemInfo.setParameter(ParameterKeys.KEY_TILT_SHIFT, cameraRequestTag.mbTiltShiftOpen ? "1" : "0");
        metaItemInfo.setParameter(ParameterKeys.KEY_MULTICAMERA_CAMERA_MODE, String.valueOf(cameraRequestTag.mLogicCameraType));
        metaItemInfo.setParameter(ParameterKeys.KEY_TRIPOD_ENABLE, String.valueOf(cameraRequestTag.mbTripodEnable ? 1 : 0));
        metaItemInfo.setParameter(ParameterKeys.KEY_STARBURST_ENABLE, String.valueOf(cameraRequestTag.mbStarburstEnable ? 1 : 0));
        metaItemInfo.setParameter(ParameterKeys.KEY_FISH_EYE_ENABLE, String.valueOf(cameraRequestTag.mbFishEyeEnable ? 1 : 0));
        metaItemInfo.setParameter(ParameterKeys.KEY_ZOOM_RATIO, String.valueOf(cameraRequestTag.mZoomRatio));
        metaItemInfo.setParameter(ParameterKeys.KEY_SCP_ENABLE, String.valueOf(cameraRequestTag.mSCPEnable ? 1 : 0));
        metaItemInfo.setParameter(ParameterKeys.KEY_FACE_BEAUTY_ENABLE, String.valueOf(cameraRequestTag.mbFaceBeautyOpen ? 1 : 0));
        metaItemInfo.setParameter(ParameterKeys.KEY_STAR_VIDEO_ENABLE, String.valueOf(cameraRequestTag.mbStarVideoEnable ? 1 : 0));
        metaItemInfo.setParameter(ParameterKeys.KEY_FACE_MAKEUP_TYPE, String.valueOf(cameraRequestTag.mMakeupType));
        metaItemInfo.setParameter(ParameterKeys.KEY_FACE_MAKEUP_VALUE, Integer.valueOf(cameraRequestTag.mMakeupValue));
        metaItemInfo.setParameter(ParameterKeys.KEY_SUPERRAW_ENABLE, String.valueOf(cameraRequestTag.mSuperRawEnable ? 1 : 0));
        metaItemInfo.setParameter(ParameterKeys.KEY_NEON_ENABLE, String.valueOf(cameraRequestTag.mNeonEnable ? 1 : 0));
        metaItemInfo.setParameter(ParameterKeys.KEY_STREAMER_ENABLE, String.valueOf(cameraRequestTag.mStreamerEnable ? 1 : 0));
        metaItemInfo.setParameter(ParameterKeys.KEY_CAPTURE_MODE, ApsDataConvert.getApsModeName(this.mApsRequestTag.mModeName, cameraRequestTag.mRearFrontCameraId));
        metaItemInfo.setParameter(ParameterKeys.KEY_RECORDING_CAPTURE, String.valueOf(cameraRequestTag.mRecordingCapture ? 1 : 0));
        if (ImageCategory.ItemInfoType.VIDEO == itemInfoType && this.mRecordingRequestTag != null && this.mRecordingRequestTag.mbVideoWaterMarkEnable) {
            metaItemInfo.setParameter(ParameterKeys.KEY_VIDEO_WATERMARK_ENABLE, "1");
            if (CameraCharacteristicsHelper.isFrontCamera(cameraRequestTag.mCameraId)) {
                metaItemInfo.setParameter(ParameterKeys.KEY_VIDEO_MIRROR, ParameterKeys.getFlagState(!this.mRecordingRequestTag.mbMirrorEnable));
            } else {
                metaItemInfo.setParameter(ParameterKeys.KEY_VIDEO_MIRROR, ParameterKeys.getFlagState(false));
            }
            metaItemInfo.setParameter(ParameterKeys.KEY_VIDEO_ORIENTATION, String.valueOf(this.mRecordingRequestTag.mVideoWaterMarkOrientation));
            metaItemInfo.setParameter(ParameterKeys.KEY_APS_WATERMARK_PARAM, this.mRecordingRequestTag.mApsWatermarkParam);
            int i = this.mRecordingRequestTag.mWatermarkBolderX;
            int i2 = this.mRecordingRequestTag.mWatermarkBolderY;
            if (cameraRequestTag.mbWatermarkNeedScale && metaItemInfo.get(ParameterKeys.KEY_OUTPUT_SIZE) != null && cameraRequestTag.mInputWidth != 0) {
                float f = ((int[]) metaItemInfo.get(ParameterKeys.KEY_OUTPUT_SIZE))[0] / cameraRequestTag.mInputWidth;
                int i3 = (int) (this.mRecordingRequestTag.mWatermarkBolderX * f);
                i2 = (int) (this.mRecordingRequestTag.mWatermarkBolderY * f);
                i = i3;
            }
            if (270 == this.mRecordingRequestTag.mVideoWaterMarkOrientation || 90 == this.mRecordingRequestTag.mVideoWaterMarkOrientation) {
                metaItemInfo.setParameter(ParameterKeys.KEY_WATERAMRK_BORDER_X, Integer.valueOf(i));
                metaItemInfo.setParameter(ParameterKeys.KEY_WATERAMRK_BORDER_Y, Integer.valueOf(i2));
            } else {
                metaItemInfo.setParameter(ParameterKeys.KEY_WATERAMRK_BORDER_X, Integer.valueOf(i2));
                metaItemInfo.setParameter(ParameterKeys.KEY_WATERAMRK_BORDER_Y, Integer.valueOf(i));
            }
        } else {
            metaItemInfo.setParameter(ParameterKeys.KEY_VIDEO_WATERMARK_ENABLE, "0");
        }
        metaItemInfo.setParameter(ParameterKeys.KEY_ANTIBANDING_ENABLE, Boolean.valueOf(cameraRequestTag.mbAntibandingEnable));
        metaItemInfo.setParameter(ParameterKeys.KEY_PI_ENABLE, ParameterKeys.getFlagState(cameraRequestTag.mbPiEnable));
        metaItemInfo.setParameter(ParameterKeys.KEY_GESTURE_ENABLE, Boolean.valueOf(cameraRequestTag.mbGestureEnable));
        metaItemInfo.setParameter(ParameterKeys.KEY_ALGO_VISUALIZATION_ENABLE, ParameterKeys.getFlagState(cameraRequestTag.mbVisualizationEnable));
        metaItemInfo.setParameter(ParameterKeys.KEY_ULTRA_HIGHRES_ENABLE, ParameterKeys.getFlagState(cameraRequestTag.mbUltraResolutionEnabled));
        if (cameraRequestTag.mbQuickVideo && captureResult != null && captureResult.get(ParameterKeys.KEY_GYRO_STATE) != null) {
            metaItemInfo.setParameter(ParameterKeys.KEY_QUICK_VIDEO_EIS, "1");
        } else {
            metaItemInfo.setParameter(ParameterKeys.KEY_QUICK_VIDEO_EIS, "0");
        }
        metaItemInfo.setParameter(ParameterKeys.KEY_EDGE_FILTER_ENABLE, cameraRequestTag.mbEdgeFilterEnable ? "1" : "0");
        metaItemInfo.setParameter(ParameterKeys.KEY_EDGE_FILTER_LINE_SIZE, cameraRequestTag.mbEdgeFilterLineSize);
        metaItemInfo.setParameter(ParameterKeys.KEY_EDGE_FILTER_COLOR_U, cameraRequestTag.mbEdgeFilterColorU);
        metaItemInfo.setParameter(ParameterKeys.KEY_EDGE_FILTER_COLOR_V, cameraRequestTag.mbEdgeFilterColorV);
        if (cameraRequestTag != null && cameraRequestTag.mbLongExposureCaptureEnable && CameraRequestTag.RequestMode.CAPTURE_RAW == cameraRequestTag.getRequestMode()) {
            if (!cameraRequestTag.mbRepeatingRequestCapture) {
                cameraRequestTag.mbLongExposureCaptureEnable = false;
                metaItemInfo.setParameter(ApsParameters.KEY_IS_CAPTURE_LAST_FRAME, true);
                CameraUnitLog.v(TAG, "addPresetPreviewMetaCommonParametersviewMetaToAPS, last long exposure frame");
            }
            metaItemInfo.setParameter(ParameterKeys.KEY_IS_LONG_EXPOSURE_CAPTURE_ENABLE, true);
        }
        metaItemInfo.setParameter(ParameterKeys.KEY_AIS_DCT_SUPPORT, String.valueOf(cameraRequestTag.mIsSupportDCT));
        metaItemInfo.setParameter(ParameterKeys.KEY_AIS_DCT_AINR_SUPPORT, String.valueOf(cameraRequestTag.mIsSupportDCTAndAINR));
        metaItemInfo.setParameter(ParameterKeys.KEY_AIS_BRACKET, String.valueOf(cameraRequestTag.mAISBracket));
        metaItemInfo.setParameter(ParameterKeys.KEY_RAW_SR_ENABLE, ParameterKeys.getFlagState(cameraRequestTag.mbRawSREnable));
        metaItemInfo.setParameter(ParameterKeys.KEY_AI_HIGH_PIXEL_ENABLE, Boolean.valueOf(this.mApsRequestTag.mbAiHighPixelEnable));
        if (!cameraRequestTag.mbSupportFocusPeaking || TextUtils.equals((CharSequence) this.mApsInitParameter.get(ParameterKeys.KEY_CAMERA_FEATURE), cameraRequestTag.mFocusPeakingFeature)) {
            return;
        }
        this.mApsInitParameter.setParameter(ParameterKeys.KEY_CAMERA_FEATURE, cameraRequestTag.mFocusPeakingFeature);
        initAPS(3, this.mApsInitParameter, getUnInitAlgos());
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
            metaItemInfo.mImageBuffer = new ApsResult.ImageBuffer(imageReader, image, image.getHardwareBuffer(), valueOf.longValue());
            this.mApsAdapter.addPreviewMetadata(metaItemInfo);
        }
    }

    @Override // com.oplus.ocs.camera.consumer.ApsProcessorContract.IProcessor
    public void beforeCapture(ImageCategory.MetaItemInfo metaItemInfo) {
        this.mApsAdapter.beforeCapture(metaItemInfo);
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
        if (this.mApsAdapter != null) {
            this.mApsAdapter.videoSnapshot(captureCallback, apsCameraRequestTag);
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
        boolean z = false;
        boolean z2 = this.mCaptureStartedCallbackNum == 0;
        this.mIsFirstFrame = z2;
        this.mCaptureStartedCallbackNum++;
        if ("1".equals(ApsUtils.getVendorTagConfig(DefaultUtill.KEY_NIGHT_OFFLINE_R2Y)) && cameraRequestTag != null && cameraRequestTag.mbInNightProcess) {
            z = true;
        }
        if (Util.isQcomPlatform() && !z && cameraRequestTag != null && cameraRequestTag.mMetaIndex == this.mCaptureStartedCallbackNum) {
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
                i = CameraRequestTag.RequestMode.CAPTURE_RAW == cameraRequestTag.getRequestMode() || CameraRequestTag.RequestMode.CAPTURE_REPROCESS == cameraRequestTag.getRequestMode() ? 1 : this.mApsRequestTag.mCaptureStreamNumber;
                i2 = i * cameraRequestTag.mRequestNum;
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
        addPictureImage(new ApsResult.ImageBuffer(imageReader, image, image.getHardwareBuffer(), image.getTimestamp(), str), i, cameraRequestTag);
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

    @Override // com.oplus.ocs.camera.consumer.ApsProcessorContract.IProcessor
    public void addPictureMeta(CameraRequestTag cameraRequestTag, ApsCaptureResult apsCaptureResult, boolean z) {
        boolean equals;
        boolean z2 = cameraRequestTag.mbBurstShot;
        this.mApsVideoTotalResult = apsCaptureResult.getApsTotalResult();
        CameraUnitLog.v(TAG, "addPictureMeta, timeStamp: " + apsCaptureResult.mSensorTimestamp + ", burstShot: " + z2 + ", result: " + apsCaptureResult + ", requestTag: " + cameraRequestTag);
        if (cameraRequestTag.mbSatOpen) {
            equals = apsCaptureResult.mSensorMask != null && apsCaptureResult.mSensorMask.length >= 3 && apsCaptureResult.mSensorMask[0] == 1;
            CameraUnitLog.v(TAG, "addPictureMeta, sensorMask: " + Arrays.toString(apsCaptureResult.mSensorMask));
        } else {
            equals = "rear_wide".equals(cameraRequestTag.mCameraType);
        }
        CameraUnitLog.v(TAG, "addPictureMeta, isNeedRectify: " + equals);
        ImageCategory.MetaItemInfo metaItemInfo = new ImageCategory.MetaItemInfo();
        metaItemInfo.setParameter(ParameterKeys.KEY_MAX_HOLD_IMAGES, Integer.valueOf(cameraRequestTag.mMaxImages - ((35 == cameraRequestTag.mRequestFormat && cameraRequestTag.mbBurstShot) ? 20 : cameraRequestTag.mRequestNum)));
        metaItemInfo.setParameter(ParameterKeys.KEY_PREFER_ADD_FRAME_TYPE, Integer.valueOf(Integer.parseInt(ApsUtils.getVendorTagConfig(DefaultUtill.KEY_PREFER_ADD_FRAME_TYPE))));
        metaItemInfo.setParameter(ParameterKeys.KEY_VIDEO_SNAPSHOT, Boolean.valueOf(z));
        ArrayList arrayList = new ArrayList();
        if (cameraRequestTag.mbBurstShot && equals) {
            arrayList.add(ParameterKeys.ALGO_NAME_RECTIFY);
            if (!((apsCaptureResult.getTotalResult() == null || apsCaptureResult.getTotalResult().getRequest() == null || !((Boolean) apsCaptureResult.getTotalResult().getRequest().get(CaptureRequest.CONTROL_ENABLE_ZSL)).booleanValue()) ? false : true) || (Util.isQcomPlatform() && Util.isSystemCamera())) {
                metaItemInfo.setParameter(ParameterKeys.KEY_IMAGE_ROLE, 2);
            }
        }
        if (cameraRequestTag.mbFaceRectifyOpen && !cameraRequestTag.mbBurstShot) {
            arrayList.add(ParameterKeys.ALGO_NAME_FACE_RECTIFY);
        }
        if (cameraRequestTag.mbBurstShot && !Util.isQcomPlatform()) {
            metaItemInfo.setParameter(ApsParameters.KEY_CSHOT_REQUEST_NUMER, Integer.valueOf(cameraRequestTag.mReceiveCshotNum));
        }
        if (cameraRequestTag.mSingleBlurAlgoName != null) {
            arrayList.add(cameraRequestTag.mSingleBlurAlgoName);
            metaItemInfo.setParameter(ParameterKeys.KEY_SINGLE_PORTRAIT_EFFECT_MODE, Integer.valueOf(cameraRequestTag.mSinglePortraitEffectMode));
            if (cameraRequestTag.mBlurIndex > 0) {
                metaItemInfo.setParameter(ParameterKeys.KEY_BLUR_VALUE, String.valueOf(cameraRequestTag.mBlurIndex));
                metaItemInfo.setParameter(ParameterKeys.KEY_BLUR_SHOW, String.valueOf(cameraRequestTag.mBlurShow));
            }
        }
        String apsModeName = ApsDataConvert.getApsModeName(cameraRequestTag.mApsRequestTag.mModeName, cameraRequestTag.mRearFrontCameraId);
        if (!Util.isQcomPlatform()) {
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
            if (!"none".equals(cameraRequestTag.mMakeupType)) {
                if (!arrayList.contains(ParameterKeys.ALGO_NAME_FACE_BEAUTY)) {
                    arrayList.add(ParameterKeys.ALGO_NAME_FACE_BEAUTY);
                }
                metaItemInfo.setParameter(ParameterKeys.KEY_FACE_MAKEUP_TYPE, cameraRequestTag.mMakeupType);
                metaItemInfo.setParameter(ParameterKeys.KEY_FACE_MAKEUP_VALUE, Integer.valueOf(cameraRequestTag.mMakeupValue));
            }
            if (cameraRequestTag.mbDeRedEye) {
                arrayList.add(ParameterKeys.ALGO_NAME_DERED_EYE);
            }
        }
        metaItemInfo.setParameter(ParameterKeys.KEY_FACE_BEAUTY_ENABLE, ParameterKeys.getFlagState(cameraRequestTag.mbFaceBeautyOpen));
        if (cameraRequestTag.mbVideoBlurOpen || cameraRequestTag.mbVideoNeonOpen) {
            arrayList.add(ParameterKeys.ALGO_NAME_VIDEO_BLUR);
        }
        if (cameraRequestTag.mbVideoRetentionOpen) {
            arrayList.add(ParameterKeys.ALGO_NAME_VIDEO_RETENTION);
        }
        if (cameraRequestTag.mbFilterOpen) {
            arrayList.add("microscope_capture_mode".equals(cameraRequestTag.mApsRequestTag.mModeName) || "microscope_video_mode".equals(cameraRequestTag.mApsRequestTag.mModeName) ? ParameterKeys.ALGO_NAME_FILTER_MICROSCOPE : ParameterKeys.ALGO_NAME_FILTER);
            metaItemInfo.setParameter(ParameterKeys.KEY_FILTER_TYPE, cameraRequestTag.mFilterType);
            metaItemInfo.setParameter(ParameterKeys.KEY_FILTER_WITHVIGNETTE, ParameterKeys.getFlagState(cameraRequestTag.mbFilterVignette));
        }
        metaItemInfo.setParameter(ParameterKeys.KEY_RETENTION_ENABLE, cameraRequestTag.mAiColorEnable ? "1" : "0");
        if (cameraRequestTag.mbEeyEnhance) {
            arrayList.add(ParameterKeys.ALGO_NAME_EYE_ENHANCE);
        }
        boolean z3 = cameraRequestTag.mSuperTextVertices != null && cameraRequestTag.mSuperTextVertices.length() > 0;
        if (cameraRequestTag.mbSuperTextOpen && z3) {
            arrayList.add(ParameterKeys.ALGO_NAME_SUPER_TEXT);
            metaItemInfo.setParameter(ParameterKeys.KEY_SUPER_TEXT_ENABLE, ParameterKeys.getFlagState(true));
            metaItemInfo.setParameter(ParameterKeys.KEY_SUPER_TEXT_VERTICES, cameraRequestTag.mSuperTextVertices);
        } else {
            metaItemInfo.setParameter(ParameterKeys.KEY_SUPER_TEXT_ENABLE, ParameterKeys.getFlagState(false));
        }
        if (cameraRequestTag.mbMsnrMoveRight) {
            metaItemInfo.setParameter(ParameterKeys.KEY_MOVE_MSNR_RIGHT, ParameterKeys.getFlagState(true));
        }
        if (CameraRequestTag.RequestMode.CAPTURE_REPROCESS == cameraRequestTag.getRequestMode() && cameraRequestTag.mbStarburstEnable) {
            CameraUnitLog.d(TAG, "addPictureMeta, enable starburst");
            arrayList.add(ParameterKeys.ALGO_NAME_STARBURST);
            metaItemInfo.setParameter(ParameterKeys.KEY_STARBURST_ENABLE, String.valueOf(1));
            if (cameraRequestTag.mStarburstInfo != null && cameraRequestTag.mStarburstInfo.length > 10) {
                metaItemInfo.setParameter(ParameterKeys.KEY_STARBURST_INFO, cameraRequestTag.mStarburstInfo);
                CameraUnitLog.d(TAG, "addPictureMeta, starburst info(6~10): " + cameraRequestTag.mStarburstInfo[6] + ", " + cameraRequestTag.mStarburstInfo[7] + ", " + cameraRequestTag.mStarburstInfo[8] + ", " + cameraRequestTag.mStarburstInfo[9] + ", " + cameraRequestTag.mStarburstInfo[10]);
            }
        }
        if (cameraRequestTag.mbFishEyeEnable) {
            CameraUnitLog.d(TAG, "addPictureMeta, enable fish eye");
            arrayList.add(ParameterKeys.ALGO_NAME_FISH_EYE);
            metaItemInfo.setParameter(ParameterKeys.KEY_FISH_EYE_ENABLE, String.valueOf(1));
        }
        if (cameraRequestTag.mbTiltShiftOpen && cameraRequestTag.mTiltShiftBlurValue > 0) {
            arrayList.add(ParameterKeys.ALGO_NAME_TILT_SHIFT);
            metaItemInfo.setParameter(ParameterKeys.KEY_TILT_SHIFT, "1");
            metaItemInfo.setParameter(ParameterKeys.KEY_TILT_SHIFT_PREVIEW_SIZE, cameraRequestTag.mTiltShiftPreviewSize);
            metaItemInfo.setParameter(ParameterKeys.KEY_BLUR_VALUE, String.valueOf(cameraRequestTag.mTiltShiftBlurValue));
            metaItemInfo.setParameter(ParameterKeys.KEY_BLUR_SHOW, String.valueOf(cameraRequestTag.mBlurShow));
            metaItemInfo.setParameter(ParameterKeys.KEY_TILT_SHIFT_TYPE, cameraRequestTag.mTiltShiftType);
            metaItemInfo.setParameter(ParameterKeys.KEY_TILT_SHIFT_CENTER_POSITION, cameraRequestTag.mTiltShiftCenterPosition);
            metaItemInfo.setParameter(ParameterKeys.KEY_TILT_SHIFT_CLEAR_DISTANCE, cameraRequestTag.mTiltShiftClearDistance);
            metaItemInfo.setParameter(ParameterKeys.KEY_TILT_SHIFT_ROTATE_ANGLE, cameraRequestTag.mTiltShiftRotateAngle);
        } else {
            metaItemInfo.setParameter(ParameterKeys.KEY_TILT_SHIFT, "0");
        }
        if (cameraRequestTag.mb3dPhotoEnable) {
            arrayList.add(ParameterKeys.ALGO_NAME_3D_PHOTO);
        }
        if (AlgoSwitchConfig.getSupportCaptureAlgo(apsModeName, cameraRequestTag.mRearFrontCameraId, ParameterKeys.ALGO_NAME_ROTATE_MIRROR) || cameraRequestTag.mbVideoCapture) {
            arrayList.add(ParameterKeys.ALGO_NAME_ROTATE_MIRROR);
        }
        updateUpscaleSize(apsCaptureResult, metaItemInfo, cameraRequestTag);
        if (AlgoSwitchConfig.getSupportCaptureAlgo(apsModeName, cameraRequestTag.mRearFrontCameraId, ParameterKeys.ALGO_NAME_UPSCALE)) {
            arrayList.add(ParameterKeys.ALGO_NAME_UPSCALE);
        }
        if (cameraRequestTag.mbPhotoWaterMarkEnable) {
            arrayList.add(ParameterKeys.ALGO_NAME_WATERMARK);
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
            if (cameraRequestTag.mbWatermarkNeedScale && metaItemInfo.get(ParameterKeys.KEY_OUTPUT_SIZE) != null && cameraRequestTag.mInputWidth != 0) {
                float f = ((int[]) metaItemInfo.get(ParameterKeys.KEY_OUTPUT_SIZE))[0] / cameraRequestTag.mInputWidth;
                metaItemInfo.setParameter(ParameterKeys.KEY_WATERAMRK_BORDER_X, Integer.valueOf((int) (cameraRequestTag.mWatermarkBolderX * f)));
                metaItemInfo.setParameter(ParameterKeys.KEY_WATERAMRK_BORDER_Y, Integer.valueOf((int) (cameraRequestTag.mWatermarkBolderY * f)));
            } else {
                metaItemInfo.setParameter(ParameterKeys.KEY_WATERAMRK_BORDER_X, Integer.valueOf(cameraRequestTag.mWatermarkBolderX));
                metaItemInfo.setParameter(ParameterKeys.KEY_WATERAMRK_BORDER_Y, Integer.valueOf(cameraRequestTag.mWatermarkBolderY));
            }
        }
        metaItemInfo.setParameter(ParameterKeys.KEY_TIME_STAMP, apsCaptureResult.mSensorTimestamp);
        metaItemInfo.setParameter(ParameterKeys.KEY_CAPTURE_RESULT, apsCaptureResult.getTotalResult());
        metaItemInfo.setParameter(ParameterKeys.KEY_CAMERA_ID, String.valueOf(cameraRequestTag.mRearFrontCameraId));
        metaItemInfo.setParameter(ParameterKeys.KEY_LOGIC_CAMERA_ID, Integer.valueOf(cameraRequestTag.mCameraId));
        metaItemInfo.setParameter(ParameterKeys.KEY_META_MAP, apsCaptureResult.getMetaMap());
        metaItemInfo.setParameter(ParameterKeys.KEY_FACE_BEAUTY_VERSION, cameraRequestTag.mFaceBeautyVersion);
        metaItemInfo.setParameter(ParameterKeys.KEY_CUSTOM_BEAUTY_PARAM, cameraRequestTag.mFaceBeautyParam);
        metaItemInfo.setParameter(ParameterKeys.KEY_PI_ENABLE, ParameterKeys.getFlagState(cameraRequestTag.mbPiEnable));
        metaItemInfo.setParameter(ParameterKeys.KEY_PICTURE_EXIF_FLAG, OplusExif.getExif(cameraRequestTag, apsCaptureResult));
        Integer num = (Integer) apsCaptureResult.getTotalResult().get(CaptureResult.JPEG_ORIENTATION);
        CameraUnitLog.d(TAG, "addPictureMeta, get jpegOrientation: " + num);
        if (num != null) {
            metaItemInfo.setParameter(ParameterKeys.KEY_ORIENTATION, num);
        } else {
            CameraUnitLog.w(TAG, "addPictureMeta, get jpegOrientation failed: " + num);
        }
        metaItemInfo.setParameter(ParameterKeys.KEY_FAST_CAPTURE, Boolean.valueOf(cameraRequestTag.mbFastCapture));
        boolean z4 = CameraRequestTag.RequestMode.CAPTURE_REPROCESS == cameraRequestTag.getRequestMode();
        boolean z5 = CameraRequestTag.RequestMode.CAPTURE_RAW == cameraRequestTag.getRequestMode() || z4;
        int i = z5 ? 1 : this.mApsRequestTag.mCaptureStreamNumber;
        if (z4) {
            metaItemInfo.setParameter(ParameterKeys.KEY_REPROCESS_TIME, Long.valueOf(System.currentTimeMillis() - this.mReprocessStartTime));
            metaItemInfo.setParameter(ParameterKeys.KEY_NIGHT_ALGO_PROCESS_TIME, Long.valueOf(this.mNightProcessTime));
            metaItemInfo.setParameter(ParameterKeys.KEY_REPROCESS_APS_WAIT_TIME, Long.valueOf(this.mReprocessApsWaitTime));
        }
        if (!AlgoSwitchConfig.getSupportApsCapture() || z2) {
            metaItemInfo.setParameter(ParameterKeys.KEY_MERGE_NUMBER, 1);
            metaItemInfo.setParameter(ParameterKeys.KEY_MERGE_INDEX, 0);
            metaItemInfo.setParameter(ParameterKeys.KEY_MERGE_IDENTITY, apsCaptureResult.mSensorTimestamp);
            metaItemInfo.setParameter(ParameterKeys.KEY_PREVIEW_STREAM_NUMBER, 1);
            metaItemInfo.setParameter(ParameterKeys.KEY_CAPTURE_STREAM_NUMBER, 1);
            metaItemInfo.setParameter(ParameterKeys.KEY_DATE, Long.valueOf(System.currentTimeMillis()));
        } else {
            metaItemInfo.setParameter(ParameterKeys.KEY_MERGE_INDEX, Integer.valueOf(this.mMergeIndex));
            metaItemInfo.setParameter(ParameterKeys.KEY_MERGE_IDENTITY, Long.valueOf(this.mCaptureMergeIdentity));
            if (!Util.isQcomPlatform() && cameraRequestTag.mbDecisionRequestMixedFormat && !cameraRequestTag.mbBurstShot && !CameraCharacteristicsHelper.isFrontCamera(cameraRequestTag.mCameraId) && 4 == cameraRequestTag.mApsDecisionFeatureType && cameraRequestTag.mCaptureEvList != null && cameraRequestTag.mCaptureEvList.length > 0) {
                metaItemInfo.setParameter(ParameterKeys.KEY_CAPTURE_STREAM_NUMBER, Integer.valueOf(Util.getIndexOfNegativeEv(cameraRequestTag.mCaptureEvList, cameraRequestTag.mRequestNum) == this.mMergeIndex ? 2 : i));
                metaItemInfo.setParameter(ParameterKeys.KEY_MERGE_NUMBER, Integer.valueOf((cameraRequestTag.mRequestNum * i) + 1));
                metaItemInfo.setParameter(ParameterKeys.KEY_SPECIFIC_APS_PROCESS_ALGO, 1);
                metaItemInfo.setParameter(ParameterKeys.KEY_REQUEST_MIXED_FORMAT, Boolean.valueOf(1 == this.mMergeIndex));
            } else if (cameraRequestTag.mbPortraitBackForceDualCapture) {
                metaItemInfo.setParameter(ParameterKeys.KEY_CAPTURE_STREAM_NUMBER, 2);
                metaItemInfo.setParameter(ParameterKeys.KEY_MERGE_NUMBER, Integer.valueOf(cameraRequestTag.mbVideoCapture ? 1 : cameraRequestTag.mRequestNum * 2));
            } else {
                metaItemInfo.setParameter(ParameterKeys.KEY_CAPTURE_STREAM_NUMBER, Integer.valueOf(i));
                metaItemInfo.setParameter(ParameterKeys.KEY_MERGE_NUMBER, Integer.valueOf(cameraRequestTag.mbVideoCapture ? 1 : i * cameraRequestTag.mRequestNum));
            }
            this.mMergeIndex++;
            metaItemInfo.setParameter(ParameterKeys.KEY_PREVIEW_STREAM_NUMBER, Integer.valueOf(z5 ? 1 : this.mApsRequestTag.mPreviewStreamNumber));
            metaItemInfo.setParameter(ParameterKeys.KEY_DATE, Long.valueOf(0 == cameraRequestTag.mCaptureTime ? System.currentTimeMillis() : cameraRequestTag.mCaptureTime));
        }
        if (Util.supportAlgo(cameraRequestTag.mApsAlgoFlags, ParameterKeys.ALGO_NAME_BOKEH) || Util.supportAlgo(cameraRequestTag.mApsAlgoFlags, ParameterKeys.ALGO_NAME_FRONT_BOKEH)) {
            metaItemInfo.setParameter(ParameterKeys.KEY_BLUR_VALUE, String.valueOf(cameraRequestTag.mBlurIndex));
            metaItemInfo.setParameter(ParameterKeys.KEY_BLUR_SHOW, String.valueOf(cameraRequestTag.mBlurShow));
        }
        if (cameraRequestTag.mbVideoNeonOpen) {
            metaItemInfo.setParameter(ParameterKeys.KEY_VIDEO_FUSION_EFFECT, Integer.valueOf(cameraRequestTag.mVideoFusionEffect));
            metaItemInfo.setParameter(ParameterKeys.KEY_VIDEO_NEON_PARAMS, cameraRequestTag.mVideoNeonParams);
            metaItemInfo.setParameter(ParameterKeys.KEY_VIDEO_BLUR_ORIENTATION, String.valueOf(cameraRequestTag.mOrientation));
        } else if (cameraRequestTag.mbVideoBlurOpen && cameraRequestTag.mBlurIndex > 0) {
            metaItemInfo.setParameter(ParameterKeys.KEY_BLUR_VALUE, String.valueOf(cameraRequestTag.mBlurIndex));
            metaItemInfo.setParameter(ParameterKeys.KEY_BLUR_SHOW, String.valueOf(cameraRequestTag.mBlurShow));
            metaItemInfo.setParameter(ParameterKeys.KEY_VIDEO_BLUR_PARAMS, cameraRequestTag.mVideoBlurParams);
            metaItemInfo.setParameter(ParameterKeys.KEY_VIDEO_BLUR_EFFECT, String.valueOf(true));
            metaItemInfo.setParameter(ParameterKeys.KEY_VIDEO_BLUR_ORIENTATION, String.valueOf(cameraRequestTag.mOrientation));
        } else if (cameraRequestTag.mbVideoRetentionOpen) {
            metaItemInfo.setParameter(ParameterKeys.KEY_VIDEO_RETENTION, ParameterKeys.getFlagState(cameraRequestTag.mbVideoRetentionEffectProcessed));
            metaItemInfo.setParameter(ParameterKeys.KEY_VIDEO_RETENTION_ORIENTATION, String.valueOf(cameraRequestTag.mOrientation));
        }
        if (cameraRequestTag.mbStarVideoEnable) {
            metaItemInfo.setParameter(ParameterKeys.KEY_FRAME_FLAG, Integer.valueOf(cameraRequestTag.mFrameFlag));
        }
        metaItemInfo.setParameter(ParameterKeys.KEY_CAPTURE_FOR_VIDEO, Boolean.valueOf(cameraRequestTag.mbCaptureForVideo));
        metaItemInfo.setParameter(ParameterKeys.KEY_OUTPUT_FORMAT, Integer.valueOf(cameraRequestTag.mOutputFormat));
        metaItemInfo.setParameter(ParameterKeys.KEY_FRAME_NUMBER, Long.valueOf(apsCaptureResult.mFrameNumber));
        metaItemInfo.setParameter(ParameterKeys.KEY_DISPLAY_METRICS_WIDTH, String.valueOf(Util.getScreenWidth()));
        metaItemInfo.setParameter(ParameterKeys.KEY_DISPLAY_METRICS_HEIGHT, String.valueOf(Util.getScreenHeight()));
        metaItemInfo.setParameter(ParameterKeys.KEY_ULTRA_RESOLUTION, ParameterKeys.getFlagState(cameraRequestTag.mbUltraResolutionEnabled));
        metaItemInfo.setParameter(ParameterKeys.KEY_RTB_ENABLE, cameraRequestTag.mRTBEnable ? "1" : "0");
        metaItemInfo.setParameter(ParameterKeys.KEY_QUICK_JPEG, Boolean.valueOf(cameraRequestTag.mbSupportQuickJpeg));
        metaItemInfo.setParameter(ParameterKeys.KEY_PHOTO_10BIT_ENABLE, ParameterKeys.getFlagState(cameraRequestTag.mbPhoto10BitsEnable));
        if (getPreviewRequestTag() != null) {
            metaItemInfo.setParameter(ParameterKeys.KEY_ZOOM_RATIO, String.valueOf(getPreviewRequestTag().mZoomRatio));
        }
        metaItemInfo.setParameter(ParameterKeys.KEY_USE_TUNING_DATA, Boolean.valueOf(cameraRequestTag.mbUseTuningData));
        metaItemInfo.setParameter(ParameterKeys.KEY_APS_PROCESS_ALGO_TYPE, joinAppAndHalAlgoFlag((String[]) arrayList.toArray(new String[0]), z2 ? null : cameraRequestTag.mApsAlgoFlags));
        metaItemInfo.setParameter(ParameterKeys.KEY_AI_SHUTTER, Boolean.valueOf(cameraRequestTag.mbAIShutter));
        metaItemInfo.setParameter(ParameterKeys.KEY_PREVIEW_CALLBACK_TYPE, "0");
        metaItemInfo.setParameter(ParameterKeys.KEY_DCIP3_ENABLE, ParameterKeys.getFlagState(cameraRequestTag.mbFromMainMenu && ((Boolean) CameraAdapterUtils.getConfigValue(CameraConfigBase.KEY_FEATURE_DCIP3_SUPPORT, false)).booleanValue()));
        if (this.mReprocessMetadataTimeStamp == apsCaptureResult.mSensorTimestamp.longValue() && (cameraRequestTag.mbInNightProcess || "super_raw".equals(cameraRequestTag.mRawValue) || cameraRequestTag.mbStarryProcess)) {
            CameraUnitLog.d(TAG, "addPictureMeta, will save capture result for reprocess");
            metaItemInfo.setParameter(ParameterKeys.KEY_REPROCESS_META_DATA, true);
        }
        if (cameraRequestTag != null) {
            metaItemInfo.setParameter(ParameterKeys.KEY_KEY_DECISION_FEATURE_TYPE, Integer.valueOf(cameraRequestTag.mApsDecisionFeatureType));
            metaItemInfo.setParameter(ParameterKeys.KEY_SUPER_NIGHT_SCENE, String.valueOf(cameraRequestTag.mSuperNightScene));
            metaItemInfo.setParameter(ParameterKeys.KEY_INPUT_EVLIST, Arrays.toString(cameraRequestTag.mCaptureEVList));
            metaItemInfo.setParameter(ParameterKeys.KEY_META_INDEX, String.valueOf(cameraRequestTag.mMetaIndex));
            metaItemInfo.setParameter(ParameterKeys.KEY_CAPTURE_FEATURE_TYPE, Integer.valueOf(cameraRequestTag.mApsDecisionFeatureType));
            metaItemInfo.setParameter(ParameterKeys.KEY_CAPTURE_MFNR_NUM, Integer.valueOf(cameraRequestTag.mMFSRFrameCount));
            metaItemInfo.setParameter(ParameterKeys.KEY_CAPTURE_SCENE, Integer.valueOf(cameraRequestTag.mApsDecisionSceneMode));
            metaItemInfo.setParameter(ParameterKeys.KEY_AIS_STATE, String.valueOf(cameraRequestTag.mAISState));
            CameraUnitLog.v(TAG, "addPictureMeta, mCaptureDecisionResult.mSuperNightScene: " + cameraRequestTag.mSuperNightScene);
        }
        metaItemInfo.setParameter(ParameterKeys.KEY_CAMERA_REQUEST_TAG, Util.createApsRequestTag(cameraRequestTag, metaItemInfo));
        if (CameraCharacteristicsHelper.isFrontCamera(cameraRequestTag.mCameraId) || cameraRequestTag.mbRearMirrorEnable) {
            metaItemInfo.setParameter(ParameterKeys.KEY_PICTURE_MIRROR, ParameterKeys.getFlagState(!cameraRequestTag.mbMirrorEnable));
            metaItemInfo.setParameter(ParameterKeys.KEY_LENS_FACING, String.valueOf(0));
        } else {
            metaItemInfo.setParameter(ParameterKeys.KEY_PICTURE_MIRROR, "0");
            metaItemInfo.setParameter(ParameterKeys.KEY_LENS_FACING, String.valueOf(1));
        }
        metaItemInfo.setParameter(ParameterKeys.KEY_PICTURE_VISUALIZATION_ENABLE, ParameterKeys.getFlagState(cameraRequestTag.mbPictureVisualizationEnable));
        metaItemInfo.setParameter(ParameterKeys.KEY_SHUTTER_BUTTON_CLICK_TIME, String.valueOf(cameraRequestTag.mShutterButtonClickTime));
        metaItemInfo.setParameter(ParameterKeys.KEY_SUPER_RAW_ENABLE, ParameterKeys.getFlagState("super_raw".equals(cameraRequestTag.mRawValue)));
        metaItemInfo.setParameter(ParameterKeys.KEY_RAW_SR_ENABLE, ParameterKeys.getFlagState(cameraRequestTag.mbRawSREnable));
        if (cameraRequestTag.mLocation != null && 0 != cameraRequestTag.mLocation.getTime()) {
            metaItemInfo.setParameter(ParameterKeys.KEY_GPS_TIME, String.valueOf(cameraRequestTag.mLocation.getTime()));
            metaItemInfo.setParameter(ParameterKeys.KEY_GPS_COORDS, Arrays.toString(new double[]{cameraRequestTag.mLocation.getLatitude(), cameraRequestTag.mLocation.getLongitude(), cameraRequestTag.mLocation.getAltitude()}));
        }
        if (cameraRequestTag.mbLongExposureCaptureEnable) {
            metaItemInfo.setParameter(ParameterKeys.KEY_IS_LONG_EXPOSURE_CAPTURE_ENABLE, true);
        }
        metaItemInfo.setParameter(ParameterKeys.KEY_OPERATION_MODE, String.valueOf(cameraRequestTag.mApsRequestTag.mOperationMode));
        metaItemInfo.setParameter(ParameterKeys.KEY_OFFSET_DATE_TIME, DateTimeFormatter.ofPattern("XXX").format(ZonedDateTime.ofInstant(Instant.ofEpochMilli(0 == cameraRequestTag.mCaptureTime ? System.currentTimeMillis() : cameraRequestTag.mCaptureTime), ZoneId.systemDefault())));
        if (this.mApsAdapter != null) {
            this.mApsAdapter.addMetadata(metaItemInfo);
        }
    }

    @Override // com.oplus.ocs.camera.consumer.ApsProcessorContract.IProcessor
    public void addVideoImage(ImageReader imageReader, Image image, ImageCategory.ItemInfoType itemInfoType) {
        this.mApsAdapter.addVideoImage(generateImageInfo(imageReader, image, this.mApsRequestTag, itemInfoType, null, this.mCurrentModeName != null && this.mCurrentModeName.equals("slowvideo_mode") && this.mbVideoImageNeedDetach, true));
    }

    @Override // com.oplus.ocs.camera.consumer.ApsProcessorContract.IProcessor
    @Deprecated
    public Bitmap processBitmap(Bitmap bitmap, CaptureResult captureResult, ImageCategory.MetaItemInfo metaItemInfo) {
        return this.mApsAdapter != null ? this.mApsAdapter.processBitmap(bitmap, captureResult, metaItemInfo) : bitmap;
    }

    @Override // com.oplus.ocs.camera.consumer.ApsProcessorContract.IProcessor
    public void updateThumbnailMap(long j) {
        if (this.mApsAdapter != null) {
            this.mApsAdapter.updateThumbnailMap(j);
        }
    }

    @Override // com.oplus.ocs.camera.consumer.ApsProcessorContract.IProcessor
    public boolean notifyLastCaptureFrame(ImageCategory.MetaItemInfo metaItemInfo) {
        if (this.mApsAdapter != null) {
            return this.mApsAdapter.notifyLastCaptureFrame(metaItemInfo);
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
        if (this.mRecordingRequestTag != null && this.mRecordingRequestTag.isHyperLapseOpen && !this.mbVideoRecording) {
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
        long j4 = ((float) totalMemory) * MAX_AVAILABLE_MEMORY_RATIO;
        APSClient.APSRuntimeInfo runtimeInfo = this.mApsAdapter.getRuntimeInfo();
        if (runtimeInfo != null) {
            long j5 = runtimeInfo.mInputMemSize * 1048576;
            long j6 = runtimeInfo.mSingleAlgoMaxRunMem * 1048576;
            int i = runtimeInfo.mTotalTimeEstimate;
            CameraUnitLog.d(TAG, "checkRuntimeState, needMemory: " + j + ", totalMemory: " + totalMemory + ", maxAvailableMemory: " + j4 + ", mInputMemSize: " + j5 + ", singleAlgoMaxRunMem: " + j6 + ", cameraMem: " + j3 + ", timeLimit: 25000, totalTimeEstimate: " + i);
            return ((j5 + j) + j3) + j6 < j4 && ((long) i) < 25000;
        }
        return false;
    }

    @Override // com.oplus.ocs.camera.consumer.ApsProcessorContract.IProcessor
    public boolean checkInputMemSize() {
        APSClient.APSRuntimeInfo runtimeInfo = this.mApsAdapter.getRuntimeInfo();
        StringBuilder sb = new StringBuilder();
        sb.append("checkInputMemSize, inputMemSize: ");
        sb.append(runtimeInfo == null ? null : Integer.valueOf(runtimeInfo.mInputMemSize));
        CameraUnitLog.d(TAG, sb.toString());
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
        this.mConsumerContract.onApsJpegArrived(new CameraImage(apsResult.mCopyBuffer, apsResult.mBufferType, apsResult.mWidth, apsResult.mHeight, apsResult.mStride, apsResult.mScanline, this.mPicOrientation, apsResult.mIdentity, "", 1), apsResult);
    }

    @Override // com.oplus.ocs.camera.consumer.apsAdapter.adapter.ApsAdapterInterface.ImageProcessListener
    public void onHeicReceived(ApsResult apsResult) {
        CameraUnitLog.v(TAG, "onHeicReceived, result: " + apsResult + ", mPicOrientation: " + this.mPicOrientation);
        this.mConsumerContract.onApsJpegArrived(new CameraImage(apsResult.mCopyBuffer, apsResult.mBufferType, apsResult.mWidth, apsResult.mHeight, apsResult.mStride, apsResult.mScanline, this.mPicOrientation, apsResult.mIdentity, "", 2), apsResult);
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
            if (!Util.isQcomPlatform()) {
                CameraRequestTag cameraRequestTag = (CameraRequestTag) ((ApsCameraRequestTag) metaItemInfo.get(ApsParameters.KEY_CAMERA_REQUEST_TAG)).mTag;
                TotalCaptureResult totalCaptureResult = (TotalCaptureResult) metaItemInfo.get(ApsParameters.KEY_CAPTURE_RESULT);
                if (cameraRequestTag != null && totalCaptureResult != null) {
                    cameraRequestTag.mbRawOnReprocess = true;
                    ApsCaptureResult apsCaptureResult = new ApsCaptureResult(new ApsTotalResult(totalCaptureResult, null, null, 0L), Integer.toString(cameraRequestTag.mCameraId));
                    addPictureImage(imageItemInfo.mImageBuffer, 0, cameraRequestTag);
                    addPictureMeta(cameraRequestTag, apsCaptureResult, false);
                    return;
                }
            }
            imageItemInfo.mApsServiceListener.onReprocess(imageItemInfo.mImageBuffer.getImage(), (TotalCaptureResult) metaItemInfo.get(ApsParameters.KEY_CAPTURE_RESULT), new Rect(apsResult.mCropLeft, apsResult.mCropTop, apsResult.mCropRight, apsResult.mCropBottom), (ApsCameraRequestTag) metaItemInfo.get(ApsParameters.KEY_CAMERA_REQUEST_TAG));
        }
        if (apsResult.mProcTimes != null && metaItemInfo.get(ApsParameters.KEY_APS_PROCESS_ALGO_TYPE) != null && ((String[]) metaItemInfo.get(ApsParameters.KEY_APS_PROCESS_ALGO_TYPE)).length > 0) {
            this.mReprocessApsWaitTime = apsResult.mProcTimes.get(ParameterKeys.KEY_REPROCESS_APS_WAIT_TIME.getName()).longValue();
            String substring = ((String[]) metaItemInfo.get(ApsParameters.KEY_APS_PROCESS_ALGO_TYPE))[0].substring(9);
            if (apsResult.mProcTimes.get(substring) != null) {
                this.mNightProcessTime = apsResult.mProcTimes.get(substring).longValue();
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
    public HashMap<String, String> fillApsParameters(ImageCategory imageCategory, int i) {
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
            if (((Long) metaItemInfo.get(ParameterKeys.KEY_DATE)).longValue() != 0) {
                hashMap.put(ParameterKeys.KEY_PICTURE_DATE_TIME, String.valueOf(metaItemInfo.get(ParameterKeys.KEY_DATE)));
            } else {
                hashMap.put(ParameterKeys.KEY_PICTURE_DATE_TIME, String.valueOf(imageItemInfo.get(ParameterKeys.KEY_DATE)));
            }
            if (metaItemInfo.get(ParameterKeys.KEY_PICTURE_EXIF_FLAG) != null) {
                hashMap.put(ParameterKeys.KEY_PICTURE_EXIF_FLAG.getName(), ((String) metaItemInfo.get(ParameterKeys.KEY_PICTURE_EXIF_FLAG)).substring(OplusExifTag.EXIF_TAG_PREFIX.length()));
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
            this.mConsumerContract.fillApsParameters(i, hashMap);
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
            apsInitParameter3.setParameter(ParameterKeys.KEY_CAPTURE_MODE, apsInitParameter.get(ParameterKeys.KEY_CAPTURE_MODE));
            apsInitParameter3.setParameter(ParameterKeys.KEY_CAMERA_FEATURE, apsInitParameter.get(ParameterKeys.KEY_CAMERA_FEATURE));
            apsInitParameter3.setParameter(ParameterKeys.KEY_CAMERA_ID, apsInitParameter.get(ParameterKeys.KEY_CAMERA_ID));
            apsInitParameter3.setParameter(ParameterKeys.KEY_LOGIC_CAMERA_ID, apsInitParameter.get(ParameterKeys.KEY_LOGIC_CAMERA_ID));
            apsInitParameter3.setParameter(ParameterKeys.KEY_HIGHT_PICTURE_SIZE_ENABLE, apsInitParameter.get(ParameterKeys.KEY_HIGHT_PICTURE_SIZE_ENABLE));
            apsInitParameter3.setParameter(ParameterKeys.KEY_PHOTO_10BIT_ENABLE, apsInitParameter.get(ParameterKeys.KEY_PHOTO_10BIT_ENABLE));
            apsInitParameter3.setParameter(ParameterKeys.KEY_OPERATION_MODE, apsInitParameter.get(ParameterKeys.KEY_OPERATION_MODE));
            apsInitParameter3.setParameter(ParameterKeys.KEY_PREVIEW_SIZE, apsInitParameter.get(ParameterKeys.KEY_PREVIEW_SIZE));
            apsInitParameter3.setParameter(ParameterKeys.KEY_VIDEO_SIZE, apsInitParameter.get(ParameterKeys.KEY_VIDEO_SIZE));
            apsInitParameter3.setParameter(ParameterKeys.KEY_QUICK_JPEG, apsInitParameter.get(ParameterKeys.KEY_QUICK_JPEG));
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
        this.mProcessingPreviewFrameSet.add(l);
        this.mConsumerContract.onHalPreviewCollected(l);
    }

    @Override // com.oplus.ocs.camera.consumer.apsAdapter.adapter.ApsAdapterInterface.ImageProcessListener
    public void onFirstCaptureFrameAdd(ImageCategory imageCategory) {
        CameraUnitLog.d(TAG, "onFirstCaptureFrameAdd");
        this.mConsumerContract.onFirstCaptureFrameAdd(imageCategory);
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

    private ImageCategory.ImageItemInfo generateImageInfo(ImageReader imageReader, Image image, ApsRequestTag apsRequestTag, ImageCategory.ItemInfoType itemInfoType, String str, boolean z, boolean z2) {
        int i;
        int i2;
        if (image == null || itemInfoType == null || apsRequestTag == null) {
            CameraUnitLog.e(TAG, "generateImageInfo, params error, image: " + image + ", tag: " + apsRequestTag + ", type: " + itemInfoType);
            return null;
        }
        if (ImageCategory.ItemInfoType.PREVIEW.equals(itemInfoType)) {
            if (!"rear_main".equals(str) && !"rear_sat".equals(str)) {
                if ("rear_wide".equals(str) || CameraConstant.CameraType.REAR_MONO_CAMERA_1.equals(str) || CameraConstant.CameraType.REAR_MONO_CAMERA_2.equals(str)) {
                    i = 2;
                } else if ("rear_tele".equals(str)) {
                    i = 3;
                } else if ("front_main".equals(str)) {
                    i2 = 1;
                } else if ("front_wide".equals(str)) {
                    i = 5;
                }
                i2 = i;
            }
            i2 = 0;
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
        imageItemInfo.mImageBuffer = new ApsResult.ImageBuffer(imageReader, image, image.getHardwareBuffer(), image.getTimestamp());
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
        imageItemInfo.setParameter(ParameterKeys.KEY_NEED_META_DATA, Boolean.valueOf(apsRequestTag.mbNeedMetadata));
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
        int width;
        if (apsCaptureResult.mUpscaleInputSize != null && apsCaptureResult.mUpscaleInputSize.length == 4) {
            i = apsCaptureResult.mUpscaleInputSize[0];
            i2 = apsCaptureResult.mUpscaleInputSize[1];
            i4 = apsCaptureResult.mUpscaleInputSize[2];
            i3 = apsCaptureResult.mUpscaleInputSize[3];
        } else {
            CameraUnitLog.w(TAG, "updateUpscaleSize, upscaleInputArray is null");
            i = 0;
            i2 = 0;
            i3 = 0;
            i4 = 0;
        }
        if (apsCaptureResult.mUpscaleOutputSize != null && apsCaptureResult.mUpscaleOutputSize.length == 4) {
            int i11 = apsCaptureResult.mUpscaleOutputSize[0];
            int i12 = apsCaptureResult.mUpscaleOutputSize[1];
            i7 = apsCaptureResult.mUpscaleOutputSize[2];
            i8 = apsCaptureResult.mUpscaleOutputSize[3];
            i6 = i11;
            i5 = i12;
        } else {
            CameraUnitLog.w(TAG, "updateUpscaleSize, upscaleOutputArray is null");
            i5 = 0;
            i6 = 0;
            i7 = 0;
            i8 = 0;
        }
        Size size = (cameraRequestTag.mSensorSizes == null || apsCaptureResult.mMasterPipeline == null) ? cameraRequestTag.mApsRequestTag.mPictureSize : cameraRequestTag.mSensorSizes[apsCaptureResult.mMasterPipeline[0]];
        boolean z = "1".equals(ApsUtils.getVendorTagConfig(DefaultUtill.KEY_NIGHT_OFFLINE_R2Y)) && cameraRequestTag.mbInNightProcess;
        if (Util.isQcomPlatform() && !z) {
            size = null;
        }
        CameraUnitLog.d(TAG, "updateUpscaleSize, tag.mSensorSizes: " + Arrays.toString(cameraRequestTag.mSensorSizes) + ", result.mMasterPipeline: " + Arrays.toString(apsCaptureResult.mMasterPipeline) + ", outputSize: " + size);
        if (size != null) {
            metaItemInfo.setParameter(ParameterKeys.KEY_OUTPUT_SIZE, new int[]{size.getWidth(), size.getHeight(), 0, 0});
            metaItemInfo.setParameter(ParameterKeys.KEY_OUTPUT_WIDTH, String.valueOf(size.getWidth()));
            metaItemInfo.setParameter(ParameterKeys.KEY_OUTPUT_HEIGHT, String.valueOf(size.getHeight()));
            if (!cameraRequestTag.mApsRequestTag.mbHighPictureSizeEnable) {
                boolean z2 = ((Boolean) CameraAdapterUtils.getConfigValue(CameraConfigBase.KEY_FRONT_SENSOR_BINNING, false)).booleanValue() && CameraCharacteristicsHelper.isFrontCamera(cameraRequestTag.mCameraId);
                ApsParameters.Key<String> key = ParameterKeys.KEY_CROP_WIDTH;
                if (z2) {
                    i10 = 2;
                    width = size.getWidth() / 2;
                } else {
                    i10 = 2;
                    width = size.getWidth();
                }
                metaItemInfo.setParameter(key, String.valueOf(width));
                metaItemInfo.setParameter(ParameterKeys.KEY_CROP_HEIGHT, String.valueOf(z2 ? size.getHeight() / i10 : size.getHeight()));
            }
        }
        int i13 = i5;
        int i14 = i6;
        int i15 = i3;
        int i16 = i4;
        if (isNeedUpscale(i, i2, i4, i3, i14, i13)) {
            i9 = i16;
            metaItemInfo.setParameter(ParameterKeys.KEY_INPUT_SIZE, new int[]{i, i2, i9, i15});
            metaItemInfo.setParameter(ParameterKeys.KEY_OUTPUT_SIZE, new int[]{i14, i13, i7, i8});
            metaItemInfo.setParameter(ParameterKeys.KEY_OUTPUT_WIDTH, String.valueOf(i14));
            metaItemInfo.setParameter(ParameterKeys.KEY_OUTPUT_HEIGHT, String.valueOf(i13));
            cameraRequestTag.mbWatermarkNeedScale = true;
        } else {
            i9 = i16;
        }
        if (CameraRequestTag.RequestMode.CAPTURE_REPROCESS == cameraRequestTag.getRequestMode()) {
            CameraUnitLog.v(TAG, "updateUpscaleSize, inputWidth: " + i + ", inputHeight: " + i2 + ", inputStride: " + i9 + ", inputScanline: " + i15);
            metaItemInfo.setParameter(ParameterKeys.KEY_INPUT_SIZE, new int[]{i, i2, i9, i15});
            metaItemInfo.setParameter(ParameterKeys.KEY_OUTPUT_SIZE, new int[]{i, i2, i9, i15});
        }
        if (cameraRequestTag.mUpScaleOutputSize != null) {
            metaItemInfo.setParameter(ParameterKeys.KEY_OUTPUT_WIDTH, String.valueOf(cameraRequestTag.mUpScaleOutputSize[0]));
            metaItemInfo.setParameter(ParameterKeys.KEY_OUTPUT_HEIGHT, String.valueOf(cameraRequestTag.mUpScaleOutputSize[1]));
            metaItemInfo.setParameter(ParameterKeys.KEY_OUTPUT_SIZE, cameraRequestTag.mUpScaleOutputSize);
            cameraRequestTag.mbWatermarkNeedScale = true;
        }
    }

    private String[] joinAppAndHalAlgoFlag(String[] strArr, String[] strArr2) {
        if (strArr == null || strArr.length <= 0) {
            return (strArr2 == null || strArr2.length == 0) ? new String[]{ApsParameters.ALGO_NAME_NONE} : strArr2;
        } else if (strArr2 == null || strArr2.length == 0) {
            return strArr;
        } else {
            String[] strArr3 = new String[strArr2.length + strArr.length];
            System.arraycopy(strArr2, 0, strArr3, 0, strArr2.length);
            System.arraycopy(strArr, 0, strArr3, strArr2.length, strArr.length);
            return strArr3;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setFace(CaptureResult captureResult) {
        Face[] faceArr = (Face[]) captureResult.get(CaptureResult.STATISTICS_FACES);
        this.mFaceCount = faceArr == null ? 0 : faceArr.length;
        if (this.mFaceCount <= 0 || this.mbHasFaceInfo) {
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
        }
    }

    /* loaded from: classes.dex */
    private class ApsServiceListener implements ApsAdapterListener.ApsServiceListener {
        @Override // com.oplus.ocs.camera.consumer.apsAdapter.service.ApsAdapterListener.ApsServiceListener
        public void reportCaptureDataToDcs(Object obj, Object obj2) {
        }

        private ApsServiceListener() {
        }

        @Override // com.oplus.ocs.camera.consumer.apsAdapter.service.ApsAdapterListener.ApsServiceListener
        public void onFinishAddFrame(ImageCategory.ImageItemInfo imageItemInfo, ImageCategory.MetaItemInfo metaItemInfo) {
            CameraUnitLog.v(ApsProcessor.TAG, "onFinishAddFrame");
            ApsProcessor.this.mConsumerContract.onFinishAddFrame(imageItemInfo, metaItemInfo, ApsProcessor.this.mPictureRequestTag);
            ApsProcessor.this.mPictureRequestTag = null;
        }

        @Override // com.oplus.ocs.camera.consumer.apsAdapter.service.ApsAdapterListener.ApsServiceListener
        public void onReprocess(Image image, TotalCaptureResult totalCaptureResult, Rect rect, ApsCameraRequestTag apsCameraRequestTag) {
            ((CameraRequestTag) apsCameraRequestTag.mTag).mNightCaptureTotalTime = ApsProcessor.this.mNightCaptureTotalTime;
            ApsProcessor.this.mConsumerContract.onReprocess(image, totalCaptureResult, rect, (CameraRequestTag) apsCameraRequestTag.mTag);
        }

        @Override // com.oplus.ocs.camera.consumer.apsAdapter.service.ApsAdapterListener.ApsServiceListener
        public void onPreviewReceived(ApsResult apsResult, ApsTotalResult apsTotalResult) {
            TotalCaptureResult totalResult = apsTotalResult.getTotalResult();
            ApsProcessor.this.mConsumerContract.onPreviewReceived(apsResult, apsTotalResult);
            if (totalResult != null || (ApsProcessor.this.mApsRequestTag != null && !ApsProcessor.this.mApsRequestTag.mbNeedMetadata)) {
                ApsProcessor.this.mApsDecisionListener.onDecisionResult(apsResult.mDecisionResult);
            }
            if (totalResult != null) {
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
                    if (ApsProcessor.this.mPreviewRequestTag != null && ApsProcessor.this.mConsumerContract.isApsFinishAddFrame() && ApsProcessor.this.mConsumerContract.isApsFinishProcessFrame() && ApsProcessor.access$1208(ApsProcessor.this) >= 3) {
                        ApsProcessor.this.mAPSDecisionPreviewFrameCount = 0;
                        ApsProcessor.this.initAPS(2, ApsProcessor.this.mApsInitParameter, ApsProcessor.this.getUnInitAlgos());
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
    }
}

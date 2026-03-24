package com.oplus.ocs.camera.consumer;

import android.graphics.Bitmap;
import android.graphics.Rect;
import android.hardware.camera2.CaptureRequest;
import android.hardware.camera2.CaptureResult;
import android.hardware.camera2.TotalCaptureResult;
import android.media.Image;
import android.media.ImageReader;
import android.os.Handler;
import android.os.HandlerThread;
import android.text.TextUtils;
import android.util.Size;
import androidx.annotation.NonNull;
import com.android.tools.r8.annotations.SynthesizedClassMap;
import com.oplus.ocs.camera.ProducerConsumerInterfaceContract;
import com.oplus.ocs.camera.appinterface.CameraPictureCallbackAdapter;
import com.oplus.ocs.camera.appinterface.CameraPreviewCallbackAdapter;
import com.oplus.ocs.camera.appinterface.CameraRecordingCallbackAdapter;
import com.oplus.ocs.camera.common.parameter.Parameter;
import com.oplus.ocs.camera.common.parameter.apsadapter.ApsOtherParameter;
import com.oplus.ocs.camera.common.statistics.StatisticsManager;
import com.oplus.ocs.camera.common.surface.SurfaceKey;
import com.oplus.ocs.camera.common.surface.SurfacePool;
import com.oplus.ocs.camera.common.util.ApsRequestTag;
import com.oplus.ocs.camera.common.util.CameraImage;
import com.oplus.ocs.camera.common.util.CameraRequestTag;
import com.oplus.ocs.camera.common.util.CameraUnitLog;
import com.oplus.ocs.camera.common.util.ConfigInfoPkg;
import com.oplus.ocs.camera.common.util.ContextHolder;
import com.oplus.ocs.camera.common.util.ParameterKeys;
import com.oplus.ocs.camera.common.util.Util;
import com.oplus.ocs.camera.consumer.ApsProcessorContract;
import com.oplus.ocs.camera.consumer.apsAdapter.ApsCameraMetadataKey;
import com.oplus.ocs.camera.consumer.apsAdapter.ApsCameraRequestTag;
import com.oplus.ocs.camera.consumer.apsAdapter.adapter.ApsAdapterDecision;
import com.oplus.ocs.camera.consumer.apsAdapter.adapter.ApsCaptureResult;
import com.oplus.ocs.camera.consumer.apsAdapter.adapter.ApsResult;
import com.oplus.ocs.camera.consumer.apsAdapter.adapter.ApsTotalResult;
import com.oplus.ocs.camera.consumer.apsAdapter.adapter.ImageCategory;
import com.oplus.ocs.camera.consumer.apsAdapter.config.AlgoSwitchConfig;
import com.oplus.ocs.camera.consumer.apsAdapter.service.ApsAdapterListener;
import com.oplus.ocs.camera.producer.device.CameraSessionEntity;
import com.oplus.ocs.camera.producer.info.CameraCharacteristicsHelper;
import com.oplus.ocs.camera.producer.info.CameraCharacteristicsWrapper;
import java.util.Arrays;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
/* loaded from: classes.dex */
public class ConsumerImpl implements ProducerConsumerInterfaceContract.ConsumerInterface, ApsProcessorContract.IConsumer {
    private static final String FRONT_CAMERA_TAG = "front";
    private static final String MAIN_CAMERA_TAG = "main";
    private static final String TAG = "ConsumerImpl";
    private final Object mRequestLock = new Object();
    private InnerCameraPictureCallbackAdapter mPictureAdapter = null;
    private ConsumerCameraPreviewCallback mPreviewAdapter = null;
    private CameraRecordingCallbackAdapter mRecordingAdapter = null;
    private ApsProcessorContract.IProcessor mProcessorContract = null;
    private ProducerConsumerInterfaceContract.ProducerInterface mProducerInterface = null;
    private int mRecordingState = 4;
    private boolean mbFirstPreviewMetaArrived = false;
    private boolean mbFirstPreviewImageArrived = false;
    private boolean mbFirstPreviewReceived = false;
    private boolean mbIsStopRecording = false;
    private boolean mbIsReprocessMode = false;
    private ApsRequestTag mApsTag = null;
    private CameraRecordingCallbackAdapter.RecordingResult mRecordingResult = null;
    private final ConcurrentHashMap<String, Integer> mResultSet = new ConcurrentHashMap<>();
    private ApsAdapterDecision.DecisionResult mPreviewDecisionResult = null;
    private boolean mbNeedApsProcessVideoFrame = false;
    private volatile boolean mbWaitToStopVideo = false;
    private Image mRawImage = null;
    private CaptureResult mRawCaptureResult = null;
    private int mRequestRawNumber = 0;
    private int mRequestSuperRawJpegNumber = 0;
    private long mCaptureDate = 0;
    private final Object mSaveResultToDngLock = new Object();
    private Handler mPreviewImageHandler = null;
    private Handler mPreviewFrameHandler = null;
    private Handler mCaptureImageHandler = null;
    private boolean mIsRecording = false;
    private int mAllmightyLastScene = 0;
    private int mAiEnhanceSceneStart = 0;
    private int mAiEnhanceSceneEnd = 0;
    private int mAiEnhanceSceneChangeCount = 0;

    public ConsumerImpl() {
        initHandlerThread();
    }

    @Override // com.oplus.ocs.camera.ProducerConsumerInterfaceContract.ConsumerInterface
    public void onConfigParseDone() {
        this.mProcessorContract = new ApsProcessor(this);
    }

    @Override // com.oplus.ocs.camera.ProducerConsumerInterfaceContract.ConsumerInterface
    public boolean linkSurfaceToConsumer(@NonNull final CameraRequestTag cameraRequestTag, String str, int i) {
        CameraUnitLog.i(TAG, "linkToObserver, target surfaces: " + cameraRequestTag.mAddTargetSurfaces + ", stage: " + str + ", format: " + i);
        this.mbIsReprocessMode = CameraRequestTag.RequestMode.CAPTURE_REPROCESS.equals(cameraRequestTag.getRequestMode());
        if (Parameter.ParameterStage.START_PREVIEW.equals(str) && this.mProducerInterface.needApsProcessor()) {
            this.mProcessorContract.startPreview(cameraRequestTag);
        }
        for (final SurfaceKey surfaceKey : cameraRequestTag.mAddTargetSurfaces.keySet()) {
            if (Parameter.ParameterStage.START_PREVIEW.equals(str)) {
                ImageReader imageReader = SurfacePool.getInstance().getImageReader(surfaceKey);
                Handler handler = CameraSessionEntity.SurfaceUsage.PREVIEW_FRAME.equals(surfaceKey.getUsage()) ? this.mPreviewFrameHandler : this.mPreviewImageHandler;
                if (imageReader != null) {
                    imageReader.setOnImageAvailableListener(new ImageReader.OnImageAvailableListener() { // from class: com.oplus.ocs.camera.consumer.ConsumerImpl.1
                        @Override // android.media.ImageReader.OnImageAvailableListener
                        public void onImageAvailable(ImageReader imageReader2) {
                            if (CameraSessionEntity.SurfaceUsage.PREVIEW_FRAME.equals(surfaceKey.getUsage()) || CameraSessionEntity.SurfaceUsage.PREVIEW_IN_PREVIEW.equals(surfaceKey.getUsage())) {
                                ConsumerImpl.this.onPreviewFrameImageArrived(cameraRequestTag, imageReader2);
                            } else {
                                ConsumerImpl.this.onPreviewImageArrived(cameraRequestTag, imageReader2, surfaceKey.getCameraType());
                            }
                        }
                    }, handler);
                }
            } else if (Parameter.ParameterStage.BEFORE_TAKE_PICTURE.equals(str)) {
                this.mRequestSuperRawJpegNumber = 0;
                if (CameraSessionEntity.SurfaceUsage.PICTURE.equals(surfaceKey.getUsage()) || CameraSessionEntity.SurfaceUsage.REPROCESS_YUV.equals(surfaceKey.getUsage()) || CameraSessionEntity.SurfaceUsage.PICTURE_MFNE.equals(surfaceKey.getUsage())) {
                    pictureProcess(surfaceKey, cameraRequestTag);
                } else if (CameraSessionEntity.SurfaceUsage.TUNING_RAW.equals(surfaceKey.getUsage()) || CameraSessionEntity.SurfaceUsage.TUNING_YUV.equals(surfaceKey.getUsage())) {
                    tuningDataProcess(surfaceKey, cameraRequestTag);
                } else if (CameraSessionEntity.SurfaceUsage.PREVIEW.equals(surfaceKey.getUsage())) {
                    this.mProcessorContract.capture(false);
                }
            } else if (Parameter.ParameterStage.START_RECORDING.equals(str)) {
                ImageReader imageReader2 = SurfacePool.getInstance().getImageReader(surfaceKey);
                if (imageReader2 != null) {
                    imageReader2.setOnImageAvailableListener(new ImageReader.OnImageAvailableListener() { // from class: com.oplus.ocs.camera.consumer.ConsumerImpl.2
                        @Override // android.media.ImageReader.OnImageAvailableListener
                        public void onImageAvailable(ImageReader imageReader3) {
                            try {
                                ConsumerImpl.this.onVideoImageArrived(imageReader3, imageReader3.acquireNextImage());
                            } catch (Exception e) {
                                CameraUnitLog.e(ConsumerImpl.TAG, "onImageAvailable", e);
                            }
                        }
                    }, this.mPreviewImageHandler);
                    this.mbNeedApsProcessVideoFrame = true;
                } else {
                    this.mbNeedApsProcessVideoFrame = false;
                }
            }
        }
        return true;
    }

    @Override // com.oplus.ocs.camera.ProducerConsumerInterfaceContract.ConsumerInterface
    public void videoSnapshot(final ApsCameraRequestTag apsCameraRequestTag) {
        if (this.mProcessorContract != null) {
            this.mProcessorContract.videoSnapshot(new ApsAdapterListener.CaptureCallback() { // from class: com.oplus.ocs.camera.consumer.ConsumerImpl.3
                @Override // com.oplus.ocs.camera.consumer.apsAdapter.service.ApsAdapterListener.CaptureCallback
                public void onApsCaptureStarted(long j) {
                    ConsumerImpl.this.mPictureAdapter.onApsCaptureStarted(apsCameraRequestTag);
                    ConsumerImpl.this.mProcessorContract.onApsCaptureStarted(j);
                }

                @Override // com.oplus.ocs.camera.consumer.apsAdapter.service.ApsAdapterListener.CaptureCallback
                public void onApsCaptureCompleted(ApsResult apsResult, ApsTotalResult apsTotalResult, ApsCameraRequestTag apsCameraRequestTag2) {
                    CameraRequestTag cameraRequestTag = (CameraRequestTag) apsCameraRequestTag2.mTag;
                    ApsCaptureResult apsCaptureResult = new ApsCaptureResult(apsTotalResult, Integer.toString(cameraRequestTag.mCameraId));
                    ApsResult.ImageBuffer imageBuffer = apsResult.getImageBuffer();
                    if (imageBuffer != null && apsCaptureResult.mSensorTimestamp.longValue() != imageBuffer.getTimestamp()) {
                        CameraUnitLog.w(ConsumerImpl.TAG, "onApsCaptureCompleted, meta timestamp is not match with buffer");
                        apsCaptureResult.mSensorTimestamp = Long.valueOf(imageBuffer.getTimestamp());
                    }
                    ConsumerImpl.this.mProcessorContract.addPictureMeta(cameraRequestTag, apsCaptureResult, true);
                    if (imageBuffer != null) {
                        ConsumerImpl.this.mProcessorContract.addPictureImage(imageBuffer, 0, cameraRequestTag);
                        ConsumerImpl.this.mPictureAdapter.onCaptureCompleted(null, new CameraPictureCallbackAdapter.PictureResult.Builder().setCaptureResult(apsTotalResult.getTotalResult()).setApsResult(apsResult).set(ApsOtherParameter.KEY_REQUEST_TAG, cameraRequestTag.mAppOpaqueObj).build());
                        return;
                    }
                    CameraUnitLog.e(ConsumerImpl.TAG, "onApsCaptureCompleted, imageBuffer is null");
                }
            }, apsCameraRequestTag);
        }
    }

    /* loaded from: classes.dex */
    private class ConsumerCameraPreviewCallback extends CameraPreviewCallbackAdapter {
        private CaptureRequest mAERequest;
        private CameraPreviewCallbackAdapter mAppCallback;
        private CaptureRequest mCurrentRequest;

        private ConsumerCameraPreviewCallback() {
            this.mCurrentRequest = null;
            this.mAERequest = null;
            this.mAppCallback = null;
        }

        @Override // com.oplus.ocs.camera.appinterface.CameraPreviewCallbackAdapter
        public void onPreviewRequestStopped(String str) {
            CameraUnitLog.v(ConsumerImpl.TAG, "onPreviewRequestStopped, cameraType: " + str);
            if (ConsumerImpl.this.mProducerInterface.needApsProcessor()) {
                synchronized (ConsumerImpl.this.mRequestLock) {
                    ConsumerImpl.this.mbFirstPreviewMetaArrived = false;
                }
                ConsumerImpl.this.mProcessorContract.stopPreview(str);
            }
            ConsumerImpl.this.mbFirstPreviewReceived = false;
            ConsumerImpl.this.mbFirstPreviewImageArrived = false;
        }

        @Override // com.oplus.ocs.camera.appinterface.CameraPreviewCallbackAdapter
        public void onFirstMetaArrived() {
            synchronized (ConsumerImpl.this.mRequestLock) {
                if (!ConsumerImpl.this.mbFirstPreviewMetaArrived) {
                    CameraUnitLog.traceBeginSection("CameraUnit.CameraStartupPerformance.addFirstPreviewMetaToAPS");
                    ConsumerImpl.this.mbFirstPreviewMetaArrived = true;
                    CameraUnitLog.traceEndSection("CameraUnit.CameraStartupPerformance.addFirstPreviewMetaToAPS");
                }
            }
            ConsumerImpl.this.mProducerInterface.onFirstPreviewMetaReceived();
        }

        @Override // com.oplus.ocs.camera.appinterface.CameraPreviewCallbackAdapter
        public void onPreviewCaptureStarted(@NonNull CaptureRequest captureRequest, long j) {
            Integer num = (Integer) captureRequest.get(CaptureRequest.CONTROL_AE_PRECAPTURE_TRIGGER);
            if (num != null && num.intValue() != 0) {
                this.mAERequest = captureRequest;
            } else {
                this.mCurrentRequest = captureRequest;
            }
        }

        @Override // com.oplus.ocs.camera.appinterface.CameraPreviewCallbackAdapter
        public void onCaptureCompleted(@NonNull CaptureRequest captureRequest, @NonNull TotalCaptureResult totalCaptureResult, String str) {
            CameraRequestTag cameraRequestTag = (CameraRequestTag) captureRequest.getTag();
            ConsumerImpl.this.onPreviewMetaArrived(captureRequest, totalCaptureResult, str);
            if (cameraRequestTag == null || this.mAppCallback != null) {
                return;
            }
            this.mAppCallback = (CameraPreviewCallbackAdapter) cameraRequestTag.mCallback;
        }

        @Override // com.oplus.ocs.camera.appinterface.CameraPreviewCallbackAdapter
        public void onCaptureCompleted(ImageReader imageReader) {
            ConsumerImpl.this.onPreviewMetaImageArrived(this.mCurrentRequest, imageReader);
        }

        @Override // com.oplus.ocs.camera.appinterface.CameraPreviewCallbackAdapter
        public void onPreviewCaptureProgressed(@NonNull CaptureRequest captureRequest, @NonNull CaptureResult captureResult) {
            CameraRequestTag cameraRequestTag;
            if (this.mAppCallback == null && (cameraRequestTag = (CameraRequestTag) captureRequest.getTag()) != null) {
                this.mAppCallback = (CameraPreviewCallbackAdapter) cameraRequestTag.mCallback;
            }
            if (this.mAppCallback != null) {
                this.mAppCallback.onPreviewCaptureProgressed(captureRequest, captureResult);
            }
        }

        public CaptureRequest getCurrentRequest() {
            if (this.mAERequest != null) {
                return this.mAERequest;
            }
            return this.mCurrentRequest;
        }

        public void setCurrentRequestDone(CaptureRequest captureRequest) {
            if (captureRequest == this.mAERequest) {
                this.mAERequest = null;
            }
        }

        public CameraPreviewCallbackAdapter getAppCallback() {
            return this.mAppCallback;
        }

        @Override // com.oplus.ocs.camera.appinterface.CameraPreviewCallbackAdapter
        public void onHalPreviewCollected(long j) {
            if (this.mAppCallback != null) {
                this.mAppCallback.onHalPreviewCollected(j);
            }
        }
    }

    @Override // com.oplus.ocs.camera.ProducerConsumerInterfaceContract.ConsumerInterface
    public CameraPreviewCallbackAdapter createCameraPreviewCallback() {
        if (this.mPreviewAdapter == null) {
            this.mPreviewAdapter = new ConsumerCameraPreviewCallback();
        }
        return this.mPreviewAdapter;
    }

    @Override // com.oplus.ocs.camera.ProducerConsumerInterfaceContract.ConsumerInterface
    public CameraPictureCallbackAdapter createCameraPictureCallback() {
        if (this.mPictureAdapter == null) {
            this.mPictureAdapter = new InnerCameraPictureCallbackAdapter();
        }
        return this.mPictureAdapter;
    }

    @Override // com.oplus.ocs.camera.ProducerConsumerInterfaceContract.ConsumerInterface
    public CameraRecordingCallbackAdapter createCameraRecordingCallback() {
        if (this.mRecordingAdapter == null) {
            this.mRecordingAdapter = new CameraRecordingCallbackAdapter() { // from class: com.oplus.ocs.camera.consumer.ConsumerImpl.4
                @Override // com.oplus.ocs.camera.appinterface.CameraRecordingCallbackAdapter
                public void onRecordingResult(CameraRecordingCallbackAdapter.RecordingResult recordingResult) {
                    super.onRecordingResult(recordingResult);
                    ConsumerImpl.this.mRecordingResult = recordingResult;
                    ConsumerImpl.this.mRecordingState = recordingResult.getRecordingState();
                    CameraUnitLog.i(ConsumerImpl.TAG, "onRecordingResult, mRecordingState: " + ConsumerImpl.this.mRecordingState + ", mbNeedApsProcessVideoFrame: " + ConsumerImpl.this.mbNeedApsProcessVideoFrame);
                    ConsumerImpl.this.mProcessorContract.setRecordingTag(recordingResult.getCameraRequestTag());
                    if (ConsumerImpl.this.isNeedApsProcessor() && ConsumerImpl.this.mbNeedApsProcessVideoFrame) {
                        ConsumerImpl.this.mProcessorContract.onRecordingResult(ConsumerImpl.this.mRecordingState);
                    }
                    if (1 == ConsumerImpl.this.mRecordingState) {
                        ConsumerImpl.this.mbIsStopRecording = false;
                    } else if (4 == ConsumerImpl.this.mRecordingState) {
                        ConsumerImpl.this.mbIsStopRecording = true;
                        if (ConsumerImpl.this.canNotStopVideoRecordingImmediately(recordingResult.getCameraRequestTag())) {
                            ConsumerImpl.this.mbWaitToStopVideo = true;
                        }
                    }
                    if (!ConsumerImpl.this.isNeedApsProcessor() || !ConsumerImpl.this.mbNeedApsProcessVideoFrame) {
                        ConsumerImpl.this.notifyRecordingState(ConsumerImpl.this.mRecordingResult);
                    } else if (4 != ConsumerImpl.this.mRecordingState) {
                        ConsumerImpl.this.notifyRecordingState(ConsumerImpl.this.mRecordingResult);
                    }
                }
            };
        }
        return this.mRecordingAdapter;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void notifyRecordingState(final CameraRecordingCallbackAdapter.RecordingResult recordingResult) {
        CameraRequestTag cameraRequestTag;
        if (recordingResult == null || (cameraRequestTag = recordingResult.getCameraRequestTag()) == null) {
            return;
        }
        if (4 == recordingResult.getRecordingState()) {
            StatisticsManager.getInstance().setAiEnhanceStart(this.mAiEnhanceSceneStart);
            StatisticsManager.getInstance().setAiEnhanceEnd(this.mAiEnhanceSceneEnd);
            StatisticsManager.getInstance().setAiEnhanceChange(this.mAiEnhanceSceneChangeCount);
            StatisticsManager.getInstance().reportVideo();
        }
        Handler handler = cameraRequestTag.mUserCallbackHandler;
        final CameraRecordingCallbackAdapter cameraRecordingCallbackAdapter = (CameraRecordingCallbackAdapter) cameraRequestTag.mCallback;
        if (handler == null || cameraRecordingCallbackAdapter == null) {
            return;
        }
        handler.post(new Runnable() { // from class: com.oplus.ocs.camera.consumer.ConsumerImpl.5
            @Override // java.lang.Runnable
            public void run() {
                cameraRecordingCallbackAdapter.onRecordingResult(recordingResult);
            }
        });
    }

    @Override // com.oplus.ocs.camera.ProducerConsumerInterfaceContract.ConsumerInterface
    public void setProducer(ProducerConsumerInterfaceContract.ProducerInterface producerInterface) {
        this.mProducerInterface = producerInterface;
    }

    @Override // com.oplus.ocs.camera.ProducerConsumerInterfaceContract.ConsumerInterface
    public void release() {
        if (isNeedApsProcessor()) {
            this.mProcessorContract.release();
        }
        if (this.mPreviewImageHandler != null) {
            this.mPreviewImageHandler.getLooper().quitSafely();
        }
        if (this.mPreviewFrameHandler != null) {
            this.mPreviewFrameHandler.getLooper().quitSafely();
        }
        if (this.mCaptureImageHandler != null) {
            this.mCaptureImageHandler.getLooper().quitSafely();
        }
    }

    @Override // com.oplus.ocs.camera.ProducerConsumerInterfaceContract.ConsumerInterface
    public void onCameraClosed() {
        if (this.mProcessorContract != null) {
            this.mProcessorContract.onCameraClosed();
        }
    }

    @Override // com.oplus.ocs.camera.ProducerConsumerInterfaceContract.ConsumerInterface
    public void onSessionClosed() {
        if (isNeedApsProcessor() && this.mProducerInterface.needApsProcessor()) {
            this.mProcessorContract.onSessionClosed(!this.mbWaitToStopVideo);
        }
    }

    @Override // com.oplus.ocs.camera.ProducerConsumerInterfaceContract.ConsumerInterface
    public void onCameraDisconnected() {
        if (isNeedApsProcessor() && this.mProducerInterface.needApsProcessor()) {
            this.mProcessorContract.onSessionClosed(true);
        }
    }

    @Override // com.oplus.ocs.camera.ProducerConsumerInterfaceContract.ConsumerInterface
    public void onSessionConfigured(ConfigInfoPkg configInfoPkg) {
        CameraUnitLog.d(TAG, "onSessionConfigured, previewCaptureRequest: " + configInfoPkg.mRequest);
        this.mApsTag = configInfoPkg.mApsRequestTag;
        if (isNeedApsProcessor() && this.mProducerInterface.needApsProcessor()) {
            if (this.mCaptureImageHandler != null) {
                this.mCaptureImageHandler.post(new Runnable() { // from class: com.oplus.ocs.camera.consumer.-$$Lambda$ConsumerImpl$dTAARQZDb1LQkw1eTXU37nueKAg
                    @Override // java.lang.Runnable
                    public final void run() {
                        ConsumerImpl.lambda$onSessionConfigured$0(ConsumerImpl.this);
                    }
                });
            } else {
                this.mProcessorContract.onSessionConfigured(this.mApsTag);
            }
        }
        this.mPreviewDecisionResult = null;
        this.mbFirstPreviewImageArrived = false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void lambda$onSessionConfigured$0(ConsumerImpl consumerImpl) {
        consumerImpl.mProcessorContract.onSessionConfigured(consumerImpl.mApsTag);
        CameraUnitLog.d(TAG, "onSessionConfigured, post");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onCaptureFailed(CaptureRequest captureRequest) {
        if (isNeedApsProcessor()) {
            this.mProcessorContract.onCaptureFailed(captureRequest);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onPictureMetaStart(CaptureRequest captureRequest, long j) {
        if (isNeedApsProcessor()) {
            this.mProcessorContract.onPictureMetaStart(captureRequest, j);
        }
    }

    private void onHalPictureImageArrived(ImageReader imageReader, Image image, int i, CameraRequestTag cameraRequestTag, String str) {
        if (image.getFormat() == 32 && "raw".equals(cameraRequestTag.mRawValue)) {
            synchronized (this.mSaveResultToDngLock) {
                setRawImage(image);
                processRawImage(cameraRequestTag);
            }
        } else if (consumeByBusiness(image, cameraRequestTag)) {
        } else {
            if (isNeedApsProcessor()) {
                this.mProcessorContract.addPictureImage(imageReader, image, i, cameraRequestTag, str);
                return;
            }
            onApsJpegArrived(Util.buildJpegImage(image, this.mApsTag.mCameraType), null);
            this.mProducerInterface.onFinishAddFrame();
        }
    }

    private boolean consumeByBusiness(Image image, CameraRequestTag cameraRequestTag) {
        if (35 == image.getFormat() && "super_raw".equals(cameraRequestTag.mRawValue)) {
            if (this.mRequestSuperRawJpegNumber == cameraRequestTag.mRequestNum / 2) {
                onApsJpegArrived(Util.buildJpegImage(image, this.mApsTag.mCameraType), null);
            }
            this.mRequestSuperRawJpegNumber++;
            image.close();
            return true;
        }
        return false;
    }

    @Override // com.oplus.ocs.camera.consumer.ApsProcessorContract.IConsumer
    public void onApsJpegArrived(CameraImage cameraImage, ApsResult apsResult) {
        CameraUnitLog.d(TAG, "onApsJpegArrived, image orientation: " + cameraImage.getOrientation());
        this.mPictureAdapter.setApsResult(apsResult);
        this.mPictureAdapter.onImageReceived(cameraImage);
    }

    @Override // com.oplus.ocs.camera.consumer.ApsProcessorContract.IConsumer
    public void onBurstShotStart(long j) {
        CameraUnitLog.d(TAG, "onBurstShotStart, burstShotFlagId: " + j);
        this.mPictureAdapter.onBurstShotStart(j);
    }

    @Override // com.oplus.ocs.camera.consumer.ApsProcessorContract.IConsumer
    public void onBurstShotEnd(ImageCategory.ImageItemInfo imageItemInfo, ImageCategory.MetaItemInfo metaItemInfo) {
        CameraUnitLog.d(TAG, "onBurstShotEnd, imageItemInfo: " + imageItemInfo + ", metaItemInfo: " + metaItemInfo);
        this.mPictureAdapter.onBurstShotEnd(imageItemInfo, metaItemInfo);
    }

    @Override // com.oplus.ocs.camera.consumer.ApsProcessorContract.IConsumer
    public void afterProcessImage(int i, ImageCategory.ImageItemInfo imageItemInfo, ImageCategory.MetaItemInfo metaItemInfo) {
        CameraUnitLog.d(TAG, "afterProcessImage, processResult: " + i + ", imageItemInfo: " + imageItemInfo + ", metaItemInfo: " + metaItemInfo);
        this.mPictureAdapter.afterProcessImage(i, imageItemInfo, metaItemInfo);
        this.mProducerInterface.onAfterProcessImage();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onVideoImageArrived(ImageReader imageReader, Image image) {
        if (image == null) {
            CameraUnitLog.e(TAG, "onVideoImageArrived, image is null");
        } else if (this.mbIsStopRecording) {
            CameraUnitLog.e(TAG, "onVideoImageArrived, had stop recording!");
            image.close();
        } else if (isNeedApsProcessor()) {
            this.mProcessorContract.addVideoImage(imageReader, image, ImageCategory.ItemInfoType.VIDEO);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onPictureMetaArrived(CaptureRequest captureRequest, TotalCaptureResult totalCaptureResult) {
        CameraRequestTag cameraRequestTag = (CameraRequestTag) captureRequest.getTag();
        if ("raw".equals(cameraRequestTag.mRawValue)) {
            synchronized (this.mSaveResultToDngLock) {
                this.mRawCaptureResult = totalCaptureResult;
                processRawImage(cameraRequestTag);
            }
        }
        if (isNeedPictureMeta()) {
            this.mProcessorContract.addPictureMeta(captureRequest, totalCaptureResult);
        }
    }

    @Override // com.oplus.ocs.camera.consumer.ApsProcessorContract.IConsumer
    public void onHalPreviewCollected(Long l) {
        this.mPreviewAdapter.onHalPreviewCollected(l.longValue());
    }

    @Override // com.oplus.ocs.camera.consumer.ApsProcessorContract.IConsumer
    public void onFirstCaptureFrameAdd(ImageCategory imageCategory) {
        this.mPictureAdapter.onFirstCaptureFrameAdd();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onPreviewImageArrived(CameraRequestTag cameraRequestTag, @NonNull ImageReader imageReader, String str) {
        Image acquireNextImage;
        try {
            acquireNextImage = imageReader.acquireNextImage();
        } catch (IllegalArgumentException | IllegalStateException e) {
            CameraUnitLog.e(TAG, "onPreviewImageArrived", e);
        }
        if (acquireNextImage == null) {
            CameraUnitLog.e(TAG, "onPreviewImageArrived, image is null.");
            return;
        }
        boolean z = false;
        for (SurfaceKey surfaceKey : cameraRequestTag.mAddTargetSurfaces.keySet()) {
            if (CameraSessionEntity.SurfaceUsage.PREVIEW_FRAME.equals(surfaceKey.getUsage()) && SurfacePool.getInstance().getImageReader(surfaceKey) != null) {
                z = true;
            }
        }
        if (cameraRequestTag.mbSetPreviewFrameSurface && !z && ("rear_main".equals(str) || "front_main".equals(str) || "front_wide".equals(str) || "rear_tele".equals(str) || "rear_wide".equals(str) || "rear_macro".equals(str))) {
            CameraPreviewCallbackAdapter cameraPreviewCallbackAdapter = (CameraPreviewCallbackAdapter) cameraRequestTag.mCallback;
            synchronized (ContextHolder.getContext()) {
                if (cameraPreviewCallbackAdapter != null) {
                    cameraPreviewCallbackAdapter.onPreviewFrameReceived(acquireNextImage);
                }
            }
        }
        if (!this.mbFirstPreviewImageArrived) {
            CameraUnitLog.traceBeginSection("CameraUnit.CameraStartupPerformance.addFirstPreviewImageToAPS");
            this.mbFirstPreviewImageArrived = true;
            CameraUnitLog.traceEndSection("CameraUnit.CameraStartupPerformance.addFirstPreviewImageToAPS");
        }
        if (isPreviewImageNeedApsProcessor()) {
            this.mProcessorContract.addPreview(imageReader, acquireNextImage, ImageCategory.ItemInfoType.PREVIEW, str);
        } else if (cameraRequestTag.mCallback != null) {
            ((CameraPreviewCallbackAdapter) cameraRequestTag.mCallback).onPreviewReceived(new CameraPreviewCallbackAdapter.PreviewResult.Builder().setImageBuffer(new ApsResult.ImageBuffer(null, acquireNextImage, acquireNextImage.getHardwareBuffer(), acquireNextImage.getTimestamp())).set(ApsOtherParameter.KEY_CAMERA_RESULT_CAMERA_TYPE, str).build());
        } else {
            acquireNextImage.close();
            CameraUnitLog.v(TAG, "onPreviewImageArrived  image close, may wrong path!");
        }
        Util.dealWithImageOverflow(imageReader, imageReader.getMaxImages());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onPreviewFrameImageArrived(CameraRequestTag cameraRequestTag, @NonNull ImageReader imageReader) {
        try {
            Image acquireNextImage = imageReader.acquireNextImage();
            if (acquireNextImage == null) {
                CameraUnitLog.e(TAG, "onPreviewFrameImageArrived, image is null");
                return;
            }
            CameraPreviewCallbackAdapter cameraPreviewCallbackAdapter = (CameraPreviewCallbackAdapter) cameraRequestTag.mCallback;
            if (cameraPreviewCallbackAdapter != null) {
                cameraPreviewCallbackAdapter.onPreviewFrameReceived(acquireNextImage);
            }
            acquireNextImage.close();
        } catch (IllegalArgumentException | IllegalStateException e) {
            CameraUnitLog.e(TAG, "onPreviewImageArrived", e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onPreviewMetaImageArrived(CaptureRequest captureRequest, @NonNull ImageReader imageReader) {
        Image image;
        CameraUnitLog.v(TAG, "onPreviewMetaImageArrived");
        try {
            image = imageReader.acquireNextImage();
            if (image == null) {
                return;
            }
            try {
                if (isNeedPreviewMeta()) {
                    setRequestTagRecordingState((CameraRequestTag) captureRequest.getTag());
                    this.mProcessorContract.addPreviewMeta(captureRequest, imageReader, image, (4 == this.mRecordingState || !this.mbNeedApsProcessVideoFrame) ? ImageCategory.ItemInfoType.PREVIEW : ImageCategory.ItemInfoType.VIDEO);
                    return;
                }
                image.close();
                CameraUnitLog.v(TAG, "onPreviewMetaImageArrived  image close, may wrong path!");
            } catch (IllegalArgumentException | IllegalStateException e) {
                e = e;
                CameraUnitLog.e(TAG, "onPreviewMetaImageArrived", e);
                if (image != null) {
                    image.close();
                }
            }
        } catch (IllegalArgumentException | IllegalStateException e2) {
            e = e2;
            image = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onPreviewMetaArrived(CaptureRequest captureRequest, @NonNull TotalCaptureResult totalCaptureResult, String str) {
        synchronized (this.mRequestLock) {
            if (!this.mbFirstPreviewMetaArrived) {
                CameraUnitLog.d(TAG, "onPreviewMetaArrived, mbFirstPreviewMetaArrived is false, so return");
                return;
            }
            CameraRequestTag cameraRequestTag = (CameraRequestTag) captureRequest.getTag();
            if (isNeedPreviewMeta()) {
                setRequestTagRecordingState(cameraRequestTag);
                this.mProcessorContract.addPreviewMeta(captureRequest, totalCaptureResult, (4 == this.mRecordingState || !this.mbNeedApsProcessVideoFrame) ? ImageCategory.ItemInfoType.PREVIEW : ImageCategory.ItemInfoType.VIDEO);
                return;
            }
            CameraPreviewCallbackAdapter.PreviewResult.Builder builder = new CameraPreviewCallbackAdapter.PreviewResult.Builder().setCaptureResult(totalCaptureResult).set(ApsOtherParameter.KEY_CAMERA_RESULT_CAMERA_TYPE, str).set(ApsOtherParameter.KEY_CAMERA_RESULT_CAMERA_MODE, cameraRequestTag.mCaptureMode);
            if (cameraRequestTag.mCallback instanceof CameraPreviewCallbackAdapter) {
                notifyPreviewResult(cameraRequestTag.mUserCallbackHandler, (CameraPreviewCallbackAdapter) cameraRequestTag.mCallback, captureRequest, builder.build());
            }
        }
    }

    private void setRequestTagRecordingState(CameraRequestTag cameraRequestTag) {
        if (cameraRequestTag != null) {
            cameraRequestTag.mbVideoRecordingPaused = 2 == this.mRecordingState;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isFirstFrame() {
        if (this.mProcessorContract != null) {
            return this.mProcessorContract.isFirstFrame();
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getFirstFrameHashCode() {
        if (this.mProcessorContract != null) {
            return this.mProcessorContract.getFirstFrameHashCode();
        }
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public long getNightCaptureTotalTime() {
        if (this.mProcessorContract != null) {
            return this.mProcessorContract.getNightCaptureTotalTime();
        }
        return 0L;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public long getFirstExposureTime() {
        if (this.mProcessorContract != null) {
            return this.mProcessorContract.getFirstExposureTime();
        }
        return 0L;
    }

    @Override // com.oplus.ocs.camera.consumer.ApsProcessorContract.IConsumer
    public void onFrameInterpolationStarted() {
        this.mProcessorContract.onRecordingFrameInterpolated();
    }

    @Override // com.oplus.ocs.camera.consumer.ApsProcessorContract.IConsumer
    public void onStopRecordingFrame() {
        CameraUnitLog.v(TAG, "onStopRecordingFrame mRecordingResult: " + this.mRecordingResult);
        notifyRecordingState(this.mRecordingResult);
        this.mbWaitToStopVideo = false;
    }

    @Override // com.oplus.ocs.camera.consumer.ApsProcessorContract.IConsumer
    public void onDecisionArrived(ApsAdapterDecision.DecisionResult decisionResult) {
        if (isNeedApsProcessor()) {
            this.mPreviewDecisionResult = decisionResult;
            this.mPreviewAdapter.onDecisionArrived(decisionResult);
        }
    }

    @Override // com.oplus.ocs.camera.consumer.ApsProcessorContract.IConsumer
    public void onReprocess(Image image, TotalCaptureResult totalCaptureResult, Rect rect, CameraRequestTag cameraRequestTag) {
        if ("super_raw".equals(cameraRequestTag.mRawValue)) {
            this.mPictureAdapter.onImageReceived(Util.buildRawImage(cameraRequestTag, image, totalCaptureResult, this.mCaptureDate));
        } else if (isNeedApsProcessor()) {
            this.mProducerInterface.onReprocess(image, totalCaptureResult, rect, cameraRequestTag);
        }
    }

    @Override // com.oplus.ocs.camera.consumer.ApsProcessorContract.IConsumer
    public void onPreviewReceived(ApsResult apsResult, ApsTotalResult apsTotalResult) {
        if (isNeedApsProcessor()) {
            CaptureRequest currentRequest = this.mPreviewAdapter.getCurrentRequest();
            this.mPreviewAdapter.notifyMetadataReceived(apsTotalResult);
            Integer num = (Integer) apsTotalResult.get(ApsTotalResult.APS_BOKEN_STATE);
            if (num != null) {
                this.mResultSet.put("BOKEH_STATE", num);
            }
            CameraRequestTag cameraRequestTag = (CameraRequestTag) currentRequest.getTag();
            if (!isNeedPreviewMeta() || this.mPreviewAdapter.getAppCallback() == null) {
                if (!this.mbFirstPreviewReceived) {
                    StringBuilder sb = new StringBuilder();
                    sb.append("onPreviewReceived, isNeedPreviewMeta(): ");
                    sb.append(isNeedPreviewMeta());
                    sb.append(", appCallback is null: ");
                    sb.append(this.mPreviewAdapter.getAppCallback() != null);
                    CameraUnitLog.d(TAG, sb.toString());
                }
            } else if (cameraRequestTag != null) {
                notifyPreviewResult(cameraRequestTag.mUserCallbackHandler, (CameraPreviewCallbackAdapter) cameraRequestTag.mCallback, currentRequest, new CameraPreviewCallbackAdapter.PreviewResult.Builder().setCaptureResult(apsTotalResult.getTotalResult()).setApsDecisionResult(this.mPreviewDecisionResult).setApsTotalResult(apsTotalResult).set(ApsOtherParameter.KEY_CAMERA_RESULT_CAMERA_MODE, cameraRequestTag.mCaptureMode).build());
            }
            this.mPreviewAdapter.setCurrentRequestDone(currentRequest);
            if (TextUtils.equals("0", this.mApsTag.mPreviewCallbackType)) {
                if (cameraRequestTag == null || cameraRequestTag.mCallback == null) {
                    CameraUnitLog.e(TAG, "onPreviewReceived, tag: " + cameraRequestTag);
                    return;
                }
                CameraPreviewCallbackAdapter.PreviewResult build = new CameraPreviewCallbackAdapter.PreviewResult.Builder().setCaptureResult(apsTotalResult.getTotalResult()).setApsResult(apsResult).setApsTotalResult(apsTotalResult).build();
                CameraPreviewCallbackAdapter cameraPreviewCallbackAdapter = (CameraPreviewCallbackAdapter) cameraRequestTag.mCallback;
                if (cameraPreviewCallbackAdapter != null) {
                    cameraPreviewCallbackAdapter.onPreviewReceived(build);
                }
            }
        }
        if (this.mProducerInterface.isAiEnhancementVideoOpen()) {
            Integer num2 = null;
            try {
                num2 = (Integer) apsTotalResult.getTotalResult().get(CameraCharacteristicsWrapper.KEY_AI_SCN_DATA_VIDEO);
            } catch (Exception e) {
                e.printStackTrace();
            }
            if (num2 == null) {
                return;
            }
            boolean z = this.mRecordingState == 1;
            boolean z2 = !this.mIsRecording && z;
            this.mIsRecording = z;
            if (z2) {
                this.mAiEnhanceSceneChangeCount = 0;
                this.mAiEnhanceSceneStart = num2.intValue();
            }
            if (this.mIsRecording) {
                this.mAiEnhanceSceneEnd = num2.intValue();
            }
            if (num2.intValue() == this.mAllmightyLastScene) {
                return;
            }
            if (!z2) {
                this.mAiEnhanceSceneChangeCount++;
            }
            this.mAllmightyLastScene = num2.intValue();
        }
        if (this.mbFirstPreviewReceived) {
            return;
        }
        CameraUnitLog.traceBeginSection("CameraUnit.CameraStartupPerformance.receivedFirstFrameFromAPS");
        this.mbFirstPreviewReceived = true;
        CameraUnitLog.traceEndSection("CameraUnit.CameraStartupPerformance.receivedFirstFrameFromAPS");
        CameraUnitLog.d(TAG, "onPreviewReceived, first preview frame arrived");
    }

    @Override // com.oplus.ocs.camera.consumer.ApsProcessorContract.IConsumer
    public void onVideoReceived(ApsResult apsResult) {
        if (isNeedApsProcessor()) {
            CameraRequestTag cameraRequestTag = (CameraRequestTag) this.mPreviewAdapter.getCurrentRequest().getTag();
            if (cameraRequestTag == null || cameraRequestTag.mCallback == null) {
                CameraUnitLog.e(TAG, "onVideoReceived, tag: " + cameraRequestTag);
                return;
            }
            ((CameraPreviewCallbackAdapter) cameraRequestTag.mCallback).onVideoReceived(new CameraPreviewCallbackAdapter.PreviewResult.Builder().setApsResult(apsResult).build());
        }
    }

    @Override // com.oplus.ocs.camera.consumer.ApsProcessorContract.IConsumer
    public void onFinishAddFrame(ImageCategory.ImageItemInfo imageItemInfo, ImageCategory.MetaItemInfo metaItemInfo, CameraRequestTag cameraRequestTag) {
        CameraUnitLog.v(TAG, "onFinishAddFrame");
        if (isNeedApsProcessor()) {
            this.mProducerInterface.onFinishAddFrame();
        }
        if (imageItemInfo != null && metaItemInfo != null) {
            this.mPictureAdapter.onFinishAddFrame(imageItemInfo, metaItemInfo);
        }
        if (imageItemInfo == null || metaItemInfo == null || ((Boolean) imageItemInfo.get(ParameterKeys.KEY_BURST_SHOT)).booleanValue() || !((Boolean) metaItemInfo.get(ParameterKeys.KEY_FAST_CAPTURE)).booleanValue() || cameraRequestTag == null) {
            return;
        }
        discardUselessBuffer(cameraRequestTag);
    }

    @Override // com.oplus.ocs.camera.consumer.ApsProcessorContract.IConsumer
    public boolean needMatchPreviewTimestamp(String str, CameraRequestTag cameraRequestTag) {
        return this.mProducerInterface.needMatchPreviewTimestamp(str, cameraRequestTag, this.mPreviewDecisionResult);
    }

    @Override // com.oplus.ocs.camera.consumer.ApsProcessorContract.IConsumer
    public boolean isApsFinishAddFrame() {
        return this.mProducerInterface.isApsFinishAddFrame();
    }

    @Override // com.oplus.ocs.camera.consumer.ApsProcessorContract.IConsumer
    public boolean isApsFinishProcessFrame() {
        return this.mProducerInterface.isApsFinishProcessFrame();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean canNotStopVideoRecordingImmediately(CameraRequestTag cameraRequestTag) {
        if (cameraRequestTag == null || this.mApsTag == null || !"video_mode".equals(this.mApsTag.mModeName) || cameraRequestTag.mHyperLapseRate == 0) {
            return false;
        }
        return cameraRequestTag.mbSuperEisOn;
    }

    private boolean isPreviewImageNeedApsProcessor() {
        if (this.mApsTag == null || !this.mApsTag.mbNeedSendVideoSnapShotImage) {
            return isNeedApsProcessor() && this.mApsTag != null && this.mApsTag.mbPreviewProcessByAps;
        }
        this.mApsTag.mbNeedSendVideoSnapShotImage = false;
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isNeedApsProcessor() {
        return this.mProducerInterface != null ? AlgoSwitchConfig.getApsMode() != 0 && this.mProducerInterface.needApsProcessor() : AlgoSwitchConfig.getApsMode() != 0;
    }

    private boolean isNeedPictureMeta() {
        return (!isNeedApsProcessor() || this.mApsTag == null || "sticker_mode".equals(this.mApsTag.mModeName)) ? false : true;
    }

    private boolean isNeedPreviewMeta() {
        if (this.mApsTag == null || !this.mApsTag.mbNeedSendVideoSnapShotMeta) {
            return isNeedApsProcessor() && this.mProducerInterface != null && this.mProducerInterface.needApsProcessor() && this.mApsTag != null && !"slowvideo_mode".equals(this.mApsTag.mModeName) && this.mApsTag.mbPreviewProcessByAps;
        }
        this.mApsTag.mbNeedSendVideoSnapShotMeta = false;
        return true;
    }

    private void pictureProcess(final SurfaceKey surfaceKey, @NonNull final CameraRequestTag cameraRequestTag) {
        final ImageReader imageReader = SurfacePool.getInstance().getImageReader(surfaceKey);
        if (imageReader != null) {
            imageReader.setOnImageAvailableListener(new ImageReader.OnImageAvailableListener() { // from class: com.oplus.ocs.camera.consumer.-$$Lambda$ConsumerImpl$0defoHES20ZfuD1ZcW01f9Qqb-w
                @Override // android.media.ImageReader.OnImageAvailableListener
                public final void onImageAvailable(ImageReader imageReader2) {
                    ConsumerImpl.lambda$pictureProcess$1(ConsumerImpl.this, imageReader, surfaceKey, cameraRequestTag, imageReader2);
                }
            }, this.mCaptureImageHandler);
        }
        this.mProcessorContract.capture(CameraRequestTag.RequestMode.CAPTURE_REPROCESS.equals(cameraRequestTag.getRequestMode()));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Code restructure failed: missing block: B:85:0x011d, code lost:
        if ("rear_wide".equals(r11.getCameraType()) != false) goto L59;
     */
    /* JADX WARN: Code restructure failed: missing block: B:88:0x012b, code lost:
        if ("rear_wide".equals(r11.getCameraType()) != false) goto L55;
     */
    /* JADX WARN: Removed duplicated region for block: B:92:0x0132 A[Catch: IllegalStateException -> 0x0183, TRY_LEAVE, TryCatch #0 {IllegalStateException -> 0x0183, blocks: (B:3:0x0007, B:5:0x001f, B:6:0x0027, B:24:0x005d, B:28:0x0066, B:30:0x006c, B:92:0x0132, B:8:0x002b, B:11:0x0034, B:14:0x003e, B:17:0x0048, B:20:0x0052, B:34:0x0076, B:35:0x007c, B:59:0x00c6, B:61:0x00cb, B:67:0x00d5, B:69:0x00e1, B:72:0x00e6, B:75:0x00eb, B:78:0x00f8, B:81:0x0106, B:84:0x0113, B:87:0x0121, B:37:0x0080, B:40:0x008a, B:43:0x0094, B:46:0x009e, B:49:0x00a8, B:52:0x00b1, B:55:0x00bb), top: B:97:0x0007 }] */
    /* JADX WARN: Removed duplicated region for block: B:99:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static /* synthetic */ void lambda$pictureProcess$1(com.oplus.ocs.camera.consumer.ConsumerImpl r9, android.media.ImageReader r10, com.oplus.ocs.camera.common.surface.SurfaceKey r11, com.oplus.ocs.camera.common.util.CameraRequestTag r12, android.media.ImageReader r13) {
        /*
            Method dump skipped, instructions count: 480
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.oplus.ocs.camera.consumer.ConsumerImpl.lambda$pictureProcess$1(com.oplus.ocs.camera.consumer.ConsumerImpl, android.media.ImageReader, com.oplus.ocs.camera.common.surface.SurfaceKey, com.oplus.ocs.camera.common.util.CameraRequestTag, android.media.ImageReader):void");
    }

    private void tuningDataProcess(final SurfaceKey surfaceKey, @NonNull final CameraRequestTag cameraRequestTag) {
        ImageReader imageReader = SurfacePool.getInstance().getImageReader(surfaceKey);
        if (imageReader != null) {
            imageReader.setOnImageAvailableListener(new ImageReader.OnImageAvailableListener() { // from class: com.oplus.ocs.camera.consumer.ConsumerImpl.6
                @Override // android.media.ImageReader.OnImageAvailableListener
                public void onImageAvailable(ImageReader imageReader2) {
                    Image image;
                    CameraUnitLog.d(ConsumerImpl.TAG, "tuningDataProcess, onImageAvailable");
                    try {
                        image = imageReader2.acquireNextImage();
                    } catch (IllegalStateException e) {
                        CameraUnitLog.e(ConsumerImpl.TAG, "tuningDataProcess, exception: ", e);
                        image = null;
                    }
                    if (image != null) {
                        ApsResult.ImageBuffer imageBuffer = new ApsResult.ImageBuffer(imageReader2, image, image.getHardwareBuffer(), image.getTimestamp());
                        CameraUnitLog.d(ConsumerImpl.TAG, "tuningDataProcess, format: " + image.getFormat() + ", timestamp: " + image.getTimestamp() + ", size: " + image.getWidth() + "x" + image.getHeight());
                        ImageCategory.TuningItemInfo tuningItemInfo = new ImageCategory.TuningItemInfo();
                        tuningItemInfo.mTuningBuffer = imageBuffer;
                        tuningItemInfo.setParameter(ParameterKeys.KEY_IMAGE_ROLE, 4);
                        tuningItemInfo.setParameter(ParameterKeys.KEY_TIME_STAMP, Long.valueOf(imageBuffer.getTimestamp()));
                        Size size = new Size(imageBuffer.getHardwareBuffer().getWidth(), imageBuffer.getHardwareBuffer().getHeight());
                        Size tuningDataSurfaceSize = CameraCharacteristicsHelper.getTuningDataSurfaceSize(cameraRequestTag.mCameraType, "tuning_data_raw");
                        if (!Util.isQcomPlatform()) {
                            boolean z = surfaceKey.getUsage() == CameraSessionEntity.SurfaceUsage.TUNING_RAW;
                            if (cameraRequestTag.mbDecisionRequestMixedFormat && !cameraRequestTag.mbBurstShot && !CameraCharacteristicsHelper.isFrontCamera(cameraRequestTag.mCameraId) && 4 == cameraRequestTag.mApsDecisionFeatureType) {
                                CameraUnitLog.d(ConsumerImpl.TAG, "tuningDataProcess, raw sync process: " + z + ", buffer size: " + size + ", tuningRawSurfaceSize: " + tuningDataSurfaceSize);
                                tuningItemInfo.setParameter(ParameterKeys.KEY_RAW_SYNC_PROCESS_FLAG, Boolean.valueOf(z));
                            }
                            if (z) {
                                CameraUnitLog.d(ConsumerImpl.TAG, "tuningDataProcess, set raw format hint: " + cameraRequestTag.mRawFormatHint);
                                tuningItemInfo.setParameter(ParameterKeys.KEY_IMAGE_FORMAT_HINT, Integer.valueOf(cameraRequestTag.mRawFormatHint));
                            } else if (cameraRequestTag.mbPhoto10BitsEnable) {
                                CameraUnitLog.d(ConsumerImpl.TAG, "tuningDataProcess, set private format hint");
                                tuningItemInfo.setParameter(ParameterKeys.KEY_IMAGE_FORMAT_HINT, 34);
                            }
                        }
                        if (ConsumerImpl.this.mProcessorContract != null) {
                            ConsumerImpl.this.mProcessorContract.addTuningInfo(tuningItemInfo);
                        }
                    }
                }
            }, this.mCaptureImageHandler);
        } else {
            CameraUnitLog.e(TAG, "tuningDataProcess, reader is null, surfaceKey: " + surfaceKey);
        }
        this.mProcessorContract.capture(false);
    }

    private void setRawImage(Image image) {
        if (this.mRawImage != null) {
            this.mRawImage.close();
            this.mRawImage = null;
        }
        this.mRequestRawNumber--;
        if (this.mRequestRawNumber != 0) {
            image.close();
        } else {
            this.mRawImage = image;
        }
    }

    private void processRawImage(CameraRequestTag cameraRequestTag) {
        if (this.mRawImage == null || this.mRawCaptureResult == null) {
            return;
        }
        this.mPictureAdapter.onImageReceived(Util.buildRawImage(cameraRequestTag, this.mRawImage, this.mRawCaptureResult, this.mCaptureDate));
        if (this.mRawImage != null) {
            this.mRawImage.close();
            this.mRawImage = null;
        }
        this.mRawCaptureResult = null;
    }

    @Override // com.oplus.ocs.camera.ProducerConsumerInterfaceContract.ConsumerInterface
    public boolean checkRuntimeState(long j, long j2) {
        return this.mProcessorContract.checkRuntimeState(j, j2);
    }

    @Override // com.oplus.ocs.camera.ProducerConsumerInterfaceContract.ConsumerInterface
    public boolean checkInputMemSize() {
        return this.mProcessorContract.checkInputMemSize();
    }

    @Override // com.oplus.ocs.camera.ProducerConsumerInterfaceContract.ConsumerInterface
    public boolean isVideoRecording() {
        return 1 == this.mRecordingState;
    }

    @Override // com.oplus.ocs.camera.ProducerConsumerInterfaceContract.ConsumerInterface
    public Bitmap processBitmap(Bitmap bitmap, CaptureResult captureResult, ImageCategory.MetaItemInfo metaItemInfo) {
        return this.mProcessorContract.processBitmap(bitmap, captureResult, metaItemInfo);
    }

    @Override // com.oplus.ocs.camera.consumer.ApsProcessorContract.IConsumer
    public void fillApsParameters(int i, Map<String, String> map) {
        this.mPictureAdapter.fillApsParameters(i, map);
    }

    @Override // com.oplus.ocs.camera.consumer.ApsProcessorContract.IConsumer
    public Map<String, Object> generateImageInfo(Image image) {
        return this.mProducerInterface.generateImageInfo(image);
    }

    @Override // com.oplus.ocs.camera.ProducerConsumerInterfaceContract.ConsumerInterface
    public void updateThumbnailMap(long j) {
        this.mProcessorContract.updateThumbnailMap(j);
    }

    @Override // com.oplus.ocs.camera.ProducerConsumerInterfaceContract.ConsumerInterface
    public boolean notifyLastCaptureFrame(ImageCategory.MetaItemInfo metaItemInfo) {
        return this.mProcessorContract.notifyLastCaptureFrame(metaItemInfo);
    }

    @Override // com.oplus.ocs.camera.ProducerConsumerInterfaceContract.ConsumerInterface
    public void beforeCapture(ImageCategory.MetaItemInfo metaItemInfo) {
        this.mProcessorContract.beforeCapture(metaItemInfo);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class InnerCameraPictureCallbackAdapter extends CameraPictureCallbackAdapter {
        private Handler mCallbackHandler;
        private CameraPictureCallbackAdapter mCameraPictureCallbackAdapter;
        private CaptureRequest mCaptureRequest;
        private TotalCaptureResult mTotalCaptureResult;

        private InnerCameraPictureCallbackAdapter() {
            this.mCallbackHandler = null;
            this.mCameraPictureCallbackAdapter = null;
            this.mCaptureRequest = null;
            this.mTotalCaptureResult = null;
        }

        public void onApsCaptureStarted(ApsCameraRequestTag apsCameraRequestTag) {
            if (apsCameraRequestTag == null || apsCameraRequestTag.mTag == null) {
                return;
            }
            CameraRequestTag cameraRequestTag = (CameraRequestTag) apsCameraRequestTag.mTag;
            this.mCallbackHandler = cameraRequestTag.mUserCallbackHandler;
            this.mCameraPictureCallbackAdapter = (CameraPictureCallbackAdapter) cameraRequestTag.mCallback;
        }

        @Override // com.oplus.ocs.camera.appinterface.CameraPictureCallbackAdapter
        public void onCaptureStarted(final CaptureRequest captureRequest, final long j) {
            super.onCaptureStarted(captureRequest, j);
            ConsumerImpl.this.mCaptureDate = j;
            this.mCaptureRequest = captureRequest;
            ConsumerImpl.this.onPictureMetaStart(captureRequest, j);
            CameraRequestTag cameraRequestTag = (CameraRequestTag) captureRequest.getTag();
            if (cameraRequestTag != null) {
                this.mCallbackHandler = cameraRequestTag.mUserCallbackHandler;
                this.mCameraPictureCallbackAdapter = (CameraPictureCallbackAdapter) cameraRequestTag.mCallback;
                if ("raw".equals(cameraRequestTag.mRawValue) && ConsumerImpl.this.mRequestRawNumber == 0) {
                    ConsumerImpl.this.mRequestRawNumber = cameraRequestTag.mRequestNum;
                }
            }
            if (this.mCallbackHandler == null || this.mCameraPictureCallbackAdapter == null) {
                return;
            }
            if ((ConsumerImpl.this.isFirstFrame() || Util.isSystemCamera()) && !ConsumerImpl.this.mbIsReprocessMode) {
                this.mCallbackHandler.post(new Runnable() { // from class: com.oplus.ocs.camera.consumer.ConsumerImpl.InnerCameraPictureCallbackAdapter.1
                    @Override // java.lang.Runnable
                    public void run() {
                        InnerCameraPictureCallbackAdapter.this.mCameraPictureCallbackAdapter.onCaptureStarted(captureRequest, j);
                    }
                });
            }
        }

        @Override // com.oplus.ocs.camera.appinterface.CameraPictureCallbackAdapter
        public void onPictureCaptureProgressed(@NonNull final CaptureRequest captureRequest, @NonNull final CameraPictureCallbackAdapter.PictureResult pictureResult) {
            if (this.mCallbackHandler == null || this.mCameraPictureCallbackAdapter == null) {
                return;
            }
            this.mCallbackHandler.post(new Runnable() { // from class: com.oplus.ocs.camera.consumer.ConsumerImpl.InnerCameraPictureCallbackAdapter.2
                @Override // java.lang.Runnable
                public void run() {
                    InnerCameraPictureCallbackAdapter.this.mCameraPictureCallbackAdapter.onPictureCaptureProgressed(captureRequest, pictureResult);
                }
            });
        }

        @Override // com.oplus.ocs.camera.appinterface.CameraPictureCallbackAdapter
        public void onCaptureCompleted(CaptureRequest captureRequest, CameraPictureCallbackAdapter.PictureResult pictureResult) {
            super.onCaptureCompleted(captureRequest, pictureResult);
            this.mCaptureRequest = captureRequest;
            if (this.mCameraPictureCallbackAdapter != null) {
                this.mCameraPictureCallbackAdapter.onCaptureCompleted(captureRequest, pictureResult);
            } else {
                CameraUnitLog.e(ConsumerImpl.TAG, "onCaptureCompleted, mCameraPictureCallbackAdapter is null");
            }
            ConsumerImpl.this.mProducerInterface.onCaptureCompleted();
        }

        @Override // com.oplus.ocs.camera.appinterface.CameraPictureCallbackAdapter
        public void onCaptureCompleted(@NonNull final CaptureRequest captureRequest, @NonNull final TotalCaptureResult totalCaptureResult, String str) {
            super.onCaptureCompleted(captureRequest, totalCaptureResult, str);
            CameraUnitLog.d(ConsumerImpl.TAG, "onCaptureCompleted, TotalCaptureResult.UpscaleInputSize: " + Arrays.toString((int[]) totalCaptureResult.get(ApsCameraMetadataKey.KEY_UPSCALE_INPUT_SIZE)) + " TotalCaptureResult.UpscaleOutputSize: " + Arrays.toString((int[]) totalCaptureResult.get(ApsCameraMetadataKey.KEY_UPSCALE_OUTPUT_SIZE)));
            ConsumerImpl.this.onPictureMetaArrived(captureRequest, totalCaptureResult);
            ConsumerImpl.this.onPreviewMetaArrived(captureRequest, totalCaptureResult, str);
            final CameraRequestTag cameraRequestTag = (CameraRequestTag) captureRequest.getTag();
            if (this.mCallbackHandler != null && this.mCameraPictureCallbackAdapter != null && captureRequest.hashCode() == ConsumerImpl.this.getFirstFrameHashCode()) {
                this.mCallbackHandler.post(new Runnable() { // from class: com.oplus.ocs.camera.consumer.ConsumerImpl.InnerCameraPictureCallbackAdapter.3
                    @Override // java.lang.Runnable
                    public void run() {
                        CameraPictureCallbackAdapter.PictureResult.Builder builder = new CameraPictureCallbackAdapter.PictureResult.Builder().set(ApsOtherParameter.KEY_CAPTURE_NIGHT_TOTAL_EXPTIME, Long.valueOf(ConsumerImpl.this.getNightCaptureTotalTime())).set(ApsOtherParameter.KEY_CAPTURE_FIRST_EXPOSURE_TIME, Long.valueOf(ConsumerImpl.this.getFirstExposureTime()));
                        if (cameraRequestTag != null) {
                            builder.set(ApsOtherParameter.KEY_REQUEST_TAG, cameraRequestTag.mAppOpaqueObj);
                        }
                        builder.setCaptureResult(totalCaptureResult);
                        InnerCameraPictureCallbackAdapter.this.mCameraPictureCallbackAdapter.onCaptureFirstFrameArrived(captureRequest, builder.build());
                    }
                });
            }
            this.mCaptureRequest = captureRequest;
            this.mTotalCaptureResult = totalCaptureResult;
        }

        @Override // com.oplus.ocs.camera.appinterface.CameraPictureCallbackAdapter
        public void onCaptureFailed(final CaptureRequest captureRequest, final CameraPictureCallbackAdapter.PictureResult pictureResult) {
            super.onCaptureFailed(captureRequest, pictureResult);
            if (!ConsumerImpl.this.isApsFinishAddFrame()) {
                ConsumerImpl.this.onCaptureFailed(captureRequest);
                if (this.mCallbackHandler == null || this.mCameraPictureCallbackAdapter == null) {
                    return;
                }
                this.mCallbackHandler.post(new Runnable() { // from class: com.oplus.ocs.camera.consumer.ConsumerImpl.InnerCameraPictureCallbackAdapter.4
                    @Override // java.lang.Runnable
                    public void run() {
                        InnerCameraPictureCallbackAdapter.this.mCameraPictureCallbackAdapter.onCaptureFailed(captureRequest, pictureResult);
                    }
                });
                return;
            }
            CameraUnitLog.d(ConsumerImpl.TAG, "onCaptureFailed, don't notifyErrorType when finish add frame.");
        }

        @Override // com.oplus.ocs.camera.appinterface.CameraPictureCallbackAdapter
        public void onImageReceived(final CameraImage cameraImage) {
            super.onImageReceived(cameraImage);
            final ApsResult apsResult = getApsResult();
            final CaptureRequest captureRequest = this.mCaptureRequest;
            final TotalCaptureResult totalCaptureResult = this.mTotalCaptureResult;
            if (this.mCallbackHandler == null || this.mCameraPictureCallbackAdapter == null) {
                return;
            }
            this.mCallbackHandler.post(new Runnable() { // from class: com.oplus.ocs.camera.consumer.ConsumerImpl.InnerCameraPictureCallbackAdapter.5
                @Override // java.lang.Runnable
                public void run() {
                    if (captureRequest != null) {
                        CameraPictureCallbackAdapter.PictureResult.Builder captureResult = new CameraPictureCallbackAdapter.PictureResult.Builder().setCaptureResult(totalCaptureResult);
                        if (apsResult != null) {
                            captureResult.setApsResult(apsResult);
                        }
                        captureResult.set(ApsOtherParameter.KEY_REQUEST_TAG, ((CameraRequestTag) captureRequest.getTag()).mAppOpaqueObj);
                        InnerCameraPictureCallbackAdapter.this.mCameraPictureCallbackAdapter.onCaptureCompleted(captureRequest, captureResult.build());
                    }
                    InnerCameraPictureCallbackAdapter.this.mCameraPictureCallbackAdapter.onImageReceived(cameraImage);
                }
            });
        }

        @Override // com.oplus.ocs.camera.appinterface.CameraPictureCallbackAdapter
        public void onPictureCaptureSequenceCompleted(int i, long j) {
            super.onPictureCaptureSequenceCompleted(i, j);
            if (this.mCameraPictureCallbackAdapter != null) {
                this.mCameraPictureCallbackAdapter.onPictureCaptureSequenceCompleted(i, j);
            }
        }

        @Override // com.oplus.ocs.camera.appinterface.CameraPictureCallbackAdapter
        public void onBurstShotStart(final long j) {
            super.onBurstShotStart(j);
            if (this.mCallbackHandler == null || this.mCameraPictureCallbackAdapter == null) {
                return;
            }
            this.mCallbackHandler.post(new Runnable() { // from class: com.oplus.ocs.camera.consumer.ConsumerImpl.InnerCameraPictureCallbackAdapter.6
                @Override // java.lang.Runnable
                public void run() {
                    InnerCameraPictureCallbackAdapter.this.mCameraPictureCallbackAdapter.onBurstShotStart(j);
                }
            });
        }

        @Override // com.oplus.ocs.camera.appinterface.CameraPictureCallbackAdapter
        public void onBurstShotEnd(final ImageCategory.ImageItemInfo imageItemInfo, final ImageCategory.MetaItemInfo metaItemInfo) {
            super.onBurstShotEnd(imageItemInfo, metaItemInfo);
            if (this.mCallbackHandler == null || this.mCameraPictureCallbackAdapter == null) {
                return;
            }
            this.mCallbackHandler.post(new Runnable() { // from class: com.oplus.ocs.camera.consumer.ConsumerImpl.InnerCameraPictureCallbackAdapter.7
                @Override // java.lang.Runnable
                public void run() {
                    InnerCameraPictureCallbackAdapter.this.mCameraPictureCallbackAdapter.onBurstShotEnd(new CameraPictureCallbackAdapter.PictureResult.Builder().setImageCategory(imageItemInfo, metaItemInfo).build());
                }
            });
        }

        @Override // com.oplus.ocs.camera.appinterface.CameraPictureCallbackAdapter
        public void afterProcessImage(final int i, final ImageCategory.ImageItemInfo imageItemInfo, final ImageCategory.MetaItemInfo metaItemInfo) {
            super.afterProcessImage(i, imageItemInfo, metaItemInfo);
            if (this.mCallbackHandler == null || this.mCameraPictureCallbackAdapter == null) {
                return;
            }
            this.mCallbackHandler.post(new Runnable() { // from class: com.oplus.ocs.camera.consumer.ConsumerImpl.InnerCameraPictureCallbackAdapter.8
                @Override // java.lang.Runnable
                public void run() {
                    InnerCameraPictureCallbackAdapter.this.mCameraPictureCallbackAdapter.afterProcessImage(i, new CameraPictureCallbackAdapter.PictureResult.Builder().setImageCategory(imageItemInfo, metaItemInfo).build());
                }
            });
        }

        @Override // com.oplus.ocs.camera.appinterface.CameraPictureCallbackAdapter
        public void fillApsParameters(int i, Map<String, String> map) {
            super.fillApsParameters(i, map);
            this.mCameraPictureCallbackAdapter.fillApsParameters(i, map);
        }

        @Override // com.oplus.ocs.camera.appinterface.CameraPictureCallbackAdapter
        public void onFinishAddFrame(ImageCategory.ImageItemInfo imageItemInfo, ImageCategory.MetaItemInfo metaItemInfo) {
            this.mCameraPictureCallbackAdapter.onFinishAddFrame(new CameraPictureCallbackAdapter.PictureResult.Builder().setImageCategory(imageItemInfo, metaItemInfo).build());
        }

        @Override // com.oplus.ocs.camera.appinterface.CameraPictureCallbackAdapter
        public void onFirstCaptureFrameAdd() {
            this.mCameraPictureCallbackAdapter.onFirstCaptureFrameAdd();
        }
    }

    private void notifyPreviewResult(Handler handler, final CameraPreviewCallbackAdapter cameraPreviewCallbackAdapter, final CaptureRequest captureRequest, final CameraPreviewCallbackAdapter.PreviewResult previewResult) {
        this.mProducerInterface.onPreviewResultReceived(handler, previewResult);
        if (handler == null || cameraPreviewCallbackAdapter == null) {
            CameraUnitLog.e(TAG, "notifyPreviewResult, params invalid, handler: " + handler + ", callback: " + cameraPreviewCallbackAdapter);
            return;
        }
        if (!this.mbFirstPreviewReceived) {
            CameraUnitLog.d(TAG, "notifyPreviewResult, notify first PreviewResult");
        }
        synchronized (this.mRequestLock) {
            handler.post(new Runnable() { // from class: com.oplus.ocs.camera.consumer.-$$Lambda$ConsumerImpl$dN8MHue1YWxC17PRTFgdY4KSXRs
                @Override // java.lang.Runnable
                public final void run() {
                    CameraPreviewCallbackAdapter.this.onCaptureCompleted(captureRequest, previewResult);
                }
            });
        }
    }

    private void discardUselessBuffer(CameraRequestTag cameraRequestTag) {
        discardRawBuffer(cameraRequestTag);
        if (!cameraRequestTag.mbTiltShiftOpen) {
            CameraUnitLog.v(TAG, "discardUselessBuffer, shift closed");
            return;
        }
        for (SurfaceKey surfaceKey : cameraRequestTag.mUselessTargetSurfaces.keySet()) {
            if (CameraSessionEntity.SurfaceUsage.PICTURE.equals(surfaceKey.getUsage())) {
                CameraUnitLog.v(TAG, "discardUselessBuffer, surfaceKey: " + surfaceKey);
                ImageReader imageReader = SurfacePool.getInstance().getImageReader(surfaceKey);
                if (imageReader != null) {
                    imageReader.discardFreeBuffers();
                }
            }
        }
    }

    private void discardRawBuffer(CameraRequestTag cameraRequestTag) {
        for (SurfaceKey surfaceKey : cameraRequestTag.mAddTargetSurfaces.keySet()) {
            if (CameraSessionEntity.SurfaceUsage.PICTURE.equals(surfaceKey.getUsage()) && 32 == surfaceKey.getFormat()) {
                CameraUnitLog.v(TAG, "discardRawBuffer, surfaceKey: " + surfaceKey);
                ImageReader imageReader = SurfacePool.getInstance().getImageReader(surfaceKey);
                if (imageReader != null) {
                    imageReader.discardFreeBuffers();
                }
            }
        }
    }

    private void initHandlerThread() {
        if (this.mPreviewImageHandler == null) {
            HandlerThread handlerThread = new HandlerThread("PreviewImageThread");
            handlerThread.start();
            this.mPreviewImageHandler = new Handler(handlerThread.getLooper());
        }
        if (this.mPreviewFrameHandler == null) {
            HandlerThread handlerThread2 = new HandlerThread("PreviewFrameThread");
            handlerThread2.start();
            this.mPreviewFrameHandler = new Handler(handlerThread2.getLooper());
        }
        if (this.mCaptureImageHandler == null) {
            HandlerThread handlerThread3 = new HandlerThread("CaptureImageThread");
            handlerThread3.start();
            this.mCaptureImageHandler = new Handler(handlerThread3.getLooper());
        }
    }
}

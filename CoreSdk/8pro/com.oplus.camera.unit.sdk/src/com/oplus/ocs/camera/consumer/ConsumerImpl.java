package com.oplus.ocs.camera.consumer;

import android.graphics.Bitmap;
import android.graphics.Rect;
import android.hardware.HardwareBuffer;
import android.hardware.camera2.CaptureRequest;
import android.hardware.camera2.CaptureResult;
import android.hardware.camera2.TotalCaptureResult;
import android.hardware.camera2.params.Face;
import android.media.Image;
import android.media.ImageReader;
import android.os.Handler;
import android.os.HandlerThread;
import android.text.TextUtils;
import android.util.Size;
import androidx.annotation.NonNull;
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
import com.oplus.ocs.camera.common.util.CameraHandlerThread;
import com.oplus.ocs.camera.common.util.CameraImage;
import com.oplus.ocs.camera.common.util.CameraPerformance;
import com.oplus.ocs.camera.common.util.CameraRequestTag;
import com.oplus.ocs.camera.common.util.CameraUnitLog;
import com.oplus.ocs.camera.common.util.ConfigInfoPkg;
import com.oplus.ocs.camera.common.util.ContextHolder;
import com.oplus.ocs.camera.common.util.ParameterKeys;
import com.oplus.ocs.camera.common.util.PlatformUtil;
import com.oplus.ocs.camera.common.util.Util;
import com.oplus.ocs.camera.consumer.ApsProcessorContract;
import com.oplus.ocs.camera.consumer.apsAdapter.ApsCameraMetadataKey;
import com.oplus.ocs.camera.consumer.apsAdapter.ApsCameraRequestTag;
import com.oplus.ocs.camera.consumer.apsAdapter.adapter.ApsAdapterDecision;
import com.oplus.ocs.camera.consumer.apsAdapter.adapter.ApsCaptureResult;
import com.oplus.ocs.camera.consumer.apsAdapter.adapter.ApsResult;
import com.oplus.ocs.camera.consumer.apsAdapter.adapter.ApsTotalResult;
import com.oplus.ocs.camera.consumer.apsAdapter.adapter.DefaultUtill;
import com.oplus.ocs.camera.consumer.apsAdapter.adapter.ImageCategory;
import com.oplus.ocs.camera.consumer.apsAdapter.config.AlgoSwitchConfig;
import com.oplus.ocs.camera.consumer.apsAdapter.service.ApsAdapterListener;
import com.oplus.ocs.camera.producer.info.CameraCharacteristicsHelper;
import com.oplus.ocs.camera.producer.info.CameraCharacteristicsWrapper;
import com.oplus.ocs.camera.producer.info.CameraConfigHelper;
import java.util.Arrays;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* loaded from: classes.dex */
public class ConsumerImpl
        implements ProducerConsumerInterfaceContract.ConsumerInterface, ApsProcessorContract.IConsumer {
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
    private boolean mbFirstPreviewMetaReceived = false;
    private boolean mbIsStopRecording = false;
    private boolean mbIsReprocessMode = false;
    private boolean mbFirstCaptureImageArrived = false;
    private ApsRequestTag mApsTag = null;
    private CameraRecordingCallbackAdapter.RecordingResult mRecordingResult = null;
    private final ConcurrentHashMap<String, Integer> mResultSet = new ConcurrentHashMap<>();
    private ApsAdapterDecision.DecisionResult mPreviewDecisionResult = null;
    private boolean mbNeedApsProcessVideoFrame = false;
    private volatile boolean mbWaitToStopVideo = false;
    private Image mRawImage = null;
    private CaptureResult mRawCaptureResult = null;
    private int mRequestRawNumber = 0;
    private int mRawCompleteCount = 0;
    private int mRequestSuperRawJpegNumber = 0;
    private long mCaptureDate = 0;
    private final Object mSaveResultToDngLock = new Object();
    private Handler mPreviewImageHandler = null;
    private Handler mPreviewFrameHandler = null;
    private Handler mCaptureImageHandler = null;
    private Handler mPreviewImageCallbackHandler = null;
    private Handler mPreviewReceivedWorkHandler = null;
    private boolean mIsRecording = false;
    private int mAllmightyLastScene = 0;
    private int mAiEnhanceSceneStart = 0;
    private int mAiEnhanceSceneEnd = 0;
    private int mAiEnhanceSceneChangeCount = 0;
    private boolean mbIsDetectFace = false;
    private int mCurrentSensorMode = -1;

    public ConsumerImpl() {
        initHandlerThread();
    }

    @Override // com.oplus.ocs.camera.ProducerConsumerInterfaceContract.ConsumerInterface
    public void onConfigParseDone() {
        this.mProcessorContract = new ApsProcessor(this);
    }

    @Override // com.oplus.ocs.camera.ProducerConsumerInterfaceContract.ConsumerInterface
    public boolean linkSurfaceToConsumer(@NonNull final CameraRequestTag cameraRequestTag, String str, int i) {
        CameraUnitLog.i(TAG, "linkToObserver, target surfaces: " + cameraRequestTag.mAddTargetSurfaces + ", stage: "
                + str + ", format: " + i);
        this.mbIsReprocessMode = CameraRequestTag.RequestMode.CAPTURE_REPROCESS
                .equals(cameraRequestTag.getRequestMode());
        if (Parameter.ParameterStage.START_PREVIEW.equals(str) && this.mProducerInterface.needApsProcessor()) {
            this.mProcessorContract.startPreview(cameraRequestTag);
        }
        for (final SurfaceKey surfaceKey : cameraRequestTag.mAddTargetSurfaces.keySet()) {
            if (Parameter.ParameterStage.START_PREVIEW.equals(str)) {
                ImageReader imageReader = SurfacePool.getInstance().getImageReader(surfaceKey);
                Handler handler = "surface_key_preview_frame".equals(surfaceKey.getUsage()) ? this.mPreviewFrameHandler
                        : this.mPreviewImageHandler;
                if (imageReader != null) {
                    imageReader.setOnImageAvailableListener(new ImageReader.OnImageAvailableListener() { // from class:
                                                                                                         // com.oplus.ocs.camera.consumer.ConsumerImpl.1
                        @Override // android.media.ImageReader.OnImageAvailableListener
                        public void onImageAvailable(ImageReader imageReader2) {
                            if ("surface_key_preview_frame".equals(surfaceKey.getUsage())) {
                                ConsumerImpl.this.onPreviewFrameImageArrived(cameraRequestTag, imageReader2);
                            } else if ("surface_key_preview_in_preview".equals(surfaceKey.getUsage())) {
                                ConsumerImpl.this.onPreviewInPreviewFrameImageArrived(cameraRequestTag, imageReader2);
                            } else {
                                ConsumerImpl.this.onPreviewImageArrived(cameraRequestTag, imageReader2, surfaceKey);
                            }
                        }
                    }, handler);
                }
            } else if (Parameter.ParameterStage.BEFORE_TAKE_PICTURE.equals(str)) {
                this.mRequestSuperRawJpegNumber = 0;
                this.mbFirstCaptureImageArrived = false;
                if ("surface_key_picture".equals(surfaceKey.getUsage())
                        || "surface_key_reprocess_yuv".equals(surfaceKey.getUsage())
                        || "surface_key_picture_mfnr".equals(surfaceKey.getUsage())
                        || "surface_key_picture_dol".equals(surfaceKey.getUsage())) {
                    pictureProcess(surfaceKey, cameraRequestTag);
                } else if ("surface_key_tuning_raw".equals(surfaceKey.getUsage())
                        || "surface_key_tuning_yuv".equals(surfaceKey.getUsage())) {
                    tuningDataProcess(surfaceKey, cameraRequestTag);
                } else if ("surface_key_preview".equals(surfaceKey.getUsage())) {
                    this.mProcessorContract.capture(false);
                }
            } else if (Parameter.ParameterStage.START_RECORDING.equals(str)) {
                ImageReader imageReader2 = SurfacePool.getInstance().getImageReader(surfaceKey);
                if (imageReader2 != null) {
                    imageReader2.setOnImageAvailableListener(new ImageReader.OnImageAvailableListener() { // from class:
                                                                                                          // com.oplus.ocs.camera.consumer.ConsumerImpl.2
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
        ApsProcessorContract.IProcessor iProcessor = this.mProcessorContract;
        if (iProcessor != null) {
            iProcessor.videoSnapshot(new ApsAdapterListener.CaptureCallback() { // from class:
                                                                                // com.oplus.ocs.camera.consumer.ConsumerImpl.3
                @Override // com.oplus.ocs.camera.consumer.apsAdapter.service.ApsAdapterListener.CaptureCallback
                public void onApsCaptureStarted(long j) {
                    ConsumerImpl.this.mPictureAdapter.onApsCaptureStarted(apsCameraRequestTag);
                    ConsumerImpl.this.mProcessorContract.onApsCaptureStarted(j);
                }

                @Override // com.oplus.ocs.camera.consumer.apsAdapter.service.ApsAdapterListener.CaptureCallback
                public void onApsCaptureCompleted(ApsResult apsResult, ApsTotalResult apsTotalResult,
                        ApsCameraRequestTag apsCameraRequestTag2) {
                    CameraRequestTag cameraRequestTag = (CameraRequestTag) apsCameraRequestTag2.mTag;
                    ApsCaptureResult apsCaptureResult = new ApsCaptureResult(apsTotalResult,
                            Integer.toString(cameraRequestTag.mCameraId));
                    ApsResult.ImageBuffer imageBuffer = apsResult.getImageBuffer();
                    if (imageBuffer != null
                            && apsCaptureResult.mSensorTimestamp.longValue() != imageBuffer.getTimestamp()) {
                        CameraUnitLog.w(ConsumerImpl.TAG,
                                "onApsCaptureCompleted, meta timestamp is not match with buffer");
                        apsCaptureResult.mSensorTimestamp = Long.valueOf(imageBuffer.getTimestamp());
                    }
                    ConsumerImpl.this.mProcessorContract.addPictureMeta(cameraRequestTag, apsCaptureResult, true);
                    if (imageBuffer != null) {
                        ConsumerImpl.this.mProcessorContract.addPictureImage(imageBuffer, 0, cameraRequestTag);
                        if (imageBuffer.getSubHardwareBuffer() != null) {
                            ConsumerImpl.this.mProcessorContract.addPictureMeta(cameraRequestTag, apsCaptureResult,
                                    true);
                            ApsResult.ImageBuffer imageBuffer2 = new ApsResult.ImageBuffer((ImageReader) null,
                                    imageBuffer.getImage(), imageBuffer.getSubHardwareBuffer(), (HardwareBuffer) null,
                                    imageBuffer.getTimestamp());
                            imageBuffer2.addRef();
                            ConsumerImpl.this.mProcessorContract.addPictureImage(imageBuffer2, 17, cameraRequestTag);
                        }
                        ConsumerImpl.this.mPictureAdapter.onCaptureCompleted(null,
                                new CameraPictureCallbackAdapter.PictureResult.Builder()
                                        .setCaptureResult(apsTotalResult.getTotalResult()).setApsResult(apsResult)
                                        .set(ApsOtherParameter.KEY_REQUEST_TAG, cameraRequestTag.mAppOpaqueObj)
                                        .build());
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
            ConsumerImpl.this.mbFirstPreviewMetaReceived = false;
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
        public void onPreviewCaptureStarted(@NonNull CaptureRequest captureRequest, long j, long j2) {
            Integer num = (Integer) captureRequest.get(CaptureRequest.CONTROL_AE_PRECAPTURE_TRIGGER);
            if (num != null && num.intValue() != 0) {
                this.mAERequest = captureRequest;
            } else {
                this.mCurrentRequest = captureRequest;
            }
            CameraPreviewCallbackAdapter cameraPreviewCallbackAdapter = this.mAppCallback;
            if (cameraPreviewCallbackAdapter != null) {
                cameraPreviewCallbackAdapter.onPreviewCaptureStarted(captureRequest, j, j2);
            }
        }

        @Override // com.oplus.ocs.camera.appinterface.CameraPreviewCallbackAdapter
        public void onCaptureCompleted(@NonNull CaptureRequest captureRequest,
                @NonNull TotalCaptureResult totalCaptureResult, String str) {
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
        public void onPreviewCaptureProgressed(@NonNull CaptureRequest captureRequest,
                @NonNull CaptureResult captureResult) {
            CameraRequestTag cameraRequestTag;
            if (this.mAppCallback == null && (cameraRequestTag = (CameraRequestTag) captureRequest.getTag()) != null) {
                this.mAppCallback = (CameraPreviewCallbackAdapter) cameraRequestTag.mCallback;
            }
            CameraPreviewCallbackAdapter cameraPreviewCallbackAdapter = this.mAppCallback;
            if (cameraPreviewCallbackAdapter != null) {
                cameraPreviewCallbackAdapter.onPreviewCaptureProgressed(captureRequest, captureResult);
            }
        }

        public CaptureRequest getCurrentRequest() {
            CaptureRequest captureRequest = this.mAERequest;
            return captureRequest != null ? captureRequest : this.mCurrentRequest;
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
            CameraPreviewCallbackAdapter cameraPreviewCallbackAdapter = this.mAppCallback;
            if (cameraPreviewCallbackAdapter != null) {
                cameraPreviewCallbackAdapter.onHalPreviewCollected(j);
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
            CameraUnitLog.d(TAG, "createCameraPictureCallback, mPictureAdapter: " + this.mPictureAdapter);
        }
        return this.mPictureAdapter;
    }

    @Override // com.oplus.ocs.camera.ProducerConsumerInterfaceContract.ConsumerInterface
    public CameraRecordingCallbackAdapter createCameraRecordingCallback() {
        if (this.mRecordingAdapter == null) {
            this.mRecordingAdapter = new CameraRecordingCallbackAdapter() { // from class:
                                                                            // com.oplus.ocs.camera.consumer.ConsumerImpl.4
                @Override // com.oplus.ocs.camera.appinterface.CameraRecordingCallbackAdapter
                public void onRecordingResult(CameraRecordingCallbackAdapter.RecordingResult recordingResult) {
                    super.onRecordingResult(recordingResult);
                    ConsumerImpl.this.mRecordingResult = recordingResult;
                    ConsumerImpl.this.mRecordingState = recordingResult.getRecordingState();
                    CameraUnitLog.i(ConsumerImpl.TAG,
                            "onRecordingResult, mRecordingState: " + ConsumerImpl.this.mRecordingState
                                    + ", mbNeedApsProcessVideoFrame: " + ConsumerImpl.this.mbNeedApsProcessVideoFrame);
                    ConsumerImpl.this.mProcessorContract.setRecordingTag(recordingResult.getCameraRequestTag());
                    if (ConsumerImpl.this.isNeedApsProcessor() && ConsumerImpl.this.mbNeedApsProcessVideoFrame) {
                        ConsumerImpl.this.mProcessorContract.onRecordingResult(ConsumerImpl.this.mRecordingState);
                    }
                    if (1 == ConsumerImpl.this.mRecordingState) {
                        ConsumerImpl.this.mbIsStopRecording = false;
                    } else if (4 == ConsumerImpl.this.mRecordingState) {
                        ConsumerImpl.this.mbIsStopRecording = true;
                        if (ConsumerImpl.this
                                .canNotStopVideoRecordingImmediately(recordingResult.getCameraRequestTag())) {
                            ConsumerImpl.this.mbWaitToStopVideo = true;
                        }
                    }
                    if (ConsumerImpl.this.isNeedApsProcessor() && ConsumerImpl.this.mbNeedApsProcessVideoFrame) {
                        if (4 != ConsumerImpl.this.mRecordingState) {
                            ConsumerImpl consumerImpl = ConsumerImpl.this;
                            consumerImpl.notifyRecordingState(consumerImpl.mRecordingResult);
                            return;
                        }
                        return;
                    }
                    ConsumerImpl consumerImpl2 = ConsumerImpl.this;
                    consumerImpl2.notifyRecordingState(consumerImpl2.mRecordingResult);
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
        Handler handler = this.mPreviewImageHandler;
        if (handler != null) {
            handler.getLooper().quitSafely();
        }
        Handler handler2 = this.mPreviewFrameHandler;
        if (handler2 != null) {
            handler2.getLooper().quitSafely();
        }
        Handler handler3 = this.mCaptureImageHandler;
        if (handler3 != null) {
            handler3.getLooper().quitSafely();
        }
        Handler handler4 = this.mPreviewImageCallbackHandler;
        if (handler4 != null) {
            handler4.getLooper().quitSafely();
            this.mPreviewImageCallbackHandler = null;
        }
        Handler handler5 = this.mPreviewReceivedWorkHandler;
        if (handler5 != null) {
            handler5.getLooper().quitSafely();
        }
    }

    @Override // com.oplus.ocs.camera.ProducerConsumerInterfaceContract.ConsumerInterface
    public void onCameraClosed() {
        ApsProcessorContract.IProcessor iProcessor = this.mProcessorContract;
        if (iProcessor != null) {
            iProcessor.onCameraClosed();
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
        if (this.mProcessorContract != null && isNeedApsProcessor() && this.mProducerInterface.needApsProcessor()) {
            this.mProcessorContract.onSessionClosed(true);
        }
    }

    @Override // com.oplus.ocs.camera.ProducerConsumerInterfaceContract.ConsumerInterface
    public void onSessionConfigured(ConfigInfoPkg configInfoPkg) {
        CameraUnitLog.d(TAG, "onSessionConfigured, previewCaptureRequest: " + configInfoPkg.mRequest);
        StatisticsManager.getInstance().setDcsDelayProcessMsg(4, StatisticsManager.DELAY_TIME_3S);
        this.mApsTag = configInfoPkg.mApsRequestTag;
        if (isNeedApsProcessor() && this.mProducerInterface.needApsProcessor()) {
            Handler handler = this.mCaptureImageHandler;
            if (handler != null && this.mProcessorContract != null) {
                handler.post(new Runnable() { // from class:
                                              // com.oplus.ocs.camera.consumer.ConsumerImpl$$ExternalSyntheticLambda2
                    @Override // java.lang.Runnable
                    public final void run() {
                        ConsumerImpl.this.m6xa67fcac3();
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
    /*
     * renamed from:
     * lambda$onSessionConfigured$0$com-oplus-ocs-camera-consumer-ConsumerImpl
     * reason: not valid java name
     */
    public /* synthetic */ void m6xa67fcac3() {
        this.mProcessorContract.onSessionConfigured(this.mApsTag);
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

    private void onHalPictureImageArrived(ImageReader imageReader, Image image, int i,
            CameraRequestTag cameraRequestTag, String str) {
        if (image.getFormat() == 32 && "raw".equals(cameraRequestTag.mRawValue)) {
            synchronized (this.mSaveResultToDngLock) {
                setRawImage(image);
                processRawImage(cameraRequestTag);
            }
        } else if (consumeByBusiness(image, cameraRequestTag)) {
        } else {
            if (!this.mbFirstCaptureImageArrived) {
                CameraUnitLog.traceBegin("CameraUnit.FirstCaptureImageArrived");
                CameraUnitLog.e(TAG, "onHalPictureImageArrived, FirstCaptureImageArrived");
                this.mbFirstCaptureImageArrived = true;
                CameraUnitLog.traceEnd("CameraUnit.FirstCaptureImageArrived");
            }
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
        CameraUnitLog.e(TAG, "onApsJpegArrived, image orientation: " + cameraImage.getOrientation());
        CameraUnitLog.traceBegin("CameraUnit.onApsJpegArrived");
        this.mPictureAdapter.setApsResult(apsResult);
        this.mPictureAdapter.onImageReceived(cameraImage);
        CameraUnitLog.traceEnd("CameraUnit.onApsJpegArrived");
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
    public void afterProcessImage(int i, ImageCategory.ImageItemInfo imageItemInfo,
            ImageCategory.MetaItemInfo metaItemInfo) {
        CameraUnitLog.d(TAG, "afterProcessImage, processResult: " + i + ", imageItemInfo: " + imageItemInfo
                + ", metaItemInfo: " + metaItemInfo);
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
            int i = this.mRawCompleteCount + 1;
            this.mRawCompleteCount = i;
            if (i == cameraRequestTag.mRequestNum) {
                synchronized (this.mSaveResultToDngLock) {
                    this.mRawCaptureResult = totalCaptureResult;
                    processRawImage(cameraRequestTag);
                }
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
    public void onPreviewImageArrived(CameraRequestTag cameraRequestTag, @NonNull ImageReader imageReader,
            SurfaceKey surfaceKey) {
        Image acquireNextImage;
        String cameraType = surfaceKey.getCameraType();
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
        for (SurfaceKey surfaceKey2 : cameraRequestTag.mAddTargetSurfaces.keySet()) {
            if ("surface_key_preview_frame".equals(surfaceKey2.getUsage())
                    && SurfacePool.getInstance().getImageReader(surfaceKey2) != null) {
                z = true;
            }
        }
        if (cameraRequestTag.mbSetPreviewFrameSurface && !z && ("rear_main".equals(cameraType)
                || "front_main".equals(cameraType) || "front_wide".equals(cameraType) || "rear_tele".equals(cameraType)
                || "rear_wide".equals(cameraType)
                || ((!"1".equals(CameraConfigHelper.getConfigValue(DefaultUtill.KEY_REAR_LENS_GESTURE_RECOGNITION))
                        && "rear_sat".equals(cameraType)) || "rear_macro".equals(cameraType)))) {
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
            if (SurfacePool.getInstance().getImageReader(surfaceKey) != null) {
                this.mProcessorContract.addPreview(imageReader, acquireNextImage, ImageCategory.ItemInfoType.PREVIEW,
                        cameraType, surfaceKey);
            } else {
                CameraUnitLog.e(TAG, "onPreviewImageArrived, imageReader already closed");
            }
        } else if (cameraRequestTag.mCallback != null) {
            ((CameraPreviewCallbackAdapter) cameraRequestTag.mCallback)
                    .onPreviewReceived(new CameraPreviewCallbackAdapter.PreviewResult.Builder()
                            .setImageBuffer(new ApsResult.ImageBuffer(null, acquireNextImage,
                                    Util.getHardwareBuffer(acquireNextImage), acquireNextImage.getTimestamp()))
                            .set(ApsOtherParameter.KEY_CAMERA_RESULT_CAMERA_TYPE, cameraType).build());
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
    public void onPreviewInPreviewFrameImageArrived(CameraRequestTag cameraRequestTag,
            @NonNull ImageReader imageReader) {
        try {
            Image acquireNextImage = imageReader.acquireNextImage();
            if (acquireNextImage == null) {
                CameraUnitLog.e(TAG, "onPreviewInPreviewFrameImageArrived, image is null");
                return;
            }
            if (!this.mProducerInterface.isPreviewInPreviewOn()) {
                acquireNextImage.close();
            }
            CameraPreviewCallbackAdapter cameraPreviewCallbackAdapter = (CameraPreviewCallbackAdapter) cameraRequestTag.mCallback;
            if (cameraPreviewCallbackAdapter != null) {
                cameraPreviewCallbackAdapter.onPreviewFrameReceived(acquireNextImage);
            }
        } catch (IllegalArgumentException | IllegalStateException e) {
            CameraUnitLog.e(TAG, "onPreviewInPreviewFrameImageArrived", e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onPreviewMetaImageArrived(CaptureRequest captureRequest, @NonNull ImageReader imageReader) {
        CameraUnitLog.v(TAG, "onPreviewMetaImageArrived");
        Image image = null;
        try {
            Image acquireNextImage = imageReader.acquireNextImage();
            if (acquireNextImage == null) {
                return;
            }
            try {
                if (isNeedPreviewMeta(null)) {
                    setRequestTagRecordingState((CameraRequestTag) captureRequest.getTag());
                    this.mProcessorContract.addPreviewMeta(captureRequest, imageReader, acquireNextImage,
                            (4 == this.mRecordingState || !this.mbNeedApsProcessVideoFrame)
                                    ? ImageCategory.ItemInfoType.PREVIEW
                                    : ImageCategory.ItemInfoType.VIDEO);
                    return;
                }
                acquireNextImage.close();
                CameraUnitLog.v(TAG, "onPreviewMetaImageArrived  image close, may wrong path!");
            } catch (IllegalArgumentException | IllegalStateException e) {
                e = e;
                image = acquireNextImage;
                CameraUnitLog.e(TAG, "onPreviewMetaImageArrived", e);
                if (image != null) {
                    image.close();
                }
            }
        } catch (IllegalArgumentException | IllegalStateException e2) {
            e = e2;
        }
    }

    private void detectFace(CaptureResult captureResult) {
        Face[] faceArr = (Face[]) captureResult.get(CaptureResult.STATISTICS_FACES);
        this.mbIsDetectFace = (faceArr == null ? 0 : faceArr.length) > 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onPreviewMetaArrived(CaptureRequest captureRequest, @NonNull TotalCaptureResult totalCaptureResult,
            String str) {
        synchronized (this.mRequestLock) {
            if (!this.mbFirstPreviewMetaArrived) {
                CameraUnitLog.d(TAG, "onPreviewMetaArrived, mbFirstPreviewMetaArrived is false, so return");
                return;
            }
            CameraRequestTag cameraRequestTag = (CameraRequestTag) captureRequest.getTag();
            detectFace(totalCaptureResult);
            if (isNeedPreviewMeta(totalCaptureResult)) {
                setRequestTagRecordingState(cameraRequestTag);
                this.mProcessorContract.addPreviewMeta(captureRequest, totalCaptureResult,
                        (4 == this.mRecordingState || !this.mbNeedApsProcessVideoFrame)
                                ? ImageCategory.ItemInfoType.PREVIEW
                                : ImageCategory.ItemInfoType.VIDEO);
                return;
            }
            CameraPreviewCallbackAdapter.PreviewResult.Builder builder = new CameraPreviewCallbackAdapter.PreviewResult.Builder()
                    .setCaptureResult(totalCaptureResult).set(ApsOtherParameter.KEY_CAMERA_RESULT_CAMERA_TYPE, str)
                    .set(ApsOtherParameter.KEY_CAMERA_RESULT_CAMERA_MODE, cameraRequestTag.mCaptureMode);
            if (cameraRequestTag.mCallback instanceof CameraPreviewCallbackAdapter) {
                notifyPreviewResult(cameraRequestTag.mUserCallbackHandler,
                        (CameraPreviewCallbackAdapter) cameraRequestTag.mCallback, captureRequest, builder.build());
            }
        }
    }

    private void setRequestTagRecordingState(CameraRequestTag cameraRequestTag) {
        if (cameraRequestTag != null) {
            cameraRequestTag.mbVideoRecordingPaused = 2 == this.mRecordingState;
            cameraRequestTag.mbEnableLsd = 1 != this.mRecordingState;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isFirstFrame() {
        ApsProcessorContract.IProcessor iProcessor = this.mProcessorContract;
        if (iProcessor != null) {
            return iProcessor.isFirstFrame();
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getFirstFrameHashCode() {
        ApsProcessorContract.IProcessor iProcessor = this.mProcessorContract;
        if (iProcessor != null) {
            return iProcessor.getFirstFrameHashCode();
        }
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public long getNightCaptureTotalTime() {
        ApsProcessorContract.IProcessor iProcessor = this.mProcessorContract;
        if (iProcessor != null) {
            return iProcessor.getNightCaptureTotalTime();
        }
        return 0L;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public long getFirstExposureTime() {
        ApsProcessorContract.IProcessor iProcessor = this.mProcessorContract;
        if (iProcessor != null) {
            return iProcessor.getFirstExposureTime();
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
    public void onReprocess(Image image, TotalCaptureResult totalCaptureResult, Rect rect,
            CameraRequestTag cameraRequestTag) {
        if ("super_raw".equals(cameraRequestTag.mRawValue)) {
            this.mPictureAdapter.onImageReceived(
                    Util.buildRawImage(cameraRequestTag, image, totalCaptureResult, this.mCaptureDate));
        } else if (isNeedApsProcessor()) {
            this.mProducerInterface.onReprocess(image, totalCaptureResult, rect, cameraRequestTag);
        }
    }

    @Override // com.oplus.ocs.camera.consumer.ApsProcessorContract.IConsumer
    public Handler getPreviewReceivedWorkHandler() {
        return this.mPreviewReceivedWorkHandler;
    }

    @Override // com.oplus.ocs.camera.consumer.ApsProcessorContract.IConsumer
    public void onPreviewReceived(final ApsResult apsResult, final ApsTotalResult apsTotalResult) {
        CameraUnitLog.traceBeginSection("onPreviewDataReceived");
        final boolean isNeedApsProcessor = isNeedApsProcessor();
        final CaptureRequest currentRequest = this.mPreviewAdapter.getCurrentRequest();
        final CameraRequestTag cameraRequestTag = (CameraRequestTag) currentRequest.getTag();
        if (apsTotalResult != null && apsTotalResult.getTotalResult() != null) {
            try {
                int[] iArr = (int[]) apsTotalResult.getTotalResult().get(ApsCameraMetadataKey.KEY_CURRENT_SENSOR_MODE);
                this.mCurrentSensorMode = iArr != null ? iArr[0] : -1;
            } catch (Exception unused) {
                this.mCurrentSensorMode = -1;
            }
        }
        if (isNeedApsProcessor && cameraRequestTag != null
                && TextUtils.equals("0", this.mApsTag.mPreviewCallbackType)) {
            final CameraPreviewCallbackAdapter.PreviewResult build = new CameraPreviewCallbackAdapter.PreviewResult.Builder()
                    .setCaptureResult(apsTotalResult.getTotalResult()).setApsResult(apsResult)
                    .setApsTotalResult(apsTotalResult).build();
            final CameraPreviewCallbackAdapter cameraPreviewCallbackAdapter = (CameraPreviewCallbackAdapter) cameraRequestTag.mCallback;
            if (getPreviewImageCallbackHandler() != null) {
                getPreviewImageCallbackHandler().post(new Runnable() { // from class:
                                                                       // com.oplus.ocs.camera.consumer.ConsumerImpl.6
                    @Override // java.lang.Runnable
                    public void run() {
                        CameraPreviewCallbackAdapter cameraPreviewCallbackAdapter2 = cameraPreviewCallbackAdapter;
                        if (cameraPreviewCallbackAdapter2 != null) {
                            cameraPreviewCallbackAdapter2.onPreviewReceived(build);
                        }
                    }
                });
            } else if (cameraPreviewCallbackAdapter != null) {
                cameraPreviewCallbackAdapter.onPreviewReceived(build);
            }
        }
        this.mPreviewReceivedWorkHandler.post(new Runnable() { // from class:
                                                               // com.oplus.ocs.camera.consumer.ConsumerImpl$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                ConsumerImpl.this.m5x8c39f4ed(isNeedApsProcessor, apsTotalResult, cameraRequestTag, apsResult,
                        currentRequest);
            }
        });
        CameraUnitLog.traceEndSection("onPreviewDataReceived");
        if (apsResult.mPreviewErrorCode != null) {
            StatisticsManager.getInstance().setApsErrorCode(apsResult.mPreviewErrorCode);
        } else if (apsResult.mCaptureErrorCode != null) {
            StatisticsManager.getInstance().setApsErrorCode(apsResult.mCaptureErrorCode);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /*
     * renamed from:
     * lambda$onPreviewReceived$1$com-oplus-ocs-camera-consumer-ConsumerImpl reason:
     * not valid java name
     */
    public /* synthetic */ void m5x8c39f4ed(boolean z, ApsTotalResult apsTotalResult, CameraRequestTag cameraRequestTag,
            ApsResult apsResult, CaptureRequest captureRequest) {
        Integer num = null;
        if (z) {
            this.mPreviewAdapter.notifyMetadataReceived(apsTotalResult);
            Integer num2 = (Integer) apsTotalResult.get(ApsTotalResult.APS_BOKEN_STATE);
            if (num2 != null) {
                this.mResultSet.put("BOKEH_STATE", num2);
            }
            if (!isNeedPreviewMeta(null) || this.mPreviewAdapter.getAppCallback() == null) {
                if (!this.mbFirstPreviewReceived) {
                    StringBuilder sb = new StringBuilder();
                    sb.append("onPreviewReceived, isNeedPreviewMeta(): ");
                    sb.append(isNeedPreviewMeta(null));
                    sb.append(", appCallback is null: ");
                    sb.append(this.mPreviewAdapter.getAppCallback() != null);
                    CameraUnitLog.d(TAG, sb.toString());
                }
            } else if (cameraRequestTag != null) {
                if (!this.mbFirstPreviewMetaReceived) {
                    CameraUnitLog
                            .traceBeginSection("CameraUnit.CameraStartupPerformance.receivedFirstPreviewMetaFromAPS");
                    this.mbFirstPreviewMetaReceived = true;
                    CameraUnitLog
                            .traceEndSection("CameraUnit.CameraStartupPerformance.receivedFirstPreviewMetaFromAPS");
                    StatisticsManager.getInstance().cancelDelayProcessMsg(3);
                }
                notifyPreviewResult(cameraRequestTag.mUserCallbackHandler,
                        (CameraPreviewCallbackAdapter) cameraRequestTag.mCallback, captureRequest,
                        new CameraPreviewCallbackAdapter.PreviewResult.Builder()
                                .setCaptureResult(apsTotalResult.getTotalResult())
                                .setApsDecisionResult(apsResult.mDecisionResult != null ? apsResult.mDecisionResult
                                        : this.mPreviewDecisionResult)
                                .setApsTotalResult(apsTotalResult)
                                .set(ApsOtherParameter.KEY_CAMERA_RESULT_CAMERA_MODE, cameraRequestTag.mCaptureMode)
                                .build());
            }
            this.mPreviewAdapter.setCurrentRequestDone(captureRequest);
            if (TextUtils.equals("0", this.mApsTag.mPreviewCallbackType)) {
                if (cameraRequestTag == null || cameraRequestTag.mCallback == null) {
                    CameraUnitLog.e(TAG, "onPreviewReceived, tag: " + cameraRequestTag);
                    return;
                } else if (!this.mbFirstPreviewReceived) {
                    CameraUnitLog.traceBeginSection("CameraUnit.CameraStartupPerformance.receivedFirstFrameFromAPS");
                    this.mbFirstPreviewReceived = true;
                    CameraUnitLog.traceEndSection("CameraUnit.CameraStartupPerformance.receivedFirstFrameFromAPS");
                    CameraUnitLog.d(TAG, "onPreviewReceived, first preview frame arrived");
                }
            }
        }
        if (this.mProducerInterface.isAiEnhancementVideoOpen()) {
            try {
                num = (Integer) apsTotalResult.getTotalResult().get(CameraCharacteristicsWrapper.KEY_AI_SCN_DATA_VIDEO);
            } catch (Exception e) {
                e.printStackTrace();
            }
            if (num == null) {
                return;
            }
            boolean z2 = this.mRecordingState == 1;
            boolean z3 = !this.mIsRecording && z2;
            this.mIsRecording = z2;
            if (z3) {
                this.mAiEnhanceSceneChangeCount = 0;
                this.mAiEnhanceSceneStart = num.intValue();
            }
            if (this.mIsRecording) {
                this.mAiEnhanceSceneEnd = num.intValue();
            }
            if (num.intValue() == this.mAllmightyLastScene) {
                return;
            }
            if (!z3) {
                this.mAiEnhanceSceneChangeCount++;
            }
            this.mAllmightyLastScene = num.intValue();
        }
    }

    @Override // com.oplus.ocs.camera.consumer.ApsProcessorContract.IConsumer
    public void onVideoReceived(ApsResult apsResult) {
        if (isNeedApsProcessor()) {
            CameraRequestTag cameraRequestTag = (CameraRequestTag) this.mPreviewAdapter.getCurrentRequest().getTag();
            if (cameraRequestTag == null || cameraRequestTag.mCallback == null) {
                CameraUnitLog.e(TAG, "onVideoReceived, tag: " + cameraRequestTag);
                return;
            }
            ((CameraPreviewCallbackAdapter) cameraRequestTag.mCallback).onVideoReceived(
                    new CameraPreviewCallbackAdapter.PreviewResult.Builder().setApsResult(apsResult).build());
        }
    }

    @Override // com.oplus.ocs.camera.consumer.ApsProcessorContract.IConsumer
    public void onFinishAddFrame(ImageCategory.ImageItemInfo imageItemInfo, ImageCategory.MetaItemInfo metaItemInfo,
            CameraRequestTag cameraRequestTag) {
        CameraUnitLog.e(TAG, "onFinishAddFrame");
        CameraUnitLog.traceBegin("CameraUnit.onFinishAddFrame");
        if (isNeedApsProcessor()) {
            this.mProducerInterface.onFinishAddFrame();
        }
        CameraUnitLog.traceEnd("CameraUnit.onFinishAddFrame");
        if (imageItemInfo != null && metaItemInfo != null) {
            this.mPictureAdapter.onFinishAddFrame(imageItemInfo, metaItemInfo);
        }
        if (metaItemInfo == null) {
            this.mProducerInterface.setApsFinishProcessFrame(true);
        }
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
        ApsRequestTag apsRequestTag;
        if (cameraRequestTag == null || (apsRequestTag = this.mApsTag) == null
                || !"video_mode".equals(apsRequestTag.mModeName) || cameraRequestTag.mHyperLapseRate == 0) {
            return false;
        }
        return cameraRequestTag.mbSuperEisOn;
    }

    private boolean isPreviewImageNeedApsProcessor() {
        ApsRequestTag apsRequestTag;
        ApsRequestTag apsRequestTag2 = this.mApsTag;
        if (apsRequestTag2 == null || !apsRequestTag2.mbNeedSendVideoSnapShotImage) {
            return isNeedApsProcessor() && (apsRequestTag = this.mApsTag) != null
                    && apsRequestTag.mbPreviewProcessByAps;
        }
        this.mApsTag.mbNeedSendVideoSnapShotImage = false;
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isNeedApsProcessor() {
        return this.mProducerInterface != null
                ? AlgoSwitchConfig.getApsMode() != 0 && this.mProducerInterface.needApsProcessor()
                : AlgoSwitchConfig.getApsMode() != 0;
    }

    private boolean isNeedPictureMeta() {
        ApsRequestTag apsRequestTag;
        return (!isNeedApsProcessor() || (apsRequestTag = this.mApsTag) == null
                || "sticker_mode".equals(apsRequestTag.mModeName)) ? false : true;
    }

    private boolean isNeedPreviewMeta(CaptureResult captureResult) {
        ProducerConsumerInterfaceContract.ProducerInterface producerInterface;
        ApsRequestTag apsRequestTag;
        ApsRequestTag apsRequestTag2 = this.mApsTag;
        if (apsRequestTag2 == null || !apsRequestTag2.mbNeedSendVideoSnapShotMeta) {
            return isNeedApsProcessor() && (producerInterface = this.mProducerInterface) != null
                    && producerInterface.needApsProcessor() && (apsRequestTag = this.mApsTag) != null
                    && !"slowvideo_mode".equals(apsRequestTag.mModeName) && this.mApsTag.mbPreviewProcessByAps;
        } else if (isOverheatSkipFrame(captureResult)) {
            return false;
        } else {
            this.mApsTag.mbNeedSendVideoSnapShotMeta = false;
            return true;
        }
    }

    private boolean isOverheatSkipFrame(CaptureResult captureResult) {
        if ("1".equals(CameraConfigHelper.getConfigValue(DefaultUtill.KEY_THERMAL_PAUSE_VIDEO_PREVIEW_SUPPORT))
                && captureResult != null) {
            try {
                if (captureResult.get(ApsCameraMetadataKey.KEY_VIDEO_OVERHEAT_SKIP_FRAME) != null) {
                    return 1 == ((Integer) captureResult.get(ApsCameraMetadataKey.KEY_VIDEO_OVERHEAT_SKIP_FRAME))
                            .intValue();
                }
                return false;
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return false;
    }

    private void pictureProcess(final SurfaceKey surfaceKey, @NonNull final CameraRequestTag cameraRequestTag) {
        final ImageReader imageReader = SurfacePool.getInstance().getImageReader(surfaceKey);
        if (imageReader != null) {
            imageReader.setOnImageAvailableListener(new ImageReader.OnImageAvailableListener() { // from class:
                                                                                                 // com.oplus.ocs.camera.consumer.ConsumerImpl$$ExternalSyntheticLambda3
                @Override // android.media.ImageReader.OnImageAvailableListener
                public final void onImageAvailable(ImageReader imageReader2) {
                    ConsumerImpl.this.m7xee08042b(imageReader, surfaceKey, cameraRequestTag, imageReader2);
                }
            }, this.mCaptureImageHandler);
        }
        this.mProcessorContract
                .capture(CameraRequestTag.RequestMode.CAPTURE_REPROCESS.equals(cameraRequestTag.getRequestMode()));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /*
     * JADX WARN: Can't fix incorrect switch cases order, some code will duplicate
     */
    /*
     * JADX WARN: Code restructure failed: missing block: B:121:0x018d, code lost:
     * if (com.oplus.ocs.camera.common.util.CameraConstant.CameraType.
     * REAR_MONO_CAMERA_1.equals(r21.getCameraType()) == false) goto L55;
     */
    /*
     * JADX WARN: Code restructure failed: missing block: B:29:0x0070, code lost:
     * if (r1 != 4) goto L15;
     */
    /*
     * JADX WARN: Removed duplicated region for block: B:127:0x0199 A[Catch:
     * IllegalStateException -> 0x01eb, TRY_LEAVE, TryCatch #0
     * {IllegalStateException -> 0x01eb, blocks: (B:3:0x0009, B:6:0x0032,
     * B:7:0x003a, B:127:0x0199, B:33:0x007c, B:35:0x0080, B:37:0x0084, B:9:0x003e,
     * B:12:0x0046, B:15:0x004f, B:18:0x0057, B:21:0x005f, B:40:0x008d, B:44:0x0099,
     * B:69:0x00e1, B:71:0x00e6, B:77:0x00f2, B:90:0x0124, B:92:0x0128, B:96:0x0130,
     * B:98:0x013a, B:80:0x0101, B:82:0x0109, B:84:0x010d, B:87:0x0119,
     * B:103:0x0143, B:106:0x014e, B:109:0x0159, B:112:0x0164, B:115:0x016f,
     * B:118:0x017b, B:120:0x0185, B:47:0x00a3, B:50:0x00ad, B:53:0x00b5,
     * B:56:0x00bd, B:59:0x00c6, B:62:0x00d0, B:65:0x00d8), top: B:132:0x0009 }]
     */
    /*
     * JADX WARN: Removed duplicated region for block: B:134:? A[RETURN, SYNTHETIC]
     */
    /*
     * renamed from:
     * lambda$pictureProcess$2$com-oplus-ocs-camera-consumer-ConsumerImpl reason:
     * not valid java name
     */
    /*
     * Code decompiled incorrectly, please refer to instructions dump.
     * To view partially-correct add '--show-bad-code' argument
     */
    public /* synthetic */ void m7xee08042b(ImageReader imageReader, SurfaceKey surfaceKey,
            CameraRequestTag cameraRequestTag, ImageReader imageReader2) {
        CameraUnitLog.d(TAG, "pictureProcess, PICTURE onImageAvailable");
        try {
            Image image = imageReader2.acquireNextImage();
            Util.dealWithImageOverflow(imageReader, imageReader.getMaxImages());
            int role = 0;
            if (PlatformUtil.isQualcommPlatform()) {
                String cameraType = surfaceKey.getCameraType();
                switch (cameraType) {
                    case "rear_wide":
                        if ("rear_sat".equals(cameraRequestTag.mCameraType)
                                || "rear_portrait".equals(cameraRequestTag.mCameraType)
                                || "rear_second_portrait".equals(cameraRequestTag.mCameraType)) {
                            role = 2;
                        } else {
                            role = 0;
                        }
                        break;
                    case "rear_mono_1":
                    case "rear_mono_2":
                        role = 2;
                        break;
                    case "rear_tele":
                        role = 3;
                        break;
                    case "front_main":
                        role = 1;
                        break;
                    default:
                        role = 0;
                }
            } else {
                String cameraType = cameraRequestTag.mCameraType;
                switch (cameraType) {
                    case "front_main":
                        role = 1;
                        break;
                    case "front_wide":
                        role = 5;
                        break;
                    case "rear_portrait":
                        role = 2;
                        break;
                    case "rear_second_portrait":
                        role = 3;
                        break;
                    case "front_dual":
                        role = 1;
                        break;
                    case "rear_portrait_mono_1":
                    case "rear_portrait_mono_2":
                        role = 2;
                        break;
                    case "rear_sat":
                        int masterPipeline = cameraRequestTag.mMasterPipeline;
                        if (masterPipeline == 0) {
                            role = 2;
                        } else if (masterPipeline == 2) {
                            role = 3;
                        } else {
                            role = 0;
                        }
                        String surfaceCameraType = surfaceKey.getCameraType();
                        if ("rear_main".equals(surfaceCameraType)) {
                            role = 0;
                        } else if ("rear_sat".equals(cameraRequestTag.mCameraType)
                                && 2 == cameraRequestTag.mSupportCaptureZoomFeature) {
                            if ("rear_wide".equals(surfaceCameraType)) {
                                role = 2;
                            } else if ("rear_tele".equals(surfaceCameraType)) {
                                role = 3;
                            }
                        }
                        if (cameraRequestTag.mbPortraitFullBody || cameraRequestTag.mbPortraitHalfBody) {
                            if ("rear_wide".equals(surfaceCameraType)) {
                                role = cameraRequestTag.mbPortraitFullBody ? 2 : 3;
                            }
                        }
                        break;
                    default:
                        role = 0;
                }
            }
            if (image != null) {
                CameraUnitLog.e(TAG,
                        "pictureProcess, role: " + role + ", format: " + image.getFormat() + ", timestamp: "
                                + image.getTimestamp() + ", size: " + image.getWidth() + "x" + image.getHeight());
                onHalPictureImageArrived(imageReader2, image, role, cameraRequestTag, surfaceKey.getUsage());
            }
        } catch (IllegalStateException e) {
            CameraUnitLog.e(TAG, "pictureProcess", e);
        }
    }

    private void tuningDataProcess(final SurfaceKey surfaceKey, @NonNull final CameraRequestTag cameraRequestTag) {
        ImageReader imageReader = SurfacePool.getInstance().getImageReader(surfaceKey);
        if (imageReader != null) {
            imageReader.setOnImageAvailableListener(new ImageReader.OnImageAvailableListener() { // from class:
                                                                                                 // com.oplus.ocs.camera.consumer.ConsumerImpl.7
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
                        ApsResult.ImageBuffer imageBuffer = new ApsResult.ImageBuffer(imageReader2, image,
                                Util.getHardwareBuffer(image), image.getTimestamp());
                        CameraUnitLog.d(ConsumerImpl.TAG, "tuningDataProcess, format: " + image.getFormat()
                                + ", timestamp: " + image.getTimestamp() + ", size: " + image.getWidth() + "x"
                                + image.getHeight() + "surfaceKey.getCameraType： " + surfaceKey.getCameraType()
                                + ", tag.mCameraType：" + cameraRequestTag.mCameraType + ", mSupportCaptureZoomFeature "
                                + cameraRequestTag.mSupportCaptureZoomFeature);
                        ImageCategory.TuningItemInfo tuningItemInfo = new ImageCategory.TuningItemInfo();
                        tuningItemInfo.mTuningBuffer = imageBuffer;
                        if ("rear_wide".equals(surfaceKey.getCameraType())) {
                            if (36 == cameraRequestTag.mApsDecisionSceneMode
                                    || 35 == cameraRequestTag.mApsDecisionSceneMode
                                    || 37 == cameraRequestTag.mApsDecisionSceneMode
                                    || 38 == cameraRequestTag.mApsDecisionSceneMode) {
                                tuningItemInfo.setParameter(ParameterKeys.KEY_IMAGE_ROLE, 6);
                            } else if ("rear_sat".equals(cameraRequestTag.mCameraType)
                                    && (48 == cameraRequestTag.mApsDecisionFeatureType
                                            || 49 == cameraRequestTag.mApsDecisionFeatureType
                                            || 2 == cameraRequestTag.mSupportCaptureZoomFeature
                                            || 50 == cameraRequestTag.mApsDecisionFeatureType)) {
                                tuningItemInfo.setParameter(ParameterKeys.KEY_IMAGE_ROLE, 6);
                            } else {
                                tuningItemInfo.setParameter(ParameterKeys.KEY_IMAGE_ROLE, 4);
                            }
                        } else if ("rear_tele".equals(surfaceKey.getCameraType())) {
                            if ("rear_sat".equals(cameraRequestTag.mCameraType)
                                    && 2 == cameraRequestTag.mSupportCaptureZoomFeature) {
                                tuningItemInfo.setParameter(ParameterKeys.KEY_IMAGE_ROLE, 7);
                            } else {
                                tuningItemInfo.setParameter(ParameterKeys.KEY_IMAGE_ROLE, 4);
                            }
                        } else {
                            tuningItemInfo.setParameter(ParameterKeys.KEY_IMAGE_ROLE, 4);
                        }
                        tuningItemInfo.setParameter(ParameterKeys.KEY_TIME_STAMP,
                                Long.valueOf(imageBuffer.getTimestamp()));
                        Size size = new Size(imageBuffer.getHardwareBuffer().getWidth(),
                                imageBuffer.getHardwareBuffer().getHeight());
                        Size tuningDataSurfaceSize = CameraCharacteristicsHelper
                                .getTuningDataSurfaceSize(cameraRequestTag.mCameraType, "tuning_data_raw");
                        if (PlatformUtil.isMtkPlatform()) {
                            boolean equals = "surface_key_tuning_raw".equals(surfaceKey.getUsage());
                            tuningItemInfo.setParameter(ParameterKeys.KEY_TUNING_SURFACE_USAGE, surfaceKey.getUsage());
                            if (cameraRequestTag.mbDecisionRequestMixedFormat && !cameraRequestTag.mbBurstShot
                                    && !CameraCharacteristicsHelper.isFrontCamera(cameraRequestTag.mCameraId)
                                    && 4 == cameraRequestTag.mApsDecisionFeatureType
                                    && 3 == cameraRequestTag.mRequestNum) {
                                CameraUnitLog.d(ConsumerImpl.TAG,
                                        "tuningDataProcess, raw sync process: " + equals + ", buffer size: " + size
                                                + ", tuningRawSurfaceSize: " + tuningDataSurfaceSize);
                                tuningItemInfo.setParameter(ParameterKeys.KEY_RAW_SYNC_PROCESS_FLAG,
                                        Boolean.valueOf(equals));
                            }
                            if (equals) {
                                CameraUnitLog.d(ConsumerImpl.TAG,
                                        "tuningDataProcess, set raw format hint: " + cameraRequestTag.mRawFormatHint);
                                tuningItemInfo.setParameter(ParameterKeys.KEY_IMAGE_FORMAT_HINT,
                                        Integer.valueOf(cameraRequestTag.mRawFormatHint));
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
        Image image2 = this.mRawImage;
        if (image2 != null) {
            image2.close();
            this.mRawImage = null;
        }
        int i = this.mRequestRawNumber - 1;
        this.mRequestRawNumber = i;
        if (i != 0) {
            image.close();
        } else {
            this.mRawImage = image;
        }
    }

    private void processRawImage(CameraRequestTag cameraRequestTag) {
        CaptureResult captureResult;
        Image image = this.mRawImage;
        if (image == null || (captureResult = this.mRawCaptureResult) == null) {
            return;
        }
        this.mPictureAdapter
                .onImageReceived(Util.buildRawImage(cameraRequestTag, image, captureResult, this.mCaptureDate));
        Image image2 = this.mRawImage;
        if (image2 != null) {
            image2.close();
            this.mRawImage = null;
        }
        this.mRawCaptureResult = null;
    }

    @Override // com.oplus.ocs.camera.ProducerConsumerInterfaceContract.ConsumerInterface
    public boolean checkRuntimeState(long j, long j2) {
        return this.mProcessorContract.checkRuntimeState(j, j2);
    }

    @Override // com.oplus.ocs.camera.ProducerConsumerInterfaceContract.ConsumerInterface
    public long getRuntimeMemorySize(long j) {
        return this.mProcessorContract.getRuntimeMemorySize(j);
    }

    @Override // com.oplus.ocs.camera.ProducerConsumerInterfaceContract.ConsumerInterface
    public int getCurrentSensorMode() {
        return this.mCurrentSensorMode;
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
    public boolean notifyLastCaptureFrame(ImageCategory.ImageItemInfo imageItemInfo,
            ImageCategory.MetaItemInfo metaItemInfo) {
        return this.mProcessorContract.notifyLastCaptureFrame(imageItemInfo, metaItemInfo);
    }

    @Override // com.oplus.ocs.camera.ProducerConsumerInterfaceContract.ConsumerInterface
    public void startCapture(CameraRequestTag cameraRequestTag) {
        if (!isNeedPictureMeta()) {
            CameraUnitLog.i(TAG, "not need aps deal");
        } else if (!AlgoSwitchConfig.isUseApsDecision()) {
            CameraUnitLog.e(TAG, "not aps 5.0");
        } else {
            cameraRequestTag.mbIsDetectFace = this.mbIsDetectFace;
            this.mProcessorContract.startCapture(cameraRequestTag);
        }
    }

    @Override // com.oplus.ocs.camera.ProducerConsumerInterfaceContract.ConsumerInterface
    public void beforeCapture(ImageCategory.MetaItemInfo metaItemInfo) {
        this.mProcessorContract.beforeCapture(metaItemInfo);
    }

    @Override // com.oplus.ocs.camera.ProducerConsumerInterfaceContract.ConsumerInterface
    public boolean isApsCaptureAlgoInitializing() {
        return this.mProcessorContract.isApsCaptureAlgoInitializing();
    }

    @Override // com.oplus.ocs.camera.ProducerConsumerInterfaceContract.ConsumerInterface
    public boolean isPreviewProcessByAps() {
        return isPreviewImageNeedApsProcessor();
    }

    @Override // com.oplus.ocs.camera.ProducerConsumerInterfaceContract.ConsumerInterface
    public int abortCaptures() {
        return this.mProcessorContract.abortCaptures();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class InnerCameraPictureCallbackAdapter extends CameraPictureCallbackAdapter {
        private int innerShutterIndex;
        private Handler mCallbackHandler;
        private CameraPictureCallbackAdapter mCameraPictureCallbackAdapter;
        private CaptureRequest mCaptureRequest;
        private TotalCaptureResult mTotalCaptureResult;

        private InnerCameraPictureCallbackAdapter() {
            this.mCallbackHandler = null;
            this.mCameraPictureCallbackAdapter = null;
            this.mCaptureRequest = null;
            this.mTotalCaptureResult = null;
            this.innerShutterIndex = -1;
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
        public void onCaptureStarted(final CaptureRequest captureRequest, final long j, final int i) {
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
                    ConsumerImpl.this.mRawCompleteCount = 0;
                }
            }
            if (this.mCallbackHandler == null || this.mCameraPictureCallbackAdapter == null) {
                return;
            }
            if ((ConsumerImpl.this.isFirstFrame() || Util.isSystemCamera()) && !ConsumerImpl.this.mbIsReprocessMode) {
                boolean isFirstFrame = ConsumerImpl.this.isFirstFrame();
                if (isFirstFrame) {
                    this.innerShutterIndex = 0;
                } else {
                    this.innerShutterIndex++;
                }
                if (cameraRequestTag == null || !cameraRequestTag.mbBurstShot || isFirstFrame) {
                    final int i2 = this.innerShutterIndex;
                    CameraUnitLog.v(ConsumerImpl.TAG,
                            "onCaptureStarted, timestamp: " + j + ", idx: " + i2 + ", frameNumber: " + i);
                    this.mCallbackHandler.post(new Runnable() { // from class:
                                                                // com.oplus.ocs.camera.consumer.ConsumerImpl.InnerCameraPictureCallbackAdapter.1
                        @Override // java.lang.Runnable
                        public void run() {
                            InnerCameraPictureCallbackAdapter.this.mCameraPictureCallbackAdapter
                                    .onCaptureStarted(captureRequest, j, i2, i);
                            InnerCameraPictureCallbackAdapter.this.mCameraPictureCallbackAdapter
                                    .onCaptureStarted(captureRequest, j);
                        }
                    });
                }
            }
        }

        @Override // com.oplus.ocs.camera.appinterface.CameraPictureCallbackAdapter
        public void onPictureCaptureProgressed(@NonNull final CaptureRequest captureRequest,
                @NonNull final CameraPictureCallbackAdapter.PictureResult pictureResult) {
            Handler handler = this.mCallbackHandler;
            if (handler == null || this.mCameraPictureCallbackAdapter == null) {
                return;
            }
            handler.post(new Runnable() { // from class:
                                          // com.oplus.ocs.camera.consumer.ConsumerImpl.InnerCameraPictureCallbackAdapter.2
                @Override // java.lang.Runnable
                public void run() {
                    InnerCameraPictureCallbackAdapter.this.mCameraPictureCallbackAdapter
                            .onPictureCaptureProgressed(captureRequest, pictureResult);
                }
            });
        }

        @Override // com.oplus.ocs.camera.appinterface.CameraPictureCallbackAdapter
        public void onCaptureCompleted(CaptureRequest captureRequest,
                CameraPictureCallbackAdapter.PictureResult pictureResult) {
            super.onCaptureCompleted(captureRequest, pictureResult);
            this.mCaptureRequest = captureRequest;
            CameraPictureCallbackAdapter cameraPictureCallbackAdapter = this.mCameraPictureCallbackAdapter;
            if (cameraPictureCallbackAdapter != null) {
                cameraPictureCallbackAdapter.onCaptureCompleted(captureRequest, pictureResult);
            } else {
                CameraUnitLog.e(ConsumerImpl.TAG, "onCaptureCompleted, mCameraPictureCallbackAdapter is null");
            }
            ConsumerImpl.this.mProducerInterface.onCaptureCompleted();
        }

        @Override // com.oplus.ocs.camera.appinterface.CameraPictureCallbackAdapter
        public void onCaptureCompleted(@NonNull final CaptureRequest captureRequest,
                @NonNull final TotalCaptureResult totalCaptureResult, String str) {
            super.onCaptureCompleted(captureRequest, totalCaptureResult, str);
            CameraUnitLog.d(ConsumerImpl.TAG, "onCaptureCompleted, TotalCaptureResult.UpscaleInputSize: "
                    + Arrays.toString((int[]) totalCaptureResult.get(ApsCameraMetadataKey.KEY_UPSCALE_INPUT_SIZE))
                    + " TotalCaptureResult.UpscaleOutputSize: "
                    + Arrays.toString((int[]) totalCaptureResult.get(ApsCameraMetadataKey.KEY_UPSCALE_OUTPUT_SIZE)));
            ConsumerImpl.this.onPictureMetaArrived(captureRequest, totalCaptureResult);
            ConsumerImpl.this.onPreviewMetaArrived(captureRequest, totalCaptureResult, str);
            final CameraRequestTag cameraRequestTag = (CameraRequestTag) captureRequest.getTag();
            if (this.mCallbackHandler != null && this.mCameraPictureCallbackAdapter != null
                    && captureRequest.hashCode() == ConsumerImpl.this.getFirstFrameHashCode()) {
                this.mCallbackHandler.post(new Runnable() { // from class:
                                                            // com.oplus.ocs.camera.consumer.ConsumerImpl.InnerCameraPictureCallbackAdapter.3
                    @Override // java.lang.Runnable
                    public void run() {
                        CameraPictureCallbackAdapter.PictureResult.Builder builder = new CameraPictureCallbackAdapter.PictureResult.Builder()
                                .set(ApsOtherParameter.KEY_CAPTURE_NIGHT_TOTAL_EXPTIME,
                                        Long.valueOf(ConsumerImpl.this.getNightCaptureTotalTime()))
                                .set(ApsOtherParameter.KEY_CAPTURE_FIRST_EXPOSURE_TIME,
                                        Long.valueOf(ConsumerImpl.this.getFirstExposureTime()));
                        if (cameraRequestTag != null) {
                            builder.set(ApsOtherParameter.KEY_REQUEST_TAG, cameraRequestTag.mAppOpaqueObj);
                        }
                        builder.setCaptureResult(totalCaptureResult);
                        InnerCameraPictureCallbackAdapter.this.mCameraPictureCallbackAdapter
                                .onCaptureFirstFrameArrived(captureRequest, builder.build());
                    }
                });
            }
            this.mCaptureRequest = captureRequest;
            this.mTotalCaptureResult = totalCaptureResult;
        }

        @Override // com.oplus.ocs.camera.appinterface.CameraPictureCallbackAdapter
        public void onCaptureFailed(final CaptureRequest captureRequest,
                final CameraPictureCallbackAdapter.PictureResult pictureResult) {
            super.onCaptureFailed(captureRequest, pictureResult);
            if (!ConsumerImpl.this.isApsFinishAddFrame()) {
                ConsumerImpl.this.onCaptureFailed(captureRequest);
                Handler handler = this.mCallbackHandler;
                if (handler == null || this.mCameraPictureCallbackAdapter == null) {
                    return;
                }
                handler.post(new Runnable() { // from class:
                                              // com.oplus.ocs.camera.consumer.ConsumerImpl.InnerCameraPictureCallbackAdapter.4
                    @Override // java.lang.Runnable
                    public void run() {
                        InnerCameraPictureCallbackAdapter.this.mCameraPictureCallbackAdapter
                                .onCaptureFailed(captureRequest, pictureResult);
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
            Handler handler = this.mCallbackHandler;
            if (handler == null || this.mCameraPictureCallbackAdapter == null) {
                return;
            }
            handler.post(new Runnable() { // from class:
                                          // com.oplus.ocs.camera.consumer.ConsumerImpl.InnerCameraPictureCallbackAdapter.5
                @Override // java.lang.Runnable
                public void run() {
                    if (captureRequest != null) {
                        CameraPictureCallbackAdapter.PictureResult.Builder captureResult = new CameraPictureCallbackAdapter.PictureResult.Builder()
                                .setCaptureResult(totalCaptureResult);
                        ApsResult apsResult2 = apsResult;
                        if (apsResult2 != null) {
                            captureResult.setApsResult(apsResult2);
                        }
                        captureResult.set(ApsOtherParameter.KEY_REQUEST_TAG,
                                ((CameraRequestTag) captureRequest.getTag()).mAppOpaqueObj);
                        InnerCameraPictureCallbackAdapter.this.mCameraPictureCallbackAdapter
                                .onCaptureCompleted(captureRequest, captureResult.build());
                    }
                    InnerCameraPictureCallbackAdapter.this.mCameraPictureCallbackAdapter.onImageReceived(cameraImage);
                }
            });
        }

        @Override // com.oplus.ocs.camera.appinterface.CameraPictureCallbackAdapter
        public void onPictureCaptureSequenceCompleted(int i, long j) {
            super.onPictureCaptureSequenceCompleted(i, j);
            CameraPictureCallbackAdapter cameraPictureCallbackAdapter = this.mCameraPictureCallbackAdapter;
            if (cameraPictureCallbackAdapter != null) {
                cameraPictureCallbackAdapter.onPictureCaptureSequenceCompleted(i, j);
            }
        }

        @Override // com.oplus.ocs.camera.appinterface.CameraPictureCallbackAdapter
        public void onBurstShotStart(final long j) {
            super.onBurstShotStart(j);
            Handler handler = this.mCallbackHandler;
            if (handler == null || this.mCameraPictureCallbackAdapter == null) {
                return;
            }
            handler.post(new Runnable() { // from class:
                                          // com.oplus.ocs.camera.consumer.ConsumerImpl.InnerCameraPictureCallbackAdapter.6
                @Override // java.lang.Runnable
                public void run() {
                    InnerCameraPictureCallbackAdapter.this.mCameraPictureCallbackAdapter.onBurstShotStart(j);
                }
            });
        }

        @Override // com.oplus.ocs.camera.appinterface.CameraPictureCallbackAdapter
        public void onBurstShotEnd(final ImageCategory.ImageItemInfo imageItemInfo,
                final ImageCategory.MetaItemInfo metaItemInfo) {
            super.onBurstShotEnd(imageItemInfo, metaItemInfo);
            Handler handler = this.mCallbackHandler;
            if (handler == null || this.mCameraPictureCallbackAdapter == null) {
                return;
            }
            handler.post(new Runnable() { // from class:
                                          // com.oplus.ocs.camera.consumer.ConsumerImpl.InnerCameraPictureCallbackAdapter.7
                @Override // java.lang.Runnable
                public void run() {
                    InnerCameraPictureCallbackAdapter.this.mCameraPictureCallbackAdapter
                            .onBurstShotEnd(new CameraPictureCallbackAdapter.PictureResult.Builder()
                                    .setImageCategory(imageItemInfo, metaItemInfo).build());
                }
            });
        }

        @Override // com.oplus.ocs.camera.appinterface.CameraPictureCallbackAdapter
        public void afterProcessImage(final int i, final ImageCategory.ImageItemInfo imageItemInfo,
                final ImageCategory.MetaItemInfo metaItemInfo) {
            super.afterProcessImage(i, imageItemInfo, metaItemInfo);
            Handler handler = this.mCallbackHandler;
            if (handler == null || this.mCameraPictureCallbackAdapter == null) {
                return;
            }
            handler.post(new Runnable() { // from class:
                                          // com.oplus.ocs.camera.consumer.ConsumerImpl.InnerCameraPictureCallbackAdapter.8
                @Override // java.lang.Runnable
                public void run() {
                    InnerCameraPictureCallbackAdapter.this.mCameraPictureCallbackAdapter.afterProcessImage(i,
                            new CameraPictureCallbackAdapter.PictureResult.Builder()
                                    .setImageCategory(imageItemInfo, metaItemInfo).build());
                }
            });
        }

        @Override // com.oplus.ocs.camera.appinterface.CameraPictureCallbackAdapter
        public void fillApsParameters(int i, Map<String, String> map) {
            super.fillApsParameters(i, map);
            CameraPictureCallbackAdapter cameraPictureCallbackAdapter = this.mCameraPictureCallbackAdapter;
            if (cameraPictureCallbackAdapter != null) {
                cameraPictureCallbackAdapter.fillApsParameters(i, map);
            } else {
                CameraUnitLog.w(ConsumerImpl.TAG, "fillApsParameters, mCameraPictureCallbackAdapter is null");
            }
        }

        @Override // com.oplus.ocs.camera.appinterface.CameraPictureCallbackAdapter
        public void onFinishAddFrame(ImageCategory.ImageItemInfo imageItemInfo,
                ImageCategory.MetaItemInfo metaItemInfo) {
            CameraPictureCallbackAdapter cameraPictureCallbackAdapter = this.mCameraPictureCallbackAdapter;
            if (cameraPictureCallbackAdapter != null) {
                cameraPictureCallbackAdapter.onFinishAddFrame(new CameraPictureCallbackAdapter.PictureResult.Builder()
                        .setImageCategory(imageItemInfo, metaItemInfo).build());
            } else {
                CameraUnitLog.w(ConsumerImpl.TAG, "onFinishAddFrame, mCameraPictureCallbackAdapter is null");
            }
        }

        @Override // com.oplus.ocs.camera.appinterface.CameraPictureCallbackAdapter
        public void onFirstCaptureFrameAdd() {
            CameraPictureCallbackAdapter cameraPictureCallbackAdapter = this.mCameraPictureCallbackAdapter;
            if (cameraPictureCallbackAdapter != null) {
                cameraPictureCallbackAdapter.onFirstCaptureFrameAdd();
            } else {
                CameraUnitLog.w(ConsumerImpl.TAG, "onFirstCaptureFrameAdd, mCameraPictureCallbackAdapter is null");
            }
        }
    }

    private void notifyPreviewResult(Handler handler, final CameraPreviewCallbackAdapter cameraPreviewCallbackAdapter,
            final CaptureRequest captureRequest, final CameraPreviewCallbackAdapter.PreviewResult previewResult) {
        this.mProducerInterface.onPreviewResultReceived(handler, previewResult);
        if (handler == null || cameraPreviewCallbackAdapter == null) {
            CameraUnitLog.e(TAG, "notifyPreviewResult, params invalid, handler: " + handler + ", callback: "
                    + cameraPreviewCallbackAdapter);
            return;
        }
        synchronized (this.mRequestLock) {
            handler.post(() -> cameraPreviewCallbackAdapter.onCaptureCompleted(captureRequest, previewResult));
        }
    }

    private void initHandlerThread() {
        if (this.mPreviewImageHandler == null) {
            CameraHandlerThread cameraHandlerThread = new CameraHandlerThread("PreviewImageThread");
            cameraHandlerThread.enableUxState(CameraPerformance.UX_STATE_LEVEL);
            cameraHandlerThread.start();
            this.mPreviewImageHandler = new Handler(cameraHandlerThread.getLooper());
        }
        if (this.mPreviewFrameHandler == null) {
            HandlerThread handlerThread = new HandlerThread("PreviewFrameThread");
            handlerThread.start();
            this.mPreviewFrameHandler = new Handler(handlerThread.getLooper());
        }
        if (this.mCaptureImageHandler == null) {
            HandlerThread handlerThread2 = new HandlerThread("CaptureImageThread");
            handlerThread2.start();
            this.mCaptureImageHandler = new Handler(handlerThread2.getLooper());
        }
        if (this.mPreviewReceivedWorkHandler == null) {
            HandlerThread handlerThread3 = new HandlerThread("PreviewReceivedWorkThread");
            handlerThread3.start();
            this.mPreviewReceivedWorkHandler = new Handler(handlerThread3.getLooper());
        }
    }

    public Handler getPreviewImageCallbackHandler() {
        if ("1".equals(CameraConfigHelper.getConfigValue(DefaultUtill.KEY_APS_PREVEW_FRAME_ASYNC_CALLBACK_SUPPORT))) {
            if (this.mPreviewImageCallbackHandler == null) {
                HandlerThread handlerThread = new HandlerThread("PreviewImageCallbackHandlerThread");
                handlerThread.start();
                this.mPreviewImageCallbackHandler = new Handler(handlerThread.getLooper());
            }
            return this.mPreviewImageCallbackHandler;
        }
        return null;
    }
}

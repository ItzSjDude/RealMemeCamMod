package com.oplus.ocs.camera.consumer.apsAdapter.adapter;

import android.graphics.Bitmap;
import android.graphics.Rect;
import android.hardware.HardwareBuffer;
import android.hardware.camera2.CaptureResult;
import android.os.ConditionVariable;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.ArrayMap;
import android.view.Surface;
import com.oplus.ocs.camera.common.util.CameraHandlerThread;
import com.oplus.ocs.camera.consumer.apsAdapter.APSClient;
import com.oplus.ocs.camera.consumer.apsAdapter.ApsAdapterLog;
import com.oplus.ocs.camera.consumer.apsAdapter.ApsCameraRequestTag;
import com.oplus.ocs.camera.consumer.apsAdapter.adapter.ApsAdapterDecision;
import com.oplus.ocs.camera.consumer.apsAdapter.adapter.ApsAdapterInterface;
import com.oplus.ocs.camera.consumer.apsAdapter.adapter.ImageCategory;
import com.oplus.ocs.camera.consumer.apsAdapter.algorithm.ApsInterface;
import com.oplus.ocs.camera.consumer.apsAdapter.algorithm.CaptureApsImpl;
import com.oplus.ocs.camera.consumer.apsAdapter.algorithm.FullApsImpl;
import com.oplus.ocs.camera.consumer.apsAdapter.algorithm.NoneApsImpl;
import com.oplus.ocs.camera.consumer.apsAdapter.algorithm.PreviewApsImpl;
import com.oplus.ocs.camera.consumer.apsAdapter.config.AlgoSwitchConfig;
import com.oplus.ocs.camera.consumer.apsAdapter.service.ApsAdapterListener;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes.dex */
public class ApsAdapterImpl implements ApsAdapterInterface, ApsInterface.ApsListener {
    private static final long APS_INIT_TIME_OUT_MS = 5000;
    private static final boolean DEBUG = false;
    private static final int HEIC_FORMAT_10_BITS = 2141391882;
    private static final int IMAGE_FORMAT_YCBCR_P010 = 54;
    public static final int MSG_APS_ADD_FRAME = 3;
    public static final int MSG_APS_CONNECT = 1;
    public static final int MSG_APS_DISCONNECT = 2;
    public static final int MSG_APS_START_CAPTURE = 4;
    private static final String TAG = "ApsAdapterImpl";
    private ApsAdapterInterface.ImageProcessListener mImageListener;
    private final ConditionVariable mInitSig = new ConditionVariable();
    private ImageProcessHandler mImageProcessHandler = null;
    private ApsInterface mApsInterface = null;
    private ApsCaptureAdapterImpl mCaptureImpl = null;
    private ApsPreviewAdapterImpl mPreviewImpl = null;
    private ApsVideoAdapterImpl mVideoImpl = null;
    private final AtomicBoolean mbIsApsCaptureAlgoIniting = new AtomicBoolean(true);
    private final ConditionVariable mApsCaptureAlgoInitSig = new ConditionVariable();

    public ApsAdapterImpl(ApsAdapterInterface.ImageProcessListener imageProcessListener) {
        this.mImageListener = null;
        this.mImageListener = imageProcessListener;
        createImageProcessThread();
    }

    private void createImageProcessThread() {
        CameraHandlerThread cameraHandlerThread = null;
        if (this.mImageProcessHandler == null) {
            CameraHandlerThread cameraHandlerThread2 = new CameraHandlerThread("ImageProcessThread");
            cameraHandlerThread2.enableUxState();
            cameraHandlerThread2.start();
            this.mImageProcessHandler = new ImageProcessHandler(cameraHandlerThread2.getLooper());
            cameraHandlerThread = cameraHandlerThread2;
        }
        StringBuilder sb = new StringBuilder();
        sb.append("createProcessThread, thread id: ");
        sb.append(cameraHandlerThread == null ? 0 : cameraHandlerThread.getThreadId());
        ApsAdapterLog.v(TAG, sb.toString());
    }

    @Override // com.oplus.ocs.camera.consumer.apsAdapter.adapter.ApsAdapterInterface
    public void connectAps(String str) {
        ApsAdapterLog.v(TAG, "connectAps");
        ImageProcessHandler imageProcessHandler = this.mImageProcessHandler;
        if (imageProcessHandler != null) {
            imageProcessHandler.obtainMessage(1, str).sendToTarget();
        }
    }

    @Override // com.oplus.ocs.camera.consumer.apsAdapter.adapter.ApsAdapterInterface
    public void startCapture(ImageCategory.MetaItemInfo metaItemInfo) {
        ApsCaptureAdapterImpl apsCaptureAdapterImpl = this.mCaptureImpl;
        if (apsCaptureAdapterImpl != null) {
            apsCaptureAdapterImpl.startCapture(metaItemInfo);
        }
    }

    @Override // com.oplus.ocs.camera.consumer.apsAdapter.adapter.ApsAdapterInterface
    public int abortCaptures() {
        ApsCaptureAdapterImpl apsCaptureAdapterImpl = this.mCaptureImpl;
        if (apsCaptureAdapterImpl != null) {
            return apsCaptureAdapterImpl.abortCaptures();
        }
        return -1;
    }

    @Override // com.oplus.ocs.camera.consumer.apsAdapter.adapter.ApsAdapterInterface
    public int beforeCapture(ImageCategory.MetaItemInfo metaItemInfo) {
        ApsCaptureAdapterImpl apsCaptureAdapterImpl = this.mCaptureImpl;
        if (apsCaptureAdapterImpl != null) {
            return apsCaptureAdapterImpl.beforeCapture(metaItemInfo);
        }
        return -1;
    }

    @Override // com.oplus.ocs.camera.consumer.apsAdapter.adapter.ApsAdapterInterface
    public boolean isApsCaptureAlgoInitializing() {
        return this.mbIsApsCaptureAlgoIniting.get();
    }

    @Override // com.oplus.ocs.camera.consumer.apsAdapter.adapter.ApsAdapterInterface
    public void addImage(ImageCategory.ImageItemInfo imageItemInfo) {
        ApsCaptureAdapterImpl apsCaptureAdapterImpl = this.mCaptureImpl;
        if (apsCaptureAdapterImpl != null) {
            apsCaptureAdapterImpl.addImage(imageItemInfo);
        }
    }

    @Override // com.oplus.ocs.camera.consumer.apsAdapter.adapter.ApsAdapterInterface
    public boolean notifyLastCaptureFrame(ImageCategory.ImageItemInfo imageItemInfo, ImageCategory.MetaItemInfo metaItemInfo) {
        ApsCaptureAdapterImpl apsCaptureAdapterImpl = this.mCaptureImpl;
        if (apsCaptureAdapterImpl != null) {
            return apsCaptureAdapterImpl.notifyLastCaptureFrame(imageItemInfo, metaItemInfo);
        }
        return false;
    }

    @Override // com.oplus.ocs.camera.consumer.apsAdapter.adapter.ApsAdapterInterface
    public void addPreviewImage(ImageCategory.ImageItemInfo imageItemInfo) {
        ApsPreviewAdapterImpl apsPreviewAdapterImpl = this.mPreviewImpl;
        if (apsPreviewAdapterImpl != null) {
            apsPreviewAdapterImpl.mApsServiceListener = imageItemInfo.mApsServiceListener;
        }
        ApsVideoAdapterImpl apsVideoAdapterImpl = this.mVideoImpl;
        if (apsVideoAdapterImpl != null) {
            apsVideoAdapterImpl.mApsServiceListener = imageItemInfo.mApsServiceListener;
        }
        ApsPreviewAdapterImpl apsPreviewAdapterImpl2 = this.mPreviewImpl;
        if (apsPreviewAdapterImpl2 != null) {
            apsPreviewAdapterImpl2.addImage(imageItemInfo);
        }
    }

    @Override // com.oplus.ocs.camera.consumer.apsAdapter.adapter.ApsAdapterInterface
    public void addVideoImage(ImageCategory.ImageItemInfo imageItemInfo) {
        ApsVideoAdapterImpl apsVideoAdapterImpl = this.mVideoImpl;
        if (apsVideoAdapterImpl != null) {
            apsVideoAdapterImpl.addImage(imageItemInfo);
        }
    }

    @Override // com.oplus.ocs.camera.consumer.apsAdapter.adapter.ApsAdapterInterface
    public void updateThumbnailMap(long j) {
        ApsCaptureAdapterImpl apsCaptureAdapterImpl = this.mCaptureImpl;
        if (apsCaptureAdapterImpl != null) {
            apsCaptureAdapterImpl.updateThumbnailMap(j);
        }
    }

    @Override // com.oplus.ocs.camera.consumer.apsAdapter.adapter.ApsAdapterInterface
    public void addMetadata(ImageCategory.MetaItemInfo metaItemInfo) {
        ApsCaptureAdapterImpl apsCaptureAdapterImpl = this.mCaptureImpl;
        if (apsCaptureAdapterImpl != null) {
            apsCaptureAdapterImpl.addMetadata(metaItemInfo);
        }
    }

    @Override // com.oplus.ocs.camera.consumer.apsAdapter.adapter.ApsAdapterInterface
    public void addTuningItem(ImageCategory.TuningItemInfo tuningItemInfo) {
        ApsCaptureAdapterImpl apsCaptureAdapterImpl = this.mCaptureImpl;
        if (apsCaptureAdapterImpl != null) {
            apsCaptureAdapterImpl.addTuningItem(tuningItemInfo);
        }
    }

    @Override // com.oplus.ocs.camera.consumer.apsAdapter.adapter.ApsAdapterInterface
    public Bitmap processBitmap(Bitmap bitmap, CaptureResult captureResult, ImageCategory.MetaItemInfo metaItemInfo) {
        ApsCaptureAdapterImpl apsCaptureAdapterImpl = this.mCaptureImpl;
        return apsCaptureAdapterImpl != null ? apsCaptureAdapterImpl.processBitmap(bitmap, captureResult, metaItemInfo) : bitmap;
    }

    @Override // com.oplus.ocs.camera.consumer.apsAdapter.adapter.ApsAdapterInterface
    public void videoSnapshot(ApsAdapterListener.CaptureCallback captureCallback, ApsCameraRequestTag apsCameraRequestTag) {
        ApsPreviewAdapterImpl apsPreviewAdapterImpl = this.mPreviewImpl;
        if (apsPreviewAdapterImpl != null) {
            apsPreviewAdapterImpl.videoSnapshot(captureCallback, apsCameraRequestTag);
        }
    }

    @Override // com.oplus.ocs.camera.consumer.apsAdapter.adapter.ApsAdapterInterface
    public void addPreviewMetadata(ImageCategory.MetaItemInfo metaItemInfo) {
        ApsVideoAdapterImpl apsVideoAdapterImpl;
        if (metaItemInfo.get(ApsParameters.KEY_ITEM_INFO_TYPE) == ImageCategory.ItemInfoType.VIDEO && (apsVideoAdapterImpl = this.mVideoImpl) != null) {
            apsVideoAdapterImpl.addMetadata(metaItemInfo);
        }
        if (this.mPreviewImpl == null || ((Boolean) metaItemInfo.get(ApsParameters.KEY_OVERHEAT_SKIP_FRAME)).booleanValue()) {
            return;
        }
        this.mPreviewImpl.addMetadata(metaItemInfo);
    }

    @Override // com.oplus.ocs.camera.consumer.apsAdapter.adapter.ApsAdapterInterface
    public void disconnectAps() {
        ApsAdapterLog.v(TAG, "disconnectAps");
        ImageProcessHandler imageProcessHandler = this.mImageProcessHandler;
        if (imageProcessHandler != null) {
            imageProcessHandler.obtainMessage(2).sendToTarget();
            this.mImageProcessHandler.getLooper().quitSafely();
            this.mImageProcessHandler = null;
        }
    }

    @Override // com.oplus.ocs.camera.consumer.apsAdapter.adapter.ApsAdapterInterface
    public void onBeforeOpenCamera() {
        ApsCaptureAdapterImpl apsCaptureAdapterImpl = this.mCaptureImpl;
        if (apsCaptureAdapterImpl != null) {
            apsCaptureAdapterImpl.resetRawImageCategoryInfo();
        }
    }

    @Override // com.oplus.ocs.camera.consumer.apsAdapter.adapter.ApsAdapterInterface
    public void attachPreviewSurface(int i, Surface surface, int i2) {
        this.mApsInterface.attachPreviewSurface(i, surface, i2);
    }

    @Override // com.oplus.ocs.camera.consumer.apsAdapter.adapter.ApsAdapterInterface
    public void detachPreviewSurface(int i) {
        this.mApsInterface.detachPreviewSurface(i);
    }

    @Override // com.oplus.ocs.camera.consumer.apsAdapter.adapter.ApsAdapterInterface
    public void init(ApsInitParameter apsInitParameter) {
        this.mInitSig.block();
        if (this.mPreviewImpl == null) {
            return;
        }
        ApsAdapterLog.v(TAG, "init, mApsModule: " + apsInitParameter.mApsModule);
        if (3 == apsInitParameter.mApsModule) {
            this.mbIsApsCaptureAlgoIniting.set(true);
        }
        this.mPreviewImpl.init(apsInitParameter);
        this.mPreviewImpl.setPermitProcess(true);
        this.mVideoImpl.setPermitProcess(true);
        if (1 == apsInitParameter.mApsModule || 2 == apsInitParameter.mApsModule) {
            this.mbIsApsCaptureAlgoIniting.set(false);
            this.mApsCaptureAlgoInitSig.open();
        }
        ApsAdapterLog.v(TAG, "init X, mApsModule: " + apsInitParameter.mApsModule + ", AlgoInitializing: " + isApsCaptureAlgoInitializing());
    }

    @Override // com.oplus.ocs.camera.consumer.apsAdapter.adapter.ApsAdapterInterface
    public void onDecisionControlData(ApsAdapterDecision.DecisionControlData decisionControlData) {
        ApsPreviewAdapterImpl apsPreviewAdapterImpl = this.mPreviewImpl;
        if (apsPreviewAdapterImpl != null) {
            apsPreviewAdapterImpl.onDecisionControlData(decisionControlData);
        }
    }

    @Override // com.oplus.ocs.camera.consumer.apsAdapter.algorithm.ApsInterface.ApsListener
    public void onCaptureReceived(ApsResult apsResult) {
        if (this.mCaptureImpl == null) {
            return;
        }
        int i = apsResult.mBufferType;
        if (i != 17) {
            if (i == 32) {
                this.mCaptureImpl.onRawReceived(apsResult);
                return;
            } else if (i != IMAGE_FORMAT_YCBCR_P010) {
                if (i == 256) {
                    this.mCaptureImpl.onJpegReceived(apsResult);
                    return;
                } else if (i != HEIC_FORMAT_10_BITS) {
                    return;
                }
            }
        }
        this.mCaptureImpl.onHeicReceived(apsResult);
    }

    @Override // com.oplus.ocs.camera.consumer.apsAdapter.algorithm.ApsInterface.ApsListener
    public void onPreviewReceived(ApsResult apsResult) {
        String str = apsResult.mPipelineName;
        str.hashCode();
        char c = 65535;
        switch (str.hashCode()) {
            case -1234210005:
                if (str.equals(ApsParameters.APS_PIPELINE_NAME_PREVIEW)) {
                    c = 0;
                    break;
                }
                break;
            case -903274338:
                if (str.equals(ApsParameters.APS_PIPELINE_NAME_VIDEO)) {
                    c = 1;
                    break;
                }
                break;
            case -363440471:
                if (str.equals(ApsParameters.APS_PIPELINE_NAME_CAPTURE)) {
                    c = 2;
                    break;
                }
                break;
            case 628778404:
                if (str.equals(ApsParameters.APS_PIPELINE_NAME_DEFAULT)) {
                    c = 3;
                    break;
                }
                break;
        }
        switch (c) {
            case 0:
            case 3:
                if (this.mbIsApsCaptureAlgoIniting.get()) {
                    apsResult.mDecisionResult = null;
                    ApsAdapterLog.d(TAG, "onPreviewReceived, aps capture algo is initing, reset mDecisionResult as null.");
                }
                ApsPreviewAdapterImpl apsPreviewAdapterImpl = this.mPreviewImpl;
                if (apsPreviewAdapterImpl != null) {
                    apsPreviewAdapterImpl.onPreviewReceived(apsResult);
                    return;
                } else {
                    ApsAdapterLog.e(TAG, "onPreviewReceived, but mPreviewImpl is null.");
                    return;
                }
            case 1:
                ApsVideoAdapterImpl apsVideoAdapterImpl = this.mVideoImpl;
                if (apsVideoAdapterImpl != null) {
                    apsVideoAdapterImpl.onPreviewReceived(apsResult);
                    return;
                } else {
                    ApsAdapterLog.e(TAG, "onPreviewReceived, but mVideoImpl is null.");
                    return;
                }
            case 2:
                ApsCaptureAdapterImpl apsCaptureAdapterImpl = this.mCaptureImpl;
                if (apsCaptureAdapterImpl != null) {
                    apsCaptureAdapterImpl.onRawReceived(apsResult);
                    return;
                } else {
                    ApsAdapterLog.e(TAG, "onPreviewReceived, but mCaptureImpl is null.");
                    return;
                }
            default:
                ApsAdapterLog.e(TAG, "onPreviewReceived, mPipelineName: " + apsResult.mPipelineName + " no need to processed.");
                return;
        }
    }

    @Override // com.oplus.ocs.camera.consumer.apsAdapter.algorithm.ApsInterface.ApsListener
    public void initHeifCodec(long j) {
        ApsCaptureAdapterImpl apsCaptureAdapterImpl = this.mCaptureImpl;
        if (apsCaptureAdapterImpl != null) {
            apsCaptureAdapterImpl.initHeifCodec(j);
        }
    }

    @Override // com.oplus.ocs.camera.consumer.apsAdapter.algorithm.ApsInterface.ApsListener
    public void processHeifCodec(long j, HardwareBuffer hardwareBuffer, ApsExifData apsExifData, int i, int i2) {
        ApsCaptureAdapterImpl apsCaptureAdapterImpl = this.mCaptureImpl;
        if (apsCaptureAdapterImpl != null) {
            apsCaptureAdapterImpl.processHeifCodec(j, hardwareBuffer, apsExifData, i, i2);
        }
    }

    @Override // com.oplus.ocs.camera.consumer.apsAdapter.algorithm.ApsInterface.ApsListener
    public void uninitHeifCodec(long j) {
        ApsCaptureAdapterImpl apsCaptureAdapterImpl = this.mCaptureImpl;
        if (apsCaptureAdapterImpl != null) {
            apsCaptureAdapterImpl.uninitHeifCodec(j);
        }
    }

    @Override // com.oplus.ocs.camera.consumer.apsAdapter.algorithm.ApsInterface.ApsListener
    public void setHeicProcessInApp(boolean z) {
        ApsCaptureAdapterImpl apsCaptureAdapterImpl = this.mCaptureImpl;
        if (apsCaptureAdapterImpl != null) {
            apsCaptureAdapterImpl.setHeicProcessInApp(z);
        }
    }

    @Override // com.oplus.ocs.camera.consumer.apsAdapter.adapter.ApsAdapterInterface
    public APSClient.APSRuntimeInfo getRuntimeInfo() {
        ApsInterface apsInterface = this.mApsInterface;
        if (apsInterface != null) {
            return apsInterface.getRuntimeInfo();
        }
        return null;
    }

    @Override // com.oplus.ocs.camera.consumer.apsAdapter.adapter.ApsAdapterInterface
    public void waitAddFrameFinish(boolean z) {
        ApsCaptureAdapterImpl apsCaptureAdapterImpl = this.mCaptureImpl;
        if (apsCaptureAdapterImpl != null) {
            apsCaptureAdapterImpl.waitAddFrameFinish();
        }
        ApsPreviewAdapterImpl apsPreviewAdapterImpl = this.mPreviewImpl;
        if (apsPreviewAdapterImpl == null || !z) {
            return;
        }
        apsPreviewAdapterImpl.unInit(1);
    }

    @Override // com.oplus.ocs.camera.consumer.apsAdapter.adapter.ApsAdapterInterface
    public void onDestroy() {
        disconnectAps();
        ApsPreviewAdapterImpl apsPreviewAdapterImpl = this.mPreviewImpl;
        if (apsPreviewAdapterImpl != null) {
            apsPreviewAdapterImpl.destroy();
            this.mPreviewImpl = null;
        }
        ApsVideoAdapterImpl apsVideoAdapterImpl = this.mVideoImpl;
        if (apsVideoAdapterImpl != null) {
            apsVideoAdapterImpl.destroy();
            this.mVideoImpl = null;
        }
    }

    @Override // com.oplus.ocs.camera.consumer.apsAdapter.adapter.ApsAdapterInterface
    public void countBurstShot(ImageCategory.ImageItemInfo imageItemInfo, ImageCategory.MetaItemInfo metaItemInfo) {
        ApsCaptureAdapterImpl apsCaptureAdapterImpl = this.mCaptureImpl;
        if (apsCaptureAdapterImpl != null) {
            apsCaptureAdapterImpl.countBurstShot(imageItemInfo, metaItemInfo);
        }
    }

    @Override // com.oplus.ocs.camera.consumer.apsAdapter.adapter.ApsAdapterInterface
    public void closeCamera() {
        ApsCaptureAdapterImpl apsCaptureAdapterImpl = this.mCaptureImpl;
        if (apsCaptureAdapterImpl != null) {
            apsCaptureAdapterImpl.closeCamera();
        }
    }

    @Override // com.oplus.ocs.camera.consumer.apsAdapter.adapter.ApsAdapterInterface
    public boolean onCaptureFailed(long j, int i, int i2, boolean z, ImageCategory.ImageItemInfo imageItemInfo) {
        ApsCaptureAdapterImpl apsCaptureAdapterImpl = this.mCaptureImpl;
        if (apsCaptureAdapterImpl != null) {
            return apsCaptureAdapterImpl.countAddFrame(j, i, i2, z, imageItemInfo);
        }
        return false;
    }

    @Override // com.oplus.ocs.camera.consumer.apsAdapter.adapter.ApsAdapterInterface
    public boolean onPreviewFailed(long j) {
        ApsPreviewAdapterImpl apsPreviewAdapterImpl = this.mPreviewImpl;
        if (apsPreviewAdapterImpl != null) {
            return apsPreviewAdapterImpl.dropFrame(j);
        }
        return false;
    }

    @Override // com.oplus.ocs.camera.consumer.apsAdapter.adapter.ApsAdapterInterface
    public int setEnableAPSPipeline(String str, boolean z) {
        if (this.mVideoImpl != null && ApsParameters.APS_PIPELINE_NAME_VIDEO.equals(str) && !z) {
            this.mVideoImpl.flushImage();
        }
        return this.mApsInterface.setEnableAPSPipeline(str, z);
    }

    @Override // com.oplus.ocs.camera.consumer.apsAdapter.adapter.ApsAdapterInterface
    public void setPermitProcess(ImageCategory.ItemInfoType itemInfoType, boolean z) {
        ApsVideoAdapterImpl apsVideoAdapterImpl;
        ApsPreviewAdapterImpl apsPreviewAdapterImpl;
        if (ImageCategory.ItemInfoType.PREVIEW == itemInfoType && (apsPreviewAdapterImpl = this.mPreviewImpl) != null) {
            apsPreviewAdapterImpl.setPermitProcess(z);
        } else if (ImageCategory.ItemInfoType.VIDEO != itemInfoType || (apsVideoAdapterImpl = this.mVideoImpl) == null) {
        } else {
            apsVideoAdapterImpl.setPermitProcess(z);
        }
    }

    @Override // com.oplus.ocs.camera.consumer.apsAdapter.adapter.ApsAdapterInterface
    public int forceStop() {
        ApsAdapterLog.d(TAG, "forceStop");
        return this.mApsInterface.forceStop(1);
    }

    @Override // com.oplus.ocs.camera.consumer.apsAdapter.adapter.ApsAdapterInterface
    public int setEnableAPSAlgoNode(String str, boolean z) {
        return this.mApsInterface.setEnableAPSAlgoNode(str, z);
    }

    @Override // com.oplus.ocs.camera.consumer.apsAdapter.adapter.ApsAdapterInterface
    public Rect[] roiTranslate(Rect[] rectArr) {
        return this.mApsInterface.roiTranslate(rectArr);
    }

    @Override // com.oplus.ocs.camera.consumer.apsAdapter.adapter.ApsAdapterInterface
    public void sessionClosed(boolean z) {
        ApsPreviewAdapterImpl apsPreviewAdapterImpl = this.mPreviewImpl;
        if (apsPreviewAdapterImpl != null) {
            if (z) {
                apsPreviewAdapterImpl.unInit(3);
            }
            this.mPreviewImpl.flushImage();
        }
        ApsVideoAdapterImpl apsVideoAdapterImpl = this.mVideoImpl;
        if (apsVideoAdapterImpl != null) {
            apsVideoAdapterImpl.flushImage();
        }
    }

    @Override // com.oplus.ocs.camera.consumer.apsAdapter.adapter.ApsAdapterInterface
    public void unInitApsAlgo(int i) {
        ApsPreviewAdapterImpl apsPreviewAdapterImpl = this.mPreviewImpl;
        if (apsPreviewAdapterImpl != null) {
            apsPreviewAdapterImpl.unInit(i);
        }
    }

    @Override // com.oplus.ocs.camera.consumer.apsAdapter.adapter.ApsAdapterInterface
    public void setRequestMetadata(String str, ArrayMap<String, Long> arrayMap, int i, int i2) {
        ApsCaptureRequestParam apsCaptureRequestParam = new ApsCaptureRequestParam();
        apsCaptureRequestParam.mLogicalId = Integer.parseInt(str);
        Long remove = arrayMap.remove(str);
        if (remove != null) {
            apsCaptureRequestParam.mLogicMetadata = remove.longValue();
        }
        apsCaptureRequestParam.mPhysicalMetadatas = arrayMap;
        apsCaptureRequestParam.mMasterCameraId = i;
        apsCaptureRequestParam.mActiveMap = i2;
        this.mApsInterface.setRequestMetadata(apsCaptureRequestParam);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class ImageProcessHandler extends Handler {
        private ImageProcessHandler(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            ApsInterface noneApsImpl;
            ApsAdapterLog.v(ApsAdapterImpl.TAG, "ImageProcessHandler, handleMessage, what: " + message.what);
            int i = message.what;
            if (i == 1) {
                if (ApsAdapterImpl.this.mApsInterface == null) {
                    String str = message.obj instanceof String ? (String) message.obj : "";
                    int apsMode = AlgoSwitchConfig.getApsMode();
                    ApsAdapterImpl apsAdapterImpl = ApsAdapterImpl.this;
                    if (1 == apsMode) {
                        noneApsImpl = new FullApsImpl(apsAdapterImpl, str);
                    } else if (2 == apsMode) {
                        noneApsImpl = new CaptureApsImpl(apsAdapterImpl, str);
                    } else if (3 == apsMode) {
                        noneApsImpl = new PreviewApsImpl(apsAdapterImpl, str);
                    } else {
                        noneApsImpl = new NoneApsImpl(apsAdapterImpl);
                    }
                    apsAdapterImpl.mApsInterface = noneApsImpl;
                }
                ApsAdapterImpl.this.mPreviewImpl = new ApsPreviewAdapterImpl(ApsAdapterImpl.this.mApsInterface, ApsAdapterImpl.this.mImageListener);
                ApsAdapterImpl.this.mVideoImpl = new ApsVideoAdapterImpl(ApsAdapterImpl.this.mApsInterface, ApsAdapterImpl.this.mImageListener);
                ApsAdapterImpl.this.mCaptureImpl = new ApsCaptureAdapterImpl(ApsAdapterImpl.this.mApsInterface, ApsAdapterImpl.this.mImageListener, ApsAdapterImpl.this.mImageProcessHandler);
                boolean connect = ApsAdapterImpl.this.mApsInterface.connect(AlgoSwitchConfig.getApsVersion());
                if (ApsAdapterImpl.this.mPreviewImpl != null) {
                    ApsAdapterImpl.this.mPreviewImpl.setApsConnected(connect);
                }
                ApsAdapterImpl.this.mImageListener.onApsConnected();
                ApsAdapterImpl.this.mInitSig.open();
                ApsAdapterLog.v(ApsAdapterImpl.TAG, "ImageProcessHandler, handleMessage, MSG_APS_CONNECT, result : " + connect);
            } else if (i != 2) {
                if (i == 3) {
                    ApsAdapterLog.d(ApsAdapterImpl.TAG, "handleMessage, add frame, timestamp: " + ((Long) message.obj).longValue());
                    if (ApsAdapterImpl.this.isApsCaptureAlgoInitializing()) {
                        ApsAdapterLog.e(ApsAdapterImpl.TAG, "ImageProcessHandler, handleMessage, need block, aps initializing...");
                        ApsAdapterImpl.this.mApsCaptureAlgoInitSig.close();
                        ApsAdapterImpl.this.mApsCaptureAlgoInitSig.block(ApsAdapterImpl.APS_INIT_TIME_OUT_MS);
                    }
                    ApsAdapterImpl.this.mCaptureImpl.addFrame(((Long) message.obj).longValue());
                } else if (i == 4) {
                    ApsAdapterLog.d(ApsAdapterImpl.TAG, "handleMessage, start capture");
                    if (ApsAdapterImpl.this.mCaptureImpl != null && (message.obj instanceof ApsParameters)) {
                        ApsAdapterImpl.this.mCaptureImpl.startCapture((ApsParameters) message.obj);
                    }
                }
            } else if (ApsAdapterImpl.this.mApsInterface != null) {
                ApsAdapterImpl.this.mApsInterface.disconnect();
                ApsAdapterImpl.this.mApsInterface = null;
            }
            ApsAdapterLog.v(ApsAdapterImpl.TAG, "ImageProcessHandler, handleMessage, what: " + message.what + " X");
        }
    }
}

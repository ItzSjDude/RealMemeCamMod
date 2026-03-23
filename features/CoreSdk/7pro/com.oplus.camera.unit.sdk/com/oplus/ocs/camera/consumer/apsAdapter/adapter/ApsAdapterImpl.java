package com.oplus.ocs.camera.consumer.apsAdapter.adapter;

import android.graphics.Bitmap;
import android.graphics.Rect;
import android.hardware.HardwareBuffer;
import android.hardware.camera2.CaptureResult;
import android.os.ConditionVariable;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import androidx.collection.ArrayMap;
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
        CameraHandlerThread cameraHandlerThread;
        if (this.mImageProcessHandler == null) {
            cameraHandlerThread = new CameraHandlerThread("ImageProcessThread");
            cameraHandlerThread.enableUxState();
            cameraHandlerThread.start();
            this.mImageProcessHandler = new ImageProcessHandler(cameraHandlerThread.getLooper());
        } else {
            cameraHandlerThread = null;
        }
        StringBuilder sb = new StringBuilder();
        sb.append("createProcessThread, thread id: ");
        sb.append(cameraHandlerThread == null ? 0 : cameraHandlerThread.getThreadId());
        ApsAdapterLog.v(TAG, sb.toString());
    }

    @Override // com.oplus.ocs.camera.consumer.apsAdapter.adapter.ApsAdapterInterface
    public void connectAps() {
        ApsAdapterLog.v(TAG, "connectAps");
        if (this.mImageProcessHandler != null) {
            this.mImageProcessHandler.obtainMessage(1).sendToTarget();
        }
    }

    @Override // com.oplus.ocs.camera.consumer.apsAdapter.adapter.ApsAdapterInterface
    public int beforeCapture(ImageCategory.MetaItemInfo metaItemInfo) {
        if (this.mCaptureImpl != null) {
            return this.mCaptureImpl.beforeCapture(metaItemInfo);
        }
        return -1;
    }

    @Override // com.oplus.ocs.camera.consumer.apsAdapter.adapter.ApsAdapterInterface
    public void addImage(ImageCategory.ImageItemInfo imageItemInfo) {
        if (this.mCaptureImpl != null) {
            this.mCaptureImpl.addImage(imageItemInfo);
        }
    }

    @Override // com.oplus.ocs.camera.consumer.apsAdapter.adapter.ApsAdapterInterface
    public boolean notifyLastCaptureFrame(ImageCategory.MetaItemInfo metaItemInfo) {
        if (this.mCaptureImpl != null) {
            return this.mCaptureImpl.notifyLastCaptureFrame(metaItemInfo);
        }
        return false;
    }

    @Override // com.oplus.ocs.camera.consumer.apsAdapter.adapter.ApsAdapterInterface
    public void addPreviewImage(ImageCategory.ImageItemInfo imageItemInfo) {
        if (this.mPreviewImpl != null) {
            this.mPreviewImpl.mApsServiceListener = imageItemInfo.mApsServiceListener;
        }
        if (this.mVideoImpl != null) {
            this.mVideoImpl.mApsServiceListener = imageItemInfo.mApsServiceListener;
        }
        if (this.mPreviewImpl != null) {
            this.mPreviewImpl.addImage(imageItemInfo);
        }
    }

    @Override // com.oplus.ocs.camera.consumer.apsAdapter.adapter.ApsAdapterInterface
    public void addVideoImage(ImageCategory.ImageItemInfo imageItemInfo) {
        if (this.mVideoImpl != null) {
            this.mVideoImpl.addImage(imageItemInfo);
        }
    }

    @Override // com.oplus.ocs.camera.consumer.apsAdapter.adapter.ApsAdapterInterface
    public void updateThumbnailMap(long j) {
        if (this.mCaptureImpl != null) {
            this.mCaptureImpl.updateThumbnailMap(j);
        }
    }

    @Override // com.oplus.ocs.camera.consumer.apsAdapter.adapter.ApsAdapterInterface
    public void addMetadata(ImageCategory.MetaItemInfo metaItemInfo) {
        if (this.mCaptureImpl != null) {
            this.mCaptureImpl.addMetadata(metaItemInfo);
        }
    }

    @Override // com.oplus.ocs.camera.consumer.apsAdapter.adapter.ApsAdapterInterface
    public void addTuningItem(ImageCategory.TuningItemInfo tuningItemInfo) {
        if (this.mCaptureImpl != null) {
            this.mCaptureImpl.addTuningItem(tuningItemInfo);
        }
    }

    @Override // com.oplus.ocs.camera.consumer.apsAdapter.adapter.ApsAdapterInterface
    public Bitmap processBitmap(Bitmap bitmap, CaptureResult captureResult, ImageCategory.MetaItemInfo metaItemInfo) {
        return this.mCaptureImpl != null ? this.mCaptureImpl.processBitmap(bitmap, captureResult, metaItemInfo) : bitmap;
    }

    @Override // com.oplus.ocs.camera.consumer.apsAdapter.adapter.ApsAdapterInterface
    public void videoSnapshot(ApsAdapterListener.CaptureCallback captureCallback, ApsCameraRequestTag apsCameraRequestTag) {
        if (this.mPreviewImpl != null) {
            this.mPreviewImpl.videoSnapshot(captureCallback, apsCameraRequestTag);
        }
    }

    @Override // com.oplus.ocs.camera.consumer.apsAdapter.adapter.ApsAdapterInterface
    public void addPreviewMetadata(ImageCategory.MetaItemInfo metaItemInfo) {
        if (metaItemInfo.get(ApsParameters.KEY_ITEM_INFO_TYPE) == ImageCategory.ItemInfoType.VIDEO && this.mVideoImpl != null) {
            this.mVideoImpl.addMetadata(metaItemInfo);
        }
        if (this.mPreviewImpl != null) {
            this.mPreviewImpl.addMetadata(metaItemInfo);
        }
    }

    @Override // com.oplus.ocs.camera.consumer.apsAdapter.adapter.ApsAdapterInterface
    public void disconnectAps() {
        ApsAdapterLog.v(TAG, "disconnectAps");
        if (this.mImageProcessHandler != null) {
            this.mImageProcessHandler.obtainMessage(2).sendToTarget();
            this.mImageProcessHandler.getLooper().quitSafely();
            this.mImageProcessHandler = null;
        }
    }

    @Override // com.oplus.ocs.camera.consumer.apsAdapter.adapter.ApsAdapterInterface
    public void onBeforeOpenCamera() {
        if (this.mCaptureImpl != null) {
            this.mCaptureImpl.resetRawImageCategoryInfo();
        }
    }

    @Override // com.oplus.ocs.camera.consumer.apsAdapter.adapter.ApsAdapterInterface
    public void init(ApsInitParameter apsInitParameter) {
        this.mInitSig.block();
        if (this.mPreviewImpl == null) {
            return;
        }
        this.mPreviewImpl.init(apsInitParameter);
        this.mPreviewImpl.setPermitProcess(true);
        this.mVideoImpl.setPermitProcess(true);
        if (1 == apsInitParameter.mApsModule || 2 == apsInitParameter.mApsModule) {
            this.mbIsApsCaptureAlgoIniting.set(false);
            this.mApsCaptureAlgoInitSig.open();
        } else if (3 == apsInitParameter.mApsModule) {
            this.mbIsApsCaptureAlgoIniting.set(true);
        }
    }

    @Override // com.oplus.ocs.camera.consumer.apsAdapter.adapter.ApsAdapterInterface
    public void onDecisionControlData(ApsAdapterDecision.DecisionControlData decisionControlData) {
        if (this.mPreviewImpl != null) {
            this.mPreviewImpl.onDecisionControlData(decisionControlData);
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
        char c;
        String str = apsResult.mPipelineName;
        int hashCode = str.hashCode();
        if (hashCode == -1234210005) {
            if (str.equals(ApsParameters.APS_PIPELINE_NAME_PREVIEW)) {
                c = 1;
            }
            c = 65535;
        } else if (hashCode == -903274338) {
            if (str.equals(ApsParameters.APS_PIPELINE_NAME_VIDEO)) {
                c = 2;
            }
            c = 65535;
        } else if (hashCode != -363440471) {
            if (hashCode == 628778404 && str.equals(ApsParameters.APS_PIPELINE_NAME_DEFAULT)) {
                c = 0;
            }
            c = 65535;
        } else {
            if (str.equals(ApsParameters.APS_PIPELINE_NAME_CAPTURE)) {
                c = 3;
            }
            c = 65535;
        }
        switch (c) {
            case 0:
            case 1:
                if (this.mbIsApsCaptureAlgoIniting.get()) {
                    apsResult.mDecisionResult = null;
                    ApsAdapterLog.d(TAG, "onPreviewReceived, aps capture algo is initing, reset mDecisionResult as null.");
                }
                if (this.mPreviewImpl != null) {
                    this.mPreviewImpl.onPreviewReceived(apsResult);
                    return;
                } else {
                    ApsAdapterLog.e(TAG, "onPreviewReceived, but mPreviewImpl is null.");
                    return;
                }
            case 2:
                if (this.mVideoImpl != null) {
                    this.mVideoImpl.onPreviewReceived(apsResult);
                    return;
                } else {
                    ApsAdapterLog.e(TAG, "onPreviewReceived, but mVideoImpl is null.");
                    return;
                }
            case 3:
                if (this.mCaptureImpl != null) {
                    this.mCaptureImpl.onRawReceived(apsResult);
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
        if (this.mCaptureImpl != null) {
            this.mCaptureImpl.initHeifCodec(j);
        }
    }

    @Override // com.oplus.ocs.camera.consumer.apsAdapter.algorithm.ApsInterface.ApsListener
    public void processHeifCodec(long j, HardwareBuffer hardwareBuffer, ApsExifData apsExifData, int i, int i2) {
        if (this.mCaptureImpl != null) {
            this.mCaptureImpl.processHeifCodec(j, hardwareBuffer, apsExifData, i, i2);
        }
    }

    @Override // com.oplus.ocs.camera.consumer.apsAdapter.algorithm.ApsInterface.ApsListener
    public void uninitHeifCodec(long j) {
        if (this.mCaptureImpl != null) {
            this.mCaptureImpl.uninitHeifCodec(j);
        }
    }

    @Override // com.oplus.ocs.camera.consumer.apsAdapter.algorithm.ApsInterface.ApsListener
    public void setHeicProcessInApp(boolean z) {
        if (this.mCaptureImpl != null) {
            this.mCaptureImpl.setHeicProcessInApp(z);
        }
    }

    @Override // com.oplus.ocs.camera.consumer.apsAdapter.adapter.ApsAdapterInterface
    public APSClient.APSRuntimeInfo getRuntimeInfo() {
        if (this.mApsInterface != null) {
            return this.mApsInterface.getRuntimeInfo();
        }
        return null;
    }

    @Override // com.oplus.ocs.camera.consumer.apsAdapter.adapter.ApsAdapterInterface
    public void waitAddFrameFinish(boolean z) {
        if (this.mCaptureImpl != null) {
            this.mCaptureImpl.waitAddFrameFinish();
        }
        if (this.mPreviewImpl == null || !z) {
            return;
        }
        this.mPreviewImpl.unInit(1);
    }

    @Override // com.oplus.ocs.camera.consumer.apsAdapter.adapter.ApsAdapterInterface
    public void onDestroy() {
        disconnectAps();
        if (this.mPreviewImpl != null) {
            this.mPreviewImpl.destroy();
            this.mPreviewImpl = null;
        }
        if (this.mVideoImpl != null) {
            this.mVideoImpl.destroy();
            this.mVideoImpl = null;
        }
    }

    @Override // com.oplus.ocs.camera.consumer.apsAdapter.adapter.ApsAdapterInterface
    public void countBurstShot(ImageCategory.ImageItemInfo imageItemInfo, ImageCategory.MetaItemInfo metaItemInfo) {
        if (this.mCaptureImpl != null) {
            this.mCaptureImpl.countBurstShot(imageItemInfo, metaItemInfo);
        }
    }

    @Override // com.oplus.ocs.camera.consumer.apsAdapter.adapter.ApsAdapterInterface
    public void closeCamera() {
        if (this.mCaptureImpl != null) {
            this.mCaptureImpl.closeCamera();
        }
    }

    @Override // com.oplus.ocs.camera.consumer.apsAdapter.adapter.ApsAdapterInterface
    public boolean onCaptureFailed(long j, int i, int i2, boolean z, ImageCategory.ImageItemInfo imageItemInfo) {
        if (this.mCaptureImpl != null) {
            return this.mCaptureImpl.countAddFrame(j, i, i2, z, imageItemInfo);
        }
        return false;
    }

    @Override // com.oplus.ocs.camera.consumer.apsAdapter.adapter.ApsAdapterInterface
    public boolean onPreviewFailed(long j) {
        if (this.mPreviewImpl != null) {
            return this.mPreviewImpl.dropFrame(j);
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
        if (ImageCategory.ItemInfoType.PREVIEW == itemInfoType && this.mPreviewImpl != null) {
            this.mPreviewImpl.setPermitProcess(z);
        } else if (ImageCategory.ItemInfoType.VIDEO != itemInfoType || this.mVideoImpl == null) {
        } else {
            this.mVideoImpl.setPermitProcess(z);
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
        if (this.mPreviewImpl != null) {
            if (z) {
                this.mPreviewImpl.unInit(3);
            }
            this.mPreviewImpl.flushImage();
        }
        if (this.mVideoImpl != null) {
            this.mVideoImpl.flushImage();
        }
    }

    @Override // com.oplus.ocs.camera.consumer.apsAdapter.adapter.ApsAdapterInterface
    public void unInitApsAlgo(int i) {
        if (this.mPreviewImpl != null) {
            this.mPreviewImpl.unInit(i);
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
            ApsAdapterLog.v(ApsAdapterImpl.TAG, "ImageProcessHandler, handleMessage, what: " + message.what);
            switch (message.what) {
                case 1:
                    if (ApsAdapterImpl.this.mApsInterface == null) {
                        int apsMode = AlgoSwitchConfig.getApsMode();
                        ApsAdapterImpl.this.mApsInterface = 1 == apsMode ? new FullApsImpl(ApsAdapterImpl.this) : 2 == apsMode ? new CaptureApsImpl(ApsAdapterImpl.this) : 3 == apsMode ? new PreviewApsImpl(ApsAdapterImpl.this) : new NoneApsImpl(ApsAdapterImpl.this);
                    }
                    ApsAdapterImpl.this.mPreviewImpl = new ApsPreviewAdapterImpl(ApsAdapterImpl.this.mApsInterface, ApsAdapterImpl.this.mImageListener);
                    ApsAdapterImpl.this.mVideoImpl = new ApsVideoAdapterImpl(ApsAdapterImpl.this.mApsInterface, ApsAdapterImpl.this.mImageListener);
                    ApsAdapterImpl.this.mCaptureImpl = new ApsCaptureAdapterImpl(ApsAdapterImpl.this.mApsInterface, ApsAdapterImpl.this.mImageListener, ApsAdapterImpl.this.mImageProcessHandler);
                    boolean connect = ApsAdapterImpl.this.mApsInterface.connect();
                    if (ApsAdapterImpl.this.mPreviewImpl != null) {
                        ApsAdapterImpl.this.mPreviewImpl.setApsConnected(connect);
                    }
                    ApsAdapterImpl.this.mInitSig.open();
                    ApsAdapterLog.v(ApsAdapterImpl.TAG, "ImageProcessHandler, handleMessage, MSG_APS_CONNECT, result : " + connect);
                    break;
                case 2:
                    if (ApsAdapterImpl.this.mApsInterface != null) {
                        ApsAdapterImpl.this.mApsInterface.disconnect();
                        ApsAdapterImpl.this.mApsInterface = null;
                        break;
                    }
                    break;
                case 3:
                    ApsAdapterLog.d(ApsAdapterImpl.TAG, "handleMessage, add frame, timestamp: " + ((Long) message.obj).longValue());
                    if (ApsAdapterImpl.this.mbIsApsCaptureAlgoIniting.get()) {
                        ApsAdapterLog.d(ApsAdapterImpl.TAG, "ImageProcessHandler, handleMessage, need block, aps initializing...");
                        ApsAdapterImpl.this.mApsCaptureAlgoInitSig.close();
                        ApsAdapterImpl.this.mApsCaptureAlgoInitSig.block(ApsAdapterImpl.APS_INIT_TIME_OUT_MS);
                    }
                    ApsAdapterImpl.this.mCaptureImpl.addFrame(((Long) message.obj).longValue());
                    break;
            }
            ApsAdapterLog.v(ApsAdapterImpl.TAG, "ImageProcessHandler, handleMessage, what: " + message.what + " X");
        }
    }
}

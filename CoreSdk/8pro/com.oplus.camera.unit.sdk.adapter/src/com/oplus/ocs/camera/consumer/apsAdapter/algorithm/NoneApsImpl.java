package com.oplus.ocs.camera.consumer.apsAdapter.algorithm;

import android.graphics.Bitmap;
import android.graphics.Rect;
import android.hardware.HardwareBuffer;
import android.hardware.camera2.CaptureResult;
import android.hardware.camera2.TotalCaptureResult;
import android.media.Image;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import android.view.Surface;
import com.oplus.exif.OplusExifTag;
import com.oplus.ocs.camera.consumer.apsAdapter.APSClient;
import com.oplus.ocs.camera.consumer.apsAdapter.ApsAdapterLog;
import com.oplus.ocs.camera.consumer.apsAdapter.adapter.ApsAdapterDecision;
import com.oplus.ocs.camera.consumer.apsAdapter.adapter.ApsCaptureParam;
import com.oplus.ocs.camera.consumer.apsAdapter.adapter.ApsCaptureRequestParam;
import com.oplus.ocs.camera.consumer.apsAdapter.adapter.ApsInitParameter;
import com.oplus.ocs.camera.consumer.apsAdapter.adapter.ApsParameters;
import com.oplus.ocs.camera.consumer.apsAdapter.adapter.ApsPreviewDecisionParam;
import com.oplus.ocs.camera.consumer.apsAdapter.adapter.ApsPreviewParam;
import com.oplus.ocs.camera.consumer.apsAdapter.adapter.ApsResult;
import com.oplus.ocs.camera.consumer.apsAdapter.adapter.ApsUtils;
import com.oplus.ocs.camera.consumer.apsAdapter.adapter.ApsWatermarkParam;
import com.oplus.ocs.camera.consumer.apsAdapter.algorithm.ApsInterface;
import java.util.Queue;
import java.util.concurrent.LinkedBlockingQueue;
/* loaded from: classes.dex */
public class NoneApsImpl implements ApsInterface {
    public static final int CAPTURE_PROC_DELAY = 20;
    public static final int MSG_APS_CAPTURE = 0;
    public static final int MSG_APS_PREVIEW = 1;
    private static final String TAG = "NoneApsImpl";
    private ApsInterface.ApsListener mApsListener;
    private final Object mCaptureQueueLock = new Object();
    private ProcessHandler mProcessHandler = null;
    private Queue<CaptureFrame> mCaptureFrameQueue = new LinkedBlockingQueue();

    /* loaded from: classes.dex */
    public static final class CaptureFrame {
        public ApsInterface.ApsListener mApsListener;
        public long mTimeStamp = -1;
        public int mWidth = 0;
        public int mHeight = 0;
        public byte[] mData = null;
    }

    /* loaded from: classes.dex */
    public static final class PreviewFrame {
        public ApsInterface.ApsListener mApsListener;
        public long mTimeStamp = -1;
        public Surface mSurface = null;
        public Image mImage = null;
        public CaptureResult mMetadata = null;
        public String mPipeline = "";
        public String mCaptureMode = null;
        public int mCameraId = 0;
    }

    @Override // com.oplus.ocs.camera.consumer.apsAdapter.algorithm.ApsInterface
    public int abortCaptures() {
        return -1;
    }

    @Override // com.oplus.ocs.camera.consumer.apsAdapter.algorithm.ApsInterface
    public void attachPreviewSurface(int i, Surface surface, int i2) {
    }

    @Override // com.oplus.ocs.camera.consumer.apsAdapter.algorithm.ApsInterface
    public int beforeCapture(ApsParameters apsParameters) {
        return -1;
    }

    @Override // com.oplus.ocs.camera.consumer.apsAdapter.algorithm.ApsInterface
    public void detachPreviewSurface(int i) {
    }

    @Override // com.oplus.ocs.camera.consumer.apsAdapter.algorithm.ApsInterface
    public void flushImage() {
    }

    @Override // com.oplus.ocs.camera.consumer.apsAdapter.algorithm.ApsInterface
    public int forceStop(int i) {
        return 0;
    }

    @Override // com.oplus.ocs.camera.consumer.apsAdapter.algorithm.ApsInterface
    public void initAlgo(ApsInitParameter apsInitParameter) {
    }

    @Override // com.oplus.ocs.camera.consumer.apsAdapter.algorithm.ApsInterface
    public boolean isApsPreviewInit() {
        return true;
    }

    @Override // com.oplus.ocs.camera.consumer.apsAdapter.algorithm.ApsInterface
    public Bitmap processBitmap(Bitmap bitmap, CaptureResult captureResult, ApsParameters apsParameters) {
        return bitmap;
    }

    @Override // com.oplus.ocs.camera.consumer.apsAdapter.algorithm.ApsInterface
    public int releaseBuffer(String str, HardwareBuffer hardwareBuffer) {
        return 0;
    }

    @Override // com.oplus.ocs.camera.consumer.apsAdapter.algorithm.ApsInterface
    public Rect[] roiTranslate(Rect[] rectArr) {
        return null;
    }

    @Override // com.oplus.ocs.camera.consumer.apsAdapter.algorithm.ApsInterface
    public int setEnableAPSAlgoNode(String str, boolean z) {
        return 0;
    }

    @Override // com.oplus.ocs.camera.consumer.apsAdapter.algorithm.ApsInterface
    public int setEnableAPSPipeline(String str, boolean z) {
        return 0;
    }

    @Override // com.oplus.ocs.camera.consumer.apsAdapter.algorithm.ApsInterface
    public void setRequestMetadata(ApsCaptureRequestParam apsCaptureRequestParam) {
    }

    @Override // com.oplus.ocs.camera.consumer.apsAdapter.algorithm.ApsInterface
    public int startCapture(ApsParameters apsParameters) {
        return -1;
    }

    @Override // com.oplus.ocs.camera.consumer.apsAdapter.algorithm.ApsInterface
    public void unInitAlgo(int i) {
    }

    @Override // com.oplus.ocs.camera.consumer.apsAdapter.algorithm.ApsInterface
    public void updateThumbnailMap(ApsResult apsResult) {
    }

    public NoneApsImpl(ApsInterface.ApsListener apsListener) {
        this.mApsListener = null;
        this.mApsListener = apsListener;
    }

    @Override // com.oplus.ocs.camera.consumer.apsAdapter.algorithm.ApsInterface
    public boolean connect(int i) {
        ApsAdapterLog.v(TAG, "connect");
        if (this.mProcessHandler == null) {
            HandlerThread handlerThread = new HandlerThread("NoneApsImpl Process Thread");
            handlerThread.start();
            this.mProcessHandler = new ProcessHandler(handlerThread.getLooper());
            return true;
        }
        return true;
    }

    @Override // com.oplus.ocs.camera.consumer.apsAdapter.algorithm.ApsInterface
    public void disconnect() {
        ProcessHandler processHandler = this.mProcessHandler;
        if (processHandler != null) {
            processHandler.getLooper().quitSafely();
            this.mProcessHandler = null;
        }
    }

    @Override // com.oplus.ocs.camera.consumer.apsAdapter.algorithm.ApsInterface
    public int clear() {
        synchronized (this.mCaptureQueueLock) {
            this.mCaptureFrameQueue.clear();
        }
        return 0;
    }

    @Override // com.oplus.ocs.camera.consumer.apsAdapter.algorithm.ApsInterface
    public int addFrameBuff(ApsCaptureParam apsCaptureParam, String[] strArr, String[] strArr2, ApsWatermarkParam apsWatermarkParam) {
        ApsAdapterLog.d(TAG, "addFrameBuff, frameIdx: " + apsCaptureParam.getFrameNumber());
        Image image = apsCaptureParam.getImageBuffer().getImage();
        if (apsCaptureParam.getPhysicMeta() == null) {
            return 0;
        }
        CaptureFrame captureFrame = new CaptureFrame();
        captureFrame.mApsListener = this.mApsListener;
        captureFrame.mWidth = image.getWidth();
        captureFrame.mHeight = image.getHeight();
        captureFrame.mData = ApsUtils.convertNV21DataToJpeg(ApsUtils.getYuvDataWithoutPadding(image, 17, null), image.getWidth(), image.getHeight());
        synchronized (this.mCaptureQueueLock) {
            this.mCaptureFrameQueue.add(captureFrame);
        }
        return 0;
    }

    @Override // com.oplus.ocs.camera.consumer.apsAdapter.algorithm.ApsInterface
    public int processImages(String[] strArr, String[] strArr2, ApsWatermarkParam apsWatermarkParam) {
        ApsAdapterLog.d(TAG, "processImages");
        synchronized (this.mCaptureQueueLock) {
            if (this.mCaptureFrameQueue.isEmpty()) {
                return -1;
            }
            CaptureFrame poll = this.mCaptureFrameQueue.poll();
            int i = 0;
            while (true) {
                if (i < strArr.length) {
                    if (poll != null && strArr[i].equals(ApsParameters.KEY_PROCESS_IMAGE_IDENTITY)) {
                        poll.mTimeStamp = Long.decode(strArr[i + 1]).longValue();
                        break;
                    }
                    i += 2;
                } else {
                    break;
                }
            }
            this.mProcessHandler.sendMessageDelayed(this.mProcessHandler.obtainMessage(0, poll), 20L);
            return 0;
        }
    }

    @Override // com.oplus.ocs.camera.consumer.apsAdapter.algorithm.ApsInterface
    public APSClient.APSRuntimeInfo getRuntimeInfo() {
        return new APSClient.APSRuntimeInfo();
    }

    @Override // com.oplus.ocs.camera.consumer.apsAdapter.algorithm.ApsInterface
    public ApsAdapterDecision.DecisionResult previewDecision(ApsPreviewDecisionParam apsPreviewDecisionParam) {
        ApsAdapterDecision.DecisionResult decisionResult = new ApsAdapterDecision.DecisionResult();
        decisionResult.mCameraId = apsPreviewDecisionParam.getCameraId();
        decisionResult.mCaptureMode = apsPreviewDecisionParam.getCaptureMode();
        decisionResult.mRequestFormat = OplusExifTag.EXIF_TAG_PROFESSION;
        decisionResult.mCameraId = apsPreviewDecisionParam.getCameraId();
        return decisionResult;
    }

    @Override // com.oplus.ocs.camera.consumer.apsAdapter.algorithm.ApsInterface
    public int addPreviewFrameBuff(ApsPreviewParam apsPreviewParam, ApsWatermarkParam apsWatermarkParam) {
        int[] role = apsPreviewParam.getRole();
        ApsResult.ImageBuffer[] imageBufferArray = apsPreviewParam.getImageBufferArray();
        PreviewFrame previewFrame = new PreviewFrame();
        previewFrame.mApsListener = this.mApsListener;
        previewFrame.mTimeStamp = apsPreviewParam.getTimeStamp();
        previewFrame.mMetadata = apsPreviewParam.getMetaObj();
        previewFrame.mCaptureMode = apsPreviewParam.getCaptureMode();
        String str = (String) apsPreviewParam.getMetaObj().get(CaptureResult.LOGICAL_MULTI_CAMERA_ACTIVE_PHYSICAL_ID);
        if (!TextUtils.isEmpty(str)) {
            previewFrame.mCameraId = Integer.parseInt(str) == 1 ? 1 : 0;
        } else {
            ApsAdapterLog.w(TAG, "addPreviewFrameBuff, camera id is null");
        }
        for (int i = 0; i < imageBufferArray.length; i++) {
            int i2 = role[i];
            if (i2 == 0 || 1 == i2) {
                previewFrame.mImage = imageBufferArray[i].getImage();
            } else {
                imageBufferArray[i].close();
            }
        }
        String[] processParamters = apsPreviewParam.getProcessParamters();
        int i3 = 0;
        while (true) {
            if (i3 >= processParamters.length) {
                break;
            } else if (processParamters[i3].equals(ApsParameters.KEY_PIPELINE)) {
                previewFrame.mPipeline = processParamters[i3 + 1];
                break;
            } else {
                i3 += 2;
            }
        }
        this.mProcessHandler.sendMessage(this.mProcessHandler.obtainMessage(1, previewFrame));
        return 0;
    }

    /* loaded from: classes.dex */
    public static class ProcessHandler extends Handler {
        public ProcessHandler(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            int i = message.what;
            if (i == 0) {
                CaptureFrame captureFrame = (CaptureFrame) message.obj;
                ApsResult apsResult = new ApsResult();
                apsResult.mIdentity = captureFrame.mTimeStamp;
                apsResult.mWidth = captureFrame.mWidth;
                apsResult.mHeight = captureFrame.mHeight;
                apsResult.mCopyBuffer = captureFrame.mData;
                apsResult.mBufferType = OplusExifTag.EXIF_TAG_PROFESSION;
                captureFrame.mApsListener.onCaptureReceived(apsResult);
            } else if (i != 1) {
            } else {
                PreviewFrame previewFrame = (PreviewFrame) message.obj;
                ApsResult apsResult2 = new ApsResult(previewFrame.mImage);
                apsResult2.mIdentity = previewFrame.mTimeStamp;
                apsResult2.mMetadata = (TotalCaptureResult) previewFrame.mMetadata;
                apsResult2.mPipelineName = previewFrame.mPipeline;
                apsResult2.mDecisionResult = new ApsAdapterDecision.DecisionResult();
                apsResult2.mDecisionResult.mCameraId = previewFrame.mCameraId;
                apsResult2.mDecisionResult.mCaptureMode = previewFrame.mCaptureMode;
                apsResult2.mWidth = previewFrame.mImage.getWidth();
                apsResult2.mHeight = previewFrame.mImage.getHeight();
                previewFrame.mApsListener.onPreviewReceived(apsResult2);
            }
        }
    }
}

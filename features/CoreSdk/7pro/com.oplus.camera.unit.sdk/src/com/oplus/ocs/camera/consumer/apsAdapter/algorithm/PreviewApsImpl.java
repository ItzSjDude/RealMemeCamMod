package com.oplus.ocs.camera.consumer.apsAdapter.algorithm;

import android.graphics.Bitmap;
import android.hardware.camera2.CaptureResult;
import android.media.Image;
import android.os.HandlerThread;
import com.oplus.ocs.camera.consumer.apsAdapter.APSClient;
import com.oplus.ocs.camera.consumer.apsAdapter.ApsAdapterLog;
import com.oplus.ocs.camera.consumer.apsAdapter.adapter.ApsAdapterDecision;
import com.oplus.ocs.camera.consumer.apsAdapter.adapter.ApsCaptureParam;
import com.oplus.ocs.camera.consumer.apsAdapter.adapter.ApsParameters;
import com.oplus.ocs.camera.consumer.apsAdapter.adapter.ApsPreviewDecisionParam;
import com.oplus.ocs.camera.consumer.apsAdapter.adapter.ApsUtils;
import com.oplus.ocs.camera.consumer.apsAdapter.adapter.ApsWatermarkParam;
import com.oplus.ocs.camera.consumer.apsAdapter.algorithm.ApsInterface;
import com.oplus.ocs.camera.consumer.apsAdapter.algorithm.NoneApsImpl;
import java.nio.ByteBuffer;
import java.util.Queue;
import java.util.concurrent.LinkedBlockingQueue;
/* loaded from: classes.dex */
public class PreviewApsImpl extends FullApsImpl {
    private static final String TAG = "PreviewApsImpl";
    private Queue<NoneApsImpl.CaptureFrame> mCaptureFrameQueue;
    private final Object mCaptureQueueLock;
    private NoneApsImpl.ProcessHandler mProcessHandler;

    @Override // com.oplus.ocs.camera.consumer.apsAdapter.algorithm.FullApsImpl, com.oplus.ocs.camera.consumer.apsAdapter.algorithm.ApsInterface
    public int beforeCapture(ApsParameters apsParameters) {
        return -1;
    }

    @Override // com.oplus.ocs.camera.consumer.apsAdapter.algorithm.FullApsImpl, com.oplus.ocs.camera.consumer.apsAdapter.algorithm.ApsInterface
    public Bitmap processBitmap(Bitmap bitmap, CaptureResult captureResult, ApsParameters apsParameters) {
        return bitmap;
    }

    public PreviewApsImpl(ApsInterface.ApsListener apsListener) {
        super(apsListener);
        this.mCaptureQueueLock = new Object();
        this.mProcessHandler = null;
        this.mCaptureFrameQueue = new LinkedBlockingQueue();
    }

    @Override // com.oplus.ocs.camera.consumer.apsAdapter.algorithm.FullApsImpl, com.oplus.ocs.camera.consumer.apsAdapter.algorithm.ApsInterface
    public boolean connect() {
        ApsAdapterLog.v(TAG, "connect");
        if (this.mProcessHandler == null) {
            HandlerThread handlerThread = new HandlerThread("PreviewApsImpl Process Thread");
            handlerThread.start();
            this.mProcessHandler = new NoneApsImpl.ProcessHandler(handlerThread.getLooper());
        }
        return super.connect();
    }

    @Override // com.oplus.ocs.camera.consumer.apsAdapter.algorithm.FullApsImpl, com.oplus.ocs.camera.consumer.apsAdapter.algorithm.ApsInterface
    public void disconnect() {
        if (this.mProcessHandler != null) {
            this.mProcessHandler.getLooper().quitSafely();
            this.mProcessHandler = null;
        }
        super.disconnect();
    }

    @Override // com.oplus.ocs.camera.consumer.apsAdapter.algorithm.FullApsImpl, com.oplus.ocs.camera.consumer.apsAdapter.algorithm.ApsInterface
    public int clear() {
        synchronized (this.mCaptureQueueLock) {
            this.mCaptureFrameQueue.clear();
        }
        return 0;
    }

    @Override // com.oplus.ocs.camera.consumer.apsAdapter.algorithm.FullApsImpl, com.oplus.ocs.camera.consumer.apsAdapter.algorithm.ApsInterface
    public int addFrameBuff(ApsCaptureParam apsCaptureParam) {
        ApsAdapterLog.d(TAG, "addFrameBuff, frameIdx: " + apsCaptureParam.getFrameNumber());
        Image image = apsCaptureParam.getImageBuffer().getImage();
        ByteBuffer[] buffers = ApsUtils.getBuffers(ApsUtils.getNumPlanesForFormat(image.getFormat()), image, image.getFormat());
        int[] bufferSize = ApsUtils.getBufferSize(buffers);
        NoneApsImpl.CaptureFrame captureFrame = new NoneApsImpl.CaptureFrame();
        captureFrame.mApsListener = this.mApsListener;
        captureFrame.mWidth = apsCaptureParam.getImageBuffer().getHardwareBuffer().getWidth();
        captureFrame.mHeight = apsCaptureParam.getImageBuffer().getHardwareBuffer().getWidth();
        captureFrame.mData = new byte[bufferSize[0]];
        buffers[0].get(captureFrame.mData);
        buffers[0].rewind();
        synchronized (this.mCaptureQueueLock) {
            this.mCaptureFrameQueue.add(captureFrame);
        }
        return 0;
    }

    @Override // com.oplus.ocs.camera.consumer.apsAdapter.algorithm.FullApsImpl, com.oplus.ocs.camera.consumer.apsAdapter.algorithm.ApsInterface
    public int processImages(String[] strArr, String[] strArr2, ApsWatermarkParam apsWatermarkParam) {
        ApsAdapterLog.d(TAG, "processImages");
        synchronized (this.mCaptureQueueLock) {
            if (this.mCaptureFrameQueue.isEmpty()) {
                return -1;
            }
            NoneApsImpl.CaptureFrame poll = this.mCaptureFrameQueue.poll();
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

    @Override // com.oplus.ocs.camera.consumer.apsAdapter.algorithm.FullApsImpl, com.oplus.ocs.camera.consumer.apsAdapter.algorithm.ApsInterface
    public APSClient.APSRuntimeInfo getRuntimeInfo() {
        return new APSClient.APSRuntimeInfo();
    }

    @Override // com.oplus.ocs.camera.consumer.apsAdapter.algorithm.FullApsImpl, com.oplus.ocs.camera.consumer.apsAdapter.algorithm.ApsInterface
    public ApsAdapterDecision.DecisionResult previewDecision(ApsPreviewDecisionParam apsPreviewDecisionParam) {
        ApsAdapterDecision.DecisionResult decisionResult = new ApsAdapterDecision.DecisionResult();
        decisionResult.mCameraId = apsPreviewDecisionParam.getCameraId();
        decisionResult.mCaptureMode = apsPreviewDecisionParam.getCaptureMode();
        decisionResult.mRequestFormat = 256;
        return decisionResult;
    }
}

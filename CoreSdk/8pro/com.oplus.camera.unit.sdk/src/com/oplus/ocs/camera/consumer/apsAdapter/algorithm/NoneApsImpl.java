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

import java.util.Queue;
import java.util.concurrent.LinkedBlockingQueue;

/**
 * Implementation of ApsInterface for cases where APS is not used.
 */
public class NoneApsImpl implements ApsInterface {
    private static final String TAG = "NoneApsImpl";
    private static final int MSG_APS_CAPTURE = 0;
    private static final int MSG_APS_PREVIEW = 1;
    private static final long CAPTURE_PROC_DELAY_MS = 20L;

    private ApsInterface.ApsListener mApsListener;
    private final Object mCaptureQueueLock = new Object();
    private ProcessHandler mProcessHandler = null;
    private final Queue<CaptureFrame> mCaptureFrameQueue = new LinkedBlockingQueue<>();

    public static final class CaptureFrame {
        public ApsInterface.ApsListener mApsListener;
        public long mTimeStamp = -1;
        public int mWidth = 0;
        public int mHeight = 0;
        public byte[] mData = null;
    }

    public static final class PreviewFrame {
        public ApsInterface.ApsListener mApsListener;
        public long mTimeStamp = -1;
        public android.view.Surface mSurface = null;
        public android.media.Image mImage = null;
        public android.hardware.camera2.CaptureResult mMetadata = null;
        public String mPipeline = "";
        public String mCaptureMode = null;
        public int mCameraId = 0;
    }

    public NoneApsImpl(ApsInterface.ApsListener apsListener) {
        this.mApsListener = apsListener;
    }

    @Override
    public int abortCaptures() {
        return -1;
    }

    @Override
    public void attachPreviewSurface(int cameraId, Surface surface, int surfaceType) {
        // No-op for NoneApsImpl
    }

    @Override
    public int beforeCapture(ApsParameters parameters) {
        return -1;
    }

    @Override
    public void detachPreviewSurface(int cameraId) {
        // No-op for NoneApsImpl
    }

    @Override
    public void flushImage() {
        // No-op for NoneApsImpl
    }

    @Override
    public int forceStop(int mode) {
        return 0;
    }

    @Override
    public void initAlgo(ApsInitParameter parameter) {
        // No-op for NoneApsImpl
    }

    @Override
    public boolean isApsPreviewInit() {
        return true;
    }

    @Override
    public Bitmap processBitmap(Bitmap bitmap, CaptureResult captureResult, ApsParameters parameters) {
        return bitmap;
    }

    @Override
    public int releaseBuffer(String handle, HardwareBuffer buffer) {
        return 0;
    }

    @Override
    public Rect[] roiTranslate(Rect[] rects) {
        return null;
    }

    @Override
    public int setEnableAPSAlgoNode(String nodeName, boolean enabled) {
        return 0;
    }

    @Override
    public int setEnableAPSPipeline(String pipelineName, boolean enabled) {
        return 0;
    }

    @Override
    public void setRequestMetadata(ApsCaptureRequestParam requestParam) {
        // No-op for NoneApsImpl
    }

    @Override
    public int startCapture(ApsParameters parameters) {
        return -1;
    }

    @Override
    public void unInitAlgo(int cameraId) {
        // No-op for NoneApsImpl
    }

    @Override
    public void updateThumbnailMap(ApsResult result) {
        // No-op for NoneApsImpl
    }

    @Override
    public boolean connect(int mode) {
        ApsAdapterLog.v(TAG, "connect");
        if (this.mProcessHandler != null) {
            return true;
        }

        HandlerThread handlerThread = new HandlerThread("NoneApsImpl Process Thread");
        handlerThread.start();
        this.mProcessHandler = new ProcessHandler(handlerThread.getLooper());
        return true;
    }

    @Override
    public void disconnect() {
        if (this.mProcessHandler != null) {
            this.mProcessHandler.getLooper().quitSafely();
            this.mProcessHandler = null;
        }
    }

    @Override
    public int clear() {
        synchronized (this.mCaptureQueueLock) {
            this.mCaptureFrameQueue.clear();
        }
        return 0;
    }

    @Override
    public int addFrameBuff(ApsCaptureParam captureParam, String[] keys, String[] values,
            ApsWatermarkParam watermarkParam) {
        ApsAdapterLog.d(TAG, "addFrameBuff, frameIdx: " + captureParam.getFrameNumber());

        Image image = captureParam.getImageBuffer().getImage();
        if (captureParam.getPhysicMeta() == null) {
            return 0;
        }

        CaptureFrame captureFrame = new CaptureFrame();
        captureFrame.mApsListener = this.mApsListener;
        captureFrame.mWidth = image.getWidth();
        captureFrame.mHeight = image.getHeight();

        // Convert YUV to JPEG for capture frames in NoneApsImpl
        byte[] yuvData = ApsUtils.getYuvDataWithoutPadding(image, 17, null);
        captureFrame.mData = ApsUtils.convertNV21DataToJpeg(yuvData, image.getWidth(), image.getHeight());

        synchronized (this.mCaptureQueueLock) {
            this.mCaptureFrameQueue.add(captureFrame);
        }
        return 0;
    }

    @Override
    public int processImages(String[] keys, String[] values, ApsWatermarkParam watermarkParam) {
        ApsAdapterLog.d(TAG, "processImages");
        synchronized (this.mCaptureQueueLock) {
            if (this.mCaptureFrameQueue.isEmpty()) {
                return -1;
            }

            CaptureFrame nextFrame = this.mCaptureFrameQueue.poll();
            if (nextFrame != null && keys != null) {
                for (int i = 0; i < keys.length; i += 2) {
                    if (ApsParameters.KEY_PROCESS_IMAGE_IDENTITY.equals(keys[i])) {
                        nextFrame.mTimeStamp = Long.decode(keys[i + 1]).longValue();
                        break;
                    }
                }
            }

            if (this.mProcessHandler != null) {
                this.mProcessHandler.sendMessageDelayed(
                        this.mProcessHandler.obtainMessage(MSG_APS_CAPTURE, nextFrame), CAPTURE_PROC_DELAY_MS);
            }
            return 0;
        }
    }

    @Override
    public APSClient.APSRuntimeInfo getRuntimeInfo() {
        return new APSClient.APSRuntimeInfo();
    }

    @Override
    public ApsAdapterDecision.DecisionResult previewDecision(ApsPreviewDecisionParam decisionParam) {
        ApsAdapterDecision.DecisionResult decisionResult = new ApsAdapterDecision.DecisionResult();
        decisionResult.mCameraId = decisionParam.getCameraId();
        decisionResult.mCaptureMode = decisionParam.getCaptureMode();
        decisionResult.mRequestFormat = 256;
        return decisionResult;
    }

    @Override
    public int addPreviewFrameBuff(ApsPreviewParam previewParam, ApsWatermarkParam watermarkParam) {
        int[] roles = previewParam.getRole();
        ApsResult.ImageBuffer[] imgBuffers = previewParam.getImageBufferArray();

        PreviewFrame previewFrame = new PreviewFrame();
        previewFrame.mApsListener = this.mApsListener;
        previewFrame.mTimeStamp = previewParam.getTimeStamp();
        previewFrame.mMetadata = previewParam.getMetaObj();
        previewFrame.mCaptureMode = previewParam.getCaptureMode();

        String activeCamId = (String) previewParam.getMetaObj()
                .get(CaptureResult.LOGICAL_MULTI_CAMERA_ACTIVE_PHYSICAL_ID);
        if (!TextUtils.isEmpty(activeCamId)) {
            previewFrame.mCameraId = activeCamId.equals("1") ? 1 : 0;
        } else {
            ApsAdapterLog.w(TAG, "addPreviewFrameBuff, camera id is null");
        }

        for (int i = 0; i < imgBuffers.length; i++) {
            int role = roles[i];
            if (role == 0 || role == 1) {
                previewFrame.mImage = imgBuffers[i].getImage();
            } else {
                imgBuffers[i].close();
            }
        }

        String[] procParams = previewParam.getProcessParamters();
        if (procParams != null) {
            for (int i = 0; i < procParams.length; i += 2) {
                if (ApsParameters.KEY_PIPELINE.equals(procParams[i])) {
                    previewFrame.mPipeline = procParams[i + 1];
                    break;
                }
            }
        }

        if (this.mProcessHandler != null) {
            this.mProcessHandler.sendMessage(this.mProcessHandler.obtainMessage(MSG_APS_PREVIEW, previewFrame));
        }
        return 0;
    }

    private static class ProcessHandler extends Handler {
        public ProcessHandler(Looper looper) {
            super(looper);
        }

        @Override
        public void handleMessage(Message message) {
            switch (message.what) {
                case MSG_APS_CAPTURE:
                    handleCaptureMessage((CaptureFrame) message.obj);
                    break;
                case MSG_APS_PREVIEW:
                    handlePreviewMessage((PreviewFrame) message.obj);
                    break;
            }
        }

        private void handleCaptureMessage(CaptureFrame frame) {
            ApsResult result = new ApsResult();
            result.mIdentity = frame.mTimeStamp;
            result.mWidth = frame.mWidth;
            result.mHeight = frame.mHeight;
            result.mCopyBuffer = frame.mData;
            result.mBufferType = 256;

            if (frame.mApsListener != null) {
                frame.mApsListener.onCaptureReceived(result);
            }
        }

        private void handlePreviewMessage(PreviewFrame frame) {
            ApsResult result = new ApsResult(frame.mImage);
            result.mIdentity = frame.mTimeStamp;

            if (frame.mMetadata instanceof android.hardware.camera2.TotalCaptureResult) {
                result.mMetadata = (android.hardware.camera2.TotalCaptureResult) frame.mMetadata;
            } else {
                ApsAdapterLog.w(TAG, "handlePreviewMessage, metadata is not TotalCaptureResult");
            }

            result.mPipelineName = frame.mPipeline;
            result.mDecisionResult = new ApsAdapterDecision.DecisionResult();
            result.mDecisionResult.mCameraId = frame.mCameraId;
            result.mDecisionResult.mCaptureMode = frame.mCaptureMode;

            if (frame.mImage != null) {
                result.mWidth = frame.mImage.getWidth();
                result.mHeight = frame.mImage.getHeight();
            }

            if (frame.mApsListener != null) {
                frame.mApsListener.onPreviewReceived(result);
            }
        }
    }
}

package com.oplus.ocs.camera.consumer.apsAdapter.algorithm;

import android.graphics.Bitmap;
import android.graphics.Rect;
import android.hardware.HardwareBuffer;
import android.hardware.camera2.CaptureResult;
import com.oplus.ocs.camera.consumer.apsAdapter.APSClient;
import com.oplus.ocs.camera.consumer.apsAdapter.ApsAdapterLog;
import com.oplus.ocs.camera.consumer.apsAdapter.adapter.ApsAdapterDecision;
import com.oplus.ocs.camera.consumer.apsAdapter.adapter.ApsCaptureParam;
import com.oplus.ocs.camera.consumer.apsAdapter.adapter.ApsCaptureRequestParam;
import com.oplus.ocs.camera.consumer.apsAdapter.adapter.ApsExifData;
import com.oplus.ocs.camera.consumer.apsAdapter.adapter.ApsInitParameter;
import com.oplus.ocs.camera.consumer.apsAdapter.adapter.ApsParameters;
import com.oplus.ocs.camera.consumer.apsAdapter.adapter.ApsPreviewDecisionParam;
import com.oplus.ocs.camera.consumer.apsAdapter.adapter.ApsPreviewParam;
import com.oplus.ocs.camera.consumer.apsAdapter.adapter.ApsResult;
import com.oplus.ocs.camera.consumer.apsAdapter.adapter.ApsUtils;
import com.oplus.ocs.camera.consumer.apsAdapter.adapter.ApsWatermarkParam;
import com.oplus.ocs.camera.consumer.apsAdapter.algorithm.ApsInterface;
import java.util.Arrays;
/* loaded from: classes.dex */
public class FullApsImpl implements ApsInterface, APSClient.BufferCallback, APSClient.HeifCodecCallback {
    private static final String TAG = "FullApsImpl";
    private APSClient mApsClient;
    protected ApsInterface.ApsListener mApsListener;
    private String[] mInitCaptureParameter = null;
    private String[] mInitCaptureAlgo = null;
    private boolean mbConnected = false;
    private boolean mbApsPreviewInit = false;
    private long mFrameLogInterval = 0;

    @Override // com.oplus.ocs.camera.consumer.apsAdapter.APSClient.BufferCallback
    public void onServiceDied() {
    }

    public FullApsImpl(ApsInterface.ApsListener apsListener) {
        this.mApsListener = null;
        this.mApsClient = null;
        this.mApsListener = apsListener;
        this.mApsClient = new APSClient();
        this.mApsClient.setDataCallback(this);
        this.mApsClient.setHeifCodecCallback(this);
    }

    @Override // com.oplus.ocs.camera.consumer.apsAdapter.algorithm.ApsInterface
    public boolean connect() {
        ApsAdapterLog.v(TAG, "connect, mbConnected: " + this.mbConnected);
        if (this.mbConnected) {
            return true;
        }
        if (this.mApsClient.connect() == 0) {
            this.mbConnected = true;
            return true;
        }
        return false;
    }

    @Override // com.oplus.ocs.camera.consumer.apsAdapter.algorithm.ApsInterface
    public void initAlgo(ApsInitParameter apsInitParameter) {
        ApsAdapterLog.v(TAG, "initAlgo, initParameter: " + apsInitParameter + ", mInitParameter: " + Arrays.toString(this.mInitCaptureParameter) + ", mInitAlgo: " + Arrays.toString(this.mInitCaptureAlgo));
        if (2 == apsInitParameter.mApsModule) {
            this.mApsClient.algoInit(apsInitParameter);
            unInitAlgo(apsInitParameter.mApsModule);
        } else {
            unInitAlgo(apsInitParameter.mApsModule);
            this.mApsClient.algoInit(apsInitParameter);
        }
        if (1 == apsInitParameter.mApsModule || 2 == apsInitParameter.mApsModule) {
            this.mInitCaptureParameter = apsInitParameter.mParameters;
            this.mInitCaptureAlgo = apsInitParameter.mInitAlgo;
        }
        if (1 == apsInitParameter.mApsModule || 3 == apsInitParameter.mApsModule) {
            this.mbApsPreviewInit = true;
        }
        ApsAdapterLog.v(TAG, "initAlgo, initParameter end");
    }

    @Override // com.oplus.ocs.camera.consumer.apsAdapter.algorithm.ApsInterface
    public int beforeCapture(ApsParameters apsParameters) {
        return this.mApsClient.beforeCapture(apsParameters);
    }

    @Override // com.oplus.ocs.camera.consumer.apsAdapter.algorithm.ApsInterface
    public int addFrameBuff(ApsCaptureParam apsCaptureParam) {
        return this.mApsClient.addFrameBuff(apsCaptureParam);
    }

    @Override // com.oplus.ocs.camera.consumer.apsAdapter.algorithm.ApsInterface
    public ApsAdapterDecision.DecisionResult previewDecision(ApsPreviewDecisionParam apsPreviewDecisionParam) {
        return this.mApsClient.previewDecision(apsPreviewDecisionParam);
    }

    @Override // com.oplus.ocs.camera.consumer.apsAdapter.algorithm.ApsInterface
    public int processImages(String[] strArr, String[] strArr2, ApsWatermarkParam apsWatermarkParam) {
        ApsAdapterLog.v(TAG, "processImages, processParameters: " + Arrays.toString(strArr) + ", algoFlags: " + Arrays.toString(strArr2));
        return this.mApsClient.processImages(strArr, strArr2, apsWatermarkParam);
    }

    @Override // com.oplus.ocs.camera.consumer.apsAdapter.algorithm.ApsInterface
    public Bitmap processBitmap(Bitmap bitmap, CaptureResult captureResult, ApsParameters apsParameters) {
        return this.mApsClient.processBitmap(bitmap, captureResult, apsParameters);
    }

    @Override // com.oplus.ocs.camera.consumer.apsAdapter.algorithm.ApsInterface
    public void unInitAlgo(int i) {
        ApsAdapterLog.v(TAG, "unInitAlgo, module: " + i + ", mInitParameter: " + Arrays.toString(this.mInitCaptureParameter) + ", mInitCaptureAlgo: " + Arrays.toString(this.mInitCaptureAlgo) + ", mbApsPreviewInit: " + this.mbApsPreviewInit);
        if ((1 == i || 2 == i) && this.mInitCaptureParameter != null && this.mInitCaptureAlgo != null) {
            this.mApsClient.unint(2, this.mInitCaptureParameter, this.mInitCaptureAlgo);
            this.mInitCaptureParameter = null;
            this.mInitCaptureAlgo = null;
        }
        if ((1 == i || 3 == i) && this.mbApsPreviewInit) {
            this.mApsClient.unint(3, (String[]) null, (String[]) null);
            this.mbApsPreviewInit = false;
        }
    }

    @Override // com.oplus.ocs.camera.consumer.apsAdapter.algorithm.ApsInterface
    public int clear() {
        ApsAdapterLog.v(TAG, "clear");
        return this.mApsClient.clear();
    }

    @Override // com.oplus.ocs.camera.consumer.apsAdapter.algorithm.ApsInterface
    public int releaseBuffer(String str, HardwareBuffer hardwareBuffer) {
        return this.mApsClient.releaseBuffer(str, hardwareBuffer);
    }

    @Override // com.oplus.ocs.camera.consumer.apsAdapter.algorithm.ApsInterface
    public APSClient.APSRuntimeInfo getRuntimeInfo() {
        return this.mApsClient.getRuntimeInfo();
    }

    @Override // com.oplus.ocs.camera.consumer.apsAdapter.algorithm.ApsInterface
    public void disconnect() {
        this.mApsClient.destroy();
        this.mbConnected = false;
    }

    @Override // com.oplus.ocs.camera.consumer.apsAdapter.APSClient.BufferCallback
    public void onCaptureCallback(ApsResult apsResult) {
        ApsAdapterLog.v(TAG, "onDataCallback, result: " + apsResult);
        if (apsResult == null) {
            return;
        }
        if (this.mApsListener != null) {
            this.mApsListener.onCaptureReceived(apsResult);
        }
        apsResult.mCopyBuffer = null;
    }

    @Override // com.oplus.ocs.camera.consumer.apsAdapter.APSClient.BufferCallback
    public void onPreviewCallback(ApsResult apsResult) {
        if (apsResult == null) {
            ApsAdapterLog.w(TAG, "onPreviewCallback, apsResult is null, so return");
            return;
        }
        if (this.mApsListener != null) {
            this.mApsListener.onPreviewReceived(apsResult);
        }
        apsResult.mCopyBuffer = null;
    }

    @Override // com.oplus.ocs.camera.consumer.apsAdapter.algorithm.ApsInterface
    public int addPreviewFrameBuff(ApsPreviewParam apsPreviewParam, ApsWatermarkParam apsWatermarkParam) {
        long currentTimeMillis = System.currentTimeMillis();
        if (currentTimeMillis - this.mFrameLogInterval > 3000) {
            ApsAdapterLog.v(TAG, "addPreviewFrameBuff, time: " + apsPreviewParam.getTimeStamp() + ", roles: " + Arrays.toString(apsPreviewParam.getRole()));
            this.mFrameLogInterval = currentTimeMillis;
        }
        ApsResult.ImageBuffer[] imageBufferArray = apsPreviewParam.getImageBufferArray();
        if (apsPreviewParam.getIsDetached() && imageBufferArray != null) {
            for (int i = 0; i < imageBufferArray.length; i++) {
                ApsUtils.detachImage(imageBufferArray[i].getImageReader(), imageBufferArray[i].getImage());
            }
        }
        int addPreviewFrameBuffToAPS = this.mApsClient.addPreviewFrameBuffToAPS(apsPreviewParam, apsWatermarkParam);
        if (apsPreviewParam.getIsDetached() && imageBufferArray != null) {
            for (ApsResult.ImageBuffer imageBuffer : imageBufferArray) {
                imageBuffer.getImage().close();
            }
        }
        return addPreviewFrameBuffToAPS;
    }

    @Override // com.oplus.ocs.camera.consumer.apsAdapter.algorithm.ApsInterface
    public int setEnableAPSPipeline(String str, boolean z) {
        return this.mApsClient.setEnableAPSPipeline(str, z);
    }

    @Override // com.oplus.ocs.camera.consumer.apsAdapter.algorithm.ApsInterface
    public int setEnableAPSAlgoNode(String str, boolean z) {
        return this.mApsClient.setEnableAPSAlgoNode(str, z);
    }

    @Override // com.oplus.ocs.camera.consumer.apsAdapter.algorithm.ApsInterface
    public Rect[] roiTranslate(Rect[] rectArr) {
        return this.mApsClient.roiTranslate(rectArr);
    }

    @Override // com.oplus.ocs.camera.consumer.apsAdapter.algorithm.ApsInterface
    public void setRequestMetadata(ApsCaptureRequestParam apsCaptureRequestParam) {
        this.mApsClient.setRequestMetadata(apsCaptureRequestParam);
    }

    @Override // com.oplus.ocs.camera.consumer.apsAdapter.APSClient.HeifCodecCallback
    public void initHeifCodec(long j) {
        this.mApsListener.initHeifCodec(j);
    }

    @Override // com.oplus.ocs.camera.consumer.apsAdapter.APSClient.HeifCodecCallback
    public void processHeifCodec(long j, HardwareBuffer hardwareBuffer, ApsExifData apsExifData, int i, int i2) {
        this.mApsListener.processHeifCodec(j, hardwareBuffer, apsExifData, i, i2);
    }

    @Override // com.oplus.ocs.camera.consumer.apsAdapter.APSClient.HeifCodecCallback
    public void uninitHeifCodec(long j) {
        this.mApsListener.uninitHeifCodec(j);
    }

    @Override // com.oplus.ocs.camera.consumer.apsAdapter.algorithm.ApsInterface
    public void flushImage() {
        this.mApsClient.flushImage();
    }

    @Override // com.oplus.ocs.camera.consumer.apsAdapter.APSClient.HeifCodecCallback
    public void setHeicProcessInApp(boolean z) {
        this.mApsListener.setHeicProcessInApp(z);
    }

    @Override // com.oplus.ocs.camera.consumer.apsAdapter.algorithm.ApsInterface
    public void updateThumbnailMap(ApsResult apsResult) {
        this.mApsClient.updateThumbnailMap(apsResult);
    }

    @Override // com.oplus.ocs.camera.consumer.apsAdapter.algorithm.ApsInterface
    public int forceStop(int i) {
        return this.mApsClient.stop(i);
    }

    @Override // com.oplus.ocs.camera.consumer.apsAdapter.algorithm.ApsInterface
    public boolean isApsPreviewInit() {
        return this.mbApsPreviewInit;
    }
}

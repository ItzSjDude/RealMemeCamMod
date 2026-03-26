package com.oplus.ocs.camera.consumer.apsAdapter.algorithm;

import android.graphics.Bitmap;
import android.graphics.Rect;
import android.hardware.HardwareBuffer;
import android.hardware.camera2.CaptureResult;
import android.view.Surface;
import com.oplus.ocs.camera.consumer.apsAdapter.APSClient;
import com.oplus.ocs.camera.consumer.apsAdapter.adapter.ApsAdapterDecision;
import com.oplus.ocs.camera.consumer.apsAdapter.adapter.ApsCaptureParam;
import com.oplus.ocs.camera.consumer.apsAdapter.adapter.ApsCaptureRequestParam;
import com.oplus.ocs.camera.consumer.apsAdapter.adapter.ApsExifData;
import com.oplus.ocs.camera.consumer.apsAdapter.adapter.ApsInitParameter;
import com.oplus.ocs.camera.consumer.apsAdapter.adapter.ApsParameters;
import com.oplus.ocs.camera.consumer.apsAdapter.adapter.ApsPreviewDecisionParam;
import com.oplus.ocs.camera.consumer.apsAdapter.adapter.ApsPreviewParam;
import com.oplus.ocs.camera.consumer.apsAdapter.adapter.ApsResult;
import com.oplus.ocs.camera.consumer.apsAdapter.adapter.ApsWatermarkParam;

/* JADX INFO: loaded from: classes.dex */
public interface ApsInterface {
    public static final int ADD_FRAME_ERROR = -1;
    public static final int ADD_FRAME_WITH_COPY = 0;
    public static final int ADD_FRAME_WITH_DETACH = 1;
    public static final int ADD_FRAME_WITH_HOLD = 2;

    public interface ApsListener {
        void initHeifCodec(long j);

        void onCaptureReceived(ApsResult apsResult);

        void onPreviewReceived(ApsResult apsResult);

        void processHeifCodec(long j, HardwareBuffer hardwareBuffer, ApsExifData apsExifData, int i, int i2);

        void setHeicProcessInApp(boolean z);

        void uninitHeifCodec(long j);
    }

    int abortCaptures();

    int addFrameBuff(ApsCaptureParam apsCaptureParam, String[] keys, String[] values,
            ApsWatermarkParam apsWatermarkParam);

    int addPreviewFrameBuff(ApsPreviewParam apsPreviewParam, ApsWatermarkParam apsWatermarkParam);

    void attachPreviewSurface(int i, Surface surface, int i2);

    int beforeCapture(ApsParameters apsParameters);

    int clear();

    boolean connect(int i);

    void detachPreviewSurface(int i);

    void disconnect();

    void flushImage();

    int forceStop(int i);

    APSClient.APSRuntimeInfo getRuntimeInfo();

    void initAlgo(ApsInitParameter apsInitParameter);

    boolean isApsPreviewInit();

    ApsAdapterDecision.DecisionResult previewDecision(ApsPreviewDecisionParam apsPreviewDecisionParam);

    Bitmap processBitmap(Bitmap bitmap, CaptureResult captureResult, ApsParameters apsParameters);

    int processImages(String[] keys, String[] values, ApsWatermarkParam apsWatermarkParam);

    int releaseBuffer(String str, HardwareBuffer hardwareBuffer);

    Rect[] roiTranslate(Rect[] rectArr);

    int setEnableAPSAlgoNode(String str, boolean z);

    int setEnableAPSPipeline(String str, boolean z);

    void setRequestMetadata(ApsCaptureRequestParam apsCaptureRequestParam);

    int startCapture(ApsParameters apsParameters);

    void unInitAlgo(int i);

    void updateThumbnailMap(ApsResult apsResult);
}

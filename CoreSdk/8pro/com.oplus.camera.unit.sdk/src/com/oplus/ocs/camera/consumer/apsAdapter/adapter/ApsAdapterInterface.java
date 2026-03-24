package com.oplus.ocs.camera.consumer.apsAdapter.adapter;

import android.graphics.Bitmap;
import android.graphics.Rect;
import android.hardware.HardwareBuffer;
import android.hardware.camera2.CaptureResult;
import android.util.ArrayMap;
import android.view.Surface;
import com.oplus.ocs.camera.consumer.apsAdapter.APSClient;
import com.oplus.ocs.camera.consumer.apsAdapter.ApsCameraRequestTag;
import com.oplus.ocs.camera.consumer.apsAdapter.adapter.ApsAdapterDecision;
import com.oplus.ocs.camera.consumer.apsAdapter.adapter.ImageCategory;
import com.oplus.ocs.camera.consumer.apsAdapter.service.ApsAdapterListener;
import java.util.HashMap;

/* JADX INFO: loaded from: classes.dex */
public interface ApsAdapterInterface {

    public interface ImageProcessListener {
        void afterAddFrame(ImageCategory.ImageItemInfo imageItemInfo, ImageCategory.MetaItemInfo metaItemInfo);

        void afterProcessImage(int i, ImageCategory.ImageItemInfo imageItemInfo, ImageCategory.MetaItemInfo metaItemInfo);

        HashMap<String, String> fillApsParameters(ApsInitParameter apsInitParameter);

        HashMap<String, String> fillApsParameters(ImageCategory imageCategory, int i, boolean z);

        ApsInitParameter getApsInitParameter(ApsInitParameter apsInitParameter, ApsInitParameter apsInitParameter2);

        void initHeifCodec(long j);

        void onApsConnected();

        void onBurstShotEnd(ImageCategory.ImageItemInfo imageItemInfo, ImageCategory.MetaItemInfo metaItemInfo);

        void onBurstShotStart(long j);

        void onFirstCaptureFrameAdd(ImageCategory imageCategory);

        void onHeicReceived(ApsResult apsResult);

        void onJpegReceived(ApsResult apsResult);

        void onPreviewFrameProcessStarted(long j, Long l);

        void onPreviewReceived(ApsResult apsResult, ImageCategory.ImageItemInfo imageItemInfo);

        void onProcessQueueEmpty();

        void onReprocess(ImageCategory imageCategory, ApsResult apsResult);

        void processHeifCodec(long j, HardwareBuffer hardwareBuffer, ApsExifData apsExifData, int i, int i2);

        void uninitHeifCodec(long j);
    }

    int abortCaptures();

    void addImage(ImageCategory.ImageItemInfo imageItemInfo);

    void addMetadata(ImageCategory.MetaItemInfo metaItemInfo);

    void addPreviewImage(ImageCategory.ImageItemInfo imageItemInfo);

    void addPreviewMetadata(ImageCategory.MetaItemInfo metaItemInfo);

    void addTuningItem(ImageCategory.TuningItemInfo tuningItemInfo);

    void addVideoImage(ImageCategory.ImageItemInfo imageItemInfo);

    void attachPreviewSurface(int i, Surface surface, int i2);

    int beforeCapture(ImageCategory.MetaItemInfo metaItemInfo);

    void closeCamera();

    void connectAps(String str);

    void countBurstShot(ImageCategory.ImageItemInfo imageItemInfo, ImageCategory.MetaItemInfo metaItemInfo);

    void detachPreviewSurface(int i);

    void disconnectAps();

    int forceStop();

    APSClient.APSRuntimeInfo getRuntimeInfo();

    void init(ApsInitParameter apsInitParameter);

    boolean isApsCaptureAlgoInitializing();

    boolean notifyLastCaptureFrame(ImageCategory.ImageItemInfo imageItemInfo, ImageCategory.MetaItemInfo metaItemInfo);

    void onBeforeOpenCamera();

    boolean onCaptureFailed(long j, int i, int i2, boolean z, ImageCategory.ImageItemInfo imageItemInfo);

    void onDecisionControlData(ApsAdapterDecision.DecisionControlData decisionControlData);

    void onDestroy();

    boolean onPreviewFailed(long j);

    Bitmap processBitmap(Bitmap bitmap, CaptureResult captureResult, ImageCategory.MetaItemInfo metaItemInfo);

    Rect[] roiTranslate(Rect[] rectArr);

    void sessionClosed(boolean z);

    int setEnableAPSAlgoNode(String str, boolean z);

    int setEnableAPSPipeline(String str, boolean z);

    void setPermitProcess(ImageCategory.ItemInfoType itemInfoType, boolean z);

    void setRequestMetadata(String str, ArrayMap<String, Long> arrayMap, int i, int i2);

    void startCapture(ImageCategory.MetaItemInfo metaItemInfo);

    void unInitApsAlgo(int i);

    void updateThumbnailMap(long j);

    void videoSnapshot(ApsAdapterListener.CaptureCallback captureCallback, ApsCameraRequestTag apsCameraRequestTag);

    void waitAddFrameFinish(boolean z);
}

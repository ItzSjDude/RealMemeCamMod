package com.oplus.ocs.camera.consumer;

import android.graphics.Bitmap;
import android.graphics.Rect;
import android.hardware.camera2.CaptureRequest;
import android.hardware.camera2.CaptureResult;
import android.hardware.camera2.TotalCaptureResult;
import android.media.Image;
import android.media.ImageReader;
import com.oplus.ocs.camera.common.util.ApsRequestTag;
import com.oplus.ocs.camera.common.util.CameraImage;
import com.oplus.ocs.camera.common.util.CameraRequestTag;
import com.oplus.ocs.camera.consumer.apsAdapter.ApsCameraRequestTag;
import com.oplus.ocs.camera.consumer.apsAdapter.adapter.ApsAdapterDecision;
import com.oplus.ocs.camera.consumer.apsAdapter.adapter.ApsCaptureResult;
import com.oplus.ocs.camera.consumer.apsAdapter.adapter.ApsResult;
import com.oplus.ocs.camera.consumer.apsAdapter.adapter.ApsTotalResult;
import com.oplus.ocs.camera.consumer.apsAdapter.adapter.ImageCategory;
import com.oplus.ocs.camera.consumer.apsAdapter.service.ApsAdapterListener;
import java.util.Map;
/* loaded from: classes.dex */
public interface ApsProcessorContract {

    /* loaded from: classes.dex */
    public interface IConsumer {
        void afterProcessImage(int i, ImageCategory.ImageItemInfo imageItemInfo, ImageCategory.MetaItemInfo metaItemInfo);

        void fillApsParameters(int i, Map<String, String> map);

        Map<String, Object> generateImageInfo(Image image);

        boolean isApsFinishAddFrame();

        boolean isApsFinishProcessFrame();

        boolean needMatchPreviewTimestamp(String str, CameraRequestTag cameraRequestTag);

        void onApsJpegArrived(CameraImage cameraImage, ApsResult apsResult);

        void onBurstShotEnd(ImageCategory.ImageItemInfo imageItemInfo, ImageCategory.MetaItemInfo metaItemInfo);

        void onBurstShotStart(long j);

        void onDecisionArrived(ApsAdapterDecision.DecisionResult decisionResult);

        void onFinishAddFrame(ImageCategory.ImageItemInfo imageItemInfo, ImageCategory.MetaItemInfo metaItemInfo, CameraRequestTag cameraRequestTag);

        void onFirstCaptureFrameAdd(ImageCategory imageCategory);

        void onFrameInterpolationStarted();

        void onHalPreviewCollected(Long l);

        void onPreviewReceived(ApsResult apsResult, ApsTotalResult apsTotalResult);

        void onReprocess(Image image, TotalCaptureResult totalCaptureResult, Rect rect, CameraRequestTag cameraRequestTag);

        void onStopRecordingFrame();

        void onVideoReceived(ApsResult apsResult);
    }

    /* loaded from: classes.dex */
    public interface IProcessor {
        void addPictureImage(ImageReader imageReader, Image image, int i, CameraRequestTag cameraRequestTag, String str);

        void addPictureImage(ApsResult.ImageBuffer imageBuffer, int i, CameraRequestTag cameraRequestTag);

        void addPictureMeta(CaptureRequest captureRequest, TotalCaptureResult totalCaptureResult);

        void addPictureMeta(CameraRequestTag cameraRequestTag, ApsCaptureResult apsCaptureResult, boolean z);

        void addPreview(ImageReader imageReader, Image image, ImageCategory.ItemInfoType itemInfoType, String str);

        void addPreviewMeta(CaptureRequest captureRequest, TotalCaptureResult totalCaptureResult, ImageCategory.ItemInfoType itemInfoType);

        void addPreviewMeta(CaptureRequest captureRequest, ImageReader imageReader, Image image, ImageCategory.ItemInfoType itemInfoType);

        void addTuningInfo(ImageCategory.TuningItemInfo tuningItemInfo);

        void addVideoImage(ImageReader imageReader, Image image, ImageCategory.ItemInfoType itemInfoType);

        void beforeCapture(ImageCategory.MetaItemInfo metaItemInfo);

        void capture(boolean z);

        boolean checkInputMemSize();

        boolean checkRuntimeState(long j, long j2);

        long getFirstExposureTime();

        int getFirstFrameHashCode();

        long getNightCaptureTotalTime();

        boolean isFirstFrame();

        boolean notifyLastCaptureFrame(ImageCategory.MetaItemInfo metaItemInfo);

        void onApsCaptureStarted(long j);

        void onCameraClosed();

        void onCaptureFailed(CaptureRequest captureRequest);

        void onPictureMetaStart(CaptureRequest captureRequest, long j);

        void onRecordingFrameInterpolated();

        void onRecordingResult(int i);

        void onSessionClosed(boolean z);

        void onSessionConfigured(ApsRequestTag apsRequestTag);

        void previewDecision(CaptureResult captureResult);

        Bitmap processBitmap(Bitmap bitmap, CaptureResult captureResult, ImageCategory.MetaItemInfo metaItemInfo);

        void release();

        void setRecordingTag(CameraRequestTag cameraRequestTag);

        void startPreview(CameraRequestTag cameraRequestTag);

        void stopPreview(String str);

        void updateThumbnailMap(long j);

        void videoSnapshot(ApsAdapterListener.CaptureCallback captureCallback, ApsCameraRequestTag apsCameraRequestTag);
    }
}

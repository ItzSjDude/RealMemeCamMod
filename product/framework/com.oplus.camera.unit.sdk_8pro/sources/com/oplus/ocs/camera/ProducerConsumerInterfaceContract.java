package com.oplus.ocs.camera;

import android.graphics.Bitmap;
import android.graphics.Rect;
import android.hardware.camera2.CaptureResult;
import android.hardware.camera2.TotalCaptureResult;
import android.media.Image;
import android.os.Handler;
import androidx.annotation.NonNull;
import com.oplus.ocs.camera.appinterface.CameraPictureCallbackAdapter;
import com.oplus.ocs.camera.appinterface.CameraPreviewCallbackAdapter;
import com.oplus.ocs.camera.appinterface.CameraRecordingCallbackAdapter;
import com.oplus.ocs.camera.appinterface.CameraStateCallbackAdapter;
import com.oplus.ocs.camera.common.util.CameraRequestTag;
import com.oplus.ocs.camera.common.util.ConfigInfoPkg;
import com.oplus.ocs.camera.consumer.apsAdapter.ApsCameraRequestTag;
import com.oplus.ocs.camera.consumer.apsAdapter.adapter.ApsAdapterDecision;
import com.oplus.ocs.camera.consumer.apsAdapter.adapter.ImageCategory;
import java.util.Map;
/* loaded from: classes.dex */
public interface ProducerConsumerInterfaceContract {

    /* loaded from: classes.dex */
    public interface ConsumerInterface {
        int abortCaptures();

        void beforeCapture(ImageCategory.MetaItemInfo metaItemInfo);

        boolean checkInputMemSize();

        boolean checkRuntimeState(long j, long j2);

        CameraPictureCallbackAdapter createCameraPictureCallback();

        CameraPreviewCallbackAdapter createCameraPreviewCallback();

        CameraRecordingCallbackAdapter createCameraRecordingCallback();

        int getCurrentSensorMode();

        long getRuntimeMemorySize(long j);

        boolean isApsCaptureAlgoInitializing();

        boolean isPreviewProcessByAps();

        boolean isVideoRecording();

        boolean linkSurfaceToConsumer(CameraRequestTag cameraRequestTag, String str, int i);

        boolean notifyLastCaptureFrame(ImageCategory.ImageItemInfo imageItemInfo, ImageCategory.MetaItemInfo metaItemInfo);

        void onCameraClosed();

        void onCameraDisconnected();

        void onConfigParseDone();

        void onSessionClosed();

        void onSessionConfigured(ConfigInfoPkg configInfoPkg);

        Bitmap processBitmap(Bitmap bitmap, CaptureResult captureResult, ImageCategory.MetaItemInfo metaItemInfo);

        void release();

        void setProducer(ProducerInterface producerInterface);

        void startCapture(CameraRequestTag cameraRequestTag);

        void updateThumbnailMap(long j);

        void videoSnapshot(ApsCameraRequestTag apsCameraRequestTag);
    }

    /* loaded from: classes.dex */
    public interface ProducerInterface {
        CameraStateCallbackAdapter createCameraStateCallback(@NonNull CameraStateCallbackAdapter cameraStateCallbackAdapter, Handler handler);

        Map<String, Object> generateImageInfo(Image image);

        boolean isAiEnhancementVideoOpen();

        boolean isApsFinishAddFrame();

        boolean isApsFinishProcessFrame();

        boolean isPreviewInPreviewOn();

        boolean needApsProcessor();

        boolean needMatchPreviewTimestamp(String str, CameraRequestTag cameraRequestTag, ApsAdapterDecision.DecisionResult decisionResult);

        void onAfterProcessImage();

        void onCaptureCompleted();

        void onFinishAddFrame();

        void onFirstPreviewMetaReceived();

        void onPreviewResultReceived(Handler handler, CameraPreviewCallbackAdapter.PreviewResult previewResult);

        void onReprocess(Image image, TotalCaptureResult totalCaptureResult, Rect rect, CameraRequestTag cameraRequestTag);

        void setApsFinishProcessFrame(boolean z);

        void setConsumer(ConsumerInterface consumerInterface);
    }
}

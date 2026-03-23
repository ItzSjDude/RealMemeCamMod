package com.oplus.ocs.camera.appinterface;

import android.graphics.Bitmap;
import android.hardware.camera2.CaptureRequest;
import android.hardware.camera2.CaptureResult;
import android.os.Handler;
import android.view.Surface;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.oplus.ocs.camera.common.parameter.SdkCameraDeviceConfig;
import java.util.Map;
/* loaded from: classes.dex */
public interface CameraDeviceInterface {
    void abortCaptures();

    void close(boolean z);

    void close(boolean z, boolean z2);

    void closeSession();

    void configure(@NonNull SdkCameraDeviceConfig sdkCameraDeviceConfig);

    CameraDeviceInfoInterface getCameraDeviceInfo(String str, String str2);

    Surface getVideoSurface();

    boolean notifyLastCaptureFrame();

    void pauseRecording();

    Bitmap processBitmap(Bitmap bitmap, CaptureResult captureResult, int i, int i2, int i3);

    void registerFlashCallback(@NonNull CameraFlashCallbackAdapter cameraFlashCallbackAdapter, @Nullable Handler handler);

    void resumeRecording();

    <T> void setParameter(@NonNull CaptureRequest.Key<T> key, T t);

    <T> void setParameter(String str, @NonNull CaptureRequest.Key<T> key, T t);

    void setParameter(@NonNull String str, Object obj);

    void setParameter(String str, @NonNull String str2, Object obj);

    void setStopPreviewAfterCapture(boolean z);

    void startPreview(Map<String, Surface> map, CameraPreviewCallbackAdapter cameraPreviewCallbackAdapter, Handler handler);

    void startRecording(CameraRecordingCallbackAdapter cameraRecordingCallbackAdapter, Handler handler);

    void stopPreview();

    void stopPreview(boolean z);

    void stopRecording();

    void takePicture(CameraPictureCallbackAdapter cameraPictureCallbackAdapter, Handler handler);

    void updateThumbnailMap(long j);
}

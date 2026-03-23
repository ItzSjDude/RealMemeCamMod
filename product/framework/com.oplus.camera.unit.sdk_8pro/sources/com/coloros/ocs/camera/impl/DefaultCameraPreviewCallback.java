package com.coloros.ocs.camera.impl;

import android.hardware.camera2.CaptureFailure;
import android.hardware.camera2.CaptureRequest;
import android.hardware.camera2.CaptureResult;
import android.hardware.camera2.TotalCaptureResult;
import android.view.Surface;
import androidx.annotation.NonNull;
import com.coloros.ocs.camera.callback.CameraPreviewCallbackAdapter;
import com.oplus.ocs.camera.appinterface.CameraPreviewCallbackAdapter;
/* loaded from: classes.dex */
public final class DefaultCameraPreviewCallback extends CameraPreviewCallbackAdapter {
    private com.coloros.ocs.camera.callback.CameraPreviewCallbackAdapter mCameraPreviewCallback;

    /* JADX INFO: Access modifiers changed from: package-private */
    public DefaultCameraPreviewCallback(com.coloros.ocs.camera.callback.CameraPreviewCallbackAdapter cameraPreviewCallbackAdapter) {
        this.mCameraPreviewCallback = cameraPreviewCallbackAdapter;
    }

    @Override // com.oplus.ocs.camera.appinterface.CameraPreviewCallbackAdapter
    public void onCaptureCompleted(CaptureRequest captureRequest, CameraPreviewCallbackAdapter.PreviewResult previewResult) {
        this.mCameraPreviewCallback.onCaptureCompleted(captureRequest, new CameraPreviewCallbackAdapter.PreviewResult(previewResult));
    }

    @Override // com.oplus.ocs.camera.appinterface.CameraPreviewCallbackAdapter
    public void onCaptureCompleted(@NonNull CaptureRequest captureRequest, @NonNull TotalCaptureResult totalCaptureResult, String str) {
        this.mCameraPreviewCallback.onCaptureCompleted(captureRequest, totalCaptureResult, str);
    }

    @Override // com.oplus.ocs.camera.appinterface.CameraPreviewCallbackAdapter
    public void onPreviewRequestStopped(String str) {
        this.mCameraPreviewCallback.onPreviewRequestStopped(str);
    }

    @Override // com.oplus.ocs.camera.appinterface.CameraPreviewCallbackAdapter
    public void onFirstMetaArrived() {
        this.mCameraPreviewCallback.onFirstMetaArrived();
    }

    @Override // com.oplus.ocs.camera.appinterface.CameraPreviewCallbackAdapter
    public void onPreviewCaptureStarted(@NonNull CaptureRequest captureRequest, long j, long j2) {
        this.mCameraPreviewCallback.onPreviewCaptureStarted(captureRequest, j, j2);
    }

    @Override // com.oplus.ocs.camera.appinterface.CameraPreviewCallbackAdapter
    public void onPreviewCaptureProgressed(@NonNull CaptureRequest captureRequest, @NonNull CaptureResult captureResult) {
        this.mCameraPreviewCallback.onPreviewCaptureProgressed(captureRequest, captureResult);
    }

    @Override // com.oplus.ocs.camera.appinterface.CameraPreviewCallbackAdapter
    public void onPreviewCaptureFailed(@NonNull CaptureRequest captureRequest, @NonNull CaptureFailure captureFailure) {
        this.mCameraPreviewCallback.onPreviewCaptureFailed(captureRequest, captureFailure);
    }

    @Override // com.oplus.ocs.camera.appinterface.CameraPreviewCallbackAdapter
    public void onPreviewCaptureSequenceCompleted(int i, long j) {
        this.mCameraPreviewCallback.onPreviewCaptureSequenceCompleted(i, j);
    }

    @Override // com.oplus.ocs.camera.appinterface.CameraPreviewCallbackAdapter
    public void onPreviewCaptureSequenceAborted(int i) {
        this.mCameraPreviewCallback.onPreviewCaptureSequenceAborted(i);
    }

    @Override // com.oplus.ocs.camera.appinterface.CameraPreviewCallbackAdapter
    public void onPreviewCaptureBufferLost(@NonNull CaptureRequest captureRequest, @NonNull Surface surface, long j) {
        this.mCameraPreviewCallback.onPreviewCaptureBufferLost(captureRequest, surface, j);
    }
}

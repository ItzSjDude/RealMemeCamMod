package com.coloros.ocs.camera.impl;

import android.hardware.camera2.CaptureFailure;
import android.hardware.camera2.CaptureRequest;
import android.hardware.camera2.TotalCaptureResult;
import android.view.Surface;
import androidx.annotation.NonNull;
import com.oplus.ocs.camera.common.util.CameraImage;

/* JADX INFO: loaded from: classes.dex */
public class DefaultPictureCallback extends com.oplus.ocs.camera.appinterface.CameraPictureCallbackAdapter {
    private com.coloros.ocs.camera.callback.CameraPictureCallbackAdapter mCameraPictureCallback;

    DefaultPictureCallback(com.coloros.ocs.camera.callback.CameraPictureCallbackAdapter cameraPictureCallbackAdapter) {
        this.mCameraPictureCallback = cameraPictureCallbackAdapter;
    }

    @Override // com.oplus.ocs.camera.appinterface.CameraPictureCallbackAdapter
    public void onImageReceived(CameraImage cameraImage) {
        this.mCameraPictureCallback.onImageReceived(new com.coloros.ocs.camera.util.CameraImage(cameraImage));
    }

    @Override // com.oplus.ocs.camera.appinterface.CameraPictureCallbackAdapter
    public void onCaptureStarted(@NonNull CaptureRequest captureRequest, long j, long j2) {
        this.mCameraPictureCallback.onCaptureStarted(captureRequest, j, j2);
    }

    @Override // com.oplus.ocs.camera.appinterface.CameraPictureCallbackAdapter
    public void onCaptureStarted(CaptureRequest captureRequest, long j) {
        this.mCameraPictureCallback.onCaptureStarted(captureRequest, j);
    }

    @Override // com.oplus.ocs.camera.appinterface.CameraPictureCallbackAdapter
    public void onPictureCaptureProgressed(@NonNull CaptureRequest captureRequest, @NonNull com.oplus.ocs.camera.appinterface.CameraPictureCallbackAdapter.PictureResult pictureResult) {
        this.mCameraPictureCallback.onPictureCaptureProgressed(captureRequest, new com.oplus.ocs.camera.appinterface.CameraPictureCallbackAdapter.PictureResult(pictureResult.getCaptureResult(), pictureResult.getCaptureFailure()));
    }

    @Override // com.oplus.ocs.camera.appinterface.CameraPictureCallbackAdapter
    public void onCaptureCompleted(@NonNull CaptureRequest captureRequest, @NonNull TotalCaptureResult totalCaptureResult, String str) {
        this.mCameraPictureCallback.onCaptureCompleted(captureRequest, totalCaptureResult, str);
    }

    @Override // com.oplus.ocs.camera.appinterface.CameraPictureCallbackAdapter
    public void onCaptureCompleted(CaptureRequest captureRequest, com.oplus.ocs.camera.appinterface.CameraPictureCallbackAdapter.PictureResult pictureResult) {
        this.mCameraPictureCallback.onCaptureCompleted(captureRequest, new com.oplus.ocs.camera.appinterface.CameraPictureCallbackAdapter.PictureResult(pictureResult.getCaptureResult(), pictureResult.getCaptureFailure()));
    }

    @Override // com.oplus.ocs.camera.appinterface.CameraPictureCallbackAdapter
    public void onCaptureFailed(@NonNull CaptureRequest captureRequest, @NonNull CaptureFailure captureFailure) {
        this.mCameraPictureCallback.onCaptureFailed(captureRequest, captureFailure);
    }

    @Override // com.oplus.ocs.camera.appinterface.CameraPictureCallbackAdapter
    public void onCaptureFailed(CaptureRequest captureRequest, com.oplus.ocs.camera.appinterface.CameraPictureCallbackAdapter.PictureResult pictureResult) {
        com.oplus.ocs.camera.appinterface.CameraPictureCallbackAdapter.PictureResult pictureResult2;
        if (pictureResult == null) {
            pictureResult2 = new com.oplus.ocs.camera.appinterface.CameraPictureCallbackAdapter.PictureResult(null, null);
        } else {
            pictureResult2 = new com.oplus.ocs.camera.appinterface.CameraPictureCallbackAdapter.PictureResult(pictureResult.getCaptureResult(), pictureResult.getCaptureFailure());
        }
        this.mCameraPictureCallback.onCaptureFailed(captureRequest, pictureResult2);
    }

    @Override // com.oplus.ocs.camera.appinterface.CameraPictureCallbackAdapter
    public void onPictureCaptureSequenceCompleted(int i, long j) {
        this.mCameraPictureCallback.onPictureCaptureSequenceCompleted(i, j);
    }

    @Override // com.oplus.ocs.camera.appinterface.CameraPictureCallbackAdapter
    public void onPictureCaptureSequenceAborted(int i) {
        this.mCameraPictureCallback.onPictureCaptureSequenceAborted(i);
    }

    @Override // com.oplus.ocs.camera.appinterface.CameraPictureCallbackAdapter
    public void onPictureCaptureBufferLost(@NonNull CaptureRequest captureRequest, @NonNull Surface surface, long j) {
        this.mCameraPictureCallback.onPictureCaptureBufferLost(captureRequest, surface, j);
    }
}

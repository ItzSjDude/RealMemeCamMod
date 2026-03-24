package com.coloros.ocs.camera.callback;

import android.hardware.camera2.CaptureFailure;
import android.hardware.camera2.CaptureRequest;
import android.hardware.camera2.CaptureResult;
import android.hardware.camera2.TotalCaptureResult;
import android.view.Surface;
import androidx.annotation.NonNull;
import com.coloros.ocs.camera.util.CameraImage;

/* JADX INFO: loaded from: classes.dex */
public abstract class CameraPictureCallbackAdapter {
    public void onCaptureCompleted(@NonNull CaptureRequest captureRequest, @NonNull TotalCaptureResult totalCaptureResult, String str) {
    }

    public void onCaptureCompleted(CaptureRequest captureRequest, PictureResult pictureResult) {
    }

    public void onCaptureFailed(CaptureRequest captureRequest, PictureResult pictureResult) {
    }

    public void onCaptureStarted(CaptureRequest captureRequest, long j) {
    }

    public void onImageReceived(CameraImage cameraImage) {
    }

    public void onPictureCaptureBufferLost(@NonNull CaptureRequest captureRequest, @NonNull Surface surface, long j) {
    }

    public void onPictureCaptureProgressed(@NonNull CaptureRequest captureRequest, @NonNull PictureResult pictureResult) {
    }

    public void onPictureCaptureSequenceAborted(int i) {
    }

    public void onPictureCaptureSequenceCompleted(int i, long j) {
    }

    public void onCaptureStarted(@NonNull CaptureRequest captureRequest, long j, long j2) {
        onCaptureStarted(captureRequest, j);
    }

    public void onCaptureFailed(@NonNull CaptureRequest captureRequest, @NonNull CaptureFailure captureFailure) {
        onCaptureFailed(captureRequest, new PictureResult(null, captureFailure));
    }

    public static final class PictureResult {
        private CaptureFailure mCaptureFailure;
        private CaptureResult mCaptureResult;

        public PictureResult(CaptureResult captureResult, CaptureFailure captureFailure) {
            this.mCaptureResult = captureResult;
            this.mCaptureFailure = captureFailure;
        }

        public <T> T get(CaptureResult.Key<T> key) {
            CaptureResult captureResult = this.mCaptureResult;
            if (captureResult != null) {
                return (T) captureResult.get(key);
            }
            return null;
        }

        public CaptureResult getCaptureResult() {
            return this.mCaptureResult;
        }

        public CaptureFailure getCaptureFailure() {
            return this.mCaptureFailure;
        }
    }
}

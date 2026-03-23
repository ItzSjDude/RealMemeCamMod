package com.coloros.ocs.camera.callback;

import android.hardware.camera2.CaptureFailure;
import android.hardware.camera2.CaptureRequest;
import android.hardware.camera2.CaptureResult;
import android.hardware.camera2.TotalCaptureResult;
import android.view.Surface;
import androidx.annotation.NonNull;
import com.oplus.ocs.camera.appinterface.CameraPreviewCallbackAdapter;
import java.util.concurrent.ConcurrentHashMap;
/* loaded from: classes.dex */
public abstract class CameraPreviewCallbackAdapter {
    public void onCaptureCompleted(CaptureRequest captureRequest, PreviewResult previewResult) {
    }

    public void onFirstMetaArrived() {
    }

    public void onPreviewCaptureBufferLost(@NonNull CaptureRequest captureRequest, @NonNull Surface surface, long j) {
    }

    public void onPreviewCaptureFailed(@NonNull CaptureRequest captureRequest, @NonNull CaptureFailure captureFailure) {
    }

    public void onPreviewCaptureProgressed(@NonNull CaptureRequest captureRequest, @NonNull CaptureResult captureResult) {
    }

    public void onPreviewCaptureSequenceAborted(int i) {
    }

    public void onPreviewCaptureSequenceCompleted(int i, long j) {
    }

    public void onPreviewCaptureStarted(@NonNull CaptureRequest captureRequest, long j, long j2) {
    }

    public void onPreviewRequestStopped(String str) {
    }

    public void onCaptureCompleted(@NonNull CaptureRequest captureRequest, @NonNull TotalCaptureResult totalCaptureResult, String str) {
        onCaptureCompleted(captureRequest, new PreviewResult(totalCaptureResult));
    }

    public void onCaptureCompleted(@NonNull CaptureRequest captureRequest, @NonNull TotalCaptureResult totalCaptureResult, ConcurrentHashMap<String, Integer> concurrentHashMap) {
        onCaptureCompleted(captureRequest, new PreviewResult(totalCaptureResult, concurrentHashMap));
    }

    /* loaded from: classes.dex */
    public static final class PreviewResult {
        private ConcurrentHashMap<String, Integer> mApsTotalResult;
        private CaptureResult mCaptureResult;

        public PreviewResult(CameraPreviewCallbackAdapter.PreviewResult previewResult) {
            this.mCaptureResult = null;
            this.mApsTotalResult = null;
            this.mCaptureResult = previewResult.getCaptureResult();
        }

        public PreviewResult(@NonNull TotalCaptureResult totalCaptureResult) {
            this.mApsTotalResult = null;
            this.mCaptureResult = totalCaptureResult;
        }

        public PreviewResult(@NonNull TotalCaptureResult totalCaptureResult, ConcurrentHashMap<String, Integer> concurrentHashMap) {
            this.mCaptureResult = totalCaptureResult;
            this.mApsTotalResult = concurrentHashMap;
        }

        public <T> T get(CaptureResult.Key<T> key) {
            return (T) this.mCaptureResult.get(key);
        }

        public CaptureResult getCaptureResult() {
            return this.mCaptureResult;
        }

        public CaptureResult getTotalCaptureResult() {
            return this.mCaptureResult;
        }

        public ConcurrentHashMap<String, Integer> getApsTotalResult() {
            return this.mApsTotalResult;
        }
    }
}

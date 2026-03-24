package com.oplus.ocs.camera.appinterface;

import android.hardware.camera2.CaptureFailure;
import android.hardware.camera2.CaptureRequest;
import android.hardware.camera2.CaptureResult;
import android.hardware.camera2.TotalCaptureResult;
import android.media.Image;
import android.media.ImageReader;
import android.view.Surface;
import androidx.annotation.NonNull;
import com.oplus.ocs.camera.appinterface.adapter.PreviewResultHelper;
import com.oplus.ocs.camera.common.parameter.apsadapter.ApsBaseParameter;
import com.oplus.ocs.camera.common.util.CameraUnitLog;
import com.oplus.ocs.camera.consumer.apsAdapter.adapter.ApsAdapterDecision;
import com.oplus.ocs.camera.consumer.apsAdapter.adapter.ApsResult;
import com.oplus.ocs.camera.consumer.apsAdapter.adapter.ApsTotalResult;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
/* loaded from: classes.dex */
public abstract class CameraPreviewCallbackAdapter {
    private static final String TAG = "CameraPreviewCallbackAdapter";
    private PreviewMetadataCallback mCallback = null;

    /* loaded from: classes.dex */
    public interface PreviewMetadataCallback {
        void notifyMetadataReceived(ApsTotalResult apsTotalResult);

        void onDecisionArrived(ApsAdapterDecision.DecisionResult decisionResult);
    }

    public Map<String, Object> generateImageInfo(Image image) {
        return null;
    }

    public void onCaptureCompleted(@NonNull CaptureRequest captureRequest, @NonNull TotalCaptureResult totalCaptureResult, String str) {
    }

    public void onCaptureCompleted(CaptureRequest captureRequest, PreviewResult previewResult) {
    }

    public void onCaptureCompleted(ImageReader imageReader) {
    }

    public void onFirstMetaArrived() {
    }

    public void onHalPreviewCollected(long j) {
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

    public void onPreviewCaptureStarted(CaptureRequest captureRequest, long j) {
    }

    public void onPreviewFrameReceived(Image image) {
    }

    public void onPreviewReceived(PreviewResult previewResult) {
    }

    public void onPreviewRequestStopped(String str) {
    }

    public void onVideoReceived(PreviewResult previewResult) {
    }

    /* loaded from: classes.dex */
    public static final class PreviewResult {
        private PreviewResultHelper mPreviewResultHelper;

        private PreviewResult(PreviewResultHelper previewResultHelper) {
            this.mPreviewResultHelper = null;
            this.mPreviewResultHelper = previewResultHelper;
        }

        public <T> T get(CaptureResult.Key<T> key) {
            return (T) this.mPreviewResultHelper.get(key);
        }

        public <T> T get(String str, Class<T> cls, T t) {
            return (T) this.mPreviewResultHelper.get(str, cls, t);
        }

        public <T> T get(ApsBaseParameter.Key<T> key) {
            return (T) this.mPreviewResultHelper.get(key.getName(), key.getType(), key.getDefault());
        }

        public boolean containsKey(@NonNull String str) {
            return this.mPreviewResultHelper.containsKey(str);
        }

        public ConcurrentHashMap<String, Integer> getApsTotalResult() {
            return this.mPreviewResultHelper.getCustomResult();
        }

        public CaptureResult getCaptureResult() {
            return this.mPreviewResultHelper.getCaptureResult();
        }

        public void close() {
            this.mPreviewResultHelper.close();
        }

        public void addRef() {
            this.mPreviewResultHelper.addRef();
        }

        /* loaded from: classes.dex */
        public static final class Builder {
            private ConcurrentHashMap<String, ApsBaseParameter.ValueWrapper<?>> mCustomParameterMap;
            private ApsResult mApsResult = null;
            private ApsAdapterDecision.DecisionResult mApsDecisionResult = null;
            private CaptureResult mCaptureResult = null;
            private ApsTotalResult mApsTotalResult = null;
            private ApsResult.ImageBuffer mImageBuffer = null;
            private ConcurrentHashMap<String, Integer> mCustomResult = null;

            public Builder() {
                this.mCustomParameterMap = null;
                this.mCustomParameterMap = new ConcurrentHashMap<>();
            }

            public boolean containsKey(@NonNull String str) {
                return this.mCustomParameterMap.containsKey(str);
            }

            public <T> Builder set(@NonNull ApsBaseParameter.Key<T> key, T t) {
                if (t != null) {
                    this.mCustomParameterMap.put(key.getName(), new ApsBaseParameter.ValueWrapper<>(new ApsBaseParameter.Supplier(t)));
                } else {
                    CameraUnitLog.e(CameraPreviewCallbackAdapter.TAG, "set, key: " + key.getName() + ", value is null");
                }
                return this;
            }

            public Builder setApsResult(ApsResult apsResult) {
                this.mApsResult = apsResult;
                return this;
            }

            public Builder setApsDecisionResult(ApsAdapterDecision.DecisionResult decisionResult) {
                this.mApsDecisionResult = decisionResult;
                return this;
            }

            public Builder setCaptureResult(CaptureResult captureResult) {
                this.mCaptureResult = captureResult;
                return this;
            }

            public Builder setApsTotalResult(ApsTotalResult apsTotalResult) {
                this.mApsTotalResult = apsTotalResult;
                return this;
            }

            public Builder setImageBuffer(ApsResult.ImageBuffer imageBuffer) {
                this.mImageBuffer = imageBuffer;
                return this;
            }

            public synchronized PreviewResult build() {
                PreviewResultHelper previewResultHelper;
                previewResultHelper = new PreviewResultHelper();
                previewResultHelper.setApsResult(this.mApsResult);
                previewResultHelper.setApsDecisionResult(this.mApsDecisionResult);
                previewResultHelper.setCaptureResult(this.mCaptureResult);
                previewResultHelper.setApsTotalResult(this.mApsTotalResult);
                previewResultHelper.setImageBuffer(this.mImageBuffer);
                previewResultHelper.setAll(this.mCustomParameterMap);
                return new PreviewResult(previewResultHelper);
            }
        }
    }

    public void onPreviewCaptureStarted(@NonNull CaptureRequest captureRequest, long j, long j2) {
        onPreviewCaptureStarted(captureRequest, j);
    }

    public void notifyMetadataReceived(ApsTotalResult apsTotalResult) {
        if (this.mCallback != null) {
            this.mCallback.notifyMetadataReceived(apsTotalResult);
        }
    }

    public void onDecisionArrived(ApsAdapterDecision.DecisionResult decisionResult) {
        if (this.mCallback != null) {
            this.mCallback.onDecisionArrived(decisionResult);
        }
    }

    public void setPreviewMetadataCallback(PreviewMetadataCallback previewMetadataCallback) {
        this.mCallback = previewMetadataCallback;
    }
}

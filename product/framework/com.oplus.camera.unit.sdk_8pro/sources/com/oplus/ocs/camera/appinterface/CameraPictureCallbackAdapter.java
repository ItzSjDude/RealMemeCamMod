package com.oplus.ocs.camera.appinterface;

import android.hardware.camera2.CaptureFailure;
import android.hardware.camera2.CaptureRequest;
import android.hardware.camera2.CaptureResult;
import android.hardware.camera2.TotalCaptureResult;
import android.view.Surface;
import androidx.annotation.NonNull;
import com.oplus.ocs.camera.appinterface.adapter.PictureResultHelper;
import com.oplus.ocs.camera.common.parameter.apsadapter.ApsBaseParameter;
import com.oplus.ocs.camera.common.parameter.apsadapter.ApsOtherParameter;
import com.oplus.ocs.camera.common.util.CameraImage;
import com.oplus.ocs.camera.common.util.CameraRequestTag;
import com.oplus.ocs.camera.common.util.CameraUnitLog;
import com.oplus.ocs.camera.consumer.apsAdapter.adapter.ApsCaptureResult;
import com.oplus.ocs.camera.consumer.apsAdapter.adapter.ApsResult;
import com.oplus.ocs.camera.consumer.apsAdapter.adapter.ImageCategory;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
/* loaded from: classes.dex */
public abstract class CameraPictureCallbackAdapter {
    private static final String TAG = "CameraPictureCallbackAdapter";
    private ApsResult mApsResult = null;

    public void afterProcessImage(int i, PictureResult pictureResult) {
    }

    public void afterProcessImage(int i, ImageCategory.ImageItemInfo imageItemInfo, ImageCategory.MetaItemInfo metaItemInfo) {
    }

    public void fillApsParameters(int i, Map<String, String> map) {
    }

    public void onBurstShotEnd(PictureResult pictureResult) {
    }

    public void onBurstShotEnd(ImageCategory.ImageItemInfo imageItemInfo, ImageCategory.MetaItemInfo metaItemInfo) {
    }

    public void onBurstShotStart(long j) {
    }

    public void onCaptureCompleted(@NonNull CaptureRequest captureRequest, @NonNull TotalCaptureResult totalCaptureResult, String str) {
    }

    public void onCaptureCompleted(CaptureRequest captureRequest, PictureResult pictureResult) {
    }

    public void onCaptureFailed(CaptureRequest captureRequest, PictureResult pictureResult) {
    }

    public void onCaptureFirstFrameArrived(CaptureRequest captureRequest, PictureResult pictureResult) {
    }

    public void onCapturePrepared() {
    }

    public void onCaptureStarted(CaptureRequest captureRequest, long j) {
    }

    public void onCaptureStarted(CaptureRequest captureRequest, long j, int i) {
    }

    public void onCaptureStarted(@NonNull CaptureRequest captureRequest, long j, int i, int i2) {
    }

    public void onFinishAddFrame(PictureResult pictureResult) {
    }

    public void onFinishAddFrame(ImageCategory.ImageItemInfo imageItemInfo, ImageCategory.MetaItemInfo metaItemInfo) {
    }

    public void onFirstCaptureFrameAdd() {
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
        onCaptureStarted(captureRequest, j, (int) j2);
    }

    public void onCaptureFailed(@NonNull CaptureRequest captureRequest, @NonNull CaptureFailure captureFailure) {
        PictureResult.Builder captureFailure2 = new PictureResult.Builder().setCaptureFailure(captureFailure);
        if (captureRequest.getTag() instanceof CameraRequestTag) {
            captureFailure2.set(ApsOtherParameter.KEY_REQUEST_TAG, ((CameraRequestTag) captureRequest.getTag()).mAppOpaqueObj);
        }
        onCaptureFailed(captureRequest, captureFailure2.build());
    }

    public ApsResult getApsResult() {
        return this.mApsResult;
    }

    public void setApsResult(ApsResult apsResult) {
        this.mApsResult = apsResult;
    }

    /* loaded from: classes.dex */
    public static final class PictureResult {
        private PictureResultHelper mPictureResultHelper;

        private PictureResult(PictureResultHelper pictureResultHelper) {
            this.mPictureResultHelper = pictureResultHelper;
        }

        public <T> T get(CaptureResult.Key<T> key) {
            return (T) this.mPictureResultHelper.get(key);
        }

        public <T> T get(String str, Class<T> cls, T t) {
            return (T) this.mPictureResultHelper.get(str, cls, t);
        }

        public CaptureResult getCaptureResult() {
            return this.mPictureResultHelper.getCaptureResult();
        }

        public CaptureFailure getCaptureFailure() {
            return this.mPictureResultHelper.getCaptureFailure();
        }

        /* loaded from: classes.dex */
        public static final class Builder {
            private ConcurrentHashMap<String, ApsBaseParameter.ValueWrapper<?>> mCustomParameterMap;
            private CaptureResult mCaptureResult = null;
            private CaptureFailure mCaptureFailure = null;
            private ApsResult mApsResult = null;
            private ImageCategory.ImageItemInfo mImageItemInfo = null;
            private ImageCategory.MetaItemInfo mMetaItemInfo = null;
            private ApsCaptureResult mApsCaptureResult = null;

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
                    CameraUnitLog.e(CameraPictureCallbackAdapter.TAG, "set, key: " + key.getName() + ", value is null");
                }
                return this;
            }

            public Builder setCaptureResult(CaptureResult captureResult) {
                this.mCaptureResult = captureResult;
                return this;
            }

            public Builder setCaptureFailure(CaptureFailure captureFailure) {
                this.mCaptureFailure = captureFailure;
                return this;
            }

            public Builder setApsResult(ApsResult apsResult) {
                this.mApsResult = apsResult;
                return this;
            }

            public Builder setImageCategory(ImageCategory.ImageItemInfo imageItemInfo, ImageCategory.MetaItemInfo metaItemInfo) {
                this.mImageItemInfo = imageItemInfo;
                this.mMetaItemInfo = metaItemInfo;
                return this;
            }

            public Builder setApsCaptureResult(ApsCaptureResult apsCaptureResult) {
                this.mApsCaptureResult = apsCaptureResult;
                return this;
            }

            public synchronized PictureResult build() {
                PictureResultHelper pictureResultHelper;
                pictureResultHelper = new PictureResultHelper();
                pictureResultHelper.setApsResult(this.mApsResult);
                pictureResultHelper.setImageCategory(this.mImageItemInfo, this.mMetaItemInfo);
                pictureResultHelper.setApsCaptureResult(this.mApsCaptureResult);
                pictureResultHelper.setCaptureResult(this.mCaptureResult);
                pictureResultHelper.setCaptureFailure(this.mCaptureFailure);
                pictureResultHelper.setAll(this.mCustomParameterMap);
                return new PictureResult(pictureResultHelper);
            }
        }
    }
}

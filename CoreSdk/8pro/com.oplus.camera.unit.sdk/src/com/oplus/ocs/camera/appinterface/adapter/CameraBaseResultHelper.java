package com.oplus.ocs.camera.appinterface.adapter;

import android.hardware.camera2.CaptureResult;
import androidx.annotation.NonNull;
import com.oplus.ocs.camera.common.parameter.apsadapter.ApsBaseParameter;
import com.oplus.ocs.camera.common.parameter.apsadapter.ApsResultParameter;
import com.oplus.ocs.camera.consumer.apsAdapter.adapter.ApsResult;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes.dex */
public class CameraBaseResultHelper {
    protected ApsBaseParameter mBaseParameter = new ApsBaseParameter();
    private CaptureResult mCaptureResult = null;

    public void setApsResult(ApsResult apsResult) {
        if (apsResult != null) {
            this.mBaseParameter.set(ApsResultParameter.KEY_CAMERA_RESULT_WIDTH, Integer.valueOf(apsResult.mWidth));
            this.mBaseParameter.set(ApsResultParameter.KEY_CAMERA_RESULT_HEIGHT, Integer.valueOf(apsResult.mHeight));
            this.mBaseParameter.set(ApsResultParameter.KEY_CAMERA_RESULT_STRIDE, Integer.valueOf(apsResult.mStride));
            this.mBaseParameter.set(ApsResultParameter.KEY_CAMERA_RESULT_SCANLINE, Integer.valueOf(apsResult.mScanline));
            this.mBaseParameter.set(ApsResultParameter.KEY_CAMERA_RESULT_IDENTITY, Long.valueOf(apsResult.mIdentity));
            this.mBaseParameter.set(ApsResultParameter.KEY_CAMERA_RESULT_COPY_BUFFER, apsResult.mCopyBuffer);
            this.mBaseParameter.set(ApsResultParameter.KEY_CAMERA_RESULT_CROP_LEFT, Integer.valueOf(apsResult.mCropLeft));
            this.mBaseParameter.set(ApsResultParameter.KEY_CAMERA_RESULT_CROP_TOP, Integer.valueOf(apsResult.mCropTop));
            this.mBaseParameter.set(ApsResultParameter.KEY_CAMERA_RESULT_CROP_RIGHT, Integer.valueOf(apsResult.mCropRight));
            this.mBaseParameter.set(ApsResultParameter.KEY_CAMERA_RESULT_CROP_BOTTOM, Integer.valueOf(apsResult.mCropBottom));
            this.mBaseParameter.set(ApsResultParameter.KEY_CAMERA_RESULT_SUPER_TEXT_WIDTH, Integer.valueOf(apsResult.mSTWidth));
            this.mBaseParameter.set(ApsResultParameter.KEY_CAMERA_RESULT_SUPER_TEXT_HEIGHT, Integer.valueOf(apsResult.mSTHeight));
            this.mBaseParameter.set(ApsResultParameter.KEY_CAMERA_RESULT_HAS_SUPER_TEXT_RESULT, Boolean.valueOf(apsResult.mbHasSTResult));
            this.mBaseParameter.set(ApsResultParameter.KEY_CAMERA_RESULT_MOTION_DETECTED, Integer.valueOf(apsResult.mIsMotionDetected));
            this.mBaseParameter.set(ApsResultParameter.KEY_CAMERA_RESULT_START_INTERPOLATION_FRAME, Integer.valueOf(apsResult.mIsStartInterpolationFrame));
            this.mBaseParameter.set(ApsResultParameter.KEY_CAMERA_RESULT_LAST_VDIEO_FRAME, Integer.valueOf(apsResult.mIsLastVideoFrame));
            this.mBaseParameter.set(ApsResultParameter.KEY_CAMERA_RESULT_NEED_DETACH, Boolean.valueOf(apsResult.mbNeedDetach));
            this.mBaseParameter.set(ApsResultParameter.KEY_CAMERA_RESULT_HEIF_PROCESS_IN_APS, Boolean.valueOf(apsResult.mbHeifProcessInAps));
            this.mBaseParameter.set(ApsResultParameter.KEY_CAMERA_RESULT_NOISE_REDUCTION_STRENGTH, Integer.valueOf(apsResult.mNoiseReductionStrength));
            this.mBaseParameter.set(ApsResultParameter.KEY_CAMERA_RESULT_APS_INIT_FINISH, apsResult.mApsInitFinish);
            this.mBaseParameter.set(ApsResultParameter.KEY_CAMERA_RESULT_REF_TIMESTAMP, Long.valueOf(apsResult.mRefTimestamp));
            this.mBaseParameter.set(ApsResultParameter.KEY_CAMERA_APS_PROC_TIMER, apsResult.mProcTimes);
            this.mBaseParameter.set(ApsResultParameter.KEY_CAMERA_RESULT_MESH_PTR, Long.valueOf(apsResult.mMeshPtr));
        }
    }

    public void setCaptureResult(CaptureResult captureResult) {
        this.mCaptureResult = captureResult;
    }

    public CaptureResult getCaptureResult() {
        return this.mCaptureResult;
    }

    public boolean containsKey(@NonNull String str) {
        return this.mBaseParameter.containsKey(str);
    }

    public <T> T get(CaptureResult.Key<T> key) {
        CaptureResult captureResult = this.mCaptureResult;
        if (captureResult != null) {
            return (T) captureResult.get(key);
        }
        return null;
    }

    public <T> T get(String str, Class<T> cls, T t) {
        return (T) this.mBaseParameter.get(str, cls, t);
    }

    public <T> void set(@NonNull ApsBaseParameter.Key<T> key, T t) {
        this.mBaseParameter.set(key, t);
    }

    public <T> void setAll(@NonNull ConcurrentHashMap<String, ApsBaseParameter.ValueWrapper<?>> concurrentHashMap) {
        this.mBaseParameter.set(concurrentHashMap);
    }

    public void clear() {
        this.mBaseParameter.clear();
    }
}

package com.oplus.ocs.camera.consumer.apsAdapter.adapter;

import android.hardware.camera2.CameraMetadata;
import android.hardware.camera2.CaptureResult;
import android.util.ArrayMap;
import com.oplus.ocs.camera.consumer.apsAdapter.ApsCameraMetadataKey;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public class ApsCaptureResult {
    private ApsTotalResult mApsTotalResult;
    public Integer mAwbMode;
    public Float mFocalLength;
    public long mFrameNumber;
    public Float mLensAperture;
    public int[] mMasterPipeline;
    private ArrayMap<String, CameraMetadata> mMetaMap;
    public Long mSensorExposureTime;
    public int[] mSensorMask;
    public Integer mSensorSensitivity;
    public Long mSensorTimestamp;
    public int[] mUpscaleInputSize;
    public int[] mUpscaleOutputSize;

    public ApsCaptureResult(ApsTotalResult apsTotalResult, String str) {
        this.mFrameNumber = 0L;
        this.mSensorTimestamp = null;
        this.mSensorSensitivity = null;
        this.mSensorExposureTime = null;
        this.mFocalLength = null;
        this.mLensAperture = null;
        this.mAwbMode = null;
        this.mSensorMask = null;
        this.mMasterPipeline = null;
        this.mUpscaleInputSize = null;
        this.mUpscaleOutputSize = null;
        this.mMetaMap = null;
        this.mApsTotalResult = null;
        if (apsTotalResult.getMetaImage() != null) {
            this.mFrameNumber = apsTotalResult.get(ApsTotalResult.APS_FRAME_ID) != null ? ((Integer) apsTotalResult.get(ApsTotalResult.APS_FRAME_ID)).intValue() : 0L;
        } else {
            this.mFrameNumber = apsTotalResult.getTotalResult().getFrameNumber();
        }
        this.mSensorTimestamp = (Long) apsTotalResult.getTotalResult().get(CaptureResult.SENSOR_TIMESTAMP);
        this.mSensorSensitivity = (Integer) apsTotalResult.getTotalResult().get(CaptureResult.SENSOR_SENSITIVITY);
        this.mSensorExposureTime = (Long) apsTotalResult.getTotalResult().get(CaptureResult.SENSOR_EXPOSURE_TIME);
        this.mFocalLength = (Float) apsTotalResult.getTotalResult().get(CaptureResult.LENS_FOCAL_LENGTH);
        this.mLensAperture = (Float) apsTotalResult.getTotalResult().get(CaptureResult.LENS_APERTURE);
        this.mAwbMode = (Integer) apsTotalResult.getTotalResult().get(CaptureResult.CONTROL_AWB_MODE);
        this.mSensorMask = (int[]) apsTotalResult.getTotalResult().get(ApsCameraMetadataKey.KEY_SENSOR_MASK);
        this.mMasterPipeline = (int[]) apsTotalResult.getTotalResult().get(ApsCameraMetadataKey.KEY_MASTER_PIPELINE);
        this.mUpscaleInputSize = (int[]) apsTotalResult.getTotalResult().get(ApsCameraMetadataKey.KEY_UPSCALE_INPUT_SIZE);
        this.mUpscaleOutputSize = (int[]) apsTotalResult.getTotalResult().get(ApsCameraMetadataKey.KEY_UPSCALE_OUTPUT_SIZE);
        this.mMetaMap = ApsUtils.assembleMetaMap(apsTotalResult.getTotalResult(), str);
        this.mApsTotalResult = apsTotalResult;
    }

    public final CaptureResult getTotalResult() {
        return this.mApsTotalResult.getTotalResult();
    }

    public final ApsTotalResult getApsTotalResult() {
        return this.mApsTotalResult;
    }

    public final ArrayMap<String, CameraMetadata> getMetaMap() {
        return this.mMetaMap;
    }

    public String toString() {
        return "{mFrameNumber: " + this.mFrameNumber + ", mSensorTimestamp: " + this.mSensorTimestamp + ", mSensorSensitivity: " + this.mSensorSensitivity + ", mSensorExposureTime: " + this.mSensorExposureTime + ", mFocalLength: " + this.mFocalLength + ", mLensAperture: " + this.mLensAperture + ", mAwbMode: " + this.mAwbMode + ", mSensorMask: " + Arrays.toString(this.mSensorMask) + ", mMasterPipeline: " + Arrays.toString(this.mMasterPipeline) + ", mUpscaleInputSize: " + Arrays.toString(this.mUpscaleInputSize) + ", mUpscaleOutputSize: " + Arrays.toString(this.mUpscaleOutputSize) + ", mMetaMap: " + this.mMetaMap + ", mApsTotalResult: " + this.mApsTotalResult + "}";
    }
}

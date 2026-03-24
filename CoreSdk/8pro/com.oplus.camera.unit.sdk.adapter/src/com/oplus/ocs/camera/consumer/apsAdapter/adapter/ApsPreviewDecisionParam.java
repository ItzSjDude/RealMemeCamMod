package com.oplus.ocs.camera.consumer.apsAdapter.adapter;

import android.hardware.camera2.CameraMetadata;
import androidx.annotation.NonNull;
import java.util.HashMap;
/* loaded from: classes.dex */
public class ApsPreviewDecisionParam {
    private HashMap<String, String> mAlgoHashMap;
    private int mAlgoVisualizationEnable;
    private long mAvailMem = 0;
    private int mCameraId;
    private String mCaptureMode;
    private int mFaceBeautyEnable;
    private int mFilterEnable;
    private int mLogicalCameraId;
    private CameraMetadata mMetadata;
    private int mMultiCameraMode;
    private int mNeonEnable;
    private int mPiEnable;
    private int mPictureVisualizationEnable;
    private int mRecordingCapture;
    private int mSCPEnable;
    private int mStreamerEnable;
    private int mSuperRawEnable;
    private int mTripodEnable;
    private int mUltraHighResolutionEnable;
    private float mZoomRatio;

    public ApsPreviewDecisionParam(float f, CameraMetadata cameraMetadata, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, String str, int i10, int i11, int i12, int i13, int i14, int i15, HashMap<String, String> hashMap) {
        this.mZoomRatio = f;
        this.mMetadata = cameraMetadata;
        this.mMultiCameraMode = i;
        this.mCameraId = i2;
        this.mLogicalCameraId = i3;
        this.mPiEnable = i4;
        this.mAlgoVisualizationEnable = i5;
        this.mPictureVisualizationEnable = i6;
        this.mTripodEnable = i7;
        this.mUltraHighResolutionEnable = i8;
        this.mFilterEnable = i9;
        this.mFaceBeautyEnable = i12;
        this.mCaptureMode = str;
        this.mSCPEnable = i11;
        this.mNeonEnable = i10;
        this.mStreamerEnable = i14;
        this.mSuperRawEnable = i13;
        this.mRecordingCapture = i15;
        this.mAlgoHashMap = hashMap;
    }

    public void setZoomRatio(float f) {
        this.mZoomRatio = f;
    }

    public float getZoomRatio() {
        return this.mZoomRatio;
    }

    public void setMetadata(CameraMetadata cameraMetadata) {
        this.mMetadata = cameraMetadata;
    }

    public CameraMetadata getMetadata() {
        return this.mMetadata;
    }

    public void setMultiCameraMode(int i) {
        this.mMultiCameraMode = i;
    }

    public int getMultiCameraMode() {
        return this.mMultiCameraMode;
    }

    public void setCameraId(int i) {
        this.mCameraId = i;
    }

    public int getCameraId() {
        return this.mCameraId;
    }

    public void setLogicalCameraId(int i) {
        this.mLogicalCameraId = i;
    }

    public int getLogicalCameraId() {
        return this.mLogicalCameraId;
    }

    public void setPiEnable(int i) {
        this.mPiEnable = i;
    }

    public int getPiEnable() {
        return this.mPiEnable;
    }

    public int getAlgoVisualizationEnable() {
        return this.mAlgoVisualizationEnable;
    }

    public int getPictureVisualizationEnable() {
        return this.mPictureVisualizationEnable;
    }

    public void setTripodEnable(int i) {
        this.mTripodEnable = i;
    }

    public int getTripodEnable() {
        return this.mTripodEnable;
    }

    public void setUltraHighResolutionEnable(int i) {
        this.mUltraHighResolutionEnable = i;
    }

    public int getUltraHighResolutionEnable() {
        return this.mUltraHighResolutionEnable;
    }

    public void setCaptureMode(String str) {
        this.mCaptureMode = str;
    }

    public String getCaptureMode() {
        return this.mCaptureMode;
    }

    public int getRecordingCaptureState() {
        return this.mRecordingCapture;
    }

    public int getSCPEnable() {
        return this.mSCPEnable;
    }

    public void setSCPEnable(int i) {
        this.mSCPEnable = i;
    }

    public int getNeonEnable() {
        return this.mNeonEnable;
    }

    public int getStreamerEnable() {
        return this.mStreamerEnable;
    }

    public int getSuperRawEnable() {
        return this.mSuperRawEnable;
    }

    public void setSuperRawEnable(int i) {
        this.mSuperRawEnable = i;
    }

    public void setNeonEnable(int i) {
        this.mNeonEnable = i;
    }

    public void setStreamerEnable(int i) {
        this.mStreamerEnable = i;
    }

    public int getFilterEnable() {
        return this.mFilterEnable;
    }

    public int getFaceBeautyEnable() {
        return this.mFaceBeautyEnable;
    }

    public long getAvailMem() {
        return this.mAvailMem;
    }

    public void setAvailMem(long j) {
        this.mAvailMem = j;
    }

    public HashMap<String, String> getAlgoHashMap() {
        return this.mAlgoHashMap;
    }

    @NonNull
    public String toString() {
        return "PreviewDecisionParameters: [mZoomRatio: " + this.mZoomRatio + ", mMetadata: " + this.mMetadata + ", mMultiCameraMode: " + this.mMultiCameraMode + ", mCameraId: " + this.mCameraId + ", mLogicalCameraId: " + this.mLogicalCameraId + ", mPiEnable: " + this.mPiEnable + ", mTripodEnable: " + this.mTripodEnable + ", mUltraHighResolutionEnable: " + this.mUltraHighResolutionEnable + ", mFilterEnable: " + this.mFilterEnable + ", mFaceBeautyEnable: " + this.mFaceBeautyEnable + ", mCaptureMode: " + this.mCaptureMode + ", mSCPEnable: " + this.mSCPEnable + ", mNeonEnable: " + this.mNeonEnable + ", mStreamerEnable: " + this.mStreamerEnable + ", mSuperRawEnable: " + this.mSuperRawEnable + ", mAvailMem: " + this.mAvailMem + "]";
    }
}

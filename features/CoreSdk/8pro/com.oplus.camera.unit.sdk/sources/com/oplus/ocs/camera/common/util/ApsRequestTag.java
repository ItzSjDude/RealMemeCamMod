package com.oplus.ocs.camera.common.util;

import android.graphics.RectF;
import android.util.Size;
import android.view.Surface;
import androidx.annotation.NonNull;
/* loaded from: classes.dex */
public class ApsRequestTag {
    public int mOperationMode = 0;
    public int mJpegOrientation = 0;
    public boolean mbNeedPreviewMetadata = true;
    public boolean mbNeedVideoMetadata = true;
    public boolean mbHighPictureSizeEnable = false;
    public boolean mbAiHighPixelEnable = false;
    public boolean mbAiFollowEnable = false;
    public boolean mbPhoto10BitsEnable = false;
    public boolean mbVideo10BitsEnable = false;
    public boolean mbVideoWaterMarkEnable = false;
    public boolean mbSupportQuickJpeg = false;
    public boolean mbVideoBlurOpen = false;
    public String mCameraType = null;
    public String mModeName = null;
    public String mFeatureName = null;
    public Size mInputVideoSize = null;
    public Size mOutputVideoSize = null;
    public Size mPreviewSize = null;
    public Size mPictureSize = null;
    public int mBlurIndex = 60;
    public int mPreviewStreamNumber = 1;
    public int mCaptureStreamNumber = 1;
    public String mPreviewDisplayType = "1";
    public int mPreviewSurfaceType = 2;
    public int mRearFrontCameraId = -1;
    public Surface mSlowVideoHfrSurface = null;
    public RectF mSlowVideoHfrMotionDetectCoordinate = null;
    public int mSlowVideoHfrFps = 120;
    public SensorManagerClient mSensorManagerClient = null;
    public boolean mbPreviewProcessByAps = true;
    public boolean mbNeedSendVideoSnapShotImage = false;
    public boolean mbNeedSendVideoSnapShotMeta = false;
    public boolean mbTripodEnable = false;
    public long mVideoSnapShotTimeStamp = 0;
    public int mAISBracket = 0;
    public int mIsSupportDCT = 0;
    public int mIsSupportDCTAndAINR = 0;
    public int mThermalLevel = 0;
    public int mPreviewFaceBeautyLevel = -1;
    public boolean mbPhotoWaterMarkEnable = false;
    public String mPreviewCallbackType = "0";

    @NonNull
    public String toString() {
        return "mOperationMode: " + this.mOperationMode + ", mbNeedPreviewMetadata: " + this.mbNeedPreviewMetadata + ", mbNeedVideoMetadata: " + this.mbNeedVideoMetadata + ", mbHighPictureSizeEnable: " + this.mbHighPictureSizeEnable + ", mbPhoto10BitsEnable: " + this.mbPhoto10BitsEnable + ", mVideo10BitsEnable: " + this.mbVideo10BitsEnable + ", mbAiHighPixelEnable: " + this.mbAiHighPixelEnable + ", mbAiFollowEnable: " + this.mbAiFollowEnable + ", mbVideoWaterMarkEnable: " + this.mbVideoWaterMarkEnable + ", mCameraType: " + this.mCameraType + ", mModeName: " + this.mModeName + ", mFeatureName: " + this.mFeatureName + ", mInputVideoSize: " + this.mInputVideoSize + ", mOutputVideoSize: " + this.mOutputVideoSize + ", mPreviewSize: " + this.mPreviewSize + ", mPictureSize: " + this.mPictureSize + ", mbVideoBlurOpen: " + this.mbVideoBlurOpen + ", mBlurIndex: " + this.mBlurIndex + ", mPreviewStreamNumber: " + this.mPreviewStreamNumber + ", mCaptureStreamNumber: " + this.mCaptureStreamNumber + ", mPreviewDisplayType: " + this.mPreviewDisplayType + ", mPreviewSurfaceType: " + this.mPreviewSurfaceType + ", mRearFrontCameraId: " + this.mRearFrontCameraId + ", mbTripodEnable: " + this.mbTripodEnable + ", mThermalLevel: " + this.mThermalLevel + ", mAISBracket: " + this.mAISBracket + ", mIsSupportDCT: " + this.mIsSupportDCT + ", mIsSupportDCTAndAINR: " + this.mIsSupportDCTAndAINR + "mPreviewFaceBeautyLevel: " + this.mPreviewFaceBeautyLevel + "mbPhotoWaterMarkEnable: " + this.mbPhotoWaterMarkEnable;
    }
}

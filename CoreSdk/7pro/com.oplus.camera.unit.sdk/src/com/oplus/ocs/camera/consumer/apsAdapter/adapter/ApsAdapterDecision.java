package com.oplus.ocs.camera.consumer.apsAdapter.adapter;

import android.hardware.camera2.CaptureResult;
import java.util.Arrays;
/* loaded from: classes.dex */
public class ApsAdapterDecision {
    private static final float FLOAT_ONE = 1.0f;

    /* loaded from: classes.dex */
    public interface DecisionCallback {
        void onDecisionResult(DecisionResult decisionResult);
    }

    /* loaded from: classes.dex */
    public static class DecisionControlData {
        public int mCameraId = 0;
        public String mCaptureMode = null;
        public String mLogicCameraId = null;
        public int mLogicCameraType = 0;
        public int mPiEnable = 0;
        public int mAlgoVisualizationEnable = 0;
        public int mPictureVisualizationEnable = 0;
        public int mTripodEnable = 0;
        public int mUltraHighResolutionEnable = 0;
        public int mFilterEnable = 0;
        public int mFaceBeautyEnable = 0;
        public int mNeonEnable = 0;
        public int mStreamerEnable = 0;
        public int mSCPEnable = 0;
        public int mSuperRawEnable = 0;
        public int mRecordingCapture = 0;
        public float mZoomValue = ApsAdapterDecision.FLOAT_ONE;
        public CaptureResult mCaptureResult = null;
        public DecisionCallback mDecisionCallback = null;
        public long mAvailMem = 0;
    }

    /* loaded from: classes.dex */
    public static class DecisionResult {
        public int mCameraId = -1;
        public String mCaptureMode = null;
        public int mRequestFormat = 0;
        public int mMultiFrameCount = 1;
        public int mThumbnailIndex = 1;
        public int mMetaIndex = 1;
        public int mSuperNightScene = 0;
        public int mNightTotalExpTime = 0;
        public int mApsDecisionSceneMode = 0;
        public int mApsDecisionShowHdrIcon = -1;
        public int mApsDecisionFeatureType = 0;
        public String[] mApsAlgoFlag = null;
        public int[] mCaptureEVList = null;
        public long[] mCaptureETList = null;
        public int[] mSensorMask = null;
        public int mMasterPipeline = 0;
        public int mApsBracketMode = 0;
        public int mMFSRFrameCount = 0;
        public int mSupportCaptureZoomFeature = 0;
        public int mCaptureNoNeedMatchMeta = 0;
        public int mAsdSceneValue = 0;
        public boolean mbAIShutter = false;
        public boolean mbRequestMixedFormat = false;
        public int mAISState = 0;
        public int mCaptureIntent = -1;
        public int mCaptureSurface = -1;
        public String mDrawTextBracketMode = "";
        public String mDrawTextSceneMode = "";
        public String mDrawTextFeatureType = "";
        public String mDrawTextHdrType = "";
        public String mPreviewASD = "";
        public String mPreViewAntiBanding = "";
        public String mPreviewRectify = "";
        public String mPreviewPF = "";
        public String mPreviewLSD = "";
        public String mPreviewRTB = "";
        public String mPreviewAiColor = "";
        public String mPreviewVideoHyperLapse = "";
        public String mAlgoVisualizationKey = "";
        public String mAlgoVisualizationValue = "";

        public String toString() {
            return "mCameraId: " + this.mCameraId + ", mCaptureMode: " + this.mCaptureMode + ", mRequestFormat: " + this.mRequestFormat + ", mMultiFrameCount: " + this.mMultiFrameCount + ", mThumbnailIndex: " + this.mThumbnailIndex + ", mMetaIndex: " + this.mMetaIndex + ", mSuperNightScene: " + this.mSuperNightScene + ", mNightTotalExpTime: " + this.mNightTotalExpTime + ", mApsDecisionSceneMode: " + this.mApsDecisionSceneMode + ", mApsDecisionFeatureType: " + this.mApsDecisionFeatureType + ", mApsAlgoFlag: " + Arrays.toString(this.mApsAlgoFlag) + ", mCaptureEVList: " + Arrays.toString(this.mCaptureEVList) + ", mCaptureETList: " + Arrays.toString(this.mCaptureETList) + ", mSensorMask: " + Arrays.toString(this.mSensorMask) + ", mMasterPipeline: " + this.mMasterPipeline + ", mMFSRFrameCount: " + this.mMFSRFrameCount + ", mApsBracketMode: " + this.mApsBracketMode + ", mSupportCaptureZoomFeature: " + this.mSupportCaptureZoomFeature + ", mCaptureNoNeedMatchMeta: " + this.mCaptureNoNeedMatchMeta + ", mAsdSceneValue: " + this.mAsdSceneValue + ", mbAIShutter: " + this.mbAIShutter + ", mbRequestMixedFormat: " + this.mbRequestMixedFormat + ", mAISState: " + this.mAISState + ", mCaptureIntent: " + this.mCaptureIntent + ", mCaptureSurface: " + this.mCaptureSurface;
        }
    }
}

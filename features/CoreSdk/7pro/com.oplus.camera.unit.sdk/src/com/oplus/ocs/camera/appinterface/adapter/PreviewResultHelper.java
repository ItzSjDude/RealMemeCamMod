package com.oplus.ocs.camera.appinterface.adapter;

import com.oplus.ocs.camera.common.parameter.apsadapter.ApsDecisionParameter;
import com.oplus.ocs.camera.common.parameter.apsadapter.ApsResultParameter;
import com.oplus.ocs.camera.common.parameter.apsadapter.ApsTotalResultParameter;
import com.oplus.ocs.camera.consumer.apsAdapter.adapter.ApsAdapterDecision;
import com.oplus.ocs.camera.consumer.apsAdapter.adapter.ApsResult;
import com.oplus.ocs.camera.consumer.apsAdapter.adapter.ApsTotalResult;
import java.util.concurrent.ConcurrentHashMap;
/* loaded from: classes.dex */
public class PreviewResultHelper extends CameraBaseResultHelper {
    private ApsResult.ImageBuffer mImageBuffer = null;
    private ConcurrentHashMap<String, Integer> mCustomResult = null;

    @Override // com.oplus.ocs.camera.appinterface.adapter.CameraBaseResultHelper
    public void setApsResult(ApsResult apsResult) {
        super.setApsResult(apsResult);
        if (apsResult != null) {
            setImageBuffer(apsResult.getImageBuffer());
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void setApsTotalResult(ApsTotalResult apsTotalResult) {
        if (apsTotalResult != null) {
            this.mBaseParameter.set(ApsTotalResultParameter.KEY_PREVIEW_BOKEN_STATE, apsTotalResult.get(ApsTotalResult.APS_BOKEN_STATE));
            this.mBaseParameter.set(ApsTotalResultParameter.KEY_PREVIEW_AI_SCENE, apsTotalResult.get(ApsTotalResult.APS_AI_SCENE));
            this.mBaseParameter.set(ApsTotalResultParameter.KEY_PREVIEW_TUNING_SCENE, apsTotalResult.get(ApsTotalResult.APS_AI_TUNING_SCENE));
            this.mBaseParameter.set(ApsTotalResultParameter.KEY_PREVIEW_HDR_SCOPE, apsTotalResult.get(ApsTotalResult.APS_HDR_SCOPE));
            this.mBaseParameter.set(ApsTotalResultParameter.KEY_PREVIEW_MASTER_CAMERA_ID, apsTotalResult.get(ApsTotalResult.SAT_MASTER_CAMERA_ID));
            this.mBaseParameter.set(ApsTotalResultParameter.KEY_PREVIEW_ACTIVE_MAP, apsTotalResult.get(ApsTotalResult.SAT_ACTIVE_MAP));
            this.mBaseParameter.set(ApsTotalResultParameter.KEY_PREVIEW_LENS_DIRTY, apsTotalResult.get(ApsTotalResult.APS_LENS_DIRTY));
            this.mBaseParameter.set(ApsTotalResultParameter.KEY_PREVIEW_GESTURE_ACTION_TYPE, apsTotalResult.get(ApsTotalResult.APS_GESTURE_ACTION_TYPE));
            this.mBaseParameter.set(ApsTotalResultParameter.KEY_PREVIEW_VIDEO_EIS, apsTotalResult.get(ApsTotalResult.APS_VIDEO_EIS));
            this.mBaseParameter.set(ApsTotalResultParameter.KEY_PREVIEW_FRAME_ID, apsTotalResult.get(ApsTotalResult.APS_FRAME_ID));
            if (((Integer) apsTotalResult.get(ApsTotalResult.APS_BOKEN_STATE)) != null) {
                if (this.mCustomResult == null) {
                    this.mCustomResult = new ConcurrentHashMap<>();
                }
                this.mCustomResult.put("BOKEH_STATE", apsTotalResult.get(ApsTotalResult.APS_BOKEN_STATE));
            }
        }
    }

    public void setApsDecisionResult(ApsAdapterDecision.DecisionResult decisionResult) {
        if (decisionResult != null) {
            this.mBaseParameter.set(ApsDecisionParameter.KEY_PREVIEW_CAMERA_ID, Integer.valueOf(decisionResult.mCameraId));
            this.mBaseParameter.set(ApsDecisionParameter.KEY_PREVIEW_CAPTURE_MODE, decisionResult.mCaptureMode);
            this.mBaseParameter.set(ApsDecisionParameter.KEY_PREVIEW_REQUEST_FORMAT, Integer.valueOf(decisionResult.mRequestFormat));
            this.mBaseParameter.set(ApsDecisionParameter.KEY_PREVIEW_MULTI_FRAME_COUNT, Integer.valueOf(decisionResult.mMultiFrameCount));
            this.mBaseParameter.set(ApsDecisionParameter.KEY_PREVIEW_THUMBNAIL_INDEX, Integer.valueOf(decisionResult.mThumbnailIndex));
            this.mBaseParameter.set(ApsDecisionParameter.KEY_PREVIEW_META_INDEX, Integer.valueOf(decisionResult.mMetaIndex));
            this.mBaseParameter.set(ApsDecisionParameter.KEY_PREVIEW_SUPER_NIGHT_SCENE, Integer.valueOf(decisionResult.mSuperNightScene));
            this.mBaseParameter.set(ApsDecisionParameter.KEY_PREVIEW_NIGHT_TOTAL_EXPTIME, Integer.valueOf(decisionResult.mNightTotalExpTime));
            this.mBaseParameter.set(ApsDecisionParameter.KEY_PREVIEW_SCENE_MODE, Integer.valueOf(decisionResult.mApsDecisionSceneMode));
            this.mBaseParameter.set(ApsDecisionParameter.PREVIEW_RESULT_SHOW_HDR_ICON, Integer.valueOf(decisionResult.mApsDecisionShowHdrIcon));
            this.mBaseParameter.set(ApsDecisionParameter.KEY_PREVIEW_FEATURE_TYPE, Integer.valueOf(decisionResult.mApsDecisionFeatureType));
            this.mBaseParameter.set(ApsDecisionParameter.KEY_PREVIEW_ALGO_FLAG, decisionResult.mApsAlgoFlag);
            this.mBaseParameter.set(ApsDecisionParameter.KEY_PREVIEW_CAPTURE_EV_LIST, decisionResult.mCaptureEVList);
            this.mBaseParameter.set(ApsDecisionParameter.KEY_PREVIEW_CAPTURE_ET_LIST, decisionResult.mCaptureETList);
            this.mBaseParameter.set(ApsDecisionParameter.KEY_PREVIEW_SENSOR_MASK, decisionResult.mSensorMask);
            this.mBaseParameter.set(ApsDecisionParameter.KEY_PREVIEW_MASTER_PIPELINE, Integer.valueOf(decisionResult.mMasterPipeline));
            this.mBaseParameter.set(ApsDecisionParameter.KEY_PREVIEW_BRACKET_MODE, Integer.valueOf(decisionResult.mApsBracketMode));
            this.mBaseParameter.set(ApsDecisionParameter.KEY_DRAWTEXT_BRACKET_MODE, decisionResult.mDrawTextBracketMode);
            this.mBaseParameter.set(ApsDecisionParameter.KEY_DRAWTEXT_SCENE_MODE, decisionResult.mDrawTextSceneMode);
            this.mBaseParameter.set(ApsDecisionParameter.KEY_DRAWTEXT_FEATURE_TYPE, decisionResult.mDrawTextFeatureType);
            this.mBaseParameter.set(ApsDecisionParameter.KEY_DRAWTEXT_HDR_TYPE, decisionResult.mDrawTextHdrType);
            this.mBaseParameter.set(ApsDecisionParameter.KEY_PREVIEW_ASD, decisionResult.mPreviewASD);
            this.mBaseParameter.set(ApsDecisionParameter.KEY_PREVIEW_ANTIBANDING, decisionResult.mPreViewAntiBanding);
            this.mBaseParameter.set(ApsDecisionParameter.KEY_PREVIEW_RECTIFY, decisionResult.mPreviewRectify);
            this.mBaseParameter.set(ApsDecisionParameter.KEY_PREVIEW_PF, decisionResult.mPreviewPF);
            this.mBaseParameter.set(ApsDecisionParameter.KEY_PREVIEW_LSD, decisionResult.mPreviewLSD);
            this.mBaseParameter.set(ApsDecisionParameter.KEY_PREVIEW_RTB, decisionResult.mPreviewRTB);
            this.mBaseParameter.set(ApsDecisionParameter.KEY_PREVIEW_AICOLOR, decisionResult.mPreviewAiColor);
            this.mBaseParameter.set(ApsDecisionParameter.KEY_PREVIEW_VIDEO_HYPERLAPSE, decisionResult.mPreviewVideoHyperLapse);
            this.mBaseParameter.set(ApsDecisionParameter.KEY_ALGO_VISUALIZATION_KEY, decisionResult.mAlgoVisualizationKey);
            this.mBaseParameter.set(ApsDecisionParameter.KEY_ALGO_VISUALIZATION_VALUE, decisionResult.mAlgoVisualizationValue);
            this.mBaseParameter.set(ApsDecisionParameter.KEY_PREVIEW_MFSR_FRAME_COUNT, Integer.valueOf(decisionResult.mMFSRFrameCount));
            this.mBaseParameter.set(ApsDecisionParameter.KEY_PREVIEW_SUPPORT_ZOOM_FEATURE, Integer.valueOf(decisionResult.mSupportCaptureZoomFeature));
            this.mBaseParameter.set(ApsDecisionParameter.KEY_PREVIEW_NO_NEED_MATCH_META, Integer.valueOf(decisionResult.mCaptureNoNeedMatchMeta));
            this.mBaseParameter.set(ApsDecisionParameter.KEY_PREVIEW_ASD_SCENE_VALUE, Integer.valueOf(decisionResult.mAsdSceneValue));
            this.mBaseParameter.set(ApsDecisionParameter.KEY_PREVIEW_AI_SHUTTER, Boolean.valueOf(decisionResult.mbAIShutter));
            this.mBaseParameter.set(ApsDecisionParameter.KEY_PREVIEW_REQUEST_MIXED_FORMAT, Boolean.valueOf(decisionResult.mbRequestMixedFormat));
            this.mBaseParameter.set(ApsDecisionParameter.KEY_PREVIEW_AIS_STATE, Integer.valueOf(decisionResult.mAISState));
            this.mBaseParameter.set(ApsDecisionParameter.KEY_PREVIEW_CAPTURE_INTENT, Integer.valueOf(decisionResult.mCaptureIntent));
            this.mBaseParameter.set(ApsDecisionParameter.KEY_PREVIEW_CAPTURE_SURFACE, Integer.valueOf(decisionResult.mCaptureSurface));
        }
    }

    public void setImageBuffer(ApsResult.ImageBuffer imageBuffer) {
        if (imageBuffer != null) {
            this.mImageBuffer = imageBuffer;
            this.mBaseParameter.set(ApsResultParameter.KEY_CAMERA_RESULT_IMAGE, this.mImageBuffer.getImage());
            this.mBaseParameter.set(ApsResultParameter.KEY_CAMERA_RESULT_HARDWARE_BUFFER, this.mImageBuffer.getHardwareBuffer());
            this.mBaseParameter.set(ApsResultParameter.KEY_CAMERA_RESULT_IMAGE_TIME_STAMP, Long.valueOf(this.mImageBuffer.getTimestamp()));
            this.mBaseParameter.set(ApsResultParameter.KEY_CAMERA_RESULT_IMAGE_IS_VALID, true);
        }
    }

    public void close() {
        if (this.mImageBuffer != null) {
            this.mImageBuffer.close();
        }
    }

    public void addRef() {
        if (this.mImageBuffer != null) {
            this.mImageBuffer.addRef();
        }
    }

    public ConcurrentHashMap<String, Integer> getCustomResult() {
        return this.mCustomResult;
    }
}

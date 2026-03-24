package com.oplus.ocs.camera.common.statistics.model;

import com.oplus.ocs.camera.common.statistics.StatisticConstant;
/* loaded from: classes.dex */
public class PreviewDcsMsgData extends DcsMsgData implements Cloneable {
    public boolean mAiEnhance;
    public int mHdrStatus;
    public String mModeName;
    public int mNightState;
    public boolean mPortraitMode;
    public long mPreviewDuration;
    public boolean mSlowMotion;
    public boolean mVideoNightScene;
    public boolean mbEndPreview;

    public PreviewDcsMsgData(int i) {
        super(i);
        this.mModeName = null;
        this.mbEndPreview = false;
        this.mPreviewDuration = 0L;
        this.mAiEnhance = false;
        this.mNightState = 0;
        this.mVideoNightScene = false;
        this.mPortraitMode = false;
        this.mHdrStatus = 0;
        this.mSlowMotion = false;
    }

    @Override // com.oplus.ocs.camera.common.statistics.model.DcsMsgData
    public void fillParams() {
        super.fillParams();
        this.mEventType = this.mbEndPreview ? StatisticConstant.EventType.PREVIEW_END : StatisticConstant.EventType.PREVIEW;
        checkGreatCondition(StatisticConstant.KEY_PREVIEW_DURATION, this.mPreviewDuration, 0);
        checkEmptyCondition(StatisticConstant.KEY_PREVIEW_TYPE, this.mModeName);
        convertBoolean(StatisticConstant.KEY_IS_STABILIZED, this.mbVideoStabilization);
        convertBoolean(StatisticConstant.KEY_IS_SUPER_STABILIZED, this.mbSuperStabilization);
        checkEmptyCondition(StatisticConstant.KEY_IS_HDR, this.m3Hdr);
        convertBoolean(StatisticConstant.KEY_IS_WIDE, this.mbWide);
        checkEmptyCondition(StatisticConstant.KEY_DUAL_CAMERA, this.mbDualCamera);
        convertBoolean(StatisticConstant.KEY_AI_ENHANCE, this.mAiEnhance);
        convertBoolean("portrait_mode", this.mPortraitMode);
        checkEmptyCondition(StatisticConstant.KEY_NIGHT_STATE, String.valueOf(this.mNightState));
        checkEmptyCondition(StatisticConstant.KEY_ZOOM_VALUE, this.mZoomValue);
        checkEmptyCondition(StatisticConstant.KEY_IS_RECTIFY, String.valueOf(this.mIsRectify));
        checkEmptyCondition(StatisticConstant.KEY_IS_CONNECT_GIMBAL, String.valueOf(this.mIsConnectGimbal));
        checkGreatCondition(StatisticConstant.KEY_HDR_STATUS, this.mHdrStatus, -1);
        convertBoolean(StatisticConstant.KEY_SLOW_MOTION, this.mSlowMotion);
    }

    /* renamed from: clone */
    public PreviewDcsMsgData m2clone() {
        PreviewDcsMsgData previewDcsMsgData = new PreviewDcsMsgData(this.mCameraId);
        previewDcsMsgData.mModeName = this.mModeName;
        previewDcsMsgData.mbVideoStabilization = this.mbVideoStabilization;
        previewDcsMsgData.mbSuperStabilization = this.mbSuperStabilization;
        previewDcsMsgData.m3Hdr = this.m3Hdr;
        previewDcsMsgData.mbWide = this.mbWide;
        previewDcsMsgData.mbDualCamera = this.mbDualCamera;
        previewDcsMsgData.mVideoNightScene = this.mVideoNightScene;
        previewDcsMsgData.mAiEnhance = this.mAiEnhance;
        previewDcsMsgData.mPortraitMode = this.mPortraitMode;
        previewDcsMsgData.mNightState = this.mNightState;
        previewDcsMsgData.mZoomValue = this.mZoomValue;
        previewDcsMsgData.mIsRectify = this.mIsRectify;
        previewDcsMsgData.mIsConnectGimbal = this.mIsConnectGimbal;
        previewDcsMsgData.mPreviewDuration = this.mPreviewDuration;
        return previewDcsMsgData;
    }
}

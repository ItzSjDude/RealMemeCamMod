package com.oplus.ocs.camera.common.statistics.model;

import com.oplus.ocs.camera.common.statistics.StatisticConstant;
/* loaded from: classes.dex */
public class VideoDcsMsgData extends DcsMsgData {
    public boolean mAiEnhance;
    public int mAiEnhanceChange;
    public int mAiEnhanceEnd;
    public int mAiEnhanceStart;
    public String mFps;
    public int mHeight;
    public boolean mSlowMotion;
    public boolean mVideoNightScene;
    public int mWidth;

    public VideoDcsMsgData(int i) {
        super(i);
        this.mFps = "";
        this.mWidth = 0;
        this.mHeight = 0;
        this.mAiEnhanceStart = 0;
        this.mAiEnhanceEnd = 0;
        this.mAiEnhanceChange = 0;
        this.mVideoNightScene = false;
        this.mAiEnhance = false;
        this.mSlowMotion = false;
        this.mEventType = StatisticConstant.EventType.RECORD;
    }

    @Override // com.oplus.ocs.camera.common.statistics.model.DcsMsgData
    public void fillParams() {
        super.fillParams();
        checkEmptyCondition(StatisticConstant.KEY_VIDEO_FPS, this.mFps);
        checkGreatCondition(StatisticConstant.KEY_WIDTH, this.mWidth, 0);
        checkGreatCondition(StatisticConstant.KEY_HEIGHT, this.mHeight, 0);
        checkGreatCondition(StatisticConstant.KEY_AI_ENHANCE_START, this.mAiEnhanceStart, 0);
        checkGreatCondition(StatisticConstant.KEY_AI_ENHANCE_END, this.mAiEnhanceEnd, 0);
        checkGreatCondition(StatisticConstant.KEY_AI_ENHANCE_CHANGE, this.mAiEnhanceChange, 0);
        convertBoolean(StatisticConstant.KEY_AI_ENHANCE, this.mAiEnhance);
        checkEmptyCondition(StatisticConstant.KEY_ZOOM_VALUE, this.mZoomValue);
        checkEmptyCondition(StatisticConstant.KEY_IS_RECTIFY, String.valueOf(this.mIsRectify));
        checkEmptyCondition(StatisticConstant.KEY_IS_CONNECT_GIMBAL, String.valueOf(this.mIsConnectGimbal));
        convertBoolean(StatisticConstant.KEY_IS_STABILIZED, this.mbVideoStabilization);
        convertBoolean(StatisticConstant.KEY_IS_SUPER_STABILIZED, this.mbSuperStabilization);
        checkEmptyCondition(StatisticConstant.KEY_IS_HDR, this.m3Hdr);
        convertBoolean(StatisticConstant.KEY_IS_WIDE, this.mbWide);
        convertBoolean(StatisticConstant.KEY_SLOW_MOTION, this.mSlowMotion);
    }
}

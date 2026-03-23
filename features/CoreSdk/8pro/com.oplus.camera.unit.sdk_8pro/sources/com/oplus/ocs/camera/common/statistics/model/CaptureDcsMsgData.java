package com.oplus.ocs.camera.common.statistics.model;

import com.oplus.ocs.camera.common.statistics.StatisticConstant;
/* loaded from: classes.dex */
public class CaptureDcsMsgData extends DcsMsgData {
    public int mHdrStatus;
    public int mHeight;
    public boolean mMultiFrameDenoise;
    public int mNightState;
    public boolean mPortraitMode;
    public boolean mRemosaic;
    public int mWidth;

    public CaptureDcsMsgData(int i) {
        super(i);
        this.mPortraitMode = false;
        this.mWidth = 0;
        this.mHeight = 0;
        this.mNightState = 0;
        this.mRemosaic = false;
        this.mMultiFrameDenoise = false;
        this.mHdrStatus = 0;
        this.mEventType = StatisticConstant.EventType.CAPTURE;
    }

    @Override // com.oplus.ocs.camera.common.statistics.model.DcsMsgData
    public void fillParams() {
        super.fillParams();
        checkGreatCondition(StatisticConstant.KEY_WIDTH, this.mWidth, 0);
        checkGreatCondition(StatisticConstant.KEY_HEIGHT, this.mHeight, 0);
        convertBoolean("portrait_mode", this.mPortraitMode);
        checkEmptyCondition(StatisticConstant.KEY_ZOOM_VALUE, this.mZoomValue);
        checkEmptyCondition(StatisticConstant.KEY_IS_RECTIFY, String.valueOf(this.mIsRectify));
        checkEmptyCondition(StatisticConstant.KEY_IS_CONNECT_GIMBAL, String.valueOf(this.mIsConnectGimbal));
        convertBoolean(StatisticConstant.KEY_IS_WIDE, this.mbWide);
        checkEmptyCondition(StatisticConstant.KEY_IS_HDR, this.m3Hdr);
        checkEmptyCondition(StatisticConstant.KEY_NIGHT_STATE, String.valueOf(this.mNightState));
        convertBoolean(StatisticConstant.KEY_REMOSAIC, this.mRemosaic);
        convertBoolean(StatisticConstant.KEY_MULTI_FRAME_DENOISE, this.mMultiFrameDenoise);
        checkGreatCondition(StatisticConstant.KEY_HDR_STATUS, this.mHdrStatus, -1);
    }
}

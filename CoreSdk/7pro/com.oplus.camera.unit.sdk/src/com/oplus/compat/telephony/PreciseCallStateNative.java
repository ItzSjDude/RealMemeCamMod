package com.oplus.compat.telephony;
/* loaded from: classes.dex */
public class PreciseCallStateNative {
    public static final int PRECISE_CALL_STATE_NOT_VALID = -1;
    private int mBackgroundCallState;
    private int mForegroundCallState;
    private int mRingingCallState;

    public PreciseCallStateNative(int i, int i2, int i3) {
        this.mRingingCallState = -1;
        this.mForegroundCallState = -1;
        this.mBackgroundCallState = -1;
        this.mRingingCallState = i;
        this.mForegroundCallState = i2;
        this.mBackgroundCallState = i3;
    }

    public int getRingingCallState() {
        return this.mRingingCallState;
    }

    public int getForegroundCallState() {
        return this.mForegroundCallState;
    }

    public int getBackgroundCallState() {
        return this.mBackgroundCallState;
    }
}

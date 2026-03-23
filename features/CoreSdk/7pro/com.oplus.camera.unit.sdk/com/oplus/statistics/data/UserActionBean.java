package com.oplus.statistics.data;

import android.content.Context;
/* loaded from: classes.dex */
public class UserActionBean extends TrackEvent {
    private static final String ACTION_AMOUNT = "actionAmount";
    private static final String ACTION_CODE = "actionCode";
    private static final String ACTION_TIME = "actionTime";
    private int mAmount;
    private int mCode;
    private String mDate;

    @Override // com.oplus.statistics.data.TrackEvent
    public int getEventType() {
        return 1001;
    }

    public UserActionBean(Context context, int i, String str, int i2) {
        super(context);
        this.mCode = 0;
        this.mDate = "0";
        this.mAmount = 0;
        this.mCode = i;
        this.mDate = str;
        this.mAmount = i2;
        addTrackInfo(ACTION_CODE, this.mCode);
        addTrackInfo(ACTION_AMOUNT, this.mAmount);
        addTrackInfo(ACTION_TIME, this.mDate);
    }

    public int getActionCode() {
        return this.mCode;
    }

    public void setActionCode(int i) {
        this.mCode = i;
        addTrackInfo(ACTION_CODE, this.mCode);
    }

    public String getActionDate() {
        return this.mDate;
    }

    public void setActionDate(String str) {
        this.mDate = str;
        addTrackInfo(ACTION_TIME, this.mDate);
    }

    public int getActionAmount() {
        return this.mAmount;
    }

    public void setActionAmount(int i) {
        this.mAmount = i;
        addTrackInfo(ACTION_AMOUNT, this.mAmount);
    }

    public String toString() {
        return "action code is: " + getActionCode() + "\naction amount is: " + getActionAmount() + "\naction date is: " + getActionDate() + "\n";
    }
}

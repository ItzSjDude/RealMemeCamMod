package com.oplus.statistics.data;

import android.content.Context;
import com.oplus.statistics.DataTypeConstants;
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
        return DataTypeConstants.USER_ACTION;
    }

    public UserActionBean(Context context, int i, String str, int i2) {
        super(context);
        this.mCode = i;
        this.mDate = str;
        this.mAmount = i2;
        addTrackInfo(ACTION_CODE, i);
        addTrackInfo(ACTION_AMOUNT, this.mAmount);
        addTrackInfo(ACTION_TIME, this.mDate);
    }

    public int getActionCode() {
        return this.mCode;
    }

    public void setActionCode(int i) {
        this.mCode = i;
        addTrackInfo(ACTION_CODE, i);
    }

    public String getActionDate() {
        return this.mDate;
    }

    public void setActionDate(String str) {
        this.mDate = str;
        addTrackInfo(ACTION_TIME, str);
    }

    public int getActionAmount() {
        return this.mAmount;
    }

    public void setActionAmount(int i) {
        this.mAmount = i;
        addTrackInfo(ACTION_AMOUNT, i);
    }

    public String toString() {
        return "action code is: " + getActionCode() + "\naction amount is: " + getActionAmount() + "\naction date is: " + getActionDate() + "\n";
    }
}

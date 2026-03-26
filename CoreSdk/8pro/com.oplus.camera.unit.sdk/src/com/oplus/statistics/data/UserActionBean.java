package com.oplus.statistics.data;

import android.content.Context;
import androidx.annotation.NonNull;
import com.oplus.statistics.DataTypeConstants;

public class UserActionBean extends TrackEvent {
    private static final String ACTION_AMOUNT = "actionAmount";
    private static final String ACTION_CODE = "actionCode";
    private static final String ACTION_TIME = "actionTime";
    private int mAmount;
    private int mCode;
    private String mDate;

    @Override
    public int getEventType() {
        return DataTypeConstants.USER_ACTION;
    }

    public UserActionBean(@NonNull Context context, int code, String date, int amount) {
        super(context);
        this.mCode = code;
        this.mDate = date;
        this.mAmount = amount;
        addTrackInfo(ACTION_CODE, code);
        addTrackInfo(ACTION_AMOUNT, amount);
        addTrackInfo(ACTION_TIME, date);
    }

    public int getActionCode() {
        return this.mCode;
    }

    public void setActionCode(int code) {
        this.mCode = code;
        addTrackInfo(ACTION_CODE, code);
    }

    public String getActionDate() {
        return this.mDate;
    }

    public void setActionDate(String date) {
        this.mDate = date;
        addTrackInfo(ACTION_TIME, date);
    }

    public int getActionAmount() {
        return this.mAmount;
    }

    public void setActionAmount(int amount) {
        this.mAmount = amount;
        addTrackInfo(ACTION_AMOUNT, amount);
    }

    @Override
    public String toString() {
        return "action code is: " + getActionCode() + "\naction amount is: " + getActionAmount() + "\naction date is: "
                + getActionDate() + "\n";
    }
}

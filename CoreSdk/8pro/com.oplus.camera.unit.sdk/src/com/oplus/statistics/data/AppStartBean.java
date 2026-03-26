package com.oplus.statistics.data;

import android.content.Context;
import androidx.annotation.NonNull;
import com.oplus.statistics.DataTypeConstants;

public class AppStartBean extends TrackEvent {
    private static final String LOGIN_TIME = "loginTime";
    private String mTime;

    @Override
    public int getEventType() {
        return DataTypeConstants.APP_START;
    }

    public AppStartBean(@NonNull Context context, String time) {
        super(context);
        this.mTime = time;
        addTrackInfo(LOGIN_TIME, time);
    }

    public String getTime() {
        return this.mTime;
    }

    public void setTime(String time) {
        this.mTime = time;
        addTrackInfo(LOGIN_TIME, time);
    }

    @Override
    public String toString() {
        return "loginTime is: " + getTime() + "\n";
    }
}

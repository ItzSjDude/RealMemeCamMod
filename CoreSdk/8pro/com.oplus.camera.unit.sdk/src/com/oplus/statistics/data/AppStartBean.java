package com.oplus.statistics.data;

import android.content.Context;

/* JADX INFO: loaded from: classes.dex */
public class AppStartBean extends TrackEvent {
    private static final String LOGIN_TIME = "loginTime";
    private String mTime;

    @Override // com.oplus.statistics.data.TrackEvent
    public int getEventType() {
        return 1000;
    }

    public AppStartBean(Context context, String str) {
        super(context);
        this.mTime = str;
        addTrackInfo(LOGIN_TIME, str);
    }

    public String getTime() {
        return this.mTime;
    }

    public void setTime(String str) {
        this.mTime = str;
        addTrackInfo(LOGIN_TIME, str);
    }

    public String toString() {
        return "loginTime is :" + getTime() + "\n";
    }
}

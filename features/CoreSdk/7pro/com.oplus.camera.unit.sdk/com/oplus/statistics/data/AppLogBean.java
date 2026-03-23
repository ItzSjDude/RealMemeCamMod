package com.oplus.statistics.data;

import android.content.Context;
/* loaded from: classes.dex */
public class AppLogBean extends TrackEvent {
    private static final String EVENT_BODY = "eventBody";
    private static final String EVENT_TYPE = "eventType";
    private String mBody;
    private String mType;

    @Override // com.oplus.statistics.data.TrackEvent
    public int getEventType() {
        return 1002;
    }

    public AppLogBean(Context context, String str, String str2) {
        super(context);
        this.mType = "";
        this.mBody = "";
        this.mType = str;
        this.mBody = str2;
        addTrackInfo(EVENT_TYPE, this.mType);
        addTrackInfo(EVENT_BODY, this.mBody);
    }

    public String getType() {
        return this.mType;
    }

    public void setType(String str) {
        this.mType = str;
        addTrackInfo(EVENT_TYPE, this.mType);
    }

    public String getBody() {
        return this.mBody;
    }

    public void setAppLog(String str) {
        this.mBody = str;
        addTrackInfo(EVENT_BODY, this.mBody);
    }

    public String toString() {
        return "type is :" + getEventType() + "\nbody is :" + getBody() + "\n";
    }
}

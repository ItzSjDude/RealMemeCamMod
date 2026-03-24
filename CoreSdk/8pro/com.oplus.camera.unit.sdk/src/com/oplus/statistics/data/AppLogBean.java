package com.oplus.statistics.data;

import android.content.Context;
import com.oplus.statistics.DataTypeConstants;

/* JADX INFO: loaded from: classes.dex */
public class AppLogBean extends TrackEvent {
    private static final String EVENT_BODY = "eventBody";
    private static final String EVENT_TYPE = "eventType";
    private String mBody;
    private String mType;

    @Override // com.oplus.statistics.data.TrackEvent
    public int getEventType() {
        return DataTypeConstants.APP_LOG;
    }

    public AppLogBean(Context context, String str, String str2) {
        super(context);
        this.mType = str;
        this.mBody = str2;
        addTrackInfo(EVENT_TYPE, str);
        addTrackInfo(EVENT_BODY, this.mBody);
    }

    public String getType() {
        return this.mType;
    }

    public void setType(String str) {
        this.mType = str;
        addTrackInfo(EVENT_TYPE, str);
    }

    public String getBody() {
        return this.mBody;
    }

    public void setAppLog(String str) {
        this.mBody = str;
        addTrackInfo(EVENT_BODY, str);
    }

    public String toString() {
        return "type is :" + getEventType() + "\nbody is :" + getBody() + "\n";
    }
}

package com.oplus.statistics.data;

import android.content.Context;
/* loaded from: classes.dex */
public class StaticEventBean extends TrackEvent {
    private static final String EVENT_BODY = "eventBody";
    private static final String UPLOAD_MODE = "uploadMode";
    private String mBody;
    private int mUploadMode;

    @Override // com.oplus.statistics.data.TrackEvent
    public int getEventType() {
        return 1008;
    }

    public StaticEventBean(Context context, int i, String str) {
        super(context);
        this.mUploadMode = 0;
        this.mBody = "";
        this.mUploadMode = i;
        this.mBody = str;
        addTrackInfo(UPLOAD_MODE, this.mUploadMode);
        addTrackInfo(EVENT_BODY, this.mBody);
    }

    public int getUploadMode() {
        return this.mUploadMode;
    }

    public void setUploadMode(int i) {
        this.mUploadMode = i;
        addTrackInfo(UPLOAD_MODE, this.mUploadMode);
    }

    public String getBody() {
        return this.mBody;
    }

    public void setBody(String str) {
        this.mBody = str;
        addTrackInfo(EVENT_BODY, this.mBody);
    }

    public String toString() {
        return "uploadMode is :" + this.mUploadMode + "\nbody is :" + getBody() + "\n";
    }
}

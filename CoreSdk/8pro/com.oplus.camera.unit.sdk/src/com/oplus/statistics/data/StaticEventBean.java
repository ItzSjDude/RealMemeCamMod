package com.oplus.statistics.data;

import android.content.Context;
import com.oplus.statistics.DataTypeConstants;

/* JADX INFO: loaded from: classes.dex */
public class StaticEventBean extends TrackEvent {
    private static final String EVENT_BODY = "eventBody";
    private static final String UPLOAD_MODE = "uploadMode";
    private String mBody;
    private int mUploadMode;

    @Override // com.oplus.statistics.data.TrackEvent
    public int getEventType() {
        return DataTypeConstants.STATIC_EVENT_TYPE;
    }

    public StaticEventBean(Context context, int i, String str) {
        super(context);
        this.mUploadMode = i;
        this.mBody = str;
        addTrackInfo(UPLOAD_MODE, i);
        addTrackInfo(EVENT_BODY, this.mBody);
    }

    public int getUploadMode() {
        return this.mUploadMode;
    }

    public void setUploadMode(int i) {
        this.mUploadMode = i;
        addTrackInfo(UPLOAD_MODE, i);
    }

    public String getBody() {
        return this.mBody;
    }

    public void setBody(String str) {
        this.mBody = str;
        addTrackInfo(EVENT_BODY, str);
    }

    public String toString() {
        return "uploadMode is :" + this.mUploadMode + "\nbody is :" + getBody() + "\n";
    }
}

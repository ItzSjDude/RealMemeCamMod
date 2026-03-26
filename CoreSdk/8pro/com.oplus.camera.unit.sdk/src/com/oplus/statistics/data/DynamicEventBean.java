package com.oplus.statistics.data;

import android.content.Context;
import androidx.annotation.NonNull;
import com.oplus.statistics.DataTypeConstants;

public class DynamicEventBean extends TrackEvent {
    private static final String EVENT_BODY = "eventBody";
    private static final String UPLOAD_MODE = "uploadMode";
    private String mBody;
    private int mUploadMode;

    @Override
    public int getEventType() {
        return DataTypeConstants.DYNAMIC_EVENT_TYPE;
    }

    public DynamicEventBean(@NonNull Context context, int uploadMode, String body) {
        super(context);
        this.mUploadMode = uploadMode;
        this.mBody = body;
        addTrackInfo(UPLOAD_MODE, uploadMode);
        addTrackInfo(EVENT_BODY, body);
    }

    public int getUploadMode() {
        return this.mUploadMode;
    }

    public void setUploadMode(int uploadMode) {
        this.mUploadMode = uploadMode;
        addTrackInfo(UPLOAD_MODE, uploadMode);
    }

    public String getBody() {
        return this.mBody;
    }

    public void setBody(String body) {
        this.mBody = body;
        addTrackInfo(EVENT_BODY, body);
    }

    @Override
    public String toString() {
        return "uploadMode is: " + this.mUploadMode + "\nbody is: " + getBody() + "\n";
    }
}

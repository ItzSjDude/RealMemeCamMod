package com.oplus.statistics.data;

import android.content.Context;
import androidx.annotation.NonNull;
import com.oplus.statistics.DataTypeConstants;

public class AppLogBean extends TrackEvent {
    private static final String EVENT_BODY = "eventBody";
    private static final String EVENT_TYPE = "eventType";
    private String mBody;
    private String mType;

    @Override
    public int getEventType() {
        return DataTypeConstants.APP_LOG;
    }

    public AppLogBean(@NonNull Context context, String type, String body) {
        super(context);
        this.mType = type;
        this.mBody = body;
        addTrackInfo(EVENT_TYPE, type);
        addTrackInfo(EVENT_BODY, body);
    }

    public String getType() {
        return this.mType;
    }

    public void setType(String type) {
        this.mType = type;
        addTrackInfo(EVENT_TYPE, type);
    }

    public String getBody() {
        return this.mBody;
    }

    public void setAppLog(String body) {
        this.mBody = body;
        addTrackInfo(EVENT_BODY, body);
    }

    @Override
    public String toString() {
        return "type is: " + getEventType() + "\nbody is: " + getBody() + "\n";
    }
}

package com.oplus.statistics.data;

import android.content.Context;
import androidx.annotation.NonNull;
import com.oplus.ocs.camera.common.util.CameraConstant;
import com.oplus.statistics.DataTypeConstants;
import com.oplus.statistics.util.CastUtil;
import java.util.Map;

public class CommonBean extends TrackEvent {
    protected static final String APP_ID = "appId";
    protected static final String EVENT_ID = "eventID";
    protected static final String LOG_MAP = "logMap";
    protected static final String LOG_TAG = "logTag";
    private int mAppId;
    private String mEventId;
    protected String mLogMap;
    private String mLogTag;

    @Override
    public int getEventType() {
        return DataTypeConstants.COMMON;
    }

    public CommonBean(@NonNull Context context) {
        super(context);
        this.mLogMap = "";
        this.mLogTag = "";
        this.mEventId = "";
        this.mAppId = 0;
    }

    public CommonBean(@NonNull Context context, String logTag, String eventId) {
        super(context);
        this.mLogMap = "";
        this.mAppId = 0;
        this.mLogTag = logTag;
        this.mEventId = eventId;
        addTrackInfo(LOG_TAG, logTag);
        addTrackInfo(EVENT_ID, this.mEventId);
    }

    public CommonBean(@NonNull Context context, String appId, String logTag, String eventId) {
        super(context);
        this.mLogMap = "";
        this.mAppId = 0;
        this.mLogTag = logTag;
        this.mEventId = eventId;
        setAppId(appId);
        addTrackInfo(LOG_TAG, this.mLogTag);
        addTrackInfo(EVENT_ID, this.mEventId);
    }

    public String getEventID() {
        return this.mEventId;
    }

    public void setEventID(String eventId) {
        this.mEventId = eventId;
        addTrackInfo(EVENT_ID, eventId);
    }

    public String getLogTag() {
        return this.mLogTag;
    }

    public void setLogTag(String logTag) {
        this.mLogTag = logTag;
        addTrackInfo(LOG_TAG, logTag);
    }

    public String getLogMap() {
        return this.mLogMap;
    }

    public void setLogMap(Map<String, String> logMap) {
        String logMapJson = CastUtil.map2JsonObject(logMap).toString();
        this.mLogMap = logMapJson;
        addTrackInfo(LOG_MAP, logMapJson);
    }

    public void setLogMap(String logMapJson) {
        this.mLogMap = logMapJson;
        addTrackInfo(LOG_MAP, logMapJson);
    }

    public int getAppID() {
        return this.mAppId;
    }

    public void setAppId(int appId) {
        this.mAppId = appId;
        addTrackInfo(APP_ID, appId);
    }

    @Override
    public String toString() {
        return " type is :" + getEventType() + CameraConstant.JSON_CONNECTOR_COMMA + " tag is :" + getLogTag()
                + CameraConstant.JSON_CONNECTOR_COMMA + " eventID is :" + getEventID()
                + CameraConstant.JSON_CONNECTOR_COMMA + " map is :" + getLogMap();
    }
}

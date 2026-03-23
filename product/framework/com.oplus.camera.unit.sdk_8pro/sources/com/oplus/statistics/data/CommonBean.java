package com.oplus.statistics.data;

import android.content.Context;
import androidx.annotation.NonNull;
import com.oplus.ocs.camera.common.util.CameraConstant;
import com.oplus.statistics.DataTypeConstants;
import com.oplus.statistics.util.CastUtil;
import java.util.Map;
/* loaded from: classes.dex */
public class CommonBean extends TrackEvent {
    protected static final String APP_ID = "appId";
    protected static final String EVENT_ID = "eventID";
    protected static final String LOG_MAP = "logMap";
    protected static final String LOG_TAG = "logTag";
    private int mAppId;
    private String mEventId;
    protected String mLogMap;
    private String mLogTag;

    @Override // com.oplus.statistics.data.TrackEvent
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

    public CommonBean(@NonNull Context context, String str, String str2) {
        super(context);
        this.mLogMap = "";
        this.mAppId = 0;
        this.mLogTag = str;
        this.mEventId = str2;
        addTrackInfo(LOG_TAG, str);
        addTrackInfo(EVENT_ID, this.mEventId);
    }

    public CommonBean(@NonNull Context context, String str, String str2, String str3) {
        super(context);
        this.mLogMap = "";
        this.mAppId = 0;
        this.mLogTag = str2;
        this.mEventId = str3;
        setAppId(str);
        addTrackInfo(LOG_TAG, this.mLogTag);
        addTrackInfo(EVENT_ID, this.mEventId);
    }

    public String getEventID() {
        return this.mEventId;
    }

    public void setEventID(String str) {
        this.mEventId = str;
        addTrackInfo(EVENT_ID, str);
    }

    public String getLogTag() {
        return this.mLogTag;
    }

    public void setLogTag(String str) {
        this.mLogTag = str;
        addTrackInfo(LOG_TAG, str);
    }

    public String getLogMap() {
        return this.mLogMap;
    }

    public void setLogMap(Map<String, String> map) {
        String jSONObject = CastUtil.map2JsonObject(map).toString();
        this.mLogMap = jSONObject;
        addTrackInfo(LOG_MAP, jSONObject);
    }

    public void setLogMap(String str) {
        this.mLogMap = str;
        addTrackInfo(LOG_MAP, str);
    }

    public int getAppID() {
        return this.mAppId;
    }

    public void setAppId(int i) {
        this.mAppId = i;
        addTrackInfo(APP_ID, i);
    }

    public String toString() {
        return " type is :" + getEventType() + CameraConstant.JSON_CONNECTOR_COMMA + " tag is :" + getLogTag() + CameraConstant.JSON_CONNECTOR_COMMA + " eventID is :" + getEventID() + CameraConstant.JSON_CONNECTOR_COMMA + " map is :" + getLogMap();
    }
}

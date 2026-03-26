package com.oplus.statistics.data;

import android.content.Context;
import androidx.annotation.NonNull;
import com.oplus.ocs.camera.common.util.CameraConstant;
import com.oplus.statistics.DataTypeConstants;
import com.oplus.statistics.util.VersionUtil;

public class PeriodDataBean extends CommonBean {
    private final int mEventType;

    public PeriodDataBean(@NonNull Context context, String logTag, String eventId, String logMap) {
        super(context, "", logTag, eventId);
        int type = VersionUtil.isSupportPeriodData(context) ? DataTypeConstants.PERIOD_DATA : DataTypeConstants.COMMON;
        this.mEventType = type;
        addTrackInfo(DATA_TYPE, type);
        setLogMap(logMap);
    }

    public PeriodDataBean(@NonNull Context context) {
        super(context);
        int type = VersionUtil.isSupportPeriodData(context) ? DataTypeConstants.PERIOD_DATA : DataTypeConstants.COMMON;
        this.mEventType = type;
        addTrackInfo(DATA_TYPE, type);
    }

    @Override
    public int getEventType() {
        return this.mEventType;
    }

    @Override
    public String toString() {
        return " type is: " + getEventType() + CameraConstant.JSON_CONNECTOR_COMMA + " tag is: " + getLogTag()
                + CameraConstant.JSON_CONNECTOR_COMMA + " eventID is: " + getEventID()
                + CameraConstant.JSON_CONNECTOR_COMMA + " map is: " + getLogMap();
    }
}

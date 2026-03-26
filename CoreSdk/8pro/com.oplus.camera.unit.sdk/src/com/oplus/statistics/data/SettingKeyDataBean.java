package com.oplus.statistics.data;

import android.content.Context;
import androidx.annotation.NonNull;
import com.oplus.ocs.camera.common.util.CameraConstant;
import com.oplus.statistics.DataTypeConstants;
import com.oplus.statistics.agent.StaticPeriodDataRecord;
import com.oplus.statistics.util.VersionUtil;
import java.util.List;

public class SettingKeyDataBean extends CommonBean {
    private final int mEventType;

    public SettingKeyDataBean(@NonNull Context context, String logTag, String eventId, String logMap) {
        super(context, "", logTag, eventId);
        int type = VersionUtil.isSupportPeriodData(context) ? DataTypeConstants.SETTING_KEY : DataTypeConstants.COMMON;
        this.mEventType = type;
        addTrackInfo(DATA_TYPE, type);
        setLogMap(logMap);
    }

    public SettingKeyDataBean(@NonNull Context context) {
        super(context);
        int type = VersionUtil.isSupportPeriodData(context) ? DataTypeConstants.SETTING_KEY : DataTypeConstants.COMMON;
        this.mEventType = type;
        addTrackInfo(DATA_TYPE, type);
    }

    @Override
    public int getEventType() {
        return this.mEventType;
    }

    public void setLogMap(List<SettingKeyBean> settingKeyList) {
        super.setLogMap(StaticPeriodDataRecord.listToJsonObject(settingKeyList).toString());
    }

    @Override
    public String toString() {
        return " type is: " + getEventType() + CameraConstant.JSON_CONNECTOR_COMMA + " tag is: " + getLogTag()
                + CameraConstant.JSON_CONNECTOR_COMMA + " eventID is: " + getEventID()
                + CameraConstant.JSON_CONNECTOR_COMMA + " map is: " + getLogMap();
    }
}

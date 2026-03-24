package com.oplus.statistics.data;

import android.content.Context;
import com.oplus.statistics.DataTypeConstants;
import com.oplus.statistics.agent.StaticPeriodDataRecord;
import com.oplus.statistics.util.VersionUtil;
import java.util.List;
/* loaded from: classes.dex */
public class SettingKeyDataBean extends CommonBean {
    private final int mEventType;

    public SettingKeyDataBean(Context context, String str, String str2, String str3) {
        super(context, str, str2);
        this.mEventType = VersionUtil.isSupportPeriodData(context) ? DataTypeConstants.SETTING_KEY : 1006;
        addTrackInfo("dataType", this.mEventType);
        setLogMap(str3);
    }

    public SettingKeyDataBean(Context context) {
        super(context);
        this.mEventType = VersionUtil.isSupportPeriodData(context) ? DataTypeConstants.SETTING_KEY : 1006;
        addTrackInfo("dataType", this.mEventType);
    }

    @Override // com.oplus.statistics.data.CommonBean, com.oplus.statistics.data.TrackEvent
    public int getEventType() {
        return this.mEventType;
    }

    public void setLogMap(List<SettingKeyBean> list) {
        super.setLogMap(StaticPeriodDataRecord.list2JsonObject(list).toString());
    }

    @Override // com.oplus.statistics.data.CommonBean
    public String toString() {
        return " type is :" + getEventType() + ", tag is :" + getLogTag() + ", eventID is :" + getEventID() + ", map is :" + getLogMap();
    }
}

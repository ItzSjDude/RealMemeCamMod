package com.oplus.ocs.camera.common.statistics.model;

/* JADX INFO: loaded from: classes.dex */
public class EventCommonDcsMsgData extends DcsMsgData {
    public String mEventKey;
    public String mEventValue;

    public EventCommonDcsMsgData(int i) {
        super(i);
        this.mEventKey = "";
        this.mEventValue = "";
    }

    @Override // com.oplus.ocs.camera.common.statistics.model.DcsMsgData
    public void fillParams() {
        super.fillParams();
        checkEmptyCondition(this.mEventKey, this.mEventValue);
    }
}

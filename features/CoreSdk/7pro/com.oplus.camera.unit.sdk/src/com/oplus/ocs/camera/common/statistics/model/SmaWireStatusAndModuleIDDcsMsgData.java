package com.oplus.ocs.camera.common.statistics.model;

import com.oplus.ocs.camera.common.statistics.StatisticConstant;
/* loaded from: classes.dex */
public class SmaWireStatusAndModuleIDDcsMsgData extends DcsMsgData {
    public String mModuleID;
    public boolean mbIsWireStatus;

    public SmaWireStatusAndModuleIDDcsMsgData(int i) {
        super(i);
        this.mbIsWireStatus = false;
        this.mModuleID = null;
        this.mEventType = StatisticConstant.EventType.ENTER;
    }

    @Override // com.oplus.ocs.camera.common.statistics.model.DcsMsgData
    public void fillParams() {
        super.fillParams();
        checkEmptyCondition(StatisticConstant.KEY_SMA_WIRE_BROKEN, String.valueOf(this.mbIsWireStatus));
        checkEmptyCondition(StatisticConstant.KEY_SN_BUFFER, String.valueOf(this.mModuleID));
    }
}

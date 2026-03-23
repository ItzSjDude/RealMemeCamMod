package com.oplus.ocs.camera.common.statistics.model;

import com.oplus.ocs.camera.common.statistics.StatisticConstant;
/* loaded from: classes.dex */
public class EnterExitDcsMsgData extends DcsMsgData {
    public long mDuration;
    public boolean mbEnter;

    public EnterExitDcsMsgData() {
        super(-1);
        this.mbEnter = true;
        this.mDuration = 0L;
    }

    @Override // com.oplus.ocs.camera.common.statistics.model.DcsMsgData
    public void fillParams() {
        super.fillParams();
        this.mEventType = this.mbEnter ? StatisticConstant.EventType.ENTER : StatisticConstant.EventType.EXIT;
        if (this.mbEnter) {
            return;
        }
        fillExitParams();
    }

    private void fillExitParams() {
        checkGreatCondition(StatisticConstant.KEY_DURATION, this.mDuration, 0);
    }
}

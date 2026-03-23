package com.oplus.ocs.camera.common.statistics.model;

import android.text.TextUtils;
import com.oplus.ocs.camera.common.statistics.StatisticConstant;
import com.oplus.ocs.camera.common.statistics.StatisticsManager;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes.dex */
public abstract class DcsMsgData {
    public int mCameraId;
    public StatisticConstant.EventType mEventType = null;
    public Map<String, String> mParams = new HashMap();
    public boolean mbVideoStabilization = false;
    public boolean mbSuperStabilization = false;
    public String m3Hdr = null;
    public boolean mbWide = false;
    public String mbDualCamera = null;
    public String mZoomValue = "";
    public boolean mIsRectify = false;
    public boolean mIsConnectGimbal = false;

    public DcsMsgData(int i) {
        this.mCameraId = i;
    }

    public void fillParams() {
        this.mParams.clear();
        checkGreatCondition(StatisticConstant.KEY_CAMERA_ID, this.mCameraId, -1);
    }

    public void checkEmptyCondition(String str, String str2) {
        if (TextUtils.isEmpty(str2)) {
            return;
        }
        this.mParams.put(str, str2);
    }

    public void checkGreatCondition(String str, int i, int i2) {
        if (i > i2) {
            this.mParams.put(str, String.valueOf(i));
        }
    }

    public void checkGreatCondition(String str, long j, int i) {
        if (j > i) {
            this.mParams.put(str, String.valueOf(j));
        }
    }

    public void convertBoolean(String str, boolean z) {
        this.mParams.put(str, z ? "on" : "off");
    }

    public void report() {
        StatisticsManager.getInstance().report(this);
    }
}

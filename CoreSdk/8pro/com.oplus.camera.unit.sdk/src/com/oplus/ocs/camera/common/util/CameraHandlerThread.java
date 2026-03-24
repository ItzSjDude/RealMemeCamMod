package com.oplus.ocs.camera.common.util;

import android.os.HandlerThread;
import android.os.Process;
import com.oplus.ocs.camera.consumer.apsAdapter.adapter.ApsUtils;

/* JADX INFO: loaded from: classes.dex */
public class CameraHandlerThread extends HandlerThread {
    private static final String TAG = "CameraHandlerThread";
    private String mUXLevel;
    private boolean mbEnableUx;

    public CameraHandlerThread(String str) {
        super(str);
        this.mbEnableUx = false;
        this.mUXLevel = null;
    }

    @Override // android.os.HandlerThread, java.lang.Thread, java.lang.Runnable
    public void run() {
        if (this.mbEnableUx) {
            String str = this.mUXLevel;
            if (str == null) {
                str = CameraPerformance.UX_STATE_ENABLE;
            }
            CameraPerformance.setUxThreadValue(str, Process.myTid());
            this.mbEnableUx = false;
        }
        super.run();
    }

    public void enableUxState() {
        if (ApsUtils.isSystemCamera()) {
            this.mbEnableUx = true;
        }
    }

    public void enableUxState(String str) {
        if (str != null) {
            this.mUXLevel = str;
        }
        if (ApsUtils.isSystemCamera()) {
            this.mbEnableUx = true;
        }
    }
}

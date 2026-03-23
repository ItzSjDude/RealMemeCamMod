package com.oplus.ocs.camera.common.util;

import android.os.HandlerThread;
import android.os.Process;
/* loaded from: classes.dex */
public class CameraHandlerThread extends HandlerThread {
    private static final String TAG = "CameraHandlerThread";
    private boolean mbEnableUx;

    public CameraHandlerThread(String str) {
        super(str);
        this.mbEnableUx = false;
    }

    @Override // android.os.HandlerThread, java.lang.Thread, java.lang.Runnable
    public void run() {
        if (this.mbEnableUx) {
            CameraPerformance.setUxThreadValue(CameraPerformance.UX_STATE_ENABLE, Process.myTid());
            this.mbEnableUx = false;
        }
        super.run();
    }

    public void enableUxState() {
        if (Util.isSystemCamera()) {
            this.mbEnableUx = true;
        }
    }
}

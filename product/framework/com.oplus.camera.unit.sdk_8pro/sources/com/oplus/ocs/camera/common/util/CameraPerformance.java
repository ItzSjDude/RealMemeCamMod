package com.oplus.ocs.camera.common.util;

import android.os.Build;
import android.os.Process;
import com.oplus.ocs.camera.consumer.apsAdapter.ApsAdapterLog;
import com.oplus.ocs.camera.consumer.apsAdapter.adapter.ApsUtils;
import com.oplus.uifirst.OplusUIFirstManager;
/* loaded from: classes.dex */
public class CameraPerformance {
    private static final String TAG = "CameraHandlerThread";
    public static final String UX_STATE_DISABLE = "0";
    public static final String UX_STATE_ENABLE = "129";
    public static final String UX_STATE_LEVEL = "136";

    public static void setUxThreadValue(String str, int i) {
        if (30 >= Build.VERSION.SDK_INT || !ApsUtils.isSystemCamera()) {
            return;
        }
        int myPid = Process.myPid();
        ApsAdapterLog.d(TAG, "setUxThreadValue, pid is: " + myPid + ", tid is " + i + " value is " + str);
        if (myPid == 0 || i == 0) {
            ApsAdapterLog.e(TAG, "setUxThreadValue fail");
            return;
        }
        try {
            OplusUIFirstManager.getInstance().setUxThreadValue(myPid, i, str);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }
}

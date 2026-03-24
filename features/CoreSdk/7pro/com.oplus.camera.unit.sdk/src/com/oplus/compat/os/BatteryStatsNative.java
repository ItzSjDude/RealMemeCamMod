package com.oplus.compat.os;

import android.util.Log;
import androidx.annotation.RequiresApi;
import com.oplus.compat.annotation.Blocked;
import com.oplus.compat.annotation.Permission;
import com.oplus.compat.utils.util.VersionUtils;
import com.oplus.epona.Epona;
import com.oplus.epona.Request;
import com.oplus.epona.Response;
import com.oplus.ocs.camera.common.util.ApsConstant;
/* loaded from: classes.dex */
public class BatteryStatsNative {
    private static final String COMPONENT_NAME = "android.os.BatteryStats";
    private static final String RESULT = "result";
    @Permission(authStr = "BatteryStats", type = "epona")
    @Blocked
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public static int STATS_SINCE_CHARGED = 0;
    private static final String TAG = "BatteryStatsNative";

    private BatteryStatsNative() {
    }

    static {
        try {
            if (VersionUtils.isQ()) {
                STATS_SINCE_CHARGED = getStatsSinceCharged();
                return;
            }
            throw new UnsupportedOperationException("not support before Q");
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
        }
    }

    private static int getStatsSinceCharged() {
        if (!VersionUtils.appPlatformExists()) {
            if (VersionUtils.isQ()) {
                return 0;
            }
            Log.e(TAG, "not supported before Q");
        } else if (!VersionUtils.isS() && VersionUtils.isR()) {
            Response execute = Epona.newCall(new Request.Builder().setComponentName(COMPONENT_NAME).setActionName("STATS_SINCE_CHARGED").build()).execute();
            if (execute.isSuccessful()) {
                return execute.getBundle().getInt(RESULT);
            }
            Log.e(TAG, "STATS_SINCE_CHARGED is not connected with Epona");
        }
        return 0;
    }
}

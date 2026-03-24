package com.oplus.compat.app;

import android.util.Log;
import androidx.annotation.RequiresApi;
import com.oplus.compat.annotation.Blocked;
import com.oplus.compat.annotation.Permission;
import com.oplus.compat.annotation.System;
import com.oplus.compat.utils.util.UnSupportedApiVersionException;
import com.oplus.compat.utils.util.VersionUtils;
import com.oplus.epona.Epona;
import com.oplus.epona.Request;
import com.oplus.epona.Response;
/* loaded from: classes.dex */
public class UiModeManagerNative {
    private static final String COMPONENT_NAME = "android.app.UiModeManager";
    private static final String TAG = "UiModeManagerNative";

    private UiModeManagerNative() {
    }

    @Permission(authStr = "setNightMode", type = "epona")
    @RequiresApi(api = 30)
    @System
    public static void setNightMode(int i) throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            Epona.newCall(new Request.Builder().setComponentName(COMPONENT_NAME).setActionName("setNightMode").withInt("mode", i).build()).execute();
            return;
        }
        throw new UnSupportedApiVersionException("Not supported before R");
    }

    @Permission(authStr = "setNightModeActivated", type = "epona")
    @Blocked
    @RequiresApi(api = 30)
    @System
    public static boolean setNightModeActivated(boolean z) throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            Response execute = Epona.newCall(new Request.Builder().setComponentName(COMPONENT_NAME).setActionName("setNightModeActivated").withBoolean("active", z).build()).execute();
            if (execute.isSuccessful()) {
                return execute.getBundle().getBoolean("result");
            }
            Log.e(TAG, "setNightModeActivated: " + execute.getMessage());
            return false;
        }
        throw new UnSupportedApiVersionException("Not supported before R");
    }
}

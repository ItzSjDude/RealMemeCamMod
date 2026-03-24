package com.oplus.compat.view;

import android.os.RemoteException;
import androidx.annotation.RequiresApi;
import com.oplus.compat.annotation.Blocked;
import com.oplus.compat.annotation.Permission;
import com.oplus.compat.annotation.System;
import com.oplus.compat.utils.util.UnSupportedApiVersionException;
import com.oplus.compat.utils.util.VersionUtils;
import com.oplus.epona.Epona;
import com.oplus.epona.Request;
/* loaded from: classes.dex */
public class SurfaceControlNative {
    private static final String COMPONENT_NAME = "android.view.SurfaceControl";
    private static final String TAG = "SurfaceControlNative";

    private SurfaceControlNative() {
    }

    @Permission(authStr = "setDisplayPowerMode", type = "epona")
    @Blocked
    @RequiresApi(api = 30)
    @System
    public static void setDisplayPowerMode(int i) throws UnSupportedApiVersionException, RemoteException {
        if (VersionUtils.isR()) {
            Epona.newCall(new Request.Builder().setComponentName(COMPONENT_NAME).setActionName("setDisplayPowerMode").withInt("mode", i).build()).execute();
            return;
        }
        throw new UnSupportedApiVersionException("not supported before R");
    }
}

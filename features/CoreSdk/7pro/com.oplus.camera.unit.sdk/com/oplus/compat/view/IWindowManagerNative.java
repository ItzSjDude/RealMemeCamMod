package com.oplus.compat.view;

import androidx.annotation.RequiresApi;
import com.oplus.compat.annotation.Blocked;
import com.oplus.compat.annotation.Permission;
import com.oplus.compat.annotation.System;
import com.oplus.compat.utils.util.UnSupportedApiVersionException;
import com.oplus.compat.utils.util.VersionUtils;
import com.oplus.epona.Epona;
import com.oplus.epona.Request;
/* loaded from: classes.dex */
public class IWindowManagerNative {
    private static final String COMPONENT_NAME = "android.view.IWindowManager";

    private IWindowManagerNative() {
    }

    @Permission(authStr = "setForcedDisplayDensityForUser", type = "epona")
    @Blocked
    @RequiresApi(api = 30)
    @System
    public static void setForcedDisplayDensityForUser(int i, int i2, int i3) throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            Epona.newCall(new Request.Builder().setComponentName(COMPONENT_NAME).setActionName("setForcedDisplayDensityForUser").withInt("displayId", i).withInt("density", i2).withInt("userId", i3).build()).execute();
            return;
        }
        throw new UnSupportedApiVersionException();
    }
}

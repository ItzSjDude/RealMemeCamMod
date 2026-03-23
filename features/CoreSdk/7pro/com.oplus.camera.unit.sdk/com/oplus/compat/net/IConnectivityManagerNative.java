package com.oplus.compat.net;

import androidx.annotation.RequiresApi;
import com.oplus.compat.annotation.Blocked;
import com.oplus.compat.annotation.Permission;
import com.oplus.compat.annotation.System;
import com.oplus.compat.utils.util.UnSupportedApiVersionException;
import com.oplus.compat.utils.util.VersionUtils;
import com.oplus.epona.Epona;
import com.oplus.epona.Request;
/* loaded from: classes.dex */
public class IConnectivityManagerNative {
    private static final String COMPONENT_NAME = "android.net.IConnectivityManager";

    private IConnectivityManagerNative() {
    }

    @Permission(authStr = "setVpnPackageAuthorization", type = "epona")
    @Blocked
    @RequiresApi(api = 30)
    @System
    public static void setVpnPackageAuthorization(String str, int i, int i2) throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            Epona.newCall(new Request.Builder().setComponentName(COMPONENT_NAME).setActionName("setVpnPackageAuthorization").withString("packageName", str).withInt("userId", i).withInt("vpnType", i2).build()).execute();
            return;
        }
        throw new UnSupportedApiVersionException("Not supported before R");
    }
}

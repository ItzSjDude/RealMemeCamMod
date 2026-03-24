package com.oplus.compat.os;

import androidx.annotation.RequiresApi;
import com.oplus.compat.annotation.Permission;
import com.oplus.compat.annotation.System;
import com.oplus.compat.utils.util.UnSupportedApiVersionException;
import com.oplus.compat.utils.util.VersionUtils;
import com.oplus.epona.Epona;
import com.oplus.epona.Request;
import com.oplus.epona.Response;
/* loaded from: classes.dex */
public class BuildNative {
    private static final String COMPONENT_NAME = "android.os.Build";

    private BuildNative() {
    }

    @Permission(authStr = "getSerial", type = "epona")
    @RequiresApi(api = 30)
    @System
    public static String getSerial() throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            Response execute = Epona.newCall(new Request.Builder().setComponentName(COMPONENT_NAME).setActionName("getSerial").build()).execute();
            if (execute.isSuccessful()) {
                return execute.getBundle().getString("result");
            }
            return null;
        }
        throw new UnSupportedApiVersionException();
    }
}

package com.oplus.compat.app;

import androidx.annotation.RequiresApi;
import com.oplus.compat.annotation.Grey;
import com.oplus.compat.annotation.Permission;
import com.oplus.compat.annotation.System;
import com.oplus.compat.utils.util.UnSupportedApiVersionException;
import com.oplus.compat.utils.util.VersionUtils;
import com.oplus.epona.Epona;
import com.oplus.epona.Request;
import com.oplus.epona.Response;
/* loaded from: classes.dex */
public class IActivityManagerNative {
    private static final String COMPONENT_NAME = "android.app.IActivityManager";

    private IActivityManagerNative() {
    }

    @Permission(authStr = "removeTask", type = "epona")
    @Grey
    @RequiresApi(api = 30)
    @System
    public static boolean removeTask(int i) throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            Response execute = Epona.newCall(new Request.Builder().setComponentName(COMPONENT_NAME).setActionName("removeTask").withInt("taskId", i).build()).execute();
            if (execute.isSuccessful()) {
                return execute.getBundle().getBoolean("result");
            }
            return false;
        }
        throw new UnSupportedApiVersionException("not supported before R");
    }
}

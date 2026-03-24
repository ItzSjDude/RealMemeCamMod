package com.oplus.compat.app;

import androidx.annotation.RequiresApi;
import com.oplus.compat.annotation.Permission;
import com.oplus.compat.annotation.System;
import com.oplus.compat.utils.util.UnSupportedApiVersionException;
import com.oplus.compat.utils.util.VersionUtils;
import com.oplus.epona.Epona;
import com.oplus.epona.Request;
/* loaded from: classes.dex */
public class INotificationManagerNative {
    private static final String COMPONENT_NAME = "android.app.INotificationManager";
    private static final String TAG = "INotificationManagerNative";

    @Permission(authStr = "setNotificationListenerAccessGranted", type = "epona")
    @RequiresApi(api = 30)
    @System
    public static void setNotificationListenerAccessGranted(String str, String str2, boolean z, boolean z2) throws UnSupportedApiVersionException {
        if (VersionUtils.isS()) {
            Epona.newCall(new Request.Builder().setComponentName(COMPONENT_NAME).setActionName("setNotificationListenerAccessGranted").withString("packageName", str).withString("className", str2).withBoolean("granted", z).withBoolean("userSet", z2).build()).execute();
        } else if (VersionUtils.isR()) {
            Epona.newCall(new Request.Builder().setComponentName(COMPONENT_NAME).setActionName("setNotificationListenerAccessGranted").withString("packageName", str).withString("className", str2).withBoolean("granted", z).build()).execute();
        } else {
            throw new UnSupportedApiVersionException("Not Supported Before R");
        }
    }
}

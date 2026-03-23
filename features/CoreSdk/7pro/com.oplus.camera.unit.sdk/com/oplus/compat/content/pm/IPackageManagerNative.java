package com.oplus.compat.content.pm;

import android.content.ComponentName;
import android.content.pm.ActivityInfo;
import android.os.RemoteException;
import android.util.Log;
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
public class IPackageManagerNative {
    private static final String COMPONENT_NAME = "android.content.pm.IPackageManager";
    private static final String KEY_RESULT = "result";
    private static final String TAG = "IPackageManagerNative";

    private IPackageManagerNative() {
    }

    @Permission(authStr = "setApplicationEnabledSetting", type = "epona")
    @RequiresApi(api = 30)
    @System
    public static void setApplicationEnabledSetting(String str, int i, int i2, int i3, String str2) throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            Response execute = Epona.newCall(new Request.Builder().setComponentName(COMPONENT_NAME).setActionName("setApplicationEnabledSetting").withString("packageName", str).withInt("newState", i).withInt("flags", i2).withInt("userId", i3).withString("callingPackage", str2).build()).execute();
            Log.e(TAG, "response " + execute.isSuccessful());
            return;
        }
        throw new UnSupportedApiVersionException("Not Supported Before R");
    }

    @Permission(authStr = "isStorageLow", type = "epona")
    @Grey
    @RequiresApi(api = 30)
    @System
    public static boolean isStorageLow() throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            Response execute = Epona.newCall(new Request.Builder().setComponentName(COMPONENT_NAME).setActionName("isStorageLow").build()).execute();
            if (execute.isSuccessful()) {
                return execute.getBundle().getBoolean(KEY_RESULT, false);
            }
            return false;
        }
        throw new UnSupportedApiVersionException("Not Supported Before R");
    }

    @Permission(authStr = "getActivityInfo", type = "epona")
    @Grey
    @RequiresApi(api = 30)
    @System
    public static ActivityInfo getActivityInfo(ComponentName componentName, int i) throws UnSupportedApiVersionException, RemoteException {
        if (VersionUtils.isR()) {
            Response execute = Epona.newCall(new Request.Builder().setComponentName(COMPONENT_NAME).setActionName("getActivityInfo").withString("componentName", componentName.flattenToString()).withInt("userId", i).build()).execute();
            if (execute.isSuccessful()) {
                return (ActivityInfo) execute.getBundle().getParcelable(KEY_RESULT);
            }
            return null;
        }
        throw new UnSupportedApiVersionException("Not Supported Before R");
    }
}

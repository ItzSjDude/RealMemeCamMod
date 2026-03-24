package com.oplus.compat.launcher;

import android.content.pm.ShortcutInfo;
import android.graphics.Rect;
import android.os.Bundle;
import android.os.UserHandle;
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
import java.util.ArrayList;
/* loaded from: classes.dex */
public class LauncherAppsNative {
    private static final String TAG = "LauncherAppsNative";

    @Permission(authStr = "startShortcut", type = "epona")
    @Grey
    @RequiresApi(api = 30)
    @System
    public static void startShortcut(String str, String str2, Rect rect, Bundle bundle, UserHandle userHandle) throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            Response execute = Epona.newCall(new Request.Builder().setComponentName("android.content.pm.LauncherApps").setActionName("startShortcut").withString("packageName", str).withString("shortcutId", str2).withParcelable("sourceBounds", rect).withBundle("bundle", bundle).withParcelable("user", userHandle).build()).execute();
            if (execute.isSuccessful()) {
                return;
            }
            Log.e(TAG, "response error:" + execute.getMessage());
            return;
        }
        throw new UnSupportedApiVersionException("not supported before R");
    }

    @Permission(authStr = "getShortcuts", type = "epona")
    @Grey
    @RequiresApi(api = 30)
    @System
    public static ShortcutInfo getShortcuts(String str, ArrayList<String> arrayList, UserHandle userHandle) throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            Response execute = Epona.newCall(new Request.Builder().setComponentName("android.content.pm.LauncherApps").setActionName("getShortcuts").withString("packageName", str).withStringArrayList("shortcutIds", arrayList).withParcelable("user", userHandle).build()).execute();
            if (!execute.isSuccessful()) {
                Log.e(TAG, "response error:" + execute.getMessage());
            }
            return (ShortcutInfo) execute.getBundle().getParcelable("result");
        }
        throw new UnSupportedApiVersionException("not supported before R");
    }
}

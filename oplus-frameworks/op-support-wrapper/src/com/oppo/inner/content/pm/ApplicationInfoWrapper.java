package com.oppo.inner.content.pm;

import android.content.pm.ApplicationInfo;
import android.content.pm.IApplicationInfoExt;

/* loaded from: classes.dex */
public class ApplicationInfoWrapper {
    private static final String TAG = "ApplicationInfoWrapper";

    private ApplicationInfoWrapper() {
    }

    public static int getVersionCode(ApplicationInfo appInfo) {
        return appInfo.versionCode;
    }

    public static void setVersionCode(ApplicationInfo appInfo, int versionCode) {
        appInfo.versionCode = versionCode;
    }

    public static long getLongVersionCode(ApplicationInfo appInfo) {
        return appInfo.longVersionCode;
    }

    public static void setLongVersionCode(ApplicationInfo appInfo, long versionCode) {
        appInfo.setVersionCode(versionCode);
    }

    public static boolean isSystemApp(ApplicationInfo appInfo) {
        return appInfo.isSystemApp();
    }

    public static String getBaseCodePath(ApplicationInfo appInfo) {
        return appInfo.getBaseCodePath();
    }

    public static int getOplusFreezeState(ApplicationInfo appInfo) {
        return -1;
    }

    public static void setOplusFreezeState(ApplicationInfo appInfo, int state) {
        // commented out
    }
}

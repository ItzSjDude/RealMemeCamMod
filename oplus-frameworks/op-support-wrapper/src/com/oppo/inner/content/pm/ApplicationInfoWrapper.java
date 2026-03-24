package com.oppo.inner.content.pm;

import android.content.pm.ApplicationInfo;
import android.content.pm.IApplicationInfoExt;
import com.oplus.inner.content.pm.ApplicationInfoWrapper;

public class ApplicationInfoWrapper {
    public static int getVersionCode(ApplicationInfo appInfo) {
        return ApplicationInfoWrapper.getVersionCode(appInfo);
    }

    public static void setVersionCode(ApplicationInfo appInfo, int versionCode) {
        ApplicationInfoWrapper.setVersionCode(appInfo, versionCode);
    }

    public static long getLongVersionCode(ApplicationInfo appInfo) {
        return ApplicationInfoWrapper.getLongVersionCode(appInfo);
    }

    public static void setLongVersionCode(ApplicationInfo appInfo, long versionCode) {
        ApplicationInfoWrapper.setLongVersionCode(appInfo, versionCode);
    }

    public static boolean isSystemApp(ApplicationInfo appInfo) {
        return ApplicationInfoWrapper.isSystemApp(appInfo);
    }

    public static String getBaseCodePath(ApplicationInfo appInfo) {
        return ApplicationInfoWrapper.getBaseCodePath(appInfo);
    }

    public static int getOplusFreezeState(ApplicationInfo appInfo) {
        return ApplicationInfoWrapper.getOplusFreezeState(appInfo);
    }

    public static void setOplusFreezeState(ApplicationInfo appInfo, int state) {
        ApplicationInfoWrapper.setOplusFreezeState(appInfo, state);
    }

}
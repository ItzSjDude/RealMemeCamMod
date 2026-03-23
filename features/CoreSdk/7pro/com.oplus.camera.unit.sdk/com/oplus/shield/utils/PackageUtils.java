package com.oplus.shield.utils;

import android.app.ActivityManager;
import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.text.TextUtils;
import com.oplus.shield.Constants;
/* loaded from: classes.dex */
public class PackageUtils {
    private static String getAppName(Context context, int i) {
        ActivityManager activityManager = (ActivityManager) context.getSystemService("activity");
        if (activityManager != null) {
            for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : activityManager.getRunningAppProcesses()) {
                try {
                } catch (Exception e) {
                    PLog.e("get processName form running app processes exception " + e.getMessage());
                }
                if (runningAppProcessInfo.pid == i) {
                    return getProcessNameFromTargetProcesses(runningAppProcessInfo);
                }
                continue;
            }
        }
        return "";
    }

    public static String getCallingPackageName(Context context, int i, int i2) {
        String[] packagesForUid = context.getPackageManager().getPackagesForUid(i);
        if (packagesForUid != null && packagesForUid.length == 1) {
            return packagesForUid[0];
        }
        return getAppName(context, i2);
    }

    public static String getAppPlatformData(Context context, String str) {
        String valueFromManifest = getValueFromManifest(context, str, Constants.APP_PLATFORM_CAPABILITY_KEY);
        if (TextUtils.isEmpty(valueFromManifest)) {
            PLog.d("Start to get AppPlatformCode.");
            return getValueFromManifest(context, str, Constants.APP_PLATFORM_CAPABILITY_CODE);
        }
        return valueFromManifest;
    }

    private static String getValueFromManifest(Context context, String str, String str2) {
        try {
            Bundle bundle = context.getPackageManager().getApplicationInfo(str, 128).metaData;
            return (bundle == null || !bundle.containsKey(str2)) ? "" : bundle.getString(str2);
        } catch (PackageManager.NameNotFoundException e) {
            PLog.e("Unable to fetch metadata from teh manifest " + e.getMessage());
            throw new RuntimeException("Unable to fetch metadata from teh manifest", e);
        }
    }

    private static String getProcessNameFromTargetProcesses(ActivityManager.RunningAppProcessInfo runningAppProcessInfo) {
        if (runningAppProcessInfo.pkgList != null && runningAppProcessInfo.pkgList.length != 0) {
            return runningAppProcessInfo.pkgList[0];
        }
        String str = runningAppProcessInfo.processName;
        return str.contains(":") ? str.substring(0, str.indexOf(":")) : str;
    }
}

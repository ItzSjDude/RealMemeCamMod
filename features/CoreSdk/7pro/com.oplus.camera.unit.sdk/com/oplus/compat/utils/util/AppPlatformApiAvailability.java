package com.oplus.compat.utils.util;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.pm.PackageManager;
import android.util.Log;
import androidx.annotation.RequiresApi;
/* loaded from: classes.dex */
public class AppPlatformApiAvailability {
    private static final String PACKAGE_NAME = "com.oplus.appplatform";
    private static final String TAG = "AppPlatformApiAvailability";

    private AppPlatformApiAvailability() {
    }

    @RequiresApi(api = 30)
    @SuppressLint({"LongLogTag"})
    public static int isAppPlatformDisabled(Context context) throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            try {
                return !context.getPackageManager().getApplicationInfo("com.oplus.appplatform", 512).enabled ? ConnectionResult.DISABLED : ConnectionResult.ENABLED;
            } catch (PackageManager.NameNotFoundException e) {
                Log.e(TAG, e.toString());
                return ConnectionResult.APP_PLATFORM_NOT_FOUND;
            }
        }
        throw new UnSupportedApiVersionException("not supported before R");
    }
}

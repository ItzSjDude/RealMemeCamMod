package com.oplus.compat.utils.util;

import android.content.Context;
import android.content.pm.ProviderInfo;
import android.os.Build;
import android.util.Log;
import com.oplus.compatsdk.annotation.OplusCompatibleMethod;
import com.oplus.epona.Constants;
import com.oplus.epona.Epona;
import com.oplus.exif.OplusExifInterface;
import com.oplus.os.OplusBuild;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes.dex */
public final class VersionUtils {
    private static final String TAG = "VersionUtils";
    private static AtomicBoolean sAppPlatformExists;
    private static final String DISPATCHER_PROVIDER_URI = getDispatcherProviderUri();
    private static final String APP_PLATFORM_PACKAGE_NAME = getAppPlatformPackageName();

    @OplusCompatibleMethod
    private static Object getAppPlatformPackageNameForCompat() {
        return null;
    }

    @OplusCompatibleMethod
    private static Object getDispatcherProviderUriForCompat() {
        return null;
    }

    private VersionUtils() {
    }

    private static String getDispatcherProviderUri() {
        return isOsVersion11_3() ? Constants.DISPATCHER_PROVIDER_URI : (String) getDispatcherProviderUriForCompat();
    }

    private static String getAppPlatformPackageName() {
        return isOsVersion11_3() ? "com.oplus.appplatform" : (String) getAppPlatformPackageNameForCompat();
    }

    public static boolean appPlatformExists() {
        ProviderInfo resolveContentProvider;
        if (sAppPlatformExists != null) {
            return sAppPlatformExists.get();
        }
        Context context = Epona.getContext();
        if (context == null || (resolveContentProvider = context.getPackageManager().resolveContentProvider(DISPATCHER_PROVIDER_URI, 128)) == null) {
            return false;
        }
        boolean equals = APP_PLATFORM_PACKAGE_NAME.equals(resolveContentProvider.packageName);
        sAppPlatformExists = new AtomicBoolean(equals);
        return equals;
    }

    public static boolean isOsVersion11_3() {
        try {
            return OplusBuild.getOplusOSVERSION() >= 22;
        } catch (Throwable th) {
            Log.d(TAG, "Get OsVersion Exception : " + th.toString());
            return false;
        }
    }

    public static boolean isS() {
        return Build.VERSION.SDK_INT >= 31 || OplusExifInterface.GpsLatitudeRef.SOUTH.equals(Build.VERSION.CODENAME);
    }

    public static boolean isR() {
        return Build.VERSION.SDK_INT >= 30;
    }

    public static boolean isQ() {
        return Build.VERSION.SDK_INT >= 29;
    }

    public static boolean isP() {
        return Build.VERSION.SDK_INT >= 28;
    }

    public static boolean isO_MR1() {
        return Build.VERSION.SDK_INT >= 27;
    }

    public static boolean isO() {
        return Build.VERSION.SDK_INT >= 26;
    }

    public static boolean isN_MR1() {
        return Build.VERSION.SDK_INT >= 25;
    }

    public static boolean isN() {
        return Build.VERSION.SDK_INT >= 24;
    }

    public static boolean isM() {
        return Build.VERSION.SDK_INT >= 23;
    }

    public static boolean isL_MR1() {
        return Build.VERSION.SDK_INT >= 22;
    }

    public static boolean isL() {
        return Build.VERSION.SDK_INT >= 21;
    }
}

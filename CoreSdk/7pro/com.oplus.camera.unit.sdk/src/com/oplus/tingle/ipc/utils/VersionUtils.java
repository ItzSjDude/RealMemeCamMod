package com.oplus.tingle.ipc.utils;

import android.os.Build;
import com.oplus.exif.OplusExifInterface;
import com.oplus.os.OplusBuild;
/* loaded from: classes.dex */
public class VersionUtils {
    private static final String TAG = "VersionUtils";

    public static boolean isS() {
        return Build.VERSION.SDK_INT >= 31 || OplusExifInterface.GpsLatitudeRef.SOUTH.equals(Build.VERSION.CODENAME);
    }

    public static synchronized boolean isOsVersion11_3() {
        boolean z;
        synchronized (VersionUtils.class) {
            try {
                z = OplusBuild.getOplusOSVERSION() >= 22;
            } catch (Throwable th) {
                Logger.d(TAG, "Get OsVersion Exception : " + th.toString(), new Object[0]);
                return false;
            }
        }
        return z;
    }
}

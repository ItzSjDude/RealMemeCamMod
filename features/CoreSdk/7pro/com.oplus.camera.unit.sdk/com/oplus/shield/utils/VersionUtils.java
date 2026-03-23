package com.oplus.shield.utils;

import com.oplus.os.OplusBuild;
/* loaded from: classes.dex */
public class VersionUtils {
    public static boolean isOsVersion11_3() {
        try {
            return OplusBuild.getOplusOSVERSION() >= 22;
        } catch (Throwable th) {
            PLog.d("Get OsVersion Exception : " + th.toString());
            return false;
        }
    }
}

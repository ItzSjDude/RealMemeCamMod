package com.common;

import android.os.Build;
import android.util.Log;
/* loaded from: classes.dex */
public class Util {
    private static final String PLATFORM_SUFFIX_MTK = ".trustonic";
    private static final String PLATFORM_SUFFIX_QCOM = ".qti";
    private static final String QUALCOM = "qcom";
    private static final String TAG = "Util";
    private static Boolean sbIsQcom;

    public static String getHardWare() {
        String str = Build.HARDWARE;
        if (str.matches("qcom")) {
            str = "Qualcomm-" + str;
        } else if (str.matches("mt[0-9]*")) {
            str = "MediaTek-" + str;
        }
        Log.d(TAG, "getHardWare, Platform: " + str);
        return str;
    }

    public static boolean isQcomPlatform() {
        if (sbIsQcom == null) {
            if (Build.HARDWARE.matches("qcom")) {
                sbIsQcom = Boolean.TRUE;
            } else if (Build.HARDWARE.matches("mt[0-9]*")) {
                sbIsQcom = Boolean.FALSE;
            } else {
                throw new RuntimeException("Unknown Platform");
            }
        }
        return sbIsQcom.booleanValue();
    }

    public static void loadJNILibrary(String str) {
        String str2 = TAG;
        Log.d(str2, "jniLoadLibrary, libName: " + str + " ,isQcomPlatform: " + isQcomPlatform());
        try {
            System.loadLibrary(str);
        } catch (Throwable unused) {
            Log.d(TAG, "sdkLoadLibrary, do not find lib in /product/lib64/");
            if (isQcomPlatform()) {
                System.loadLibrary(str + PLATFORM_SUFFIX_QCOM);
                return;
            }
            System.loadLibrary(str + PLATFORM_SUFFIX_MTK);
        }
    }
}

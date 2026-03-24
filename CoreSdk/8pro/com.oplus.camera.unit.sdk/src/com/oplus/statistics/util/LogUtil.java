package com.oplus.statistics.util;

import android.util.Log;
import androidx.annotation.NonNull;

/* JADX INFO: loaded from: classes.dex */
public class LogUtil {
    public static final String TAG_PREFIX = "OplusTrack-";
    private static boolean isDebug = false;

    public static void e(String str, @NonNull Supplier<String> supplier) {
        Log.e(TAG_PREFIX + str, supplier.get());
    }

    public static void w(String str, @NonNull Supplier<String> supplier) {
        Log.w(TAG_PREFIX + str, supplier.get());
    }

    public static void i(String str, @NonNull Supplier<String> supplier) {
        if (isDebug) {
            Log.i(TAG_PREFIX + str, supplier.get());
        }
    }

    public static void d(String str, @NonNull Supplier<String> supplier) {
        if (isDebug) {
            Log.d(TAG_PREFIX + str, supplier.get());
        }
    }

    public static void v(String str, @NonNull Supplier<String> supplier) {
        if (isDebug) {
            Log.v(TAG_PREFIX + str, supplier.get());
        }
    }

    public static void setDebug(boolean z) {
        isDebug = z;
    }

    public static boolean isDebug() {
        return isDebug;
    }
}

package com.oplus.inner.os;

import android.os.SystemProperties;
import android.util.Log;

/* loaded from: classes.dex */
public class SystemPropertiesWrapper {
    private static final String TAG = "SystemPropertiesWrapper";

    private SystemPropertiesWrapper() {
    }

    public static String get(String key) {
        try {
            String result = SystemProperties.get(key);
            return result;
        } catch (Throwable e) {
            Log.e(TAG, e.toString());
            return null;
        }
    }

    public static String get(String key, String def) {
        try {
            String result = SystemProperties.get(key, def);
            return result;
        } catch (Throwable e) {
            Log.e(TAG, e.toString());
            return def;
        }
    }

    public static int getInt(String key, int def) {
        try {
            int result = SystemProperties.getInt(key, def);
            return result;
        } catch (Throwable e) {
            Log.e(TAG, e.toString());
            return def;
        }
    }

    public static long getLong(String key, long def) {
        try {
            long result = SystemProperties.getLong(key, def);
            return result;
        } catch (Throwable e) {
            Log.e(TAG, e.toString());
            return def;
        }
    }

    public static boolean getBoolean(String key, boolean def) {
        try {
            boolean result = SystemProperties.getBoolean(key, def);
            return result;
        } catch (Throwable e) {
            Log.e(TAG, e.toString());
            return def;
        }
    }

    public static void set(String key, String val) {
        try {
            SystemProperties.set(key, val);
        } catch (Throwable e) {
            Log.e(TAG, e.toString());
        }
    }
}

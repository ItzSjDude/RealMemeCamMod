package com.oppo.inner.os;

import android.os.SystemProperties;
import android.util.Log;
import com.oplus.inner.os.SystemPropertiesWrapper;

public class SystemPropertiesWrapper {
    public static String get(String key) {
        return SystemPropertiesWrapper.get(key);
    }

    public static String get(String key, String def) {
        return SystemPropertiesWrapper.get(key, def);
    }

    public static int getInt(String key, int def) {
        return SystemPropertiesWrapper.getInt(key, def);
    }

    public static long getLong(String key, long def) {
        return SystemPropertiesWrapper.getLong(key, def);
    }

    public static boolean getBoolean(String key, boolean def) {
        return SystemPropertiesWrapper.getBoolean(key, def);
    }

    public static void set(String key, String val) {
        SystemPropertiesWrapper.set(key, val);
    }

}
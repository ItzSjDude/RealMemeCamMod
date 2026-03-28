package com.oplus.os;

import android.content.Context;
import android.os.Build;
import android.os.SystemProperties;
import android.provider.Settings;
import android.text.TextUtils;

public class OplusBuild {

    // HARDCODED START
    public static final String MARKET = "PLZ110";
    public static final int UNKNOWN = 0;

    public static final int OplusOS_11_3 = 22;
    public static final int OplusOS_12_0 = 23;
    public static final int OplusOS_13_0 = 26;
    public static final int OplusOS_13_1 = 27;
    public static final int OplusOS_14_0 = 30;
    public static final int OplusOS_15_0 = 34;

    public static int getOplusOSVERSION() {
        return 37;
    }
    // HARDCODED END

    public static String getDeviceName() {
        return null;
    }

    public static String getDeviceName(Context context) {
        String name = Settings.Global.getString(context.getContentResolver(), "revise_device_name");
        if (!TextUtils.isEmpty(name))
            return name;

        name = Settings.Global.getString(context.getContentResolver(), "device_name");
        if (!TextUtils.isEmpty(name))
            return name;

        putDeviceName(context, MARKET);
        return MARKET;
    }

    public static void putDeviceName(Context context, String deviceName) {
        if (deviceName != null) {
            String oldName = Settings.Global.getString(context.getContentResolver(), "revise_device_name");
            if (!TextUtils.isEmpty(oldName)) {
                Settings.Global.putString(context.getContentResolver(), "revise_device_name", deviceName);
            } else {
                Settings.Global.putString(context.getContentResolver(), "device_name", deviceName);
            }
        }
    }

    public static void setDeviceName(Context context, String deviceName) {
        if (!TextUtils.isEmpty(deviceName)) {
            putDeviceName(context, deviceName);
        }
    }

    public static boolean setDeviceName(String deviceName) {
        return false;
    }

    public static class OsdkVersionCodes {
        public static final int OS_13_0 = 26;
        public static final int OS_13_1 = 27;
        public static final int OS_13_1_1 = 28;
        public static final int OS_13_2 = 29;
        public static final int OS_14_0 = 30;
        public static final int OS_14_0_1 = 31;
        public static final int OS_14_0_2 = 32;
        public static final int OS_14_1_0 = 33;
        public static final int OS_15_0_0 = 34;
        public static final int OS_15_0_1 = 35;
        public static final int OS_15_0_2 = 36;
        public static final int OS_16_0 = 37;
    }

    public static class VERSION {
        public static final String RELEASE = "V16.0";
        public static final int SDK_VERSION = 37;
        public static final int SDK_SUB_VERSION = 1;
    }
}

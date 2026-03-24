package com.oplus.compat.provider;

import android.provider.Settings;
import android.util.Log;
import androidx.annotation.RequiresApi;
import com.oplus.compat.annotation.Blocked;
import com.oplus.compat.annotation.Grey;
import com.oplus.compat.annotation.Oem;
import com.oplus.compat.annotation.Permission;
import com.oplus.compat.utils.util.VersionUtils;
import com.oplus.epona.Epona;
import com.oplus.epona.Request;
import com.oplus.epona.Response;
import com.oplus.ocs.camera.common.util.ApsConstant;
import com.oplus.utils.reflect.RefClass;
import com.oplus.utils.reflect.RefInt;
import com.oplus.utils.reflect.RefObject;
/* loaded from: classes.dex */
public class SettingsNative {
    private static final String KEY_RESULT = "result";
    private static final String SETTINGS_KEY = "SETTINGS_KEY";
    private static final String SETTINGS_VALUE = "SETTINGS_VALUE";
    private static final String SETTINGS_VALUE_DEF = "def";
    private static final String SETTINGS_VALUE_USER_HANDLE = "userHandle";
    private static final String TAG = "SettingsNative";

    private SettingsNative() {
    }

    /* loaded from: classes.dex */
    public static class Global {
        private static final String COMPONENT_NAME = "Settings.Global";
        @Blocked
        @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
        public static String NTP_SERVER_2;
        @Grey
        @RequiresApi(api = 30)
        public static int ZEN_MODE_IMPORTANT_INTERRUPTIONS;
        @Grey
        @RequiresApi(api = 30)
        public static int ZEN_MODE_OFF;

        private Global() {
        }

        /* loaded from: classes.dex */
        private static class ReflectInfo {
            private static RefObject<String> NTP_SERVER_2;
            private static RefInt ZEN_MODE_IMPORTANT_INTERRUPTIONS;
            private static RefInt ZEN_MODE_OFF;

            private ReflectInfo() {
            }

            static {
                RefClass.load(ReflectInfo.class, Settings.Global.class);
            }
        }

        static {
            try {
                if (VersionUtils.isR()) {
                    ZEN_MODE_IMPORTANT_INTERRUPTIONS = ReflectInfo.ZEN_MODE_IMPORTANT_INTERRUPTIONS.getWithException(null);
                    ZEN_MODE_OFF = ReflectInfo.ZEN_MODE_OFF.getWithException(null);
                    NTP_SERVER_2 = initNtpServer2();
                } else if (VersionUtils.isQ()) {
                    NTP_SERVER_2 = (String) ReflectInfo.NTP_SERVER_2.getWithException(null);
                } else {
                    Log.e(SettingsNative.TAG, "Not supported before Q");
                }
            } catch (Exception e) {
                Log.e(SettingsNative.TAG, e.toString());
            }
        }

        @Permission(authStr = COMPONENT_NAME, type = "epona")
        @RequiresApi(api = 30)
        private static String initNtpServer2() {
            Response execute = Epona.newCall(new Request.Builder().setComponentName(COMPONENT_NAME).setActionName("initNtpServer2").build()).execute();
            if (execute.isSuccessful()) {
                return execute.getBundle().getString(SettingsNative.KEY_RESULT);
            }
            return null;
        }

        @Permission(authStr = COMPONENT_NAME, type = "epona")
        @RequiresApi(api = 23)
        @com.oplus.compat.annotation.System
        public static boolean putString(String str, String str2) {
            if (VersionUtils.isR()) {
                Response execute = Epona.newCall(new Request.Builder().setComponentName(COMPONENT_NAME).setActionName("putString").withString(SettingsNative.SETTINGS_KEY, str).withString(SettingsNative.SETTINGS_VALUE, str2).build()).execute();
                if (execute.isSuccessful()) {
                    return execute.getBundle().getBoolean(SettingsNative.KEY_RESULT);
                }
                return false;
            } else if (VersionUtils.isM()) {
                return Settings.Global.putString(Epona.getContext().getContentResolver(), str, str2);
            } else {
                Log.e(SettingsNative.TAG, "SettingsNative.Global.putString is not supported before M");
                return false;
            }
        }

        @Permission(authStr = COMPONENT_NAME, type = "epona")
        @RequiresApi(api = 23)
        @com.oplus.compat.annotation.System
        public static boolean putInt(String str, int i) {
            if (VersionUtils.isR()) {
                Response execute = Epona.newCall(new Request.Builder().setComponentName(COMPONENT_NAME).setActionName("putInt").withString(SettingsNative.SETTINGS_KEY, str).withInt(SettingsNative.SETTINGS_VALUE, i).build()).execute();
                if (execute.isSuccessful()) {
                    return execute.getBundle().getBoolean(SettingsNative.KEY_RESULT);
                }
                return false;
            } else if (VersionUtils.isM()) {
                return Settings.Global.putInt(Epona.getContext().getContentResolver(), str, i);
            } else {
                Log.e(SettingsNative.TAG, "SettingsNative.Global.putInt is not supported before M");
                return false;
            }
        }

        @Permission(authStr = COMPONENT_NAME, type = "epona")
        @RequiresApi(api = 23)
        @com.oplus.compat.annotation.System
        public static boolean putLong(String str, long j) {
            if (VersionUtils.isR()) {
                Response execute = Epona.newCall(new Request.Builder().setComponentName(COMPONENT_NAME).setActionName("putLong").withString(SettingsNative.SETTINGS_KEY, str).withLong(SettingsNative.SETTINGS_VALUE, j).build()).execute();
                if (execute.isSuccessful()) {
                    return execute.getBundle().getBoolean(SettingsNative.KEY_RESULT);
                }
                return false;
            } else if (VersionUtils.isM()) {
                return Settings.Global.putLong(Epona.getContext().getContentResolver(), str, j);
            } else {
                Log.e(SettingsNative.TAG, "SettingsNative.Global.putLong is not supported before M");
                return false;
            }
        }

        @Permission(authStr = COMPONENT_NAME, type = "epona")
        @RequiresApi(api = 23)
        @com.oplus.compat.annotation.System
        public static boolean putFloat(String str, float f) {
            if (VersionUtils.isR()) {
                Response execute = Epona.newCall(new Request.Builder().setComponentName(COMPONENT_NAME).setActionName("putFloat").withString(SettingsNative.SETTINGS_KEY, str).withFloat(SettingsNative.SETTINGS_VALUE, f).build()).execute();
                if (execute.isSuccessful()) {
                    return execute.getBundle().getBoolean(SettingsNative.KEY_RESULT);
                }
                return false;
            } else if (VersionUtils.isM()) {
                return Settings.Global.putFloat(Epona.getContext().getContentResolver(), str, f);
            } else {
                Log.e(SettingsNative.TAG, "SettingsNative.Global.putFloat is not supported before M");
                return false;
            }
        }
    }

    /* loaded from: classes.dex */
    public static class Secure {
        private static final String COMPONENT_NAME = "Settings.Secure";
        private static final String CONSTANT_LOCATION_CHANGER = "LOCATION_CHANGER";
        private static final String CONSTANT_LOCATION_CHANGER_SYSTEM_SETTINGS = "LOCATION_CHANGER_SYSTEM_SETTINGS";
        @Permission(authStr = COMPONENT_NAME, type = "epona")
        @Blocked
        @RequiresApi(api = 30)
        public static String LOCATION_CHANGER;
        @Permission(authStr = COMPONENT_NAME, type = "epona")
        @Blocked
        @RequiresApi(api = 30)
        public static int LOCATION_CHANGER_SYSTEM_SETTINGS;
        @Oem
        @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
        public static String WIFI_DISCONNECT_DELAY_DURATION;

        /* loaded from: classes.dex */
        private static class ReflectInfo {
            private static RefObject<String> WIFI_DISCONNECT_DELAY_DURATION;

            private ReflectInfo() {
            }

            static {
                RefClass.load(ReflectInfo.class, Settings.Secure.class);
            }
        }

        private Secure() {
        }

        static {
            try {
                if (VersionUtils.isS()) {
                    LOCATION_CHANGER = "location_changer";
                    LOCATION_CHANGER_SYSTEM_SETTINGS = 1;
                } else if (VersionUtils.isR()) {
                    Response execute = Epona.newCall(new Request.Builder().setComponentName(COMPONENT_NAME).setActionName("getConstant").build()).execute();
                    if (execute.isSuccessful()) {
                        LOCATION_CHANGER = execute.getBundle().getString(CONSTANT_LOCATION_CHANGER);
                        LOCATION_CHANGER_SYSTEM_SETTINGS = execute.getBundle().getInt(CONSTANT_LOCATION_CHANGER_SYSTEM_SETTINGS);
                    } else {
                        Log.e(SettingsNative.TAG, "Epona Communication failed, static initializer failed.");
                    }
                } else if (VersionUtils.isQ()) {
                    WIFI_DISCONNECT_DELAY_DURATION = (String) ReflectInfo.WIFI_DISCONNECT_DELAY_DURATION.getWithException(null);
                } else {
                    Log.e(SettingsNative.TAG, "Not supported before Q");
                }
            } catch (Throwable th) {
                Log.e(SettingsNative.TAG, th.toString());
            }
        }

        @Permission(authStr = COMPONENT_NAME, type = "epona")
        @RequiresApi(api = 23)
        @com.oplus.compat.annotation.System
        public static boolean putString(String str, String str2) {
            if (VersionUtils.isR()) {
                Response execute = Epona.newCall(new Request.Builder().setComponentName(COMPONENT_NAME).setActionName("putString").withString(SettingsNative.SETTINGS_KEY, str).withString(SettingsNative.SETTINGS_VALUE, str2).build()).execute();
                if (execute.isSuccessful()) {
                    return execute.getBundle().getBoolean(SettingsNative.KEY_RESULT);
                }
                return false;
            } else if (VersionUtils.isM()) {
                return Settings.Secure.putString(Epona.getContext().getContentResolver(), str, str2);
            } else {
                Log.e(SettingsNative.TAG, "SettingsNative.Secure.putString is not supported before M");
                return false;
            }
        }

        @Permission(authStr = COMPONENT_NAME, type = "epona")
        @RequiresApi(api = 23)
        @com.oplus.compat.annotation.System
        public static boolean putInt(String str, int i) {
            if (VersionUtils.isR()) {
                Response execute = Epona.newCall(new Request.Builder().setComponentName(COMPONENT_NAME).setActionName("putInt").withString(SettingsNative.SETTINGS_KEY, str).withInt(SettingsNative.SETTINGS_VALUE, i).build()).execute();
                if (execute.isSuccessful()) {
                    return execute.getBundle().getBoolean(SettingsNative.KEY_RESULT);
                }
                return false;
            } else if (VersionUtils.isM()) {
                return Settings.Secure.putInt(Epona.getContext().getContentResolver(), str, i);
            } else {
                Log.e(SettingsNative.TAG, "SettingsNative.Secure.putInt is not supported before M");
                return false;
            }
        }

        @Permission(authStr = COMPONENT_NAME, type = "epona")
        @RequiresApi(api = 23)
        @com.oplus.compat.annotation.System
        public static boolean putLong(String str, long j) {
            if (VersionUtils.isR()) {
                Response execute = Epona.newCall(new Request.Builder().setComponentName(COMPONENT_NAME).setActionName("putLong").withString(SettingsNative.SETTINGS_KEY, str).withLong(SettingsNative.SETTINGS_VALUE, j).build()).execute();
                if (execute.isSuccessful()) {
                    return execute.getBundle().getBoolean(SettingsNative.KEY_RESULT);
                }
                return false;
            } else if (VersionUtils.isM()) {
                return Settings.Secure.putLong(Epona.getContext().getContentResolver(), str, j);
            } else {
                Log.e(SettingsNative.TAG, "SettingsNative.Secure.putLong is not supported before M");
                return false;
            }
        }

        @Permission(authStr = COMPONENT_NAME, type = "epona")
        @RequiresApi(api = 23)
        @com.oplus.compat.annotation.System
        public static boolean putFloat(String str, float f) {
            if (VersionUtils.isR()) {
                Response execute = Epona.newCall(new Request.Builder().setComponentName(COMPONENT_NAME).setActionName("putFloat").withString(SettingsNative.SETTINGS_KEY, str).withFloat(SettingsNative.SETTINGS_VALUE, f).build()).execute();
                if (execute.isSuccessful()) {
                    return execute.getBundle().getBoolean(SettingsNative.KEY_RESULT);
                }
                return false;
            } else if (VersionUtils.isM()) {
                return Settings.Secure.putFloat(Epona.getContext().getContentResolver(), str, f);
            } else {
                Log.e(SettingsNative.TAG, "SettingsNative.Secure.putFloat is not supported before M");
                return false;
            }
        }

        @Grey
        @Permission(authStr = COMPONENT_NAME, type = "epona")
        @RequiresApi(api = 30)
        public static boolean putIntForUser(String str, int i, int i2) {
            if (VersionUtils.isR()) {
                Response execute = Epona.newCall(new Request.Builder().setComponentName(COMPONENT_NAME).setActionName("putIntForUser").withString(SettingsNative.SETTINGS_KEY, str).withInt("value", i).withInt(SettingsNative.SETTINGS_VALUE_USER_HANDLE, i2).build()).execute();
                if (execute.isSuccessful()) {
                    return execute.getBundle().getBoolean(SettingsNative.KEY_RESULT);
                }
                return false;
            }
            Log.e(SettingsNative.TAG, "SettingsNative.Secure.putIntForUser is not supported before R");
            return false;
        }

        @Grey
        @Permission(authStr = COMPONENT_NAME, type = "epona")
        @RequiresApi(api = 30)
        public static int getIntForUser(String str, int i, int i2) {
            if (VersionUtils.isR()) {
                Response execute = Epona.newCall(new Request.Builder().setComponentName(COMPONENT_NAME).setActionName("getIntForUser").withString(SettingsNative.SETTINGS_KEY, str).withInt(SettingsNative.SETTINGS_VALUE_DEF, i).withInt(SettingsNative.SETTINGS_VALUE_USER_HANDLE, i2).build()).execute();
                if (execute.isSuccessful()) {
                    return execute.getBundle().getInt(SettingsNative.KEY_RESULT);
                }
            } else {
                Log.e(SettingsNative.TAG, "SettingsNative.Secure.getIntForUser is not supported before R");
            }
            return i;
        }

        @Grey
        @Permission(authStr = COMPONENT_NAME, type = "epona")
        @RequiresApi(api = 30)
        public static String getStringForUser(String str, int i) {
            if (VersionUtils.isR()) {
                Response execute = Epona.newCall(new Request.Builder().setComponentName(COMPONENT_NAME).setActionName("getStringForUser").withString(SettingsNative.SETTINGS_KEY, str).withInt(SettingsNative.SETTINGS_VALUE_USER_HANDLE, i).build()).execute();
                if (execute.isSuccessful()) {
                    return execute.getBundle().getString(SettingsNative.KEY_RESULT);
                }
                return null;
            }
            Log.e(SettingsNative.TAG, "SettingsNative.Secure.getStringForUser is not supported before R");
            return null;
        }
    }

    /* loaded from: classes.dex */
    public static class System {
        private static final String COMPONENT_NAME = "Settings.System";

        private System() {
        }

        @Permission(authStr = COMPONENT_NAME, type = "epona")
        @RequiresApi(api = 23)
        @com.oplus.compat.annotation.System
        public static boolean putString(String str, String str2) {
            if (VersionUtils.isR()) {
                Response execute = Epona.newCall(new Request.Builder().setComponentName(COMPONENT_NAME).setActionName("putString").withString(SettingsNative.SETTINGS_KEY, str).withString(SettingsNative.SETTINGS_VALUE, str2).build()).execute();
                if (execute.isSuccessful()) {
                    return execute.getBundle().getBoolean(SettingsNative.KEY_RESULT);
                }
                return false;
            } else if (VersionUtils.isM()) {
                return Settings.System.putString(Epona.getContext().getContentResolver(), str, str2);
            } else {
                Log.e(SettingsNative.TAG, "SettingsNative.System.putString is not supported before M");
                return false;
            }
        }

        @Permission(authStr = COMPONENT_NAME, type = "epona")
        @RequiresApi(api = 23)
        @com.oplus.compat.annotation.System
        public static boolean putInt(String str, int i) {
            if (VersionUtils.isR()) {
                Response execute = Epona.newCall(new Request.Builder().setComponentName(COMPONENT_NAME).setActionName("putInt").withString(SettingsNative.SETTINGS_KEY, str).withInt(SettingsNative.SETTINGS_VALUE, i).build()).execute();
                if (execute.isSuccessful()) {
                    return execute.getBundle().getBoolean(SettingsNative.KEY_RESULT);
                }
                return false;
            } else if (VersionUtils.isM()) {
                return Settings.System.putInt(Epona.getContext().getContentResolver(), str, i);
            } else {
                Log.e(SettingsNative.TAG, "SettingsNative.System.putInt is not supported before M");
                return false;
            }
        }

        @Permission(authStr = COMPONENT_NAME, type = "epona")
        @RequiresApi(api = 23)
        @com.oplus.compat.annotation.System
        public static boolean putLong(String str, long j) {
            if (VersionUtils.isR()) {
                Response execute = Epona.newCall(new Request.Builder().setComponentName(COMPONENT_NAME).setActionName("putLong").withString(SettingsNative.SETTINGS_KEY, str).withLong(SettingsNative.SETTINGS_VALUE, j).build()).execute();
                if (execute.isSuccessful()) {
                    return execute.getBundle().getBoolean(SettingsNative.KEY_RESULT);
                }
                return false;
            } else if (VersionUtils.isM()) {
                return Settings.System.putLong(Epona.getContext().getContentResolver(), str, j);
            } else {
                Log.e(SettingsNative.TAG, "SettingsNative.System.putLong is not supported before M");
                return false;
            }
        }

        @Permission(authStr = COMPONENT_NAME, type = "epona")
        @RequiresApi(api = 23)
        @com.oplus.compat.annotation.System
        public static boolean putFloat(String str, float f) {
            if (VersionUtils.isR()) {
                Response execute = Epona.newCall(new Request.Builder().setComponentName(COMPONENT_NAME).setActionName("putFloat").withString(SettingsNative.SETTINGS_KEY, str).withFloat(SettingsNative.SETTINGS_VALUE, f).build()).execute();
                if (execute.isSuccessful()) {
                    return execute.getBundle().getBoolean(SettingsNative.KEY_RESULT);
                }
                return false;
            } else if (VersionUtils.isM()) {
                return Settings.System.putFloat(Epona.getContext().getContentResolver(), str, f);
            } else {
                Log.e(SettingsNative.TAG, "SettingsNative.System.putFloat is not supported before M");
                return false;
            }
        }

        @Grey
        @Permission(authStr = COMPONENT_NAME, type = "epona")
        @RequiresApi(api = 30)
        public static boolean putIntForUser(String str, int i, int i2) {
            if (VersionUtils.isR()) {
                Response execute = Epona.newCall(new Request.Builder().setComponentName(COMPONENT_NAME).setActionName("putIntForUser").withString(SettingsNative.SETTINGS_KEY, str).withInt("value", i).withInt(SettingsNative.SETTINGS_VALUE_USER_HANDLE, i2).build()).execute();
                if (execute.isSuccessful()) {
                    return execute.getBundle().getBoolean(SettingsNative.KEY_RESULT);
                }
                return false;
            }
            Log.e(SettingsNative.TAG, "SettingsNative.System.putIntForUser is not supported before R");
            return false;
        }

        @Grey
        @Permission(authStr = COMPONENT_NAME, type = "epona")
        @RequiresApi(api = 30)
        public static int getIntForUser(String str, int i, int i2) {
            if (VersionUtils.isR()) {
                Response execute = Epona.newCall(new Request.Builder().setComponentName(COMPONENT_NAME).setActionName("getIntForUser").withString(SettingsNative.SETTINGS_KEY, str).withInt(SettingsNative.SETTINGS_VALUE_DEF, i).withInt(SettingsNative.SETTINGS_VALUE_USER_HANDLE, i2).build()).execute();
                if (execute.isSuccessful()) {
                    return execute.getBundle().getInt(SettingsNative.KEY_RESULT);
                }
            } else {
                Log.e(SettingsNative.TAG, "SettingsNative.System.getIntForUser is not supported before R");
            }
            return i;
        }
    }
}

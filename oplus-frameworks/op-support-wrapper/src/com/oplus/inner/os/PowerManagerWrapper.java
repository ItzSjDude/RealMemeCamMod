package com.oplus.inner.os;

import android.os.IPowerManager;
import android.os.PowerManager;
import android.os.ServiceManager;
import android.util.Log;
import java.lang.reflect.Method;

/* loaded from: classes.dex */
public class PowerManagerWrapper {
    private static final String TAG = "PowerManagerWrapper";

    private PowerManagerWrapper() {
    }

    public static int getMaximumScreenBrightnessSetting(PowerManager powerManager) {
        try {
            int result = powerManager.getMaximumScreenBrightnessSetting();
            return result;
        } catch (Throwable e) {
            Log.e(TAG, e.toString());
            return -1;
        }
    }

    public static int getMinimumScreenBrightnessSetting(PowerManager powerManager) {
        try {
            int result = powerManager.getMinimumScreenBrightnessSetting();
            return result;
        } catch (Throwable e) {
            Log.e(TAG, e.toString());
            return -1;
        }
    }

    public static void wakeUp(PowerManager powerManager, long time, String details) {
        try {
            powerManager.wakeUp(time, details);
        } catch (Throwable e) {
            Log.e(TAG, e.toString());
        }
    }

    public static void goToSleep(PowerManager powerManager, long time) {
        try {
            powerManager.goToSleep(time);
        } catch (Throwable e) {
            Log.e(TAG, e.toString());
        }
    }

    public static boolean getDisplayAodStatus(PowerManager powerManager) throws NoSuchMethodException, SecurityException {
        Object obj = callMethodByReflect(powerManager, "getDisplayAodStatus");
        if (obj != null) {
            boolean result = ((Boolean) obj).booleanValue();
            return result;
        }
        Log.e(TAG, "getDisplayAodStatus error");
        return false;
    }

    public static int getRealMaximumScreenBrightnessSetting() {
        IPowerManager pm = IPowerManager.Stub.asInterface(ServiceManager.getService("power"));
        try {
            int result = ((Integer) callMethodByReflect(pm, "getMaximumScreenBrightnessSetting")).intValue();
            return result;
        } catch (Exception e) {
            Log.e(TAG, e.toString());
            return 255;
        }
    }

    public static int getRealMinimumScreenBrightnessSetting() {
        IPowerManager pm = IPowerManager.Stub.asInterface(ServiceManager.getService("power"));
        try {
            int result = ((Integer) callMethodByReflect(pm, "getMinimumScreenBrightnessSetting")).intValue();
            return result;
        } catch (Exception e) {
            Log.e(TAG, e.toString());
            return 255;
        }
    }

    public static void shutdown(PowerManager powerManager, boolean confirm, String reason, boolean wait) {
        try {
            powerManager.shutdown(confirm, reason, wait);
        } catch (Throwable e) {
            Log.e(TAG, e.toString());
        }
    }

    public static int[] getWakeLockedUids(PowerManager powerManager) {
        return (int[]) callMethodByReflect(powerManager, "getWakeLockedUids");
    }

    private static Object callMethodByReflect(Object object, String methodName) throws NoSuchMethodException, SecurityException {
        Class clazz = object.getClass();
        try {
            Method method = clazz.getDeclaredMethod(methodName, new Class[0]);
            method.setAccessible(true);
            return method.invoke(object, new Object[0]);
        } catch (Exception e) {
            Log.e(TAG, e.toString());
            return null;
        }
    }
}

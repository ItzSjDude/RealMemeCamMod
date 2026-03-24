package com.oppo.inner.os;

import android.os.IPowerManager;
import android.os.PowerManager;
import android.os.ServiceManager;
import android.util.Log;
import java.lang.reflect.Method;
import com.oplus.inner.os.PowerManagerWrapper;

public class PowerManagerWrapper {
    public static int getMaximumScreenBrightnessSetting(PowerManager powerManager) {
        return PowerManagerWrapper.getMaximumScreenBrightnessSetting(powerManager);
    }

    public static int getMinimumScreenBrightnessSetting(PowerManager powerManager) {
        return PowerManagerWrapper.getMinimumScreenBrightnessSetting(powerManager);
    }

    public static void wakeUp(PowerManager powerManager, long time, String details) {
        PowerManagerWrapper.wakeUp(powerManager, time, details);
    }

    public static void goToSleep(PowerManager powerManager, long time) {
        PowerManagerWrapper.goToSleep(powerManager, time);
    }

    public static boolean getDisplayAodStatus(PowerManager powerManager) {
        return PowerManagerWrapper.getDisplayAodStatus(powerManager);
    }

    public static int getRealMaximumScreenBrightnessSetting() {
        return PowerManagerWrapper.getRealMaximumScreenBrightnessSetting();
    }

    public static int getRealMinimumScreenBrightnessSetting() {
        return PowerManagerWrapper.getRealMinimumScreenBrightnessSetting();
    }

    public static void shutdown(PowerManager powerManager, boolean confirm, String reason, boolean wait) {
        PowerManagerWrapper.shutdown(powerManager, confirm, reason, wait);
    }

    public static int[] getWakeLockedUids(PowerManager powerManager) {
        return PowerManagerWrapper.getWakeLockedUids(powerManager);
    }

}
package com.oplus.compat.os;

import android.content.Context;
import android.os.IPowerManager;
import android.os.OplusPowerManager;
import android.os.PowerManager;
import android.os.PowerSaveState;
import android.os.ServiceManager;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import com.oplus.compat.annotation.Blocked;
import com.oplus.compat.annotation.Grey;
import com.oplus.compat.annotation.Oem;
import com.oplus.compat.annotation.Permission;
import com.oplus.compat.annotation.System;
import com.oplus.compat.utils.util.UnSupportedApiVersionException;
import com.oplus.compat.utils.util.VersionUtils;
import com.oplus.compatsdk.annotation.OplusCompatibleMethod;
import com.oplus.epona.Epona;
import com.oplus.epona.Request;
import com.oplus.epona.Response;
import com.oplus.inner.os.PowerManagerWrapper;
import com.oplus.ocs.camera.common.util.ApsConstant;
import com.oplus.utils.reflect.RefClass;
import com.oplus.utils.reflect.RefMethod;
/* loaded from: classes.dex */
public class PowerManagerNative {
    private static final String COMPONENT_NAME = "android.os.PowerManager";
    private static final String RESULT = "result";
    private static final String TAG = "PowerManagerNative";

    @OplusCompatibleMethod
    private static Object getDisplayAodStatusCompat(PowerManager powerManager) {
        return null;
    }

    @OplusCompatibleMethod
    private static Object getMaximumScreenBrightnessSettingQCompat(PowerManager powerManager) {
        return null;
    }

    @OplusCompatibleMethod
    private static Object getMinimumScreenBrightnessSettingQCompat(PowerManager powerManager) {
        return null;
    }

    @OplusCompatibleMethod
    private static Object getRealMaximumScreenBrightnessSettingCompat() {
        return null;
    }

    @OplusCompatibleMethod
    private static Object getRealMinimumScreenBrightnessSettingCompat() {
        return null;
    }

    @OplusCompatibleMethod
    private static Object getWakeLockedUidsQCompat(PowerManager powerManager) {
        return null;
    }

    @OplusCompatibleMethod
    private static void goToSleepQCompat(PowerManager powerManager, long j) {
    }

    @OplusCompatibleMethod
    private static void wakeUpCompat(PowerManager powerManager, long j, String str) {
    }

    /* loaded from: classes.dex */
    private static class ReflectInfo {
        private static RefMethod<Boolean> getDisplayAodStatus;
        private static RefMethod<PowerSaveState> getPowerSaveState;

        private ReflectInfo() {
        }

        static {
            RefClass.load(ReflectInfo.class, PowerManager.class);
        }
    }

    /* loaded from: classes.dex */
    private static class RefPowerManagerInfo {
        private static RefMethod<Boolean> getDisplayAodStatus;

        private RefPowerManagerInfo() {
        }

        static {
            RefClass.load(RefPowerManagerInfo.class, OplusPowerManager.class);
        }
    }

    /* loaded from: classes.dex */
    private static class RefIPowerManagerInfo {
        public static RefMethod<Integer> getMaximumScreenBrightnessSetting;
        public static RefMethod<Integer> getMinimumScreenBrightnessSetting;

        private RefIPowerManagerInfo() {
        }

        static {
            RefClass.load(RefIPowerManagerInfo.class, IPowerManager.class);
        }
    }

    private PowerManagerNative() {
    }

    @Grey
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_MULTI_FRAME_DENOISE_HDR)
    public static int getMaximumScreenBrightnessSetting(PowerManager powerManager) throws UnSupportedApiVersionException {
        if (VersionUtils.isN()) {
            return powerManager.getMaximumScreenBrightnessSetting();
        }
        throw new UnSupportedApiVersionException("not supported before N");
    }

    @Grey
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_MULTI_FRAME_DENOISE_HDR)
    public static int getMinimumScreenBrightnessSetting(PowerManager powerManager) throws UnSupportedApiVersionException {
        if (VersionUtils.isN()) {
            return powerManager.getMinimumScreenBrightnessSetting();
        }
        throw new UnSupportedApiVersionException("not supported before N");
    }

    @Grey
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public static void wakeUp(@NonNull PowerManager powerManager, long j, String str) throws UnSupportedApiVersionException {
        if (VersionUtils.isS()) {
            powerManager.wakeUp(j, str);
        } else if (VersionUtils.isOsVersion11_3()) {
            PowerManagerWrapper.wakeUp(powerManager, j, str);
        } else if (VersionUtils.isQ()) {
            wakeUpCompat(powerManager, j, str);
        } else {
            throw new UnSupportedApiVersionException();
        }
    }

    @Oem
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_MULTI_FRAME_DENOISE_HDR)
    public static boolean getDisplayAodStatus(PowerManager powerManager) throws UnSupportedApiVersionException {
        if (VersionUtils.isS()) {
            return ((Boolean) RefPowerManagerInfo.getDisplayAodStatus.call(new OplusPowerManager(), new Object[0])).booleanValue();
        } else if (VersionUtils.isOsVersion11_3()) {
            return PowerManagerWrapper.getDisplayAodStatus(powerManager);
        } else {
            if (VersionUtils.isQ()) {
                return ((Boolean) getDisplayAodStatusCompat(powerManager)).booleanValue();
            }
            if (VersionUtils.isN()) {
                return ((Boolean) ReflectInfo.getDisplayAodStatus.call(powerManager, new Object[0])).booleanValue();
            }
            throw new UnSupportedApiVersionException();
        }
    }

    @Blocked
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public static int getRealMaximumScreenBrightnessSetting() throws UnSupportedApiVersionException {
        if (VersionUtils.isS()) {
            try {
                return RefIPowerManagerInfo.getMaximumScreenBrightnessSetting.callWithDefault(IPowerManager.Stub.asInterface(ServiceManager.getService("power")), 255, new Object[0]).intValue();
            } catch (NoSuchMethodError e) {
                Log.e(TAG, e.toString());
                throw new UnSupportedApiVersionException("no permission to access the blocked method", e);
            }
        } else if (VersionUtils.isOsVersion11_3()) {
            return PowerManagerWrapper.getRealMaximumScreenBrightnessSetting();
        } else {
            if (VersionUtils.isQ()) {
                return ((Integer) getRealMaximumScreenBrightnessSettingCompat()).intValue();
            }
            throw new UnSupportedApiVersionException();
        }
    }

    @Blocked
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public static int getRealMinimumScreenBrightnessSetting() throws UnSupportedApiVersionException {
        if (VersionUtils.isS()) {
            try {
                return RefIPowerManagerInfo.getMinimumScreenBrightnessSetting.callWithDefault(IPowerManager.Stub.asInterface(ServiceManager.getService("power")), 255, new Object[0]).intValue();
            } catch (NoSuchMethodError e) {
                Log.e(TAG, e.toString());
                throw new UnSupportedApiVersionException("no permission to access the blocked method", e);
            }
        } else if (VersionUtils.isOsVersion11_3()) {
            return PowerManagerWrapper.getRealMinimumScreenBrightnessSetting();
        } else {
            if (VersionUtils.isQ()) {
                return ((Integer) getRealMinimumScreenBrightnessSettingCompat()).intValue();
            }
            throw new UnSupportedApiVersionException();
        }
    }

    @Oem
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public static int[] getWakeLockedUids(PowerManager powerManager) throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            throw new UnSupportedApiVersionException("not supported in R because of not exist");
        }
        if (VersionUtils.isQ()) {
            return (int[]) getWakeLockedUidsQCompat(powerManager);
        }
        throw new UnSupportedApiVersionException();
    }

    @Grey
    @RequiresApi(api = 30)
    public static int getDefaultScreenBrightnessSetting(PowerManager powerManager) throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            return powerManager.getDefaultScreenBrightnessSetting();
        }
        throw new UnSupportedApiVersionException("Not supported before R");
    }

    @Permission(authStr = "shutdown", type = "epona")
    @Blocked
    @RequiresApi(api = 30)
    @System
    public static void shutdown(boolean z, String str, boolean z2) throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            Response execute = Epona.newCall(new Request.Builder().setComponentName(COMPONENT_NAME).setActionName("shutdown").withBoolean("confirm", z).withString("reason", str).withBoolean("wait", z2).build()).execute();
            if (execute.isSuccessful()) {
                return;
            }
            Log.e(TAG, "response code error:" + execute.getMessage());
            return;
        }
        throw new UnSupportedApiVersionException("not supported before R");
    }

    @Permission(authStr = "reboot", type = "epona")
    @Grey
    @RequiresApi(api = 30)
    @System
    public static void reboot(Context context, String str) throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            Response execute = Epona.newCall(new Request.Builder().setComponentName(COMPONENT_NAME).setActionName("reboot").withString("reason", str).build()).execute();
            if (execute.isSuccessful()) {
                return;
            }
            Log.e(TAG, execute.getMessage());
            return;
        }
        throw new UnSupportedApiVersionException("not supported befor R");
    }

    @Permission(authStr = "setPowerSaveModeEnabled", type = "epona")
    @RequiresApi(api = 30)
    @System
    public static boolean setPowerSaveModeEnabled(Context context, boolean z) throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            Response execute = Epona.newCall(new Request.Builder().setComponentName(COMPONENT_NAME).setActionName("setPowerSaveModeEnabled").withBoolean("mode", z).build()).execute();
            if (execute.isSuccessful()) {
                return execute.getBundle().getBoolean(RESULT);
            }
            return false;
        }
        throw new UnSupportedApiVersionException("not supported before R");
    }

    @Permission(authStr = "getPowerSaveState", type = "epona")
    @Blocked
    @RequiresApi(api = 30)
    public static PowerSaveState getPowerSaveState(int i) throws UnSupportedApiVersionException {
        if (VersionUtils.isS()) {
            return (PowerSaveState) ReflectInfo.getPowerSaveState.call((PowerManager) Epona.getContext().getSystemService("power"), Integer.valueOf(i));
        }
        if (VersionUtils.isR()) {
            Response execute = Epona.newCall(new Request.Builder().setComponentName(COMPONENT_NAME).setActionName("getPowerSaveState").withInt("serviceType", i).build()).execute();
            if (execute.isSuccessful()) {
                return execute.getBundle().getParcelable(RESULT);
            }
            Log.e(TAG, "response code error:" + execute.getMessage());
            return null;
        }
        throw new UnSupportedApiVersionException("Not Supported Before R");
    }

    @Permission(authStr = "goToSleep", type = "epona")
    @Blocked
    @RequiresApi(api = 28)
    @System
    public static void goToSleep(long j) throws UnSupportedApiVersionException {
        PowerManager powerManager = (PowerManager) Epona.getContext().getSystemService("power");
        if (VersionUtils.isR()) {
            Epona.newCall(new Request.Builder().setComponentName(COMPONENT_NAME).setActionName("goToSleep").withLong("time", j).build()).execute();
        } else if (VersionUtils.isQ()) {
            goToSleepQCompat(powerManager, j);
        } else if (VersionUtils.isP()) {
            powerManager.goToSleep(j);
        } else {
            throw new UnSupportedApiVersionException("not supported before R");
        }
    }

    @Permission(authStr = "getLastSleepReason", type = "epona")
    @Blocked
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_SUPERNIGHT_STARMODE)
    @System
    public static int getLastSleepReason() throws UnSupportedApiVersionException {
        if (VersionUtils.isS()) {
            Response execute = Epona.newCall(new Request.Builder().setComponentName(COMPONENT_NAME).setActionName("getLastSleepReason").build()).execute();
            if (execute == null || !execute.isSuccessful()) {
                return -1;
            }
            return execute.getBundle().getInt(RESULT);
        }
        throw new UnSupportedApiVersionException("not supported before S");
    }

    @Permission(authStr = "userActivity", type = "epona")
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_SUPERNIGHT_STARMODE)
    @System
    public static void userActivity(long j, int i, int i2) throws UnSupportedApiVersionException {
        if (VersionUtils.isS()) {
            Epona.newCall(new Request.Builder().setComponentName(COMPONENT_NAME).setActionName("userActivity").withLong("when", j).withInt("event", i).withInt("flags", i2).build()).execute();
            return;
        }
        throw new UnSupportedApiVersionException("not supported before S");
    }
}

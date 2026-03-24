package com.oplus.compat.hardware.display;

import android.hardware.display.DisplayManager;
import androidx.annotation.RequiresApi;
import com.oplus.compat.annotation.Blocked;
import com.oplus.compat.annotation.Oem;
import com.oplus.compat.annotation.Permission;
import com.oplus.compat.annotation.System;
import com.oplus.compat.utils.util.UnSupportedApiVersionException;
import com.oplus.compat.utils.util.VersionUtils;
import com.oplus.compatsdk.annotation.OplusCompatibleMethod;
import com.oplus.epona.Epona;
import com.oplus.epona.Request;
import com.oplus.epona.Response;
import com.oplus.ocs.camera.common.util.ApsConstant;
import com.oplus.utils.reflect.MethodName;
import com.oplus.utils.reflect.RefClass;
import com.oplus.utils.reflect.RefMethod;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes.dex */
public class DisplayManagerNative {
    private static final String ACTIVE_DEVICE_ADDRESS = "active_device_address";
    private static final String COMPONENT_NAME = "android.hardware.display.DisplayManager";
    private static final String DEVICE_ADDRESS = "device_address";
    private static final String DEVICE_NAME = "device_name";
    private static final String DISPLAYS_NAME = "displays_name";
    private static final String WIFIDISPLAY_STATUS = "wifi_display_status";
    private static final String WIFI_ADDRESS = "wifi_address";
    private static final String WIFI_DISPLAY_SCAN_STATUS = "wifi_display_scan_status";

    @OplusCompatibleMethod
    private static void setTemporaryAutoBrightnessAdjustmentQCompat(DisplayManager displayManager, float f) {
    }

    /* loaded from: classes.dex */
    private static class ReflectInfo {
        @MethodName(params = {boolean.class})
        private static RefMethod<Void> enterBenchmarkMode;

        private ReflectInfo() {
        }

        static {
            RefClass.load(ReflectInfo.class, DisplayManager.class);
        }
    }

    @Permission(authStr = "setTemporaryAutoBrightnessAdjustment", type = "epona")
    @Blocked
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    @System
    public static void setTemporaryAutoBrightnessAdjustment(float f) throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            Epona.newCall(new Request.Builder().setComponentName(COMPONENT_NAME).setActionName("setTemporaryAutoBrightnessAdjustment").withFloat("adjustment", f).build()).execute();
        } else if (VersionUtils.isQ()) {
            setTemporaryAutoBrightnessAdjustmentQCompat((DisplayManager) Epona.getContext().getSystemService("display"), f);
        } else {
            throw new UnSupportedApiVersionException("not supported before Q");
        }
    }

    @Permission(authStr = "setTemporaryBrightness", type = "epona")
    @Blocked
    @RequiresApi(api = 30)
    @System
    public static void setTemporaryBrightness(int i, float f) throws UnSupportedApiVersionException {
        if (VersionUtils.isS()) {
            Epona.newCall(new Request.Builder().setComponentName(COMPONENT_NAME).setActionName("setTemporaryBrightness").withInt("displayId", i).withFloat("adjustment", f).build()).execute();
        } else if (VersionUtils.isR()) {
            Epona.newCall(new Request.Builder().setComponentName(COMPONENT_NAME).setActionName("setTemporaryBrightness").withFloat("adjustment", f).build()).execute();
        } else {
            throw new UnSupportedApiVersionException("not supported before R");
        }
    }

    @Permission(authStr = "getActiveDisplayStatus", type = "epona")
    @Blocked
    @RequiresApi(api = 30)
    @System
    public static int getActiveDisplayStatus() throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            Response execute = Epona.newCall(new Request.Builder().setComponentName(COMPONENT_NAME).setActionName("getActiveDisplayStatus").build()).execute();
            if (execute.isSuccessful()) {
                return execute.getBundle().getInt(WIFIDISPLAY_STATUS);
            }
            return -1;
        }
        throw new UnSupportedApiVersionException("not supported before R");
    }

    @Permission(authStr = "getScanState", type = "epona")
    @Blocked
    @RequiresApi(api = 30)
    @System
    public static int getScanState() throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            Response execute = Epona.newCall(new Request.Builder().setComponentName(COMPONENT_NAME).setActionName("getScanState").build()).execute();
            if (execute.isSuccessful()) {
                return execute.getBundle().getInt(WIFI_DISPLAY_SCAN_STATUS);
            }
            return -1;
        }
        throw new UnSupportedApiVersionException("not supported before R");
    }

    @Permission(authStr = "getDisplaysName", type = "epona")
    @Blocked
    @RequiresApi(api = 30)
    @System
    public static String getDisplaysName() throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            Response execute = Epona.newCall(new Request.Builder().setComponentName(COMPONENT_NAME).setActionName("getDisplaysName").build()).execute();
            return execute.isSuccessful() ? execute.getBundle().getString(DISPLAYS_NAME, "") : "";
        }
        throw new UnSupportedApiVersionException("not supported before R");
    }

    @Permission(authStr = "getDeviceList", type = "epona")
    @Blocked
    @RequiresApi(api = 30)
    @System
    public static Map<String, String> getDeviceList() throws UnSupportedApiVersionException {
        HashMap hashMap = new HashMap();
        if (VersionUtils.isR()) {
            Response execute = Epona.newCall(new Request.Builder().setComponentName(COMPONENT_NAME).setActionName("getDeviceList").build()).execute();
            if (execute.isSuccessful()) {
                ArrayList<String> stringArrayList = execute.getBundle().getStringArrayList(DEVICE_NAME);
                ArrayList<String> stringArrayList2 = execute.getBundle().getStringArrayList(DEVICE_ADDRESS);
                for (int i = 0; i < stringArrayList.size(); i++) {
                    hashMap.put(stringArrayList.get(i), stringArrayList2.get(i));
                }
                return hashMap;
            }
            return hashMap;
        }
        throw new UnSupportedApiVersionException("not supported before R");
    }

    @Permission(authStr = "connectWifiDisplay", type = "epona")
    @Blocked
    @RequiresApi(api = 30)
    @System
    public static void connectWifiDisplay(String str) throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            Epona.newCall(new Request.Builder().setComponentName(COMPONENT_NAME).setActionName("connectWifiDisplay").withString(WIFI_ADDRESS, str).build()).execute();
            return;
        }
        throw new UnSupportedApiVersionException("not supported before R");
    }

    @Permission(authStr = "getActiveDeviceAddress", type = "epona")
    @Blocked
    @RequiresApi(api = 30)
    @System
    public static String getActiveDeviceAddress() throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            Response execute = Epona.newCall(new Request.Builder().setComponentName(COMPONENT_NAME).setActionName("getActiveDeviceAddress").build()).execute();
            return execute.isSuccessful() ? execute.getBundle().getString(ACTIVE_DEVICE_ADDRESS, "") : "";
        }
        throw new UnSupportedApiVersionException("not supported before R");
    }

    @Permission(authStr = "disconnectWifiDisplay", type = "epona")
    @Blocked
    @RequiresApi(api = 30)
    @System
    public static void disconnectWifiDisplay() throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            Epona.newCall(new Request.Builder().setComponentName(COMPONENT_NAME).setActionName("disconnectWifiDisplay").build()).execute();
            return;
        }
        throw new UnSupportedApiVersionException("not supported before R");
    }

    @Permission(authStr = "startWifiDisplayScan", type = "epona")
    @Blocked
    @RequiresApi(api = 30)
    @System
    public static void startWifiDisplayScan() throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            Epona.newCall(new Request.Builder().setComponentName(COMPONENT_NAME).setActionName("startWifiDisplayScan").build()).execute();
            return;
        }
        throw new UnSupportedApiVersionException("not supported before R");
    }

    @Permission(authStr = "stopWifiDisplayScan", type = "epona")
    @Blocked
    @RequiresApi(api = 30)
    @System
    public static void stopWifiDisplayScan() throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            Epona.newCall(new Request.Builder().setComponentName(COMPONENT_NAME).setActionName("stopWifiDisplayScan").build()).execute();
            return;
        }
        throw new UnSupportedApiVersionException("not supported before R");
    }

    @Oem
    @RequiresApi(api = 28)
    @Deprecated
    public static void enterBenchmarkMode(DisplayManager displayManager, boolean z) throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            throw new UnSupportedApiVersionException("not supported after R");
        }
        if (VersionUtils.isP()) {
            ReflectInfo.enterBenchmarkMode.call(displayManager, Boolean.valueOf(z));
            return;
        }
        throw new UnSupportedApiVersionException("Not supported before P");
    }
}

package com.oplus.compat.net.wifi;

import android.net.wifi.OplusWifiManager;
import android.net.wifi.ScanResult;
import android.net.wifi.WifiManager;
import androidx.annotation.RequiresApi;
import com.oplus.compat.annotation.Blocked;
import com.oplus.compat.annotation.Grey;
import com.oplus.compat.annotation.Oem;
import com.oplus.compat.annotation.Permission;
import com.oplus.compat.annotation.System;
import com.oplus.compat.utils.util.UnSupportedApiVersionException;
import com.oplus.compat.utils.util.VersionUtils;
import com.oplus.epona.Epona;
import com.oplus.epona.Request;
import com.oplus.epona.Response;
import com.oplus.ocs.camera.common.util.ApsConstant;
import com.oplus.utils.reflect.RefClass;
import com.oplus.utils.reflect.RefMethod;
import java.util.List;
/* loaded from: classes.dex */
public class OplusWifiManagerNative {
    private static final String COMPONENT_NAME = "android.net.wifi.OplusWifiManager";
    private static final String KEY_RESULT = "result";
    private static final String TAG = "OplusWifiManagerNative";
    private static OplusWifiManager mOplusWifiManager = new OplusWifiManager(Epona.getContext());

    /* loaded from: classes.dex */
    private static class ReflectInfoR {
        public static RefMethod<Void> addAuthResultInfo;
        public static RefMethod<Boolean> getDualStaReadyStateForAPP;
        public static RefMethod<Boolean> isDualStaSupportedForAPP;
        private static RefMethod<Boolean> isP2p5GSupported;
        public static RefMethod<Integer> requestToEnableSta2ByAPP;
        public static RefMethod<Boolean> requestToReleaseSta2ByAPP;

        private ReflectInfoR() {
        }

        static {
            RefClass.load(ReflectInfoR.class, OplusWifiManager.class);
        }
    }

    /* loaded from: classes.dex */
    private static class ReflectInfo {
        private static RefMethod<Boolean> isP2p5GSupported;

        private ReflectInfo() {
        }

        static {
            RefClass.load(ReflectInfo.class, WifiManager.class);
        }
    }

    @Oem
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public static boolean isP2p5GSupported() throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            return ((Boolean) ReflectInfoR.isP2p5GSupported.call(new OplusWifiManager(Epona.getContext()), new Object[0])).booleanValue();
        } else if (VersionUtils.isQ()) {
            return ((Boolean) ReflectInfo.isP2p5GSupported.call((WifiManager) Epona.getContext().getApplicationContext().getSystemService("wifi"), new Object[0])).booleanValue();
        } else {
            throw new UnSupportedApiVersionException("Not Supported Before R");
        }
    }

    @Grey
    @RequiresApi(api = 30)
    public static boolean isDualStaSupportedForAPP(String str) throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            if (str == null || mOplusWifiManager == null) {
                return false;
            }
            return ReflectInfoR.isDualStaSupportedForAPP.call(mOplusWifiManager, str).booleanValue();
        }
        throw new UnSupportedApiVersionException("Not Supported Before R for isDualStaSupportedForAPP:" + mOplusWifiManager);
    }

    @Grey
    @RequiresApi(api = 30)
    public static boolean getDualStaReadyStateForAPP(String str) throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            if (str == null || mOplusWifiManager == null) {
                return false;
            }
            return ReflectInfoR.getDualStaReadyStateForAPP.call(mOplusWifiManager, str).booleanValue();
        }
        throw new UnSupportedApiVersionException("Not Supported Before R for getDualStaReadyStateForAPP");
    }

    @Grey
    @RequiresApi(api = 30)
    public static int requestToEnableSta2ByAPP(String str) throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            if (str == null || mOplusWifiManager == null) {
                return -1;
            }
            return ReflectInfoR.requestToEnableSta2ByAPP.call(mOplusWifiManager, str).intValue();
        }
        throw new UnSupportedApiVersionException("Not Supported Before R for requestToEnableSta2ByAPP");
    }

    @Grey
    @RequiresApi(api = 30)
    public static boolean requestToReleaseSta2ByAPP(int i, int i2, String str) throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            if (str == null || mOplusWifiManager == null) {
                return false;
            }
            return ReflectInfoR.requestToReleaseSta2ByAPP.call(mOplusWifiManager, Integer.valueOf(i), Integer.valueOf(i2), str).booleanValue();
        }
        throw new UnSupportedApiVersionException("Not Supported Before R for requestToReleaseSta2ByAPP");
    }

    @Grey
    @RequiresApi(api = 30)
    public static void addAuthResultInfo(int i, int i2, int i3, String str) throws UnSupportedApiVersionException {
        if (VersionUtils.isR() && mOplusWifiManager != null) {
            ReflectInfoR.addAuthResultInfo.call(mOplusWifiManager, Integer.valueOf(i), Integer.valueOf(i2), Integer.valueOf(i3), str);
            return;
        }
        throw new UnSupportedApiVersionException("Not Supported Before R for addAuthResultInfo");
    }

    @Permission(authStr = "getIOTConnectScanResults", type = "epona")
    @Blocked
    @RequiresApi(api = 30)
    @System
    public static List<ScanResult> getIOTConnectScanResults() throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            Response execute = Epona.newCall(new Request.Builder().setComponentName(COMPONENT_NAME).setActionName("getIOTConnectScanResults").build()).execute();
            if (execute.isSuccessful()) {
                return execute.getBundle().getParcelableArrayList(KEY_RESULT);
            }
            return null;
        }
        throw new UnSupportedApiVersionException("Not Supported Before R for getIOTConnectScanResults");
    }

    @Permission(authStr = "sendIOTConnectProbeReq", type = "epona")
    @Blocked
    @RequiresApi(api = 30)
    @System
    public static boolean sendIOTConnectProbeReq(String str, int[] iArr, String str2) throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            Response execute = Epona.newCall(new Request.Builder().setComponentName(COMPONENT_NAME).setActionName("sendIOTConnectProbeReq").withString("addVendorIE", str).withIntArray("channels", iArr).withString("hiddenSSIDList", str2).build()).execute();
            if (execute.isSuccessful()) {
                return execute.getBundle().getBoolean(KEY_RESULT);
            }
            return false;
        }
        throw new UnSupportedApiVersionException("Not Supported Before R for sendIOTConnectProbeReq");
    }

    @Permission(authStr = "suspendFWKPeriodicScan", type = "epona")
    @Blocked
    @RequiresApi(api = 30)
    @System
    public static boolean suspendFWKPeriodicScan(int i) throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            Response execute = Epona.newCall(new Request.Builder().setComponentName(COMPONENT_NAME).setActionName("suspendFWKPeriodicScan").withInt("disableInterval", i).build()).execute();
            if (execute.isSuccessful()) {
                return execute.getBundle().getBoolean(KEY_RESULT);
            }
            return false;
        }
        throw new UnSupportedApiVersionException("Not Supported Before R for suspendFWKPeriodicScan");
    }

    @Permission(authStr = "resumeFWKPeriodicScan", type = "epona")
    @Blocked
    @RequiresApi(api = 30)
    @System
    public static void resumeFWKPeriodicScan() throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            Epona.newCall(new Request.Builder().setComponentName(COMPONENT_NAME).setActionName("resumeFWKPeriodicScan").build()).execute();
            return;
        }
        throw new UnSupportedApiVersionException("Not Supported Before R for resumeFWKPeriodicScan");
    }

    @Permission(authStr = "iotConnectScanBusy", type = "epona")
    @Blocked
    @RequiresApi(api = 30)
    @System
    public static boolean iotConnectScanBusy() throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            Response execute = Epona.newCall(new Request.Builder().setComponentName(COMPONENT_NAME).setActionName("iotConnectScanBusy").build()).execute();
            if (execute.isSuccessful()) {
                return execute.getBundle().getBoolean(KEY_RESULT);
            }
            return true;
        }
        throw new UnSupportedApiVersionException("Not Supported Before R for iotConnectScanBusy");
    }
}

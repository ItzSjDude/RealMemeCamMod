package com.oplus.compat.net.wifi.p2p;

import android.content.Context;
import android.net.wifi.p2p.WifiP2pManager;
import androidx.annotation.RequiresApi;
import com.oplus.compat.annotation.Blocked;
import com.oplus.compat.annotation.Permission;
import com.oplus.compat.annotation.System;
import com.oplus.compat.utils.util.UnSupportedApiVersionException;
import com.oplus.compat.utils.util.VersionUtils;
import com.oplus.epona.Epona;
import com.oplus.epona.Request;
import com.oplus.epona.Response;
import com.oplus.ocs.camera.common.util.ApsConstant;
import com.oplus.utils.reflect.MethodName;
import com.oplus.utils.reflect.RefClass;
import com.oplus.utils.reflect.RefConstructor;
import com.oplus.utils.reflect.RefMethod;
/* loaded from: classes.dex */
public class OplusWifiP2pManagerNative {
    private static final String COMPONENT_NAME = "android.net.wifi.p2p.OplusWifiP2pManager";
    private static final String KEY_RESULT = "result";
    private static Object oplusWifiP2pManager;
    private static WifiP2pManager wifiP2pManager = (WifiP2pManager) Epona.getContext().getSystemService("wifip2p");

    /* loaded from: classes.dex */
    private static class ReflectInfoQ {
        private static RefMethod<Void> saveExternalPeerAddress;
        private static RefMethod<Boolean> setNfcTriggered;

        private ReflectInfoQ() {
        }

        static {
            RefClass.load(ReflectInfoQ.class, WifiP2pManager.class);
        }
    }

    /* loaded from: classes.dex */
    private static class ReflectInfoR {
        @MethodName(params = {Context.class})
        private static RefConstructor<Object> oplusWifiP2pManagerCon;
        private static RefMethod<Void> saveExternalPeerAddress;
        private static RefMethod<Boolean> setNfcTriggered;
        private static RefMethod<Void> setOshareEnabled;
        private static RefMethod<Boolean> setPcAutonomousGo;

        private ReflectInfoR() {
        }

        static {
            RefClass.load(ReflectInfoR.class, OplusWifiP2pManagerNative.COMPONENT_NAME);
        }
    }

    static {
        if (ReflectInfoR.oplusWifiP2pManagerCon != null) {
            oplusWifiP2pManager = ReflectInfoR.oplusWifiP2pManagerCon.newInstance(Epona.getContext());
        }
    }

    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    @System
    public static boolean setNfcTriggered(boolean z) throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            return ((Boolean) ReflectInfoR.setNfcTriggered.call(oplusWifiP2pManager, Boolean.valueOf(z))).booleanValue();
        }
        if (VersionUtils.isQ()) {
            return ((Boolean) ReflectInfoQ.setNfcTriggered.call(wifiP2pManager, Boolean.valueOf(z))).booleanValue();
        }
        throw new UnSupportedApiVersionException("setNfcTriggered Not Supported");
    }

    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    @System
    public static void saveExternalPeerAddress(String str) throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            ReflectInfoR.saveExternalPeerAddress.call(oplusWifiP2pManager, str);
        } else if (VersionUtils.isQ()) {
            ReflectInfoQ.saveExternalPeerAddress.call(wifiP2pManager, str);
        } else {
            throw new UnSupportedApiVersionException("saveExternalPeerAddress Not Supported");
        }
    }

    @Blocked
    @RequiresApi(api = 30)
    @System
    public static void setOshareEnabled(boolean z, int i, boolean z2, boolean z3) throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            ReflectInfoR.setOshareEnabled.call(oplusWifiP2pManager, Boolean.valueOf(z), Integer.valueOf(i), Boolean.valueOf(z2), Boolean.valueOf(z3));
            return;
        }
        throw new UnSupportedApiVersionException("setOshareEnabled Not Supported");
    }

    @Permission(authStr = "setPcAutonomousGo", type = "epona")
    @Blocked
    @RequiresApi(api = 30)
    @System
    public static boolean setPcAutonomousGo(boolean z, int i, String str) throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            Response execute = Epona.newCall(new Request.Builder().setComponentName(COMPONENT_NAME).setActionName("setPcAutonomousGo").withBoolean("enable", z).withInt("freq", i).withString("reverse", str).build()).execute();
            if (execute.isSuccessful()) {
                return execute.getBundle().getBoolean(KEY_RESULT);
            }
            return false;
        }
        throw new UnSupportedApiVersionException("Not Supported Before R");
    }
}

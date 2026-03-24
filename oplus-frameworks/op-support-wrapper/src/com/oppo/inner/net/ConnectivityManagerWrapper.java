package com.oppo.inner.net;

import android.net.ConnectivityManager;
import android.net.IVpnManager;
import android.os.Handler;
import android.os.ServiceManager;
import android.util.Log;
import java.lang.reflect.Method;
import java.util.List;
import com.oplus.inner.net.ConnectivityManagerWrapper;

public class ConnectivityManagerWrapper {
    public static void stopTethering(ConnectivityManager connectivityManager, int type) {
        ConnectivityManagerWrapper.stopTethering(connectivityManager, type);
    }

    public static void startTethering(ConnectivityManager connectivityManager, int type, boolean showProvisioningUi, final OnStartTetheringCallbackWrapper callback, Handler handler) {
        ConnectivityManagerWrapper.startTethering(connectivityManager, type, showProvisioningUi, callback, handler);
    }

    public static void setVpnPackageAuthorization(String packageName, int userId, int vpnType) {
        ConnectivityManagerWrapper.setVpnPackageAuthorization(packageName, userId, vpnType);
    }

    public static List<String> readArpFile(ConnectivityManager connectivityManager) {
        return ConnectivityManagerWrapper.readArpFile(connectivityManager);
    }

}
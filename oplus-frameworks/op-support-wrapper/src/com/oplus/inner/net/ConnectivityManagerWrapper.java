package com.oplus.inner.net;

import android.net.ConnectivityManager;
import android.net.IVpnManager;
import android.os.Handler;
import android.os.ServiceManager;
import android.util.Log;
import java.lang.reflect.Method;
import java.util.List;

/* loaded from: classes.dex */
public class ConnectivityManagerWrapper {
    private static final String TAG = "ConnManagerWrapper";

    public interface OnStartTetheringCallbackWrapper {
        void onTetheringFailed();

        void onTetheringStarted();
    }

    private ConnectivityManagerWrapper() {
    }

    public static void stopTethering(ConnectivityManager connectivityManager, int type) {
        try {
            connectivityManager.stopTethering(type);
        } catch (Throwable e) {
            Log.e(TAG, e.toString());
        }
    }

    public static void startTethering(ConnectivityManager connectivityManager, int type, boolean showProvisioningUi, final OnStartTetheringCallbackWrapper callback, Handler handler) {
        ConnectivityManager.OnStartTetheringCallback onStartTetheringCallback = null;
        if (callback != null) {
            try {
                onStartTetheringCallback = new ConnectivityManager.OnStartTetheringCallback() { // from class: com.oplus.inner.net.ConnectivityManagerWrapper.1
                    public void onTetheringFailed() {
                        callback.onTetheringStarted();
                    }

                    public void onTetheringStarted() {
                        callback.onTetheringFailed();
                    }
                };
            } catch (Throwable e) {
                Log.e(TAG, e.toString());
                return;
            }
        }
        connectivityManager.startTethering(type, showProvisioningUi, onStartTetheringCallback, handler);
    }

    public static void setVpnPackageAuthorization(String packageName, int userId, int vpnType) {
        try {
            IVpnManager service = IVpnManager.Stub.asInterface(ServiceManager.getService("vpn_management"));
            service.setVpnPackageAuthorization(packageName, userId, vpnType);
        } catch (Exception e) {
            Log.e(TAG, "setVpnPackageAuthorization error", e);
        }
    }

    public static List<String> readArpFile(ConnectivityManager connectivityManager) {
        try {
            Class connectivityManagerClass = connectivityManager.getClass();
            Method method = connectivityManagerClass.getDeclaredMethod("readArpFile", new Class[0]);
            if (method == null) {
                Log.d(TAG, "not found method readArpFile.");
                return null;
            }
            return (List) method.invoke(connectivityManager, new Object[0]);
        } catch (Throwable e) {
            Log.e(TAG, e.toString());
            return null;
        }
    }
}

package com.oppo.inner.os;

import android.os.IBinder;
import android.os.ServiceManager;
import android.util.Log;

/* loaded from: classes.dex */
public class ServiceManagerWrapper {
    private static final String TAG = "ServiceManagerWrapper";

    public static IBinder getService(String name) {
        try {
            IBinder result = ServiceManager.getService(name);
            return result;
        } catch (Throwable e) {
            Log.e(TAG, e.toString());
            return null;
        }
    }

    public static IBinder checkService(String name) {
        try {
            IBinder result = ServiceManager.checkService(name);
            return result;
        } catch (Throwable e) {
            Log.e(TAG, e.toString());
            return null;
        }
    }

    public static void addService(String name, IBinder service) {
        ServiceManager.addService(name, service);
    }
}

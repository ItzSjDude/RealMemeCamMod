package com.oppo.inner.os;

import android.os.IBinder;
import android.os.ServiceManager;
import android.util.Log;
import com.oplus.inner.os.ServiceManagerWrapper;

public class ServiceManagerWrapper {
    public static IBinder getService(String name) {
        return ServiceManagerWrapper.getService(name);
    }

    public static IBinder checkService(String name) {
        return ServiceManagerWrapper.checkService(name);
    }

    public static void addService(String name, IBinder service) {
        ServiceManagerWrapper.addService(name, service);
    }

}
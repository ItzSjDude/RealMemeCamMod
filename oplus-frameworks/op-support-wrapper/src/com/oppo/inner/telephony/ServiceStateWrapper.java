package com.oppo.inner.telephony;

import android.os.Bundle;
import android.telephony.ServiceState;
import android.util.Log;

/* loaded from: classes.dex */
public class ServiceStateWrapper {
    private static final String TAG = "ServiceStateWrapper";

    private ServiceStateWrapper() {
    }

    public static ServiceState newFromBundle(Bundle bundle) {
        try {
            ServiceState result = ServiceState.newFromBundle(bundle);
            return result;
        } catch (Throwable e) {
            Log.e(TAG, e.toString());
            return null;
        }
    }

    public static int getDataRegState(ServiceState serviceState) {
        try {
            int result = serviceState.getDataRegState();
            return result;
        } catch (Throwable e) {
            Log.e(TAG, e.toString());
            return -1;
        }
    }
}

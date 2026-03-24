package com.oppo.inner.telephony;

import android.os.Bundle;
import android.telephony.ServiceState;
import android.util.Log;
import com.oplus.inner.telephony.ServiceStateWrapper;

public class ServiceStateWrapper {
    public static ServiceState newFromBundle(Bundle bundle) {
        return ServiceStateWrapper.newFromBundle(bundle);
    }

    public static int getDataRegState(ServiceState serviceState) {
        return ServiceStateWrapper.getDataRegState(serviceState);
    }

}
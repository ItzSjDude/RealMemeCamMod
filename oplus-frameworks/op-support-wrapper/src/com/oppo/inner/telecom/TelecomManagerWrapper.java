package com.oppo.inner.telecom;

import android.content.Intent;
import android.os.Bundle;
import android.telecom.TelecomManager;
import android.util.Log;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import com.oplus.inner.telecom.TelecomManagerWrapper;

public class TelecomManagerWrapper {
    public static void addNewOutgoingCall(TelecomManager telecomManager, Intent intent) {
        TelecomManagerWrapper.addNewOutgoingCall(telecomManager, intent);
    }

    public static void oplusCancelMissedCallsNotification(TelecomManager telecomManager, Bundle bundle) {
        TelecomManagerWrapper.oplusCancelMissedCallsNotification(telecomManager, bundle);
    }

}
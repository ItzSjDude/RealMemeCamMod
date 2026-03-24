package com.oppo.inner.telecom;

import android.content.Intent;
import android.os.Bundle;
import android.telecom.TelecomManager;
import android.util.Log;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* loaded from: classes.dex */
public class TelecomManagerWrapper {
    private static final String TAG = "TelecomManagerWrapper";

    private TelecomManagerWrapper() {
    }

    public static void addNewOutgoingCall(TelecomManager telecomManager, Intent intent) throws IllegalAccessException, NoSuchMethodException, ClassNotFoundException, SecurityException, IllegalArgumentException, InvocationTargetException {
        try {
            Class<?> cls = Class.forName("android.telecom.TelecomManager");
            Method method = cls.getMethod("addNewOutgoingCall", Intent.class);
            method.setAccessible(true);
            method.invoke(telecomManager, intent);
        } catch (Exception e) {
            Log.e(TAG, "callDeclaredMethod exception caught : " + e.getMessage());
            e.printStackTrace();
        }
    }

    public static void oplusCancelMissedCallsNotification(TelecomManager telecomManager, Bundle bundle) throws IllegalAccessException, NoSuchMethodException, ClassNotFoundException, SecurityException, IllegalArgumentException, InvocationTargetException {
        try {
            Class<?> cls = Class.forName("android.telecom.TelecomManager");
            Method method = cls.getMethod("oplusCancelMissedCallsNotification", Bundle.class);
            method.setAccessible(true);
            method.invoke(telecomManager, bundle);
        } catch (Exception e) {
            Log.e(TAG, "callDeclaredMethod exception caught : " + e.getMessage());
            e.printStackTrace();
        }
    }
}

package com.oppo.inner.telecom;

import android.telecom.PhoneAccountHandle;
import android.util.Log;
import java.lang.reflect.Field;

/* loaded from: classes.dex */
public class PhoneAccountHandleWrapper {
    private static final String TAG = "PhoneAccountHandleWrapper";

    private PhoneAccountHandleWrapper() {
    }

    public static int getSubId(PhoneAccountHandle phoneAccountHandle) {
        try {
            int subId = ((Integer) getReflectField(phoneAccountHandle, "android.telecom.PhoneAccountHandle", "mSubId", -1)).intValue();
            return subId;
        } catch (Throwable e) {
            Log.e(TAG, e.toString());
            return -1;
        }
    }

    public static int getSlotId(PhoneAccountHandle phoneAccountHandle) {
        try {
            int slotId = ((Integer) getReflectField(phoneAccountHandle, "android.telecom.PhoneAccountHandle", "mSlotId", -1)).intValue();
            return slotId;
        } catch (Throwable e) {
            Log.e(TAG, e.toString());
            return -1;
        }
    }

    private static Object getReflectField(Object target, String className, String fieldName, Object defaultValue) throws IllegalAccessException, NoSuchFieldException, ClassNotFoundException, IllegalArgumentException {
        try {
            Class<?> clz = Class.forName(className);
            Field field = clz.getDeclaredField(fieldName);
            field.setAccessible(true);
            Object result = field.get(target);
            return result;
        } catch (ClassNotFoundException e) {
            Log.e(TAG, "getReflectField ClassNotFoundException caught : " + e.getMessage());
            return defaultValue;
        } catch (IllegalAccessException e2) {
            Log.e(TAG, "getReflectField IllegalAccessException caught : " + e2.getMessage());
            return defaultValue;
        } catch (IllegalArgumentException e3) {
            Log.e(TAG, "getReflectField IllegalArgumentException caught : " + e3.getMessage());
            return defaultValue;
        } catch (NoSuchFieldException e4) {
            Log.e(TAG, "getReflectField NoSuchFieldException caught : " + e4.getMessage());
            return defaultValue;
        } catch (Exception e5) {
            Log.e(TAG, "getReflectField exception caught : " + e5.getMessage());
            return defaultValue;
        }
    }
}

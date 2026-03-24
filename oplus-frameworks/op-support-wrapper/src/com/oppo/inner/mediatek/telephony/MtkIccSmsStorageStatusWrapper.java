package com.oppo.inner.mediatek.telephony;

import android.util.Log;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* loaded from: classes.dex */
public class MtkIccSmsStorageStatusWrapper {
    public static final int INVALID_RESULT = -1;
    public static final String TAG = "MtkIccSmsStorageStatusWrapper";
    private Object mMtkIccSmsStorageStatus;

    public MtkIccSmsStorageStatusWrapper(Object mtkIccSmsStorageStatus) {
        this.mMtkIccSmsStorageStatus = mtkIccSmsStorageStatus;
    }

    public int getUsedCount() throws NoSuchMethodException, SecurityException {
        try {
            Method method = this.mMtkIccSmsStorageStatus.getClass().getDeclaredMethod("getUsedCount", new Class[0]);
            return ((Integer) method.invoke(this.mMtkIccSmsStorageStatus, new Object[0])).intValue();
        } catch (Exception e) {
            Log.e(TAG, e.toString());
            return -1;
        }
    }

    public int getTotalCount() throws NoSuchMethodException, SecurityException {
        try {
            Method method = this.mMtkIccSmsStorageStatus.getClass().getDeclaredMethod("getTotalCount", new Class[0]);
            return ((Integer) method.invoke(this.mMtkIccSmsStorageStatus, new Object[0])).intValue();
        } catch (Exception e) {
            Log.e(TAG, e.toString());
            return -1;
        }
    }

    public int getUnused() throws NoSuchMethodException, SecurityException {
        try {
            Method method = this.mMtkIccSmsStorageStatus.getClass().getDeclaredMethod("getUnused", new Class[0]);
            return ((Integer) method.invoke(this.mMtkIccSmsStorageStatus, new Object[0])).intValue();
        } catch (Exception e) {
            Log.e(TAG, e.toString());
            return -1;
        }
    }

    public void reset() throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        try {
            Method method = this.mMtkIccSmsStorageStatus.getClass().getDeclaredMethod("reset", new Class[0]);
            method.invoke(this.mMtkIccSmsStorageStatus, new Object[0]);
        } catch (Exception e) {
            Log.e(TAG, e.toString());
        }
    }
}

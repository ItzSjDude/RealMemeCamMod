package com.oplus.ocs.camera.common.parameter.apsadapter;

import com.oplus.ocs.camera.consumer.apsAdapter.ApsAdapterLog;
import java.lang.reflect.Field;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes.dex */
public class ApsHelper {
    private static final String CLAZZ_NAME = "android.hardware.camera2.OplusCameraManager";
    private static final String INSTANCE_FIELD = "mInstance";
    private static String TAG = "ApsHelper";
    private static boolean bInit = false;
    private static Field mClazzField;
    private static Method mProcessHeif;

    public static void postProcessHeifEvent(long j) {
        ApsAdapterLog.d(TAG, "postProcessHeifEvent, ptr: " + j);
        refectionMethod("sendToProcessHeif", new Class[]{Long.TYPE}, new Object[]{Long.valueOf(j)});
    }

    public static int postBufQAllocEnableEvent(long j) {
        ApsAdapterLog.d(TAG, "postBufQAllocEnableEvent, ptr: " + j);
        Object objRefectionMethod = refectionMethod("sendToBufQAllocEnableEvent", new Class[]{Long.TYPE}, new Object[]{Long.valueOf(j)});
        if (objRefectionMethod != null) {
            return ((Integer) objRefectionMethod).intValue();
        }
        return -1;
    }

    public static int postExchgHWBufBtwBufQEvent(long j) {
        ApsAdapterLog.d(TAG, "postExchgHWBufBtwBufQEvent, ptr: " + j);
        Object objRefectionMethod = refectionMethod("sendToExchgHWBufBtwBufQEvent", new Class[]{Long.TYPE}, new Object[]{Long.valueOf(j)});
        if (objRefectionMethod != null) {
            return ((Integer) objRefectionMethod).intValue();
        }
        return -1;
    }

    public static int postAttachHWBufToBufQEvent(long j) {
        ApsAdapterLog.d(TAG, "postAttachHWBufToBufQEvent, ptr: " + j);
        Object objRefectionMethod = refectionMethod("sendToAttachHWBufToBufQEvent", new Class[]{Long.TYPE}, new Object[]{Long.valueOf(j)});
        if (objRefectionMethod != null) {
            return ((Integer) objRefectionMethod).intValue();
        }
        return -1;
    }

    private static Object refectionMethod(String str, Class[] clsArr, Object[] objArr) {
        try {
            Class<?> cls = Class.forName(CLAZZ_NAME);
            Field declaredField = cls.getDeclaredField(INSTANCE_FIELD);
            Method declaredMethod = cls.getDeclaredMethod(str, clsArr);
            declaredField.setAccessible(true);
            declaredMethod.setAccessible(true);
            return declaredMethod.invoke(declaredField.get(null), objArr);
        } catch (Exception e) {
            ApsAdapterLog.e(TAG, "refectionMethod, methodName:  " + str + " ERROR: " + e.getMessage());
            return null;
        }
    }
}

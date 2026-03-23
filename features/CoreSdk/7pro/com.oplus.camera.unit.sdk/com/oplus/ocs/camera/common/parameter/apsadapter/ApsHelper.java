package com.oplus.ocs.camera.common.parameter.apsadapter;

import com.oplus.ocs.camera.common.util.CameraUnitLog;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
/* loaded from: classes.dex */
public class ApsHelper {
    private static final String CLAZZ_NAME = "android.hardware.camera2.OplusCameraManager";
    private static final String INSTANCE_FIELD = "mInstance";
    private static String TAG = "ApsHelper";
    private static boolean bInit = false;
    private static Field mClazzField;
    private static Method mProcessHeif;

    public static void postProcessHeifEvent(long j) {
        String str = TAG;
        CameraUnitLog.d(str, "postProcessHeifEvent, ptr: " + j);
        refectionMethod("sendToProcessHeif", new Class[]{Long.TYPE}, new Object[]{Long.valueOf(j)});
    }

    public static int postBufQAllocEnableEvent(long j) {
        String str = TAG;
        CameraUnitLog.d(str, "postBufQAllocEnableEvent, ptr: " + j);
        Object refectionMethod = refectionMethod("sendToBufQAllocEnableEvent", new Class[]{Long.TYPE}, new Object[]{Long.valueOf(j)});
        if (refectionMethod != null) {
            return ((Integer) refectionMethod).intValue();
        }
        return -1;
    }

    public static int postExchgHWBufBtwBufQEvent(long j) {
        String str = TAG;
        CameraUnitLog.d(str, "postExchgHWBufBtwBufQEvent, ptr: " + j);
        Object refectionMethod = refectionMethod("sendToExchgHWBufBtwBufQEvent", new Class[]{Long.TYPE}, new Object[]{Long.valueOf(j)});
        if (refectionMethod != null) {
            return ((Integer) refectionMethod).intValue();
        }
        return -1;
    }

    public static int postAttachHWBufToBufQEvent(long j) {
        String str = TAG;
        CameraUnitLog.d(str, "postAttachHWBufToBufQEvent, ptr: " + j);
        Object refectionMethod = refectionMethod("sendToAttachHWBufToBufQEvent", new Class[]{Long.TYPE}, new Object[]{Long.valueOf(j)});
        if (refectionMethod != null) {
            return ((Integer) refectionMethod).intValue();
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
            String str2 = TAG;
            CameraUnitLog.e(str2, "refectionMethod, methodName:  " + str + " ERROR: " + e.getMessage());
            return null;
        }
    }
}

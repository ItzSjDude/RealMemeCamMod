package com.oplus.compat.fingerprint;

import android.content.Context;
import android.hardware.fingerprint.Fingerprint;
import android.hardware.fingerprint.FingerprintManager;
import android.hardware.fingerprint.OplusFingerprintManager;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.Log;
import androidx.annotation.RequiresApi;
import com.oplus.compat.annotation.Blocked;
import com.oplus.compat.annotation.Oem;
import com.oplus.compat.annotation.Permission;
import com.oplus.compat.annotation.System;
import com.oplus.compat.utils.util.UnSupportedApiVersionException;
import com.oplus.compat.utils.util.VersionUtils;
import com.oplus.compatsdk.annotation.OplusCompatibleMethod;
import com.oplus.epona.Epona;
import com.oplus.epona.Request;
import com.oplus.epona.Response;
import com.oplus.inner.hardware.fingerprint.FingerprintManagerWrapper;
import com.oplus.ocs.camera.common.util.ApsConstant;
import com.oplus.ocs.camera.common.util.CameraConstant;
import com.oplus.utils.reflect.MethodName;
import com.oplus.utils.reflect.RefClass;
import com.oplus.utils.reflect.RefConstructor;
import com.oplus.utils.reflect.RefMethod;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.function.IntConsumer;
/* loaded from: classes.dex */
public class FingerprintManagerNative {
    private static final String COMPONENT_NAME = "android.hardware.fingerprint";
    private static final String KEY_FINGER_PRINT = "fingerprint";
    private static final String KEY_USER_ID = "userId";
    private static final String RESULT = "result";
    private static final String TAG = "FingerprintManagerNative";

    /* loaded from: classes.dex */
    public interface OpticalFingerprintListenerCallbackNative {
        @Oem
        @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
        void onOpticalFingerprintUpdate(int i);
    }

    @OplusCompatibleMethod
    private static Object getFailedAttemptsCompat(FingerprintManager fingerprintManager) {
        return null;
    }

    @OplusCompatibleMethod
    private static Object getLockoutAttemptDeadlineCompat(FingerprintManager fingerprintManager) {
        return null;
    }

    @OplusCompatibleMethod
    private static void hideFingerprintIconCompat(FingerprintManager fingerprintManager) {
    }

    @OplusCompatibleMethod
    private static void regsiterOpticalFingerprintListenerCompat(FingerprintManager fingerprintManager, IntConsumer intConsumer) {
    }

    @OplusCompatibleMethod
    private static void showFingerprintIconCompat(FingerprintManager fingerprintManager) {
    }

    private FingerprintManagerNative() {
    }

    /* loaded from: classes.dex */
    private static class ReflectInfo {
        public static RefMethod<Void> cancelGetEngineeringInfo;
        public static RefMethod<Integer> getEngineeringInfo;

        private ReflectInfo() {
        }

        static {
            RefClass.load(ReflectInfo.class, FingerprintManager.class);
        }
    }

    /* loaded from: classes.dex */
    private static class ReflectFingerprintNativeInfo {
        @MethodName(params = {Fingerprint.class})
        public static RefConstructor<FingerprintNative> FingerprintNative;
        public static RefMethod<Fingerprint> getFingerprint;

        private ReflectFingerprintNativeInfo() {
        }

        static {
            RefClass.load(ReflectFingerprintNativeInfo.class, FingerprintNative.class);
        }
    }

    /* loaded from: classes.dex */
    private static class RefOplusFingerprintManagerInfo {
        public static RefMethod<Void> hideFingerprintIcon;
        public static RefMethod<Void> showFingerprintIcon;

        private RefOplusFingerprintManagerInfo() {
        }

        static {
            RefClass.load(RefOplusFingerprintManagerInfo.class, OplusFingerprintManager.class);
        }
    }

    @Blocked
    @RequiresApi(api = 30)
    public static List<FingerprintNative> getEnrolledFingerprints(FingerprintManager fingerprintManager, int i) throws UnSupportedApiVersionException {
        ArrayList arrayList = new ArrayList();
        if (VersionUtils.isR()) {
            try {
                List enrolledFingerprints = fingerprintManager.getEnrolledFingerprints(i);
                if (enrolledFingerprints != null && !enrolledFingerprints.isEmpty()) {
                    Iterator it = enrolledFingerprints.iterator();
                    while (it.hasNext()) {
                        arrayList.add(ReflectFingerprintNativeInfo.FingerprintNative.newInstance((Fingerprint) it.next()));
                    }
                }
                return arrayList;
            } catch (NoSuchMethodError e) {
                Log.e(TAG, e.toString());
                throw new UnSupportedApiVersionException("no permission to access the blocked method", e);
            }
        }
        throw new UnSupportedApiVersionException("not supported before R");
    }

    @Oem
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public static void regsiterOpticalFingerprintListener(FingerprintManager fingerprintManager, final OpticalFingerprintListenerCallbackNative opticalFingerprintListenerCallbackNative) {
        if (opticalFingerprintListenerCallbackNative != null) {
            try {
                if (VersionUtils.isS()) {
                    throw new UnSupportedApiVersionException("not supported in S");
                }
                if (VersionUtils.isOsVersion11_3()) {
                    FingerprintManagerWrapper.regsiterOpticalFingerprintListener(fingerprintManager, new FingerprintManagerWrapper.OpticalFingerprintListenerCallbackWrapper() { // from class: com.oplus.compat.fingerprint.FingerprintManagerNative.1
                        public void onOpticalFingerprintUpdate(int i) {
                            OpticalFingerprintListenerCallbackNative.this.onOpticalFingerprintUpdate(i);
                        }
                    });
                } else if (VersionUtils.isQ()) {
                    regsiterOpticalFingerprintListener(fingerprintManager, opticalFingerprintListenerCallbackNative);
                }
            } catch (Throwable th) {
                Log.e(TAG, th.toString());
            }
        }
    }

    @Oem
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    @Deprecated
    public static void showFingerprintIcon(FingerprintManager fingerprintManager) {
        try {
            if (VersionUtils.isS()) {
                throw new UnSupportedApiVersionException("not supported in S");
            }
            if (VersionUtils.isOsVersion11_3()) {
                FingerprintManagerWrapper.showFingerprintIcon(fingerprintManager);
            } else if (VersionUtils.isQ()) {
                showFingerprintIconCompat(fingerprintManager);
            }
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
        }
    }

    @Blocked
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public static void showFingerprintIcon(Context context) throws UnSupportedApiVersionException {
        if (VersionUtils.isS()) {
            try {
                RefOplusFingerprintManagerInfo.showFingerprintIcon.call(new OplusFingerprintManager(context), new Object[0]);
                return;
            } catch (NoSuchMethodError e) {
                Log.e(TAG, e.toString());
                throw new UnSupportedApiVersionException("no permission to access the blocked method", e);
            }
        }
        showFingerprintIcon((FingerprintManager) context.getSystemService(KEY_FINGER_PRINT));
    }

    @Oem
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    @Deprecated
    public static void hideFingerprintIcon(FingerprintManager fingerprintManager) {
        try {
            if (VersionUtils.isS()) {
                throw new UnSupportedApiVersionException("not supported in S");
            }
            if (VersionUtils.isOsVersion11_3()) {
                FingerprintManagerWrapper.hideFingerprintIcon(fingerprintManager);
            } else if (VersionUtils.isQ()) {
                hideFingerprintIconCompat(fingerprintManager);
            }
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
        }
    }

    @Blocked
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public static void hideFingerprintIcon(Context context) {
        if (VersionUtils.isS()) {
            RefOplusFingerprintManagerInfo.hideFingerprintIcon.call(new OplusFingerprintManager(context), new Object[0]);
            return;
        }
        hideFingerprintIcon((FingerprintManager) context.getSystemService(KEY_FINGER_PRINT));
    }

    @Blocked
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public static int getFailedAttempts(Context context) throws UnSupportedApiVersionException {
        if (VersionUtils.isS()) {
            try {
                return new OplusFingerprintManager(context).getFailedAttempts();
            } catch (NoSuchMethodError e) {
                Log.e(TAG, e.toString());
                throw new UnSupportedApiVersionException("no permission to access the blocked method", e);
            }
        }
        return getFailedAttempts((FingerprintManager) context.getSystemService(KEY_FINGER_PRINT));
    }

    @Blocked
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    @Deprecated
    public static int getFailedAttempts(FingerprintManager fingerprintManager) {
        int intValue;
        try {
            if (VersionUtils.isS()) {
                throw new UnSupportedApiVersionException("not supported in S");
            }
            if (VersionUtils.isOsVersion11_3()) {
                intValue = FingerprintManagerWrapper.getFailedAttempts(fingerprintManager);
            } else if (!VersionUtils.isQ()) {
                return -1;
            } else {
                intValue = ((Integer) getFailedAttemptsCompat(fingerprintManager)).intValue();
            }
            return intValue;
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
            return -1;
        }
    }

    @Blocked
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public static long getLockoutAttemptDeadline(Context context, int i) throws UnSupportedApiVersionException {
        if (VersionUtils.isS()) {
            try {
                return new OplusFingerprintManager(context).getLockoutAttemptDeadline(i);
            } catch (NoSuchMethodError e) {
                Log.e(TAG, e.toString());
                throw new UnSupportedApiVersionException("no permission to access the blocked method", e);
            }
        }
        return getLockoutAttemptDeadline((FingerprintManager) context.getSystemService(KEY_FINGER_PRINT));
    }

    @Oem
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    @Deprecated
    public static long getLockoutAttemptDeadline(FingerprintManager fingerprintManager) {
        long longValue;
        try {
            if (VersionUtils.isS()) {
                throw new UnSupportedApiVersionException("not supported in S");
            }
            if (VersionUtils.isOsVersion11_3()) {
                if (fingerprintManager != null) {
                    longValue = FingerprintManagerWrapper.getLockoutAttemptDeadline(fingerprintManager);
                    return longValue;
                }
                return 0L;
            } else if (VersionUtils.isQ()) {
                if (fingerprintManager == null) {
                    return 0L;
                }
                longValue = ((Long) getLockoutAttemptDeadlineCompat(fingerprintManager)).longValue();
                return longValue;
            } else {
                return -1L;
            }
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
            return -1L;
        }
    }

    @Permission(authStr = "hasEnrolledTemplates", type = "epona")
    @Blocked
    @RequiresApi(api = 30)
    @System
    public static boolean hasEnrolledTemplates(int i) throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            Request build = new Request.Builder().setComponentName(COMPONENT_NAME).setActionName("hasEnrolledTemplates").build();
            Bundle bundle = new Bundle();
            bundle.putInt(KEY_USER_ID, i);
            build.putBundle(bundle);
            Response execute = Epona.newCall(build).execute();
            if (execute.isSuccessful()) {
                return execute.getBundle().getBoolean(RESULT);
            }
            Log.e(TAG, "Failed to connect with AppPlatForm");
            return false;
        }
        throw new UnSupportedApiVersionException("not supported before R");
    }

    @Permission(authStr = "remove", type = "epona")
    @Blocked
    @RequiresApi(api = 30)
    @System
    public static void remove(FingerprintNative fingerprintNative, int i) throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            Response execute = Epona.newCall(new Request.Builder().setComponentName(COMPONENT_NAME).setActionName("remove").withParcelable(KEY_FINGER_PRINT, (Parcelable) ReflectFingerprintNativeInfo.getFingerprint.call(fingerprintNative, new Object[0])).withInt(KEY_USER_ID, i).build()).execute();
            if (execute.isSuccessful()) {
                return;
            }
            Log.e(TAG, execute.getMessage());
            return;
        }
        throw new UnSupportedApiVersionException("not supported before R");
    }

    @Permission(authStr = "getEngineeringInfo", type = "epona")
    @Blocked
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    @System
    public static int getEngineeringInfo(int i, int i2) throws UnSupportedApiVersionException {
        try {
            if (VersionUtils.isR()) {
                Response execute = Epona.newCall(new Request.Builder().setComponentName(COMPONENT_NAME).setActionName("getEngineeringInfo").withInt(CameraConstant.TiltShiftParamKeys.TYPE, i).withInt("sensorId", i2).build()).execute();
                if (execute.isSuccessful()) {
                    return execute.getBundle().getInt(RESULT);
                }
                Log.e(TAG, "getEngineeringInfo: " + execute.getMessage());
                return -1;
            } else if (VersionUtils.isQ()) {
                return ReflectInfo.getEngineeringInfo.callWithException((FingerprintManager) Epona.getContext().getSystemService(KEY_FINGER_PRINT), createEngineeringInfoCallbackProxy(), Integer.valueOf(i)).intValue();
            } else {
                throw new UnSupportedApiVersionException("not supported before Q");
            }
        } catch (Throwable th) {
            throw new UnSupportedApiVersionException(th);
        }
    }

    private static Object createEngineeringInfoCallbackProxy() {
        Class<?> cls = null;
        EngineeringInfoCallbackProxy engineeringInfoCallbackProxy = new EngineeringInfoCallbackProxy();
        try {
            cls = Class.forName("android.hardware.fingerprint.FingerprintManager$EngineeringInfoCallback");
        } catch (ClassNotFoundException e) {
            Log.e(TAG, "FingerprintManager$EngineeringInfoCallback class not found: " + e.getMessage());
        }
        return Proxy.newProxyInstance(cls.getClassLoader(), new Class[]{cls}, engineeringInfoCallbackProxy);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class EngineeringInfoCallbackProxy implements InvocationHandler {
        @Override // java.lang.reflect.InvocationHandler
        public Object invoke(Object obj, Method method, Object[] objArr) throws Throwable {
            return null;
        }

        private EngineeringInfoCallbackProxy() {
        }
    }

    @Permission(authStr = "cancelGetEngineeringInfo", type = "epona")
    @Blocked
    @RequiresApi(api = 30)
    public static void cancelGetEngineeringInfo(int i) throws UnSupportedApiVersionException {
        if (VersionUtils.isS()) {
            try {
                new OplusFingerprintManager(Epona.getContext()).cancelGetEngineeringInfo(i);
            } catch (NoSuchMethodError e) {
                Log.e(TAG, e.toString());
                throw new UnSupportedApiVersionException("no permission to access the blocked method", e);
            }
        } else if (VersionUtils.isR()) {
            Response execute = Epona.newCall(new Request.Builder().setComponentName(COMPONENT_NAME).setActionName("cancelGetEngineeringInfo").withInt(CameraConstant.TiltShiftParamKeys.TYPE, i).build()).execute();
            if (execute.isSuccessful()) {
                return;
            }
            Log.e(TAG, "cancelGetEngineeringInfo: " + execute.getMessage());
        } else if (VersionUtils.isQ()) {
            ReflectInfo.cancelGetEngineeringInfo.call((FingerprintManager) Epona.getContext().getSystemService(KEY_FINGER_PRINT), Integer.valueOf(i));
        } else {
            throw new UnSupportedApiVersionException();
        }
    }
}

package system.ext.loader.core;

import android.media.MediaMetrics;
import android.util.Log;
import java.lang.invoke.MethodHandles;
import java.lang.invoke.MethodType;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* loaded from: classes5.dex */
public class ExtDummy {
    private static final Map<Class<?>, Object> PRIMITIVE_DEFAULT_VALUES;
    private static final String TAG = "ExtDummy";

    static {
        ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap();
        PRIMITIVE_DEFAULT_VALUES = concurrentHashMap;
        concurrentHashMap.put(Boolean.TYPE, false);
        concurrentHashMap.put(Integer.TYPE, 0);
        concurrentHashMap.put(Short.TYPE, (short) 0);
        concurrentHashMap.put(Long.TYPE, 0L);
        concurrentHashMap.put(Byte.TYPE, (byte) 0);
        concurrentHashMap.put(Character.TYPE, (char) 0);
        concurrentHashMap.put(Float.TYPE, Float.valueOf(0.0f));
        concurrentHashMap.put(Double.TYPE, Double.valueOf(0.0d));
    }

    static <T> T createDummyExt(Class<T> cls, boolean z) {
        return (T) newProxyInstance(cls, z);
    }

    private static <T> T newProxyInstance(final Class<T> cls, final boolean z) {
        T t = (T) Proxy.newProxyInstance(cls.getClassLoader(), new Class[]{cls}, new InvocationHandler() { // from class: system.ext.loader.core.ExtDummy$$ExternalSyntheticLambda0
            @Override // java.lang.reflect.InvocationHandler
            public final Object invoke(Object obj, Method method, Object[] objArr) {
                return ExtDummy.invoke(cls, obj, method, objArr, z);
            }
        });
        if (z) {
            Log.d(TAG, "newProxyInstance for " + cls + " : " + t.getClass().getName());
        }
        return t;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Object invoke(Class<?> classIntf, Object proxy, Method method, Object[] args, boolean debug) {
        String methodName = method.getName();
        Class<?> returnType = method.getReturnType();
        if (method.isDefault()) {
            try {
                Object returnValue = MethodHandles.lookup().findSpecial(classIntf, methodName, MethodType.methodType(method.getReturnType(), method.getParameterTypes()), classIntf).bindTo(proxy).invokeWithArguments(args != null ? args : new Object[0]);
                log(debug, classIntf, methodName, returnType, returnValue, "invokeDefault");
                return returnValue;
            } catch (Throwable e) {
                Log.e(TAG, "invoke error for " + classIntf + MediaMetrics.SEPARATOR + methodName + "()", e);
            }
        }
        if (returnType.isPrimitive()) {
            Object returnValue2 = PRIMITIVE_DEFAULT_VALUES.get(returnType);
            log(debug, classIntf, methodName, returnType, returnValue2, "returnPrimitive");
            return returnValue2;
        }
        log(debug, classIntf, methodName, returnType, null, "returnDefault");
        return null;
    }

    private static void log(boolean debug, Class<?> classIntf, String methodName, Class<?> returnType, Object returnValue, String message) {
        if (debug) {
            Log.d(TAG, classIntf + MediaMetrics.SEPARATOR + methodName + "()" + returnType + " : " + message + " = " + returnValue);
        }
    }
}

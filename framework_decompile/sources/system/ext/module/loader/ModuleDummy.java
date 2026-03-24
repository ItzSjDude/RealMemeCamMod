package system.ext.module.loader;

import android.media.MediaMetrics;
import java.lang.invoke.MethodHandle;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* loaded from: classes5.dex */
public class ModuleDummy {
    private static final Map<Method, MethodHandle> METHOD_HANDLE_CACHE;
    private static final Map<Class<?>, Object> PRIMITIVE_DEFAULT_VALUES;

    static {
        ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap();
        PRIMITIVE_DEFAULT_VALUES = concurrentHashMap;
        METHOD_HANDLE_CACHE = new ConcurrentHashMap();
        concurrentHashMap.put(Boolean.TYPE, false);
        concurrentHashMap.put(Integer.TYPE, 0);
        concurrentHashMap.put(Short.TYPE, (short) 0);
        concurrentHashMap.put(Long.TYPE, 0L);
        concurrentHashMap.put(Byte.TYPE, (byte) 0);
        concurrentHashMap.put(Character.TYPE, (char) 0);
        concurrentHashMap.put(Float.TYPE, Float.valueOf(0.0f));
        concurrentHashMap.put(Double.TYPE, Double.valueOf(0.0d));
    }

    public static <T> T create(Class<T> cls, boolean z, String str) {
        return (T) newProxyInstance(cls, z, str);
    }

    private static <T> T newProxyInstance(final Class<T> cls, final boolean z, final String str) {
        T t = (T) Proxy.newProxyInstance(cls.getClassLoader(), new Class[]{cls}, new InvocationHandler() { // from class: system.ext.module.loader.ModuleDummy$$ExternalSyntheticLambda0
            @Override // java.lang.reflect.InvocationHandler
            public final Object invoke(Object obj, Method method, Object[] objArr) {
                return ModuleDummy.invoke(cls, obj, method, objArr, z, str);
            }
        });
        if (z) {
            ModuleLogger.d(str, "newProxyInstance for " + cls + " : " + t.getClass().getName());
        }
        return t;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00bf  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00d4  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.Object invoke(java.lang.Class<?> r17, java.lang.Object r18, java.lang.reflect.Method r19, java.lang.Object[] r20, boolean r21, java.lang.String r22) {
        /*
            Method dump skipped, instructions count: 227
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: system.ext.module.loader.ModuleDummy.invoke(java.lang.Class, java.lang.Object, java.lang.reflect.Method, java.lang.Object[], boolean, java.lang.String):java.lang.Object");
    }

    private static void log(boolean debug, String tag, Class<?> classIntf, String methodName, Class<?> returnType, Object returnValue, String message) {
        if (debug) {
            ModuleLogger.d(tag, classIntf + MediaMetrics.SEPARATOR + methodName + "()" + returnType + " : " + message + " = " + returnValue);
        }
    }
}

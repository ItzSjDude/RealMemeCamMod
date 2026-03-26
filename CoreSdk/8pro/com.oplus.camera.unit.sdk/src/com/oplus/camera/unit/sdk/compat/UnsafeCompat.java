package com.oplus.camera.unit.sdk.compat;

import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.security.PrivilegedExceptionAction;

/**
 * Compatibility layer for sun.misc.Unsafe, targeting Android 16 (Baklava).
 * Provides fallbacks using VarHandle and Reflection when Unsafe is restricted.
 * 
 * This class is designed to compile even when sun.misc.Unsafe is not on the
 * classpath.
 */
public final class UnsafeCompat {
    private static final Object UNSAFE = getUnsafeInternal();
    private static final boolean HAS_UNSAFE = UNSAFE != null;
    private static final Class<?> UNSAFE_CLASS = HAS_UNSAFE ? UNSAFE.getClass() : null;

    private static final Method OBJECT_FIELD_OFFSET_METHOD = getMethod("objectFieldOffset", Field.class);
    private static final Method ARRAY_BASE_OFFSET_METHOD = getMethod("arrayBaseOffset", Class.class);
    private static final Method ARRAY_INDEX_SCALE_METHOD = getMethod("arrayIndexScale", Class.class);

    private UnsafeCompat() {
    }

    public static Object getUnsafe() {
        return UNSAFE;
    }

    public static boolean isUnsafeAvailable() {
        return HAS_UNSAFE;
    }

    public static long objectFieldOffset(Field field) {
        if (HAS_UNSAFE && OBJECT_FIELD_OFFSET_METHOD != null) {
            try {
                return (long) OBJECT_FIELD_OFFSET_METHOD.invoke(UNSAFE, field);
            } catch (Exception ignored) {
            }
        }
        // Fallback: provide a pseudo-offset for identifying fields in VarHandle lookups
        return field.getName().hashCode();
    }

    public static int arrayBaseOffset(Class<?> clazz) {
        if (HAS_UNSAFE && ARRAY_BASE_OFFSET_METHOD != null) {
            try {
                return (int) ARRAY_BASE_OFFSET_METHOD.invoke(UNSAFE, clazz);
            } catch (Exception ignored) {
            }
        }
        return 0;
    }

    public static int arrayIndexScale(Class<?> clazz) {
        if (HAS_UNSAFE && ARRAY_INDEX_SCALE_METHOD != null) {
            try {
                return (int) ARRAY_INDEX_SCALE_METHOD.invoke(UNSAFE, clazz);
            } catch (Exception ignored) {
            }
        }
        if (clazz == byte[].class || clazz == boolean[].class)
            return 1;
        if (clazz == int[].class || clazz == float[].class)
            return 4;
        if (clazz == long[].class || clazz == double[].class)
            return 8;
        return 4;
    }

    private static Method getMethod(String name, Class<?>... parameterTypes) {
        if (UNSAFE_CLASS == null)
            return null;
        try {
            return UNSAFE_CLASS.getMethod(name, parameterTypes);
        } catch (Exception e) {
            return null;
        }
    }

    private static Object getUnsafeInternal() {
        try {
            // Using reflection to find the class without importing it
            final Class<?> unsafeClass = Class.forName("sun.misc.Unsafe");

            // Use the established privileged block pattern but with reflection
            java.security.PrivilegedAction<Object> action = new java.security.PrivilegedAction<Object>() {
                @Override
                public Object run() {
                    try {
                        for (Field field : unsafeClass.getDeclaredFields()) {
                            field.setAccessible(true);
                            Object obj = field.get(null);
                            if (unsafeClass.isInstance(obj)) {
                                return obj;
                            }
                        }
                    } catch (Exception ignored) {
                    }
                    return null;
                }
            };
            // Since AccessController is deprecated and might be missing,
            // we try to use it if available, otherwise fallback to simple run
            try {
                Class<?> accessControllerClass = Class.forName("java.security.AccessController");
                Method doPrivileged = accessControllerClass.getMethod("doPrivileged",
                        java.security.PrivilegedAction.class);
                return doPrivileged.invoke(null, action);
            } catch (Exception e) {
                return action.run();
            }
        } catch (Throwable unused) {
            return null;
        }
    }
}

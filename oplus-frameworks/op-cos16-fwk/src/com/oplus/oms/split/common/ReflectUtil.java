package com.oplus.oms.split.common;

import dalvik.system.PathClassLoader;

public class ReflectUtil {
    private static ClassLoader sAppClassLoader;

    private ReflectUtil() {
    }

    public static void setAppClassLoader(ClassLoader classLoader) {
        if (!(classLoader instanceof PathClassLoader)) {
            return;
        }
        sAppClassLoader = classLoader;
    }

    public static ClassLoader getAppClassLoader() {
        return sAppClassLoader;
    }

    public static Class<?> getClass(String className) throws ClassNotFoundException {
        if (sAppClassLoader != null) {
            return Class.forName(className, true, sAppClassLoader);
        }
        return Class.forName(className);
    }
}

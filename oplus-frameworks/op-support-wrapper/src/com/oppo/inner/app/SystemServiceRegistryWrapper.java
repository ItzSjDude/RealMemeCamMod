package com.oppo.inner.app;

import com.oplus.internal.reflect.RefClass;
import com.oplus.internal.reflect.RefInt;
import com.oplus.internal.reflect.RefObject;
import com.oplus.internal.reflect.RefStaticObject;
import java.util.Map;
import com.oplus.inner.app.SystemServiceRegistryWrapper;

public class SystemServiceRegistryWrapper {
    public static Object getFetcher(String serviceName) {
        return SystemServiceRegistryWrapper.getFetcher(serviceName);
    }

    public static void setCacheInstance(Object target, Object cache) {
        SystemServiceRegistryWrapper.setCacheInstance(target, cache);
    }

    public static void setCachedInstance(Object target, Object cache) {
        SystemServiceRegistryWrapper.setCachedInstance(target, cache);
    }

    public static int getCacheIndex(Object target) {
        return SystemServiceRegistryWrapper.getCacheIndex(target);
    }

}
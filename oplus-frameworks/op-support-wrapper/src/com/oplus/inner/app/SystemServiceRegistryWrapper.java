package com.oplus.inner.app;

import com.oplus.internal.reflect.RefClass;
import com.oplus.internal.reflect.RefInt;
import com.oplus.internal.reflect.RefObject;
// import com.oplus.internal.reflect.RefStaticObject;
import java.util.Map;

/* loaded from: classes.dex */
public class SystemServiceRegistryWrapper {
    public static RefStaticObject<Map<String, ?>> SYSTEM_SERVICE_FETCHERS;
    private static Class<?> TYPE = RefClass.load(SystemServiceRegistryWrapper.class, "android.app.SystemServiceRegistry");

    private SystemServiceRegistryWrapper() {
    }

    public static Object getFetcher(String serviceName) {
        return ((Map) SYSTEM_SERVICE_FETCHERS.get()).get(serviceName);
    }

    public static class StaticApplicationContextServiceFetcherWrapper {
        private static final String CLASS_NAME = "android.app.SystemServiceRegistry$StaticApplicationContextServiceFetcher";
        private static Class<?> TYPE = RefClass.load(StaticApplicationContextServiceFetcherWrapper.class, CLASS_NAME);
        public static RefObject mCachedInstance;

        public static void setCacheInstance(Object target, Object cache) {
            mCachedInstance.set(target, cache);
        }
    }

    public static class StaticServiceFetcherWrapper {
        private static final String CLASS_NAME = "android.app.SystemServiceRegistry$StaticServiceFetcher";
        private static Class<?> TYPE = RefClass.load(StaticServiceFetcherWrapper.class, CLASS_NAME);
        public static RefObject mCachedInstance;

        public static void setCachedInstance(Object target, Object cache) {
            mCachedInstance.set(target, cache);
        }
    }

    public static class CachedServiceFetcherWrapper {
        private static final String CLASS_NAME = "android.app.SystemServiceRegistry$CachedServiceFetcher";
        private static Class<?> TYPE = RefClass.load(CachedServiceFetcherWrapper.class, CLASS_NAME);
        public static RefInt mCacheIndex;

        public static int getCacheIndex(Object target) {
            return mCacheIndex.get(target);
        }
    }
}

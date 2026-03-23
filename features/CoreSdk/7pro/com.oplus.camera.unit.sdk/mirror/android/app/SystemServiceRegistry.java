package mirror.android.app;

import com.oplus.utils.reflect.RefClass;
import com.oplus.utils.reflect.RefInt;
import com.oplus.utils.reflect.RefObject;
import java.util.Map;
/* loaded from: classes.dex */
public class SystemServiceRegistry {

    /* loaded from: classes.dex */
    private static class RefInfo {
        public static RefObject<Map<String, ?>> SYSTEM_SERVICE_FETCHERS;
        private static Class<?> TYPE = RefClass.load(RefInfo.class, "android.app.SystemServiceRegistry");

        private RefInfo() {
        }
    }

    private SystemServiceRegistry() {
    }

    public static Object getFetcher(String str) {
        return RefInfo.SYSTEM_SERVICE_FETCHERS.get(null).get(str);
    }

    /* loaded from: classes.dex */
    public static class StaticServiceFetcher {

        /* loaded from: classes.dex */
        private static class RefInfo {
            private static final String CLASS_NAME = "android.app.SystemServiceRegistry$StaticServiceFetcher";
            private static Class<?> TYPE = RefClass.load(RefInfo.class, CLASS_NAME);
            public static RefObject mCachedInstance;

            private RefInfo() {
            }
        }

        public static void setCachedInstance(Object obj, Object obj2) {
            RefInfo.mCachedInstance.set(obj, obj2);
        }
    }

    /* loaded from: classes.dex */
    public static class CachedServiceFetcher {

        /* loaded from: classes.dex */
        private static class RefInfo {
            private static final String CLASS_NAME = "android.app.SystemServiceRegistry$CachedServiceFetcher";
            private static Class<?> TYPE = RefClass.load(RefInfo.class, CLASS_NAME);
            public static RefInt mCacheIndex;

            private RefInfo() {
            }
        }

        public static int getCacheIndex(Object obj) {
            return RefInfo.mCacheIndex.get(obj);
        }
    }
}

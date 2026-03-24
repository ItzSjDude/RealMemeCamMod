package android.common;

import android.common.OplusFeatureList;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

/* loaded from: classes.dex */
public class OplusFeatureCache {
    private static final String TAG = "OplusFeatureCache";
    private static Object[] mFeatureCache = new Object[OplusFeatureList.OplusIndex.End.ordinal()];
    private static List<IOplusCommonFactory> sFactoryCache;

    static {
        CopyOnWriteArrayList copyOnWriteArrayList = new CopyOnWriteArrayList();
        sFactoryCache = copyOnWriteArrayList;
        copyOnWriteArrayList.add(OplusFrameworkFactory.getInstance());
    }

    public static <T extends IOplusCommonFeature> T get(T t) {
        int index = getIndex(t);
        IOplusCommonFeature iOplusCommonFeature = (IOplusCommonFeature) mFeatureCache[t.index().ordinal()];
        if (iOplusCommonFeature == null) {
            synchronized (t.getDefault()) {
                iOplusCommonFeature = (IOplusCommonFeature) mFeatureCache[index];
            }
        }
        return iOplusCommonFeature != null ? (T) iOplusCommonFeature : t;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v3, types: [android.common.IOplusCommonFeature] */
    public static <T extends IOplusCommonFeature> T getOrCreate(T t, Object... objArr) {
        int index = getIndex(t);
        T t2 = (T) mFeatureCache[t.index().ordinal()];
        if (t2 == null) {
            synchronized (t.getDefault()) {
                t2 = (IOplusCommonFeature) mFeatureCache[index];
                if (t2 == null) {
                    for (IOplusCommonFactory iOplusCommonFactory : sFactoryCache) {
                        if (iOplusCommonFactory.isValid(index) && (t2 = (T) iOplusCommonFactory.getFeature(t, objArr)) != null) {
                            set(t2);
                            return t2;
                        }
                    }
                }
            }
        }
        return t2 != null ? t2 : t;
    }

    public static <T extends IOplusCommonFeature> void set(T impl) {
        int index = getIndex(impl);
        synchronized (impl.getDefault()) {
            mFeatureCache[index] = impl;
        }
    }

    public static <T extends IOplusCommonFactory> void addFactory(T factory) {
        if (factory != null) {
            sFactoryCache.add(factory);
        }
    }

    private static <T extends IOplusCommonFeature> int getIndex(T service) {
        if (service == null) {
            throw new IllegalArgumentException("dummy must not be null");
        }
        int index = service.index().ordinal();
        if (index >= mFeatureCache.length) {
            throw new IllegalAccessError("index = " + index + " size = " + mFeatureCache.length);
        }
        return index;
    }
}

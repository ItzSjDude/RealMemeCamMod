package com.oplus.util;

import java.util.WeakHashMap;
import android.content.res.OplusBaseConfiguration;

/**
 * Advanced OplusTypeCastingHelper for AOSP ports.
 * This version uses a WeakHashMap to handle "fake" casting for Configuration
 * objects that do not correctly inherit from OplusBaseConfiguration in AOSP
 * frameworks.
 */
public final class OplusTypeCastingHelper {
    private static final WeakHashMap<Object, Object> mConfigMap = new WeakHashMap<>();

    public static <T> T typeCasting(Class<T> type, Object object) {
        if (object == null)
            return null;

        // 1. Standard instance check (will work if framework is patched)
        if (type.isInstance(object)) {
            return type.cast(object);
        }

        // 2. Dynamic resolution for OplusBaseConfiguration on stock AOSP objects
        if (type.getName().equals("android.content.res.OplusBaseConfiguration")) {
            synchronized (mConfigMap) {
                Object cached = mConfigMap.get(object);
                if (cached == null) {
                    cached = new OplusBaseConfiguration();
                    mConfigMap.put(object, cached);
                }
                return (T) cached;
            }
        }

        return null;
    }
}

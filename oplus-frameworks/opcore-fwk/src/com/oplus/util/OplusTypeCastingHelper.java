package com.oplus.util;

import android.content.res.Configuration;
import android.content.res.OplusBaseConfiguration;
import java.util.WeakHashMap;

public final class OplusTypeCastingHelper {
    private static final WeakHashMap<Object, Object> sCache = new WeakHashMap<>();

    public static <T> T typeCasting(Class<T> type, Object object) {
        if (object == null)
            return null;

        if (type.isInstance(object)) {
            return (T) object;
        }

        if (type == OplusBaseConfiguration.class && object instanceof Configuration) {
            synchronized (sCache) {
                Object cached = sCache.get(object);
                if (cached == null) {
                    cached = new OplusBaseConfiguration();
                    sCache.put(object, cached);
                }
                return (T) cached;
            }
        }

        return null;
    }
}

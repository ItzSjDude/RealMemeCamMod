package com.oplus.compat.util;
/* loaded from: classes.dex */
public class OplusTypeCastingHelperNative {
    /* JADX WARN: Multi-variable type inference failed */
    public static <T> T typeCasting(Class<T> cls, Object obj) {
        if (obj == 0 || !cls.isInstance(obj)) {
            return null;
        }
        return obj;
    }
}

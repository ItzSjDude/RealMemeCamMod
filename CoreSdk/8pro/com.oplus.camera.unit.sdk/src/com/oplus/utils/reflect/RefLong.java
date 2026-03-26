package com.oplus.utils.reflect;

import android.util.Log;
import java.lang.reflect.Field;

/* JADX INFO: loaded from: classes.dex */
public class RefLong extends BaseField<Long> {
    private static final long DEFAULT_VALUE = ((Long) DEFAULT_TYPES.get(Long.class)).longValue();
    private static final String TAG = "RefLong";

    public RefLong(Class<?> targetClass, Field field) {
        super(targetClass, field, TAG);
    }

    public long get(Object object) {
        return getWithDefault(object, DEFAULT_VALUE);
    }

    public long getWithDefault(Object object, long defaultValue) {
        try {
            return getWithException(object);
        } catch (Exception e) {
            Log.e(TAG, e.getMessage());
            return defaultValue;
        }
    }

    public long getWithException(Object object) throws Exception {
        return this.mField.getLong(checkStub(object));
    }

    public void set(Object object, long value) {
        try {
            this.mField.setLong(checkStub(object), value);
        } catch (Exception e) {
            Log.e(TAG, e.getMessage());
        }
    }
}

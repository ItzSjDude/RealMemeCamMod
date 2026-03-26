package com.oplus.utils.reflect;

import android.util.Log;
import java.lang.reflect.Field;

/* JADX INFO: loaded from: classes.dex */
public class RefShort extends BaseField<Short> {
    private static final short DEFAULT_VALUE = ((Short) DEFAULT_TYPES.get(Short.class)).shortValue();
    private static final String TAG = "RefShort";

    public RefShort(Class<?> targetClass, Field field) {
        super(targetClass, field, TAG);
    }

    public short get(Object object) {
        return getWithDefault(object, DEFAULT_VALUE);
    }

    public short getWithDefault(Object object, short defaultValue) {
        try {
            return getWithException(object);
        } catch (Exception e) {
            Log.e(TAG, e.getMessage());
            return defaultValue;
        }
    }

    public short getWithException(Object object) throws Exception {
        return this.mField.getShort(checkStub(object));
    }

    public void set(Object object, short value) {
        try {
            this.mField.setShort(checkStub(object), value);
        } catch (Exception e) {
            Log.e(TAG, e.getMessage());
        }
    }
}

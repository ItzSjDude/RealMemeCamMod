package com.oplus.utils.reflect;

import android.util.Log;
import java.lang.reflect.Field;

/* JADX INFO: loaded from: classes.dex */
public class RefByte extends BaseField<Byte> {
    private static final byte DEFAULT_VALUE = ((Byte) DEFAULT_TYPES.get(Byte.class)).byteValue();
    private static final String TAG = "RefByte";

    public RefByte(Class<?> targetClass, Field field) {
        super(targetClass, field, TAG);
    }

    public byte get(Object object) {
        return getWithDefault(object, DEFAULT_VALUE);
    }

    public byte getWithDefault(Object object, byte defaultValue) {
        try {
            return getWithException(object);
        } catch (Exception e) {
            Log.e(TAG, e.getMessage());
            return defaultValue;
        }
    }

    public byte getWithException(Object object) throws Exception {
        return this.mField.getByte(checkStub(object));
    }

    public void set(Object object, byte value) {
        try {
            this.mField.setByte(checkStub(object), value);
        } catch (Exception e) {
            Log.e(TAG, e.getMessage());
        }
    }
}

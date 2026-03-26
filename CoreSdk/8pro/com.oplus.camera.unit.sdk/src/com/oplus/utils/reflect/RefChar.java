package com.oplus.utils.reflect;

import android.util.Log;
import java.lang.reflect.Field;

/* JADX INFO: loaded from: classes.dex */
public class RefChar extends BaseField<Character> {
    private static final char DEFAULT_VALUE = ((Character) DEFAULT_TYPES.get(Character.class)).charValue();
    private static final String TAG = "RefChar";

    public RefChar(Class<?> targetClass, Field field) {
        super(targetClass, field, TAG);
    }

    public char get(Object object) {
        return getWithDefault(object, DEFAULT_VALUE);
    }

    public char getWithDefault(Object object, char defaultValue) {
        try {
            return getWithException(object);
        } catch (Exception e) {
            Log.e(TAG, e.getMessage());
            return defaultValue;
        }
    }

    public char getWithException(Object object) throws Exception {
        return this.mField.getChar(checkStub(object));
    }

    public void set(Object object, char value) {
        try {
            this.mField.setChar(checkStub(object), value);
        } catch (Exception e) {
            Log.e(TAG, e.getMessage());
        }
    }
}

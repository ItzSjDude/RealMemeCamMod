package com.oplus.utils.reflect;

import android.util.Log;
import java.lang.reflect.Field;

/* JADX INFO: loaded from: classes.dex */
public class RefInt extends BaseField<Integer> {
    private static final int DEFAULT_VALUE = ((Integer) DEFAULT_TYPES.get(Integer.class)).intValue();
    private static final String TAG = "RefInt";

    public RefInt(Class<?> targetClass, Field field) {
        super(targetClass, field, TAG);
    }

    public int get(Object object) {
        return getWithDefault(object, DEFAULT_VALUE);
    }

    public int getWithDefault(Object object, int defaultValue) {
        try {
            return getWithException(object);
        } catch (Exception e) {
            Log.e(TAG, e.getMessage());
            return defaultValue;
        }
    }

    public int getWithException(Object object) throws Exception {
        return this.mField.getInt(checkStub(object));
    }

    public void set(Object object, int value) {
        try {
            this.mField.setInt(checkStub(object), value);
        } catch (Exception e) {
            Log.e(TAG, e.getMessage());
        }
    }
}

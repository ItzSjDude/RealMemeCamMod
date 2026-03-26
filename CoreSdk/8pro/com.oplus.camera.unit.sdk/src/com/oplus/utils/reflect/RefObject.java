package com.oplus.utils.reflect;

import android.util.Log;
import java.lang.reflect.Field;

/* JADX INFO: loaded from: classes.dex */
public class RefObject<T> extends BaseField<T> {
    private static final String TAG = "RefObject";

    public RefObject(Class<?> targetClass, Field field) {
        super(targetClass, field, TAG);
    }

    public T get(Object object) {
        return getWithDefault(object, null);
    }

    public T getWithDefault(Object object, T defaultValue) {
        try {
            return getWithException(object);
        } catch (Exception e) {
            Log.e(TAG, e.getMessage());
            return defaultValue != null ? defaultValue : this.getDefaultValue();
        }
    }

    public T getWithException(Object object) throws Exception {
        return (T) this.mField.get(checkStub(object));
    }

    public void set(Object object, T value) {
        try {
            this.mField.set(checkStub(object), value);
        } catch (Exception e) {
            Log.e(TAG, e.getMessage());
        }
    }
}

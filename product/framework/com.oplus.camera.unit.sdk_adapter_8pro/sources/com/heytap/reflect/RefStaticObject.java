package com.heytap.reflect;

import android.util.Log;
import java.lang.reflect.Field;
/* loaded from: classes.dex */
public class RefStaticObject<T> {
    private static final String TAG = "RefStaticObject";
    private Field mField;

    public RefStaticObject(Class<?> cls, Field field) throws NoSuchFieldException {
        Field declaredField = cls.getDeclaredField(field.getName());
        this.mField = declaredField;
        declaredField.setAccessible(true);
    }

    public Class<?> type() {
        return this.mField.getType();
    }

    public T get() {
        try {
            return (T) this.mField.get(null);
        } catch (Exception e) {
            Log.e(TAG, e.toString());
            return null;
        }
    }

    public T getWithException() throws IllegalAccessException, IllegalArgumentException {
        return (T) this.mField.get(null);
    }

    public void set(T t) {
        try {
            this.mField.set(null, t);
        } catch (Exception e) {
            Log.e(TAG, e.toString());
        }
    }
}

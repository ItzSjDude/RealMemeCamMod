package com.heytap.reflect;

import android.util.Log;
import java.lang.reflect.Field;

/* JADX INFO: loaded from: classes.dex */
public class RefStaticInt {
    private static final String TAG = "RefStaticInt";
    private Field mField;

    public RefStaticInt(Class<?> cls, Field field) throws NoSuchFieldException {
        Field declaredField = cls.getDeclaredField(field.getName());
        this.mField = declaredField;
        declaredField.setAccessible(true);
    }

    public int get() {
        try {
            return this.mField.getInt(null);
        } catch (Exception e) {
            Log.e(TAG, e.toString());
            return 0;
        }
    }

    public int getWithException() throws IllegalAccessException, IllegalArgumentException {
        return this.mField.getInt(null);
    }

    public void set(int i) {
        try {
            this.mField.setInt(null, i);
        } catch (Exception e) {
            Log.e(TAG, e.toString());
        }
    }
}

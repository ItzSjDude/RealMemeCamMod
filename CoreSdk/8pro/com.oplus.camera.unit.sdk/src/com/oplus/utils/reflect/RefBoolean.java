package com.oplus.utils.reflect;

import android.util.Log;
import java.lang.reflect.Field;

/* JADX INFO: loaded from: classes.dex */
public class RefBoolean extends BaseField<Boolean> {
    private static final boolean DEFAULT_VALUE = ((Boolean) DEFAULT_TYPES.get(Boolean.class)).booleanValue();
    private static final String TAG = "RefBoolean";

    public RefBoolean(Class<?> targetClass, Field field) {
        super(targetClass, field, TAG);
    }

    public boolean get(Object object) {
        return getWithDefault(object, DEFAULT_VALUE);
    }

    public boolean getWithDefault(Object object, boolean defaultValue) {
        try {
            return getWithException(object);
        } catch (Exception e) {
            Log.e(TAG, e.getMessage());
            return defaultValue;
        }
    }

    public boolean getWithException(Object object) throws Exception {
        return this.mField.getBoolean(checkStub(object));
    }

    public void set(Object object, boolean value) {
        try {
            this.mField.setBoolean(checkStub(object), value);
        } catch (Exception e) {
            Log.e(TAG, e.getMessage());
        }
    }
}

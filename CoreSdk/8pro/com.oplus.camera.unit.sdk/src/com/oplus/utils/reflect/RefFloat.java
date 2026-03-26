package com.oplus.utils.reflect;

import android.util.Log;
import java.lang.reflect.Field;

/* JADX INFO: loaded from: classes.dex */
public class RefFloat extends BaseField<Float> {
    private static final float DEFAULT_VALUE = ((Float) DEFAULT_TYPES.get(Float.class)).floatValue();
    private static final String TAG = "RefFloat";

    public RefFloat(Class<?> targetClass, Field field) {
        super(targetClass, field, TAG);
    }

    public float get(Object object) {
        return getWithDefault(object, DEFAULT_VALUE);
    }

    public float getWithDefault(Object object, float defaultValue) {
        try {
            return getWithException(object);
        } catch (Exception e) {
            Log.e(TAG, e.getMessage());
            return defaultValue;
        }
    }

    public float getWithException(Object object) throws Exception {
        return this.mField.getFloat(checkStub(object));
    }

    public void set(Object object, float value) {
        try {
            this.mField.setFloat(checkStub(object), value);
        } catch (Exception e) {
            Log.e(TAG, e.getMessage());
        }
    }
}

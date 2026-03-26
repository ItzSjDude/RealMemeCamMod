package com.oplus.utils.reflect;

import android.util.Log;
import java.lang.reflect.Field;

/* JADX INFO: loaded from: classes.dex */
public class RefDouble extends BaseField<Double> {
    private static final double DEFAULT_VALUE = ((Double) DEFAULT_TYPES.get(Double.class)).doubleValue();
    private static final String TAG = "RefDouble";

    public RefDouble(Class<?> targetClass, Field field) {
        super(targetClass, field, TAG);
    }

    public double get(Object object) {
        return getWithDefault(object, DEFAULT_VALUE);
    }

    public double getWithDefault(Object object, double defaultValue) {
        try {
            return getWithException(object);
        } catch (Exception e) {
            Log.e(TAG, e.getMessage());
            return defaultValue;
        }
    }

    public double getWithException(Object object) throws Exception {
        return this.mField.getDouble(checkStub(object));
    }

    public void set(Object object, double value) {
        try {
            this.mField.setDouble(checkStub(object), value);
        } catch (Exception e) {
            Log.e(TAG, e.getMessage());
        }
    }
}

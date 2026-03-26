package com.oplus.utils.reflect;

import android.util.Log;
import java.lang.reflect.Field;

/* JADX INFO: loaded from: classes.dex */
abstract class BaseField<T> extends BaseRef<T> {
    final Field mField;

    BaseField(Class<?> targetClass, Field field, String tag) {
        super(field);
        this.mField = getField(targetClass, field, tag);
    }

    @Override // com.oplus.utils.reflect.IBaseRef
    public boolean isEmpty() {
        return this.mField == null;
    }

    @Override // com.oplus.utils.reflect.IBaseRef
    public Class<?> getDeclaringClass() {
        if (isEmpty()) {
            return null;
        }
        return this.mField.getDeclaringClass();
    }

    private Field getField(Class<?> targetClass, Field field, String tag) {
        Field declaredField = null;
        try {
            declaredField = targetClass.getDeclaredField(field.getName());
            declaredField.setAccessible(true);
            return declaredField;
        } catch (Exception e) {
            Log.e(tag, e.getMessage());
            return declaredField;
        }
    }
}

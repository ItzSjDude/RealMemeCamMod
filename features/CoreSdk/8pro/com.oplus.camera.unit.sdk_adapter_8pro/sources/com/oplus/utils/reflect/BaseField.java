package com.oplus.utils.reflect;

import android.util.Log;
import java.lang.reflect.Field;
/* loaded from: classes.dex */
abstract class BaseField<T> extends BaseRef<T> {
    final Field mField;

    /* JADX INFO: Access modifiers changed from: package-private */
    public BaseField(Class<?> cls, Field field, String str) {
        super(field);
        this.mField = getField(cls, field, str);
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

    private Field getField(Class<?> cls, Field field, String str) {
        Field field2 = null;
        try {
            field2 = cls.getDeclaredField(field.getName());
            field2.setAccessible(true);
            return field2;
        } catch (Exception e) {
            Log.e(str, e.getMessage());
            return field2;
        }
    }
}

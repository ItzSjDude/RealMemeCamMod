package com.oplus.utils.reflect;

import android.util.Log;
import java.lang.reflect.Field;
/* loaded from: classes.dex */
public class RefBoolean extends BaseField<Boolean> {
    private static final boolean DEFAULT_VALUE = ((Boolean) DEFAULT_TYPES.get(Boolean.class)).booleanValue();
    private static final String TAG = "RefBoolean";

    @Override // com.oplus.utils.reflect.BaseRef, com.oplus.utils.reflect.IBaseRef
    public /* bridge */ /* synthetic */ void bindStub(Object obj) {
        super.bindStub(obj);
    }

    @Override // com.oplus.utils.reflect.BaseField, com.oplus.utils.reflect.IBaseRef
    public /* bridge */ /* synthetic */ Class getDeclaringClass() {
        return super.getDeclaringClass();
    }

    @Override // com.oplus.utils.reflect.BaseRef, com.oplus.utils.reflect.IBaseRef
    public /* bridge */ /* synthetic */ String getName() {
        return super.getName();
    }

    @Override // com.oplus.utils.reflect.BaseField, com.oplus.utils.reflect.IBaseRef
    public /* bridge */ /* synthetic */ boolean isEmpty() {
        return super.isEmpty();
    }

    public RefBoolean(Class<?> cls, Field field) {
        super(cls, field, TAG);
    }

    public boolean get(Object obj) {
        return getWithDefault(obj, DEFAULT_VALUE);
    }

    public boolean getWithDefault(Object obj, boolean z) {
        try {
            return getWithException(obj);
        } catch (Exception e) {
            Log.e(TAG, e.getMessage());
            return z;
        }
    }

    public boolean getWithException(Object obj) throws Exception {
        return this.mField.getBoolean(checkStub(obj));
    }

    public void set(Object obj, boolean z) {
        try {
            this.mField.setBoolean(checkStub(obj), z);
        } catch (Exception e) {
            Log.e(TAG, e.getMessage());
        }
    }
}

package com.oplus.utils.reflect;

import android.util.Log;
import java.lang.reflect.Field;

/* JADX INFO: loaded from: classes.dex */
public class RefFloat extends BaseField<Float> {
    private static final float DEFAULT_VALUE = ((Float) DEFAULT_TYPES.get(Float.class)).floatValue();
    private static final String TAG = "RefFloat";

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

    public RefFloat(Class<?> cls, Field field) {
        super(cls, field, TAG);
    }

    public float get(Object obj) {
        return getWithDefault(obj, DEFAULT_VALUE);
    }

    public float getWithDefault(Object obj, float f) {
        try {
            return getWithException(obj);
        } catch (Exception e) {
            Log.e(TAG, e.getMessage());
            return f;
        }
    }

    public float getWithException(Object obj) throws Exception {
        return this.mField.getFloat(checkStub(obj));
    }

    public void set(Object obj, float f) {
        try {
            this.mField.setFloat(checkStub(obj), f);
        } catch (Exception e) {
            Log.e(TAG, e.getMessage());
        }
    }
}

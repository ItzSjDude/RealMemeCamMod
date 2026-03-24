package com.oplus.utils.reflect;

import android.util.Log;
import java.lang.reflect.Field;

/* JADX INFO: loaded from: classes.dex */
public class RefLong extends BaseField<Long> {
    private static final long DEFAULT_VALUE = ((Long) DEFAULT_TYPES.get(Long.class)).longValue();
    private static final String TAG = "RefLong";

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

    public RefLong(Class<?> cls, Field field) {
        super(cls, field, TAG);
    }

    public long get(Object obj) {
        return getWithDefault(obj, DEFAULT_VALUE);
    }

    public long getWithDefault(Object obj, long j) {
        try {
            return getWithException(obj);
        } catch (Exception e) {
            Log.e(TAG, e.getMessage());
            return j;
        }
    }

    public long getWithException(Object obj) throws Exception {
        return this.mField.getLong(checkStub(obj));
    }

    public void set(Object obj, long j) {
        try {
            this.mField.setLong(checkStub(obj), j);
        } catch (Exception e) {
            Log.e(TAG, e.getMessage());
        }
    }
}

package com.oplus.utils.reflect;

import java.lang.reflect.Field;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
abstract class BaseRef<T> implements IBaseRef {
    static final HashMap<Class<?>, Object> DEFAULT_TYPES;
    private final String mName;
    private final Type mType;
    private Object mStub = null;
    private final T mDefaultValue = initDefaultValue();

    static {
        HashMap<Class<?>, Object> map = new HashMap<>();
        DEFAULT_TYPES = map;
        map.put(Integer.class, 0);
        map.put(Short.class, (short) 0);
        map.put(Long.class, 0L);
        map.put(Float.class, Float.valueOf(0.0f));
        map.put(Double.class, Double.valueOf(0.0d));
        map.put(Boolean.class, false);
        map.put(Byte.class, (byte) 0);
        map.put(Character.class, (char) 0);
    }

    BaseRef(Field field) {
        this.mName = field.getName();
        this.mType = getGenericType(field);
    }

    @Override // com.oplus.utils.reflect.IBaseRef
    public String getName() {
        return this.mName;
    }

    @Override // com.oplus.utils.reflect.IBaseRef
    public void bindStub(Object obj) {
        this.mStub = obj;
    }

    Object checkStub(Object obj) {
        Class<?> cls;
        if (obj == null) {
            return obj;
        }
        Class<?> declaringClass = getDeclaringClass();
        return (declaringClass == null || !(declaringClass == (cls = obj.getClass()) || declaringClass.isAssignableFrom(cls))) ? this.mStub : obj;
    }

    T initDefaultValue() {
        for (Map.Entry<Class<?>, Object> entry : DEFAULT_TYPES.entrySet()) {
            if (this.mType.equals(entry.getKey())) {
                return (T) entry.getValue();
            }
        }
        return null;
    }

    T getDefaultValue() {
        return this.mDefaultValue;
    }

    private Type getGenericType(Field field) {
        Type genericType = field.getGenericType();
        if (!(genericType instanceof ParameterizedType)) {
            return genericType;
        }
        Type[] actualTypeArguments = ((ParameterizedType) genericType).getActualTypeArguments();
        return actualTypeArguments.length > 0 ? actualTypeArguments[0] : genericType;
    }
}

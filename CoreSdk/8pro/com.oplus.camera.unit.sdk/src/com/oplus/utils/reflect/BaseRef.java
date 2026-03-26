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
        HashMap<Class<?>, Object> defaultTypes = new HashMap<>();
        DEFAULT_TYPES = defaultTypes;
        defaultTypes.put(Integer.class, 0);
        defaultTypes.put(Short.class, (short) 0);
        defaultTypes.put(Long.class, 0L);
        defaultTypes.put(Float.class, Float.valueOf(0.0f));
        defaultTypes.put(Double.class, Double.valueOf(0.0d));
        defaultTypes.put(Boolean.class, false);
        defaultTypes.put(Byte.class, (byte) 0);
        defaultTypes.put(Character.class, (char) 0);
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
    public void bindStub(Object stub) {
        this.mStub = stub;
    }

    Object checkStub(Object object) {
        Class<?> componentClass;
        if (object == null) {
            return object;
        }
        Class<?> declaringClass = getDeclaringClass();
        return (declaringClass == null || !(declaringClass == (componentClass = object.getClass())
                || declaringClass.isAssignableFrom(componentClass))) ? this.mStub : object;
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

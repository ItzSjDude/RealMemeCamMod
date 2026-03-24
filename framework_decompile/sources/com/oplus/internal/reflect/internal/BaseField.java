package com.oplus.internal.reflect.internal;

import com.oplus.utils.Alog;
import java.lang.reflect.Field;

/* loaded from: classes3.dex */
public abstract class BaseField {
    private final Field mField;

    public BaseField(Class<?> targetCls, Field field) throws NoSuchFieldException {
        Field field2 = getField(targetCls, field);
        this.mField = field2;
        if (field2 != null) {
            field2.setAccessible(true);
        }
    }

    private Field getField(Class<?> targetCls, Field targetField) throws NoSuchFieldException {
        try {
            Field result = targetCls.getDeclaredField(targetField.getName());
            result.setAccessible(true);
            return result;
        } catch (Exception e) {
            Alog.e(e.getMessage(), e);
            return null;
        }
    }

    private void checkExist() throws IllegalAccessException {
        if (this.mField == null) {
            throw new IllegalAccessException("Target field should not null");
        }
    }

    protected boolean getBoolean(Object target) throws IllegalAccessException {
        checkExist();
        return this.mField.getBoolean(target);
    }

    protected void setBoolean(Object target, boolean value) throws IllegalAccessException, IllegalArgumentException {
        checkExist();
        this.mField.setBoolean(target, value);
    }

    protected byte getByte(Object target) throws IllegalAccessException {
        checkExist();
        return this.mField.getByte(target);
    }

    protected void setByte(Object target, byte value) throws IllegalAccessException, IllegalArgumentException {
        checkExist();
        this.mField.setByte(target, value);
    }

    protected char getChar(Object target) throws IllegalAccessException {
        checkExist();
        return this.mField.getChar(target);
    }

    protected void setChar(Object target, char value) throws IllegalAccessException, IllegalArgumentException {
        checkExist();
        this.mField.setChar(target, value);
    }

    protected double getDouble(Object target) throws IllegalAccessException {
        checkExist();
        return this.mField.getDouble(target);
    }

    protected void setDouble(Object target, double value) throws IllegalAccessException, IllegalArgumentException {
        checkExist();
        this.mField.setDouble(target, value);
    }

    protected float getFloat(Object target) throws IllegalAccessException {
        checkExist();
        return this.mField.getFloat(target);
    }

    protected void setFloat(Object target, float value) throws IllegalAccessException, IllegalArgumentException {
        checkExist();
        this.mField.setFloat(target, value);
    }

    protected int getInt(Object target) throws IllegalAccessException {
        checkExist();
        return this.mField.getInt(target);
    }

    protected void setInt(Object target, int value) throws IllegalAccessException, IllegalArgumentException {
        checkExist();
        this.mField.setInt(target, value);
    }

    protected long getLong(Object target) throws IllegalAccessException {
        checkExist();
        return this.mField.getLong(target);
    }

    protected void setLong(Object target, long value) throws IllegalAccessException, IllegalArgumentException {
        checkExist();
        this.mField.setLong(target, value);
    }

    protected short getShort(Object target) throws IllegalAccessException {
        checkExist();
        return this.mField.getShort(target);
    }

    protected void setShort(Object target, short value) throws IllegalAccessException, IllegalArgumentException {
        checkExist();
        this.mField.setShort(target, value);
    }

    protected Object getObject(Object target) throws IllegalAccessException {
        checkExist();
        return this.mField.get(target);
    }

    protected void setObject(Object target, Object value) throws IllegalAccessException, IllegalArgumentException {
        checkExist();
        this.mField.set(target, value);
    }
}

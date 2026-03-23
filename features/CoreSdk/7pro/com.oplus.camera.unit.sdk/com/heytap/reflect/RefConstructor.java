package com.heytap.reflect;

import android.util.Log;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
/* loaded from: classes.dex */
public class RefConstructor<T> {
    private static final String TAG = "RefConstructor";
    private Constructor<?> mConstructor;

    public RefConstructor(Class<?> cls, Field field) throws NoSuchMethodException {
        if (field.isAnnotationPresent(MethodName.class)) {
            this.mConstructor = cls.getDeclaredConstructor(((MethodName) field.getAnnotation(MethodName.class)).params());
        } else {
            int i = 0;
            if (field.isAnnotationPresent(MethodSignature.class)) {
                String[] params = ((MethodSignature) field.getAnnotation(MethodSignature.class)).params();
                Class<?>[] clsArr = new Class[params.length];
                while (i < params.length) {
                    try {
                        clsArr[i] = Class.forName(params[i]);
                        i++;
                    } catch (Exception e) {
                        Log.e(TAG, e.toString());
                    }
                }
                this.mConstructor = cls.getDeclaredConstructor(clsArr);
            } else {
                this.mConstructor = cls.getDeclaredConstructor(new Class[0]);
            }
        }
        if (this.mConstructor == null || this.mConstructor.isAccessible()) {
            return;
        }
        this.mConstructor.setAccessible(true);
    }

    public T newInstance() {
        try {
            return (T) this.mConstructor.newInstance(new Object[0]);
        } catch (Exception e) {
            Log.e(TAG, e.toString());
            return null;
        }
    }

    public T newInstance(Object... objArr) {
        try {
            return (T) this.mConstructor.newInstance(objArr);
        } catch (Exception e) {
            Log.e(TAG, e.toString());
            return null;
        }
    }
}

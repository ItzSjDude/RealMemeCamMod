package com.oplus.utils.reflect;

import android.util.Log;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;

/* JADX INFO: loaded from: classes.dex */
public class RefConstructor<T> extends BaseRef<T> {
    private static final String TAG = "RefConstructor";
    private final Constructor<?> mConstructor;

    public RefConstructor(Class<?> targetClass, Field field) {
        super(field);
        this.mConstructor = load(targetClass, field);
    }

    private Constructor<?> load(Class<?> targetClass, Field field) {
        Constructor<?> declaredConstructor;
        Constructor<?> constructor = null;
        try {
            if (field.isAnnotationPresent(MethodName.class)) {
                declaredConstructor = targetClass
                        .getDeclaredConstructor(((MethodName) field.getAnnotation(MethodName.class)).params());
            } else {
                int i = 0;
                if (field.isAnnotationPresent(MethodSignature.class)) {
                    String[] parameterTypes = ((MethodSignature) field.getAnnotation(MethodSignature.class)).params();
                    Class<?>[] parameterClasses = new Class[parameterTypes.length];
                    while (i < parameterTypes.length) {
                        try {
                            parameterClasses[i] = Class.forName(parameterTypes[i]);
                            i++;
                        } catch (Exception e) {
                            Log.e(TAG, e.getMessage());
                        }
                    }
                    declaredConstructor = targetClass.getDeclaredConstructor(parameterClasses);
                } else {
                    declaredConstructor = targetClass.getDeclaredConstructor(new Class[0]);
                }
            }
            constructor = declaredConstructor;
            if (constructor != null && !constructor.isAccessible()) {
                constructor.setAccessible(true);
            }
        } catch (Exception e) {
            Log.e(TAG, e.getMessage());
        }
        return constructor;
    }

    public T newInstance() {
        try {
            return (T) this.mConstructor.newInstance(new Object[0]);
        } catch (InvocationTargetException e) {
            this.printCauseMessage(e);
            return null;
        } catch (Exception e) {
            Log.e(TAG, e.getMessage());
            return null;
        }
    }

    public T newInstance(Object... args) {
        try {
            return (T) this.mConstructor.newInstance(args);
        } catch (InvocationTargetException e) {
            this.printCauseMessage(e);
            return null;
        } catch (Exception e) {
            Log.e(TAG, e.getMessage());
            return null;
        }
    }

    @Override // com.oplus.utils.reflect.IBaseRef
    public boolean isEmpty() {
        return this.mConstructor == null;
    }

    @Override // com.oplus.utils.reflect.IBaseRef
    public Class<?> getDeclaringClass() {
        if (isEmpty()) {
            return null;
        }
        return this.mConstructor.getDeclaringClass();
    }

    private void printCauseMessage(InvocationTargetException invocationTargetException) {
        Throwable cause = invocationTargetException.getCause();
        if (cause != null) {
            Log.e(TAG, cause.getMessage());
        } else {
            Log.e(TAG, invocationTargetException.getMessage());
        }
    }
}

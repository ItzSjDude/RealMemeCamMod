package com.heytap.reflect;

import android.util.Log;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes.dex */
public class RefMethod<T> {
    private static final String TAG = "RefMethod";
    private Method mMethod;

    public RefMethod(Class<?> cls, Field field) throws NoSuchMethodException {
        if (field.isAnnotationPresent(MethodName.class)) {
            setMethod(cls, field, ((MethodName) field.getAnnotation(MethodName.class)).params(),
                    ((MethodName) field.getAnnotation(MethodName.class)).name());
            this.mMethod.setAccessible(true);
        } else {
            int i = 0;
            if (field.isAnnotationPresent(MethodSignature.class)) {
                String[] strArrParams = ((MethodSignature) field.getAnnotation(MethodSignature.class)).params();
                Class<?>[] clsArr = new Class[strArrParams.length];
                while (i < strArrParams.length) {
                    Class<?> protoType = RefStaticMethod.getProtoType(strArrParams[i]);
                    if (protoType == null) {
                        try {
                            protoType = Class.forName(strArrParams[i]);
                        } catch (ClassNotFoundException e) {
                            Log.e(TAG, e.toString());
                        }
                    }
                    clsArr[i] = protoType;
                    i++;
                }
                setMethod(cls, field, clsArr, ((MethodSignature) field.getAnnotation(MethodSignature.class)).name());
                this.mMethod.setAccessible(true);
            } else {
                Method[] declaredMethods = cls.getDeclaredMethods();
                int length = declaredMethods.length;
                while (true) {
                    if (i >= length) {
                        break;
                    }
                    Method method = declaredMethods[i];
                    if (method.getName().equals(field.getName())) {
                        this.mMethod = method;
                        method.setAccessible(true);
                        break;
                    }
                    i++;
                }
            }
        }
        if (this.mMethod == null) {
            throw new NoSuchMethodException(field.getName());
        }
    }

    private void setMethod(Class<?> cls, Field field, Class<?>[] clsArr, String str) throws NoSuchMethodException {
        if (!str.isEmpty()) {
            this.mMethod = cls.getDeclaredMethod(str, clsArr);
        } else {
            this.mMethod = cls.getDeclaredMethod(field.getName(), clsArr);
        }
    }

    public T call(Object obj, Object... objArr) {
        try {
            return (T) this.mMethod.invoke(obj, objArr);
        } catch (InvocationTargetException e) {
            if (e.getCause() != null) {
                Log.e(TAG, e.getCause().toString());
                return null;
            }
            Log.e(TAG, e.toString());
            return null;
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
            return null;
        }
    }

    public T callWithException(Object obj, Object... objArr) throws Exception {
        try {
            return (T) this.mMethod.invoke(obj, objArr);
        } catch (InvocationTargetException e) {
            Throwable cause = e.getCause();
            if (cause instanceof Exception) {
                throw (Exception) cause;
            } else if (cause != null) {
                throw new Exception(cause);
            }
            throw e;
        }
    }

    public Class<?>[] paramList() {
        return this.mMethod.getParameterTypes();
    }
}

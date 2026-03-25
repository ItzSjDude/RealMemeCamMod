package com.heytap.reflect;

import android.util.Log;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes.dex */
public class RefStaticMethod<T> {
    private static final String TAG = "RefStaticMethod";
    private Method mMethod;

    public RefStaticMethod(Class<?> cls, Field field) throws NoSuchMethodException {
        Class<?> cls2;
        if (field.isAnnotationPresent(MethodName.class)) {
            setMethod(cls, field, ((MethodName) field.getAnnotation(MethodName.class)).params(),
                    ((MethodName) field.getAnnotation(MethodName.class)).name());
            this.mMethod.setAccessible(true);
        } else {
            int i = 0;
            if (field.isAnnotationPresent(MethodSignature.class)) {
                String[] strArrParams = ((MethodSignature) field.getAnnotation(MethodSignature.class)).params();
                Class<?>[] clsArr = new Class[strArrParams.length];
                Class<?>[] clsArr2 = new Class[strArrParams.length];
                boolean z = false;
                while (i < strArrParams.length) {
                    Class<?> protoType = getProtoType(strArrParams[i]);
                    if (protoType == null) {
                        try {
                            protoType = Class.forName(strArrParams[i]);
                        } catch (ClassNotFoundException e) {
                            Log.e(TAG, e.toString());
                        }
                    }
                    clsArr[i] = protoType;
                    if ("java.util.HashSet".equals(strArrParams[i])) {
                        try {
                            cls2 = Class.forName("android.util.ArraySet");
                        } catch (ClassNotFoundException e2) {
                            Log.e(TAG, e2.toString());
                            cls2 = protoType;
                        }
                        if (cls2 != null) {
                            clsArr2[i] = cls2;
                        } else {
                            clsArr2[i] = protoType;
                        }
                        z = true;
                    } else {
                        clsArr2[i] = protoType;
                    }
                    i++;
                }
                try {
                    setMethod(cls, field, clsArr,
                            ((MethodSignature) field.getAnnotation(MethodSignature.class)).name());
                } catch (Exception e3) {
                    Log.e(TAG, e3.toString());
                    if (z) {
                        setMethod(cls, field, clsArr2,
                                ((MethodSignature) field.getAnnotation(MethodSignature.class)).name());
                    }
                }
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

    static Class<?> getProtoType(String str) {
        if (str.equals("int")) {
            return Integer.TYPE;
        }
        if (str.equals("long")) {
            return Long.TYPE;
        }
        if (str.equals("boolean")) {
            return Boolean.TYPE;
        }
        if (str.equals("byte")) {
            return Byte.TYPE;
        }
        if (str.equals("short")) {
            return Short.TYPE;
        }
        if (str.equals("char")) {
            return Character.TYPE;
        }
        if (str.equals("float")) {
            return Float.TYPE;
        }
        if (str.equals("double")) {
            return Double.TYPE;
        }
        if (str.equals("void")) {
            return Void.TYPE;
        }
        return null;
    }

    public T call(Object... objArr) {
        try {
            return (T) this.mMethod.invoke(null, objArr);
        } catch (Exception e) {
            Log.e(TAG, e.toString());
            return null;
        }
    }

    public T callWithException(Object... objArr) throws Exception {
        try {
            return (T) this.mMethod.invoke(null, objArr);
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
}

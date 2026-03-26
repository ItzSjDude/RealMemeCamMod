package com.oplus.utils.reflect;

import android.util.Log;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes.dex */
public class RefMethod<T> extends BaseRef<T> {
    private static final String TAG = "RefMethod";
    private final Method mMethod;

    public RefMethod(Class<?> targetClass, Field field) {
        super(field);
        this.mMethod = load(targetClass, field);
    }

    static Class<?> getPrimitiveType(String typeName) {
        if (typeName.equals("int")) {
            return Integer.TYPE;
        }
        if (typeName.equals("long")) {
            return Long.TYPE;
        }
        if (typeName.equals("boolean")) {
            return Boolean.TYPE;
        }
        if (typeName.equals("byte")) {
            return Byte.TYPE;
        }
        if (typeName.equals("short")) {
            return Short.TYPE;
        }
        if (typeName.equals("char")) {
            return Character.TYPE;
        }
        if (typeName.equals("float")) {
            return Float.TYPE;
        }
        if (typeName.equals("double")) {
            return Double.TYPE;
        }
        if (typeName.equals("void")) {
            return Void.TYPE;
        }
        return null;
    }

    private Method load(Class<?> targetClass, Field field) {
        Class<?> arraySetClass;
        Method method = null;
        try {
            if (field.isAnnotationPresent(MethodName.class)) {
                Method method2 = getMethod(targetClass, field,
                        ((MethodName) field.getAnnotation(MethodName.class)).params(),
                        ((MethodName) field.getAnnotation(MethodName.class)).name());
                method2.setAccessible(true);
                return method2;
            }
            int i = 0;
            if (field.isAnnotationPresent(MethodSignature.class)) {
                String[] parameterTypes = ((MethodSignature) field.getAnnotation(MethodSignature.class)).params();
                Class<?>[] parameterClasses = new Class[parameterTypes.length];
                Class<?>[] altParameterClasses = new Class[parameterTypes.length];
                boolean hasArraySetPotential = false;
                for (int i2 = 0; i2 < parameterTypes.length; i2++) {
                    Class<?> primitiveType = getPrimitiveType(parameterTypes[i2]);
                    if (primitiveType == null) {
                        try {
                            primitiveType = Class.forName(parameterTypes[i2]);
                        } catch (ClassNotFoundException e) {
                            Log.e(TAG, e.getMessage());
                        }
                    }
                    parameterClasses[i2] = primitiveType;
                    if ("java.util.HashSet".equals(parameterTypes[i2])) {
                        try {
                            arraySetClass = Class.forName("android.util.ArraySet");
                        } catch (ClassNotFoundException e) {
                            Log.e(TAG, e.getMessage());
                            arraySetClass = primitiveType;
                        }
                        if (arraySetClass != null) {
                            altParameterClasses[i2] = arraySetClass;
                        } else {
                            altParameterClasses[i2] = primitiveType;
                        }
                        hasArraySetPotential = true;
                    } else {
                        altParameterClasses[i2] = primitiveType;
                    }
                }
                try {
                    method = getMethod(targetClass, field, parameterClasses,
                            ((MethodSignature) field.getAnnotation(MethodSignature.class)).name());
                } catch (Exception e) {
                    Log.e(TAG, e.getMessage());
                    if (hasArraySetPotential) {
                        method = getMethod(targetClass, field, altParameterClasses,
                                ((MethodSignature) field.getAnnotation(MethodSignature.class)).name());
                    }
                }
                Class<?>[] finalParameterClasses = new Class[parameterTypes.length];
                while (i < parameterTypes.length) {
                    Class<?> finalPrimitiveType = getPrimitiveType(parameterTypes[i]);
                    if (finalPrimitiveType == null) {
                        try {
                            finalPrimitiveType = Class.forName(parameterTypes[i]);
                        } catch (ClassNotFoundException e) {
                            Log.e(TAG, e.getMessage());
                        }
                    }
                    finalParameterClasses[i] = finalPrimitiveType;
                    i++;
                }
                Method finalMethod = getMethod(targetClass, field, finalParameterClasses,
                        ((MethodSignature) field.getAnnotation(MethodSignature.class)).name());
                finalMethod.setAccessible(true);
                return finalMethod;
            }
            Method[] declaredMethods = targetClass.getDeclaredMethods();
            int length = declaredMethods.length;
            while (i < length) {
                Method declaredMethod = declaredMethods[i];
                if (declaredMethod.getName().equals(field.getName())) {
                    try {
                        declaredMethod.setAccessible(true);
                        return declaredMethod;
                    } catch (Exception e) {
                        Log.e(TAG, e.getMessage());
                        return declaredMethod;
                    }
                }
                i++;
            }
            return null;
        } catch (Exception e) {
            Log.e(TAG, e.getMessage());
            return method;
        }
    }

    private Method getMethod(Class<?> targetClass, Field field, Class<?>[] parameterClasses, String methodName)
            throws NoSuchMethodException {
        if (!methodName.isEmpty()) {
            return targetClass.getDeclaredMethod(methodName, parameterClasses);
        }
        return targetClass.getDeclaredMethod(field.getName(), parameterClasses);
    }

    public T call(Object receiver, Object... args) {
        return callWithDefault(receiver, null, args);
    }

    public T callWithDefault(Object receiver, T defaultValue, Object... args) {
        try {
            return callWithException(receiver, args);
        } catch (Exception e) {
            Log.e(TAG, e.getMessage());
            return defaultValue != null ? defaultValue : this.getDefaultValue();
        }
    }

    public T callWithException(Object receiver, Object... args) throws Exception {
        try {
            return (T) this.mMethod.invoke(checkStub(receiver), args);
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

    @Override // com.oplus.utils.reflect.IBaseRef
    public boolean isEmpty() {
        return this.mMethod == null;
    }

    @Override // com.oplus.utils.reflect.IBaseRef
    public Class<?> getDeclaringClass() {
        if (isEmpty()) {
            return null;
        }
        return this.mMethod.getDeclaringClass();
    }
}

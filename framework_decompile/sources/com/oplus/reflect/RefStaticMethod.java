package com.oplus.reflect;

import android.app.slice.SliceItem;
import android.util.Log;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Optional;
import java.util.function.Function;

/* loaded from: classes3.dex */
public class RefStaticMethod<T> {
    private static final String TAG = "RefStaticMethod";
    private Method method;

    public RefStaticMethod(Class<?> cls, Field field) throws NoSuchMethodException, SecurityException, ClassNotFoundException {
        if (field.isAnnotationPresent(MethodParams.class)) {
            Class<?>[] types = ((MethodParams) field.getAnnotation(MethodParams.class)).value();
            for (Class<?> cls2 : types) {
            }
            Method declaredMethod = cls.getDeclaredMethod(field.getName(), types);
            this.method = declaredMethod;
            declaredMethod.setAccessible(true);
        } else if (field.isAnnotationPresent(MethodReflectParams.class)) {
            boolean arrayset = false;
            String[] typeNames = ((MethodReflectParams) field.getAnnotation(MethodReflectParams.class)).value();
            Class<?>[] types2 = new Class[typeNames.length];
            Class<?>[] types22 = new Class[typeNames.length];
            for (int i = 0; i < typeNames.length; i++) {
                Class<?> type = getProtoType(typeNames[i]);
                if (type == null) {
                    try {
                        type = Class.forName(typeNames[i]);
                    } catch (ClassNotFoundException e) {
                        Log.e(TAG, e.getMessage(), e);
                    }
                }
                types2[i] = type;
                if ("java.util.HashSet".equals(typeNames[i])) {
                    arrayset = true;
                    Class<?> type2 = type;
                    try {
                        type2 = Class.forName("android.util.ArraySet");
                    } catch (ClassNotFoundException e2) {
                        Log.e(TAG, e2.getMessage(), e2);
                    }
                    if (type2 != null) {
                        types22[i] = type2;
                    } else {
                        types22[i] = type;
                    }
                } else {
                    types22[i] = type;
                }
            }
            try {
                this.method = cls.getDeclaredMethod(field.getName(), types2);
            } catch (Exception e3) {
                Log.e(TAG, e3.getMessage(), e3);
                if (arrayset) {
                    this.method = cls.getDeclaredMethod(field.getName(), types22);
                }
            }
            this.method.setAccessible(true);
        } else {
            Method[] declaredMethods = cls.getDeclaredMethods();
            int length = declaredMethods.length;
            int i2 = 0;
            while (true) {
                if (i2 >= length) {
                    break;
                }
                Method method = declaredMethods[i2];
                if (!method.getName().equals(field.getName())) {
                    i2++;
                } else {
                    this.method = method;
                    method.setAccessible(true);
                    break;
                }
            }
        }
        if (this.method == null) {
            throw new NoSuchMethodException(field.getName());
        }
    }

    static Class<?> getProtoType(String typeName) {
        if (typeName.equals(SliceItem.FORMAT_INT)) {
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

    public T call(Object... objArr) {
        try {
            return (T) this.method.invoke(null, objArr);
        } catch (Exception e) {
            Log.e(TAG, e.getMessage(), e);
            return null;
        }
    }

    public static <T> T callIfPresent(RefStaticMethod<T> refStaticMethod, T t, final Object... objArr) {
        return (T) Optional.ofNullable(refStaticMethod).map(new Function() { // from class: com.oplus.reflect.RefStaticMethod$$ExternalSyntheticLambda0
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((RefStaticMethod) obj).call(objArr);
            }
        }).orElse(t);
    }

    public T callWithException(Object... objArr) throws Throwable {
        try {
            return (T) this.method.invoke(null, objArr);
        } catch (InvocationTargetException e) {
            if (e.getCause() != null) {
                throw e.getCause();
            }
            throw e;
        }
    }
}

package com.oplus.utils.reflect;

import android.util.Log;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Modifier;
import java.util.HashMap;

/* JADX INFO: loaded from: classes.dex */
public final class RefClass {
    private static final Class<? extends IBaseRef>[] REF_CLASSES;
    private static final HashMap<Class<? extends IBaseRef>, Constructor<? extends IBaseRef>> REF_TYPES = new HashMap<>();
    private static final String TAG = "RefClass";

    static {
        Class<?>[] refClassArray = { RefObject.class, RefMethod.class, RefInt.class, RefLong.class, RefFloat.class,
                RefDouble.class, RefBoolean.class, RefByte.class, RefChar.class, RefShort.class, RefConstructor.class };
        REF_CLASSES = (Class<? extends IBaseRef>[]) refClassArray;
        try {
            for (Class<?> refClass : refClassArray) {
                REF_TYPES.put((Class<? extends IBaseRef>) refClass,
                        ((Class<? extends IBaseRef>) refClass).getConstructor(Class.class, Field.class));
            }
        } catch (Exception e) {
            Log.e(TAG, e.getMessage(), e);
        }
    }

    public static Class<?> load(Class<?> mappingClass, String className) {
        return load(mappingClass, className, (Class<?>) null);
    }

    public static Class<?> load(Class<?> mappingClass, Class<?> targetClass) {
        return load(mappingClass, targetClass, (Class<?>) null);
    }

    public static Class<?> load(Class<?> mappingClass, String className, Class<?> altTargetClass) {
        Class<?> realClass = getRealClass(mappingClass.getClassLoader(), className);
        load(mappingClass, realClass, altTargetClass, (String) null);
        return realClass;
    }

    public static Class<?> load(Class<?> mappingClass, Class<?> targetClass, Class<?> altTargetClass) {
        load(mappingClass, targetClass, altTargetClass, (String) null);
        return targetClass;
    }

    public static RefConstructor<?> load(Class<?> mappingClass, String className, Class<?> altTargetClass,
            String refName) {
        return load(mappingClass, getRealClass(mappingClass.getClassLoader(), className), altTargetClass, refName);
    }

    public static RefConstructor<?> load(Class<?> mappingClass, Class<?> targetClass, Class<?> altTargetClass,
            String refName) {
        Object stubInstance;
        if (mappingClass == null) {
            throw new IllegalArgumentException("mappingClass is null");
        }
        if (altTargetClass != null) {
            try {
                stubInstance = altTargetClass.newInstance();
            } catch (IllegalAccessException | InstantiationException e) {
                Log.e(TAG, altTargetClass + ".newInstance", e);
                stubInstance = null;
            }
        } else {
            stubInstance = null;
        }
        RefConstructor<?> refConstructor = null;
        for (Field field : mappingClass.getDeclaredFields()) {
            if (Modifier.isStatic(field.getModifiers()) && !Modifier.isFinal(field.getModifiers())) {
                try {
                    field.setAccessible(true);
                    if (field.get(null) != null) {
                        throw new UnsupportedOperationException("Already loaded : " + field.getName());
                    }
                    Constructor<? extends IBaseRef> constructor = REF_TYPES.get(field.getType());
                    if (constructor != null) {
                        IBaseRef instance = targetClass != null ? newInstance(targetClass, field, constructor) : null;
                        if ((instance == null || instance.isEmpty()) && targetClass != altTargetClass) {
                            instance = newInstance(altTargetClass, field, constructor);
                        }
                        if (instance == null) {
                            instance = newInstance(null, field, constructor);
                        }
                        if (instance != null) {
                            instance.bindStub(stubInstance);
                        }
                        field.set(null, instance);
                        if (field.getName().equals(refName) && field.getType().equals(RefConstructor.class)) {
                            refConstructor = (RefConstructor) instance;
                        }
                    }
                } catch (IllegalAccessException e2) {
                    Log.e(TAG, mappingClass.getName() + ".load", e2);
                }
            }
        }
        return refConstructor;
    }

    private static Class<?> getRealClass(ClassLoader classLoader, String className) {
        if (className == null) {
            return null;
        }
        try {
            return Class.forName(className, false, classLoader);
        } catch (ClassNotFoundException e) {
            Log.e(TAG, "Cannot find class : " + e.getMessage());
            return null;
        }
    }

    private static IBaseRef newInstance(Class<?> targetClass, Field field,
            Constructor<? extends IBaseRef> constructor) {
        try {
            return constructor.newInstance(targetClass, field);
        } catch (IllegalAccessException | InstantiationException | InvocationTargetException e) {
            if (targetClass != null) {
                Log.e(TAG, "targetClass load : " + targetClass.getName(), e);
                return null;
            }
            Log.e(TAG, "targetClass load : null");
            return null;
        }
    }
}

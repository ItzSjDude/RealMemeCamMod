package com.oplus.utils.reflect;

import android.util.Log;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.util.HashMap;
/* loaded from: classes.dex */
public final class RefClass {
    private static final String TAG = "RefClass";
    private static final HashMap<Class<? extends IBaseRef>, Constructor<? extends IBaseRef>> REF_TYPES = new HashMap<>();
    private static final Class<? extends IBaseRef>[] REF_CLASSES = {RefObject.class, RefMethod.class, RefInt.class, RefLong.class, RefFloat.class, RefDouble.class, RefBoolean.class, RefByte.class, RefChar.class, RefShort.class, RefConstructor.class};

    static {
        Class<? extends IBaseRef>[] clsArr;
        try {
            for (Class<? extends IBaseRef> cls : REF_CLASSES) {
                REF_TYPES.put(cls, cls.getConstructor(Class.class, Field.class));
            }
        } catch (Exception e) {
            Log.e(TAG, e.getMessage(), e);
        }
    }

    public static Class<?> load(Class<?> cls, String str) {
        return load(cls, str, (Class<?>) null);
    }

    public static Class<?> load(Class<?> cls, Class<?> cls2) {
        return load(cls, cls2, (Class<?>) null);
    }

    public static Class<?> load(Class<?> cls, String str, Class<?> cls2) {
        Class<?> realClass = getRealClass(cls.getClassLoader(), str);
        load(cls, realClass, cls2, (String) null);
        return realClass;
    }

    public static Class<?> load(Class<?> cls, Class<?> cls2, Class<?> cls3) {
        load(cls, cls2, cls3, (String) null);
        return cls2;
    }

    public static RefConstructor<?> load(Class<?> cls, String str, Class<?> cls2, String str2) {
        return load(cls, getRealClass(cls.getClassLoader(), str), cls2, str2);
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0033  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.oplus.utils.reflect.RefConstructor<?> load(java.lang.Class<?> r10, java.lang.Class<?> r11, java.lang.Class<?> r12, java.lang.String r13) {
        /*
            if (r10 != 0) goto La
            java.lang.IllegalArgumentException r10 = new java.lang.IllegalArgumentException
            java.lang.String r11 = "mappingClass is null"
            r10.<init>(r11)
            throw r10
        La:
            r0 = 0
            if (r12 == 0) goto L29
            java.lang.Object r1 = r12.newInstance()     // Catch: java.lang.Throwable -> L12
            goto L2a
        L12:
            r1 = move-exception
            java.lang.String r2 = "RefClass"
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            r3.<init>()
            r3.append(r12)
            java.lang.String r4 = ".newInstance"
            r3.append(r4)
            java.lang.String r3 = r3.toString()
            android.util.Log.e(r2, r3, r1)
        L29:
            r1 = r0
        L2a:
            java.lang.reflect.Field[] r2 = r10.getDeclaredFields()
            int r3 = r2.length
            r4 = 0
            r5 = r0
        L31:
            if (r4 >= r3) goto Ldc
            r6 = r2[r4]
            int r7 = r6.getModifiers()
            boolean r7 = java.lang.reflect.Modifier.isStatic(r7)
            if (r7 == 0) goto Ld8
            int r7 = r6.getModifiers()
            boolean r7 = java.lang.reflect.Modifier.isFinal(r7)
            if (r7 == 0) goto L4b
            goto Ld8
        L4b:
            r7 = 1
            r6.setAccessible(r7)     // Catch: java.lang.IllegalAccessException -> Lbd
            java.lang.Object r7 = r6.get(r0)     // Catch: java.lang.IllegalAccessException -> Lbd
            if (r7 == 0) goto L70
            java.lang.UnsupportedOperationException r7 = new java.lang.UnsupportedOperationException     // Catch: java.lang.IllegalAccessException -> Lbd
            java.lang.StringBuilder r8 = new java.lang.StringBuilder     // Catch: java.lang.IllegalAccessException -> Lbd
            r8.<init>()     // Catch: java.lang.IllegalAccessException -> Lbd
            java.lang.String r9 = "Already loaded : "
            r8.append(r9)     // Catch: java.lang.IllegalAccessException -> Lbd
            java.lang.String r6 = r6.getName()     // Catch: java.lang.IllegalAccessException -> Lbd
            r8.append(r6)     // Catch: java.lang.IllegalAccessException -> Lbd
            java.lang.String r6 = r8.toString()     // Catch: java.lang.IllegalAccessException -> Lbd
            r7.<init>(r6)     // Catch: java.lang.IllegalAccessException -> Lbd
            throw r7     // Catch: java.lang.IllegalAccessException -> Lbd
        L70:
            java.util.HashMap<java.lang.Class<? extends com.oplus.utils.reflect.IBaseRef>, java.lang.reflect.Constructor<? extends com.oplus.utils.reflect.IBaseRef>> r7 = com.oplus.utils.reflect.RefClass.REF_TYPES     // Catch: java.lang.IllegalAccessException -> Lbd
            java.lang.Class r8 = r6.getType()     // Catch: java.lang.IllegalAccessException -> Lbd
            java.lang.Object r7 = r7.get(r8)     // Catch: java.lang.IllegalAccessException -> Lbd
            java.lang.reflect.Constructor r7 = (java.lang.reflect.Constructor) r7     // Catch: java.lang.IllegalAccessException -> Lbd
            if (r7 == 0) goto Ld8
            if (r11 == 0) goto L85
            com.oplus.utils.reflect.IBaseRef r8 = newInstance(r11, r6, r7)     // Catch: java.lang.IllegalAccessException -> Lbd
            goto L86
        L85:
            r8 = r0
        L86:
            if (r8 == 0) goto L8e
            boolean r9 = r8.isEmpty()     // Catch: java.lang.IllegalAccessException -> Lbd
            if (r9 == 0) goto L94
        L8e:
            if (r11 == r12) goto L94
            com.oplus.utils.reflect.IBaseRef r8 = newInstance(r12, r6, r7)     // Catch: java.lang.IllegalAccessException -> Lbd
        L94:
            if (r8 != 0) goto L9a
            com.oplus.utils.reflect.IBaseRef r8 = newInstance(r0, r6, r7)     // Catch: java.lang.IllegalAccessException -> Lbd
        L9a:
            if (r8 == 0) goto L9f
            r8.bindStub(r1)     // Catch: java.lang.IllegalAccessException -> Lbd
        L9f:
            r6.set(r0, r8)     // Catch: java.lang.IllegalAccessException -> Lbd
            java.lang.String r7 = r6.getName()     // Catch: java.lang.IllegalAccessException -> Lbd
            boolean r7 = r7.equals(r13)     // Catch: java.lang.IllegalAccessException -> Lbd
            if (r7 == 0) goto Ld8
            java.lang.Class r6 = r6.getType()     // Catch: java.lang.IllegalAccessException -> Lbd
            java.lang.Class<com.oplus.utils.reflect.RefConstructor> r7 = com.oplus.utils.reflect.RefConstructor.class
            boolean r6 = r6.equals(r7)     // Catch: java.lang.IllegalAccessException -> Lbd
            if (r6 == 0) goto Ld8
            r6 = r8
            com.oplus.utils.reflect.RefConstructor r6 = (com.oplus.utils.reflect.RefConstructor) r6     // Catch: java.lang.IllegalAccessException -> Lbd
            r5 = r6
            goto Ld8
        Lbd:
            r6 = move-exception
            java.lang.String r7 = "RefClass"
            java.lang.StringBuilder r8 = new java.lang.StringBuilder
            r8.<init>()
            java.lang.String r9 = r10.getName()
            r8.append(r9)
            java.lang.String r9 = ".load"
            r8.append(r9)
            java.lang.String r8 = r8.toString()
            android.util.Log.e(r7, r8, r6)
        Ld8:
            int r4 = r4 + 1
            goto L31
        Ldc:
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.oplus.utils.reflect.RefClass.load(java.lang.Class, java.lang.Class, java.lang.Class, java.lang.String):com.oplus.utils.reflect.RefConstructor");
    }

    private static Class<?> getRealClass(ClassLoader classLoader, String str) {
        if (str != null) {
            try {
                return Class.forName(str, false, classLoader);
            } catch (ClassNotFoundException e) {
                Log.e(TAG, "Cannot find class : " + e.getMessage());
                return null;
            }
        }
        return null;
    }

    private static IBaseRef newInstance(Class<?> cls, Field field, Constructor<? extends IBaseRef> constructor) {
        try {
            return constructor.newInstance(cls, field);
        } catch (IllegalAccessException | InstantiationException | InvocationTargetException e) {
            if (cls != null) {
                Log.e(TAG, "targetClass load : " + cls.getName(), e);
                return null;
            }
            Log.e(TAG, "targetClass load : null");
            return null;
        }
    }
}

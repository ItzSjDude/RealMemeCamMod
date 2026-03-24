package com.oplus.utils.reflect;

import android.util.Log;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.util.HashMap;
/* loaded from: classes.dex */
public final class RefClass {
    private static final Class<? extends IBaseRef>[] REF_CLASSES;
    private static final HashMap<Class<? extends IBaseRef>, Constructor<? extends IBaseRef>> REF_TYPES = new HashMap<>();
    private static final String TAG = "RefClass";

    static {
        Class<? extends IBaseRef>[] clsArr = {RefObject.class, RefMethod.class, RefInt.class, RefLong.class, RefFloat.class, RefDouble.class, RefBoolean.class, RefByte.class, RefChar.class, RefShort.class, RefConstructor.class};
        REF_CLASSES = clsArr;
        try {
            for (Class<? extends IBaseRef> cls : clsArr) {
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

    /* JADX WARN: Removed duplicated region for block: B:12:0x002b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.oplus.utils.reflect.RefConstructor<?> load(java.lang.Class<?> r11, java.lang.Class<?> r12, java.lang.Class<?> r13, java.lang.String r14) {
        /*
            if (r11 == 0) goto Ld2
            java.lang.String r0 = "RefClass"
            r1 = 0
            if (r13 == 0) goto L21
            java.lang.Object r2 = r13.newInstance()     // Catch: java.lang.Throwable -> Lc
            goto L22
        Lc:
            r2 = move-exception
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            r3.<init>()
            r3.append(r13)
            java.lang.String r4 = ".newInstance"
            r3.append(r4)
            java.lang.String r3 = r3.toString()
            android.util.Log.e(r0, r3, r2)
        L21:
            r2 = r1
        L22:
            java.lang.reflect.Field[] r3 = r11.getDeclaredFields()
            int r4 = r3.length
            r5 = 0
            r6 = r1
        L29:
            if (r5 >= r4) goto Ld1
            r7 = r3[r5]
            int r8 = r7.getModifiers()
            boolean r8 = java.lang.reflect.Modifier.isStatic(r8)
            if (r8 == 0) goto Lcd
            int r8 = r7.getModifiers()
            boolean r8 = java.lang.reflect.Modifier.isFinal(r8)
            if (r8 == 0) goto L43
            goto Lcd
        L43:
            r8 = 1
            r7.setAccessible(r8)     // Catch: java.lang.IllegalAccessException -> Lb4
            java.lang.Object r8 = r7.get(r1)     // Catch: java.lang.IllegalAccessException -> Lb4
            if (r8 != 0) goto L99
            java.util.HashMap<java.lang.Class<? extends com.oplus.utils.reflect.IBaseRef>, java.lang.reflect.Constructor<? extends com.oplus.utils.reflect.IBaseRef>> r8 = com.oplus.utils.reflect.RefClass.REF_TYPES     // Catch: java.lang.IllegalAccessException -> Lb4
            java.lang.Class r9 = r7.getType()     // Catch: java.lang.IllegalAccessException -> Lb4
            java.lang.Object r8 = r8.get(r9)     // Catch: java.lang.IllegalAccessException -> Lb4
            java.lang.reflect.Constructor r8 = (java.lang.reflect.Constructor) r8     // Catch: java.lang.IllegalAccessException -> Lb4
            if (r8 == 0) goto Lcd
            if (r12 == 0) goto L62
            com.oplus.utils.reflect.IBaseRef r9 = newInstance(r12, r7, r8)     // Catch: java.lang.IllegalAccessException -> Lb4
            goto L63
        L62:
            r9 = r1
        L63:
            if (r9 == 0) goto L6b
            boolean r10 = r9.isEmpty()     // Catch: java.lang.IllegalAccessException -> Lb4
            if (r10 == 0) goto L71
        L6b:
            if (r12 == r13) goto L71
            com.oplus.utils.reflect.IBaseRef r9 = newInstance(r13, r7, r8)     // Catch: java.lang.IllegalAccessException -> Lb4
        L71:
            if (r9 != 0) goto L77
            com.oplus.utils.reflect.IBaseRef r9 = newInstance(r1, r7, r8)     // Catch: java.lang.IllegalAccessException -> Lb4
        L77:
            if (r9 == 0) goto L7c
            r9.bindStub(r2)     // Catch: java.lang.IllegalAccessException -> Lb4
        L7c:
            r7.set(r1, r9)     // Catch: java.lang.IllegalAccessException -> Lb4
            java.lang.String r8 = r7.getName()     // Catch: java.lang.IllegalAccessException -> Lb4
            boolean r8 = r8.equals(r14)     // Catch: java.lang.IllegalAccessException -> Lb4
            if (r8 == 0) goto Lcd
            java.lang.Class r7 = r7.getType()     // Catch: java.lang.IllegalAccessException -> Lb4
            java.lang.Class<com.oplus.utils.reflect.RefConstructor> r8 = com.oplus.utils.reflect.RefConstructor.class
            boolean r7 = r7.equals(r8)     // Catch: java.lang.IllegalAccessException -> Lb4
            if (r7 == 0) goto Lcd
            com.oplus.utils.reflect.RefConstructor r9 = (com.oplus.utils.reflect.RefConstructor) r9     // Catch: java.lang.IllegalAccessException -> Lb4
            r6 = r9
            goto Lcd
        L99:
            java.lang.UnsupportedOperationException r8 = new java.lang.UnsupportedOperationException     // Catch: java.lang.IllegalAccessException -> Lb4
            java.lang.StringBuilder r9 = new java.lang.StringBuilder     // Catch: java.lang.IllegalAccessException -> Lb4
            r9.<init>()     // Catch: java.lang.IllegalAccessException -> Lb4
            java.lang.String r10 = "Already loaded : "
            r9.append(r10)     // Catch: java.lang.IllegalAccessException -> Lb4
            java.lang.String r7 = r7.getName()     // Catch: java.lang.IllegalAccessException -> Lb4
            r9.append(r7)     // Catch: java.lang.IllegalAccessException -> Lb4
            java.lang.String r7 = r9.toString()     // Catch: java.lang.IllegalAccessException -> Lb4
            r8.<init>(r7)     // Catch: java.lang.IllegalAccessException -> Lb4
            throw r8     // Catch: java.lang.IllegalAccessException -> Lb4
        Lb4:
            r7 = move-exception
            java.lang.StringBuilder r8 = new java.lang.StringBuilder
            r8.<init>()
            java.lang.String r9 = r11.getName()
            r8.append(r9)
            java.lang.String r9 = ".load"
            r8.append(r9)
            java.lang.String r8 = r8.toString()
            android.util.Log.e(r0, r8, r7)
        Lcd:
            int r5 = r5 + 1
            goto L29
        Ld1:
            return r6
        Ld2:
            java.lang.IllegalArgumentException r11 = new java.lang.IllegalArgumentException
            java.lang.String r12 = "mappingClass is null"
            r11.<init>(r12)
            throw r11
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

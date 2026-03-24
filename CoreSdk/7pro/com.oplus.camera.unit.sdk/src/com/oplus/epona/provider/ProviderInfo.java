package com.oplus.epona.provider;

import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes.dex */
public class ProviderInfo {
    private String mClassName;
    private Map<String, Method> mMethodCache = new HashMap();
    private Map<String, ProviderMethodInfo> mMethods;
    private String mName;
    private boolean mNeedIPC;

    public ProviderInfo(String str, String str2, Map<String, ProviderMethodInfo> map, boolean z) {
        this.mName = str;
        this.mClassName = str2;
        this.mMethods = map;
        this.mNeedIPC = z;
    }

    public String getName() {
        return this.mName;
    }

    public String getClassName() {
        return this.mClassName;
    }

    public boolean needIPC() {
        return this.mNeedIPC;
    }

    public boolean containsAction(String str) {
        if (this.mMethods == null) {
            return false;
        }
        return this.mMethods.containsKey(str);
    }

    public Method getMethod(String str) {
        Method method = this.mMethodCache.get(str);
        if (method != null) {
            return method;
        }
        ProviderMethodInfo providerMethodInfo = this.mMethods.get(str);
        try {
            Method declaredMethod = Class.forName(this.mClassName).getDeclaredMethod(providerMethodInfo.getMethodName(), params(providerMethodInfo.getMethodParams()));
            this.mMethodCache.put(str, declaredMethod);
            return declaredMethod;
        } catch (Exception unused) {
            return null;
        }
    }

    public ProviderMethodInfo getMethodInfo(String str) {
        return this.mMethods.get(str);
    }

    private Class<?>[] params(String[] strArr) throws ClassNotFoundException {
        if (strArr == null || strArr.length == 0) {
            return null;
        }
        int length = strArr.length;
        Class<?>[] clsArr = new Class[length];
        for (int i = 0; i < length; i++) {
            clsArr[i] = Class.forName(strArr[i]);
        }
        return clsArr;
    }
}

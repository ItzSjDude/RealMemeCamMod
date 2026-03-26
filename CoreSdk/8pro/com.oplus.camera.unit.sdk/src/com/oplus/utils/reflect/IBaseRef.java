package com.oplus.utils.reflect;

/* JADX INFO: loaded from: classes.dex */
interface IBaseRef {
    void bindStub(Object stub);

    Class<?> getDeclaringClass();

    String getName();

    boolean isEmpty();
}

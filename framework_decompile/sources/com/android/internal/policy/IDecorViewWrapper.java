package com.android.internal.policy;

/* loaded from: classes4.dex */
public interface IDecorViewWrapper {
    default IDecorViewExt getExtImpl() {
        return new IDecorViewExt() { // from class: com.android.internal.policy.IDecorViewWrapper.1
        };
    }

    default PhoneWindow getWindow() {
        return null;
    }
}

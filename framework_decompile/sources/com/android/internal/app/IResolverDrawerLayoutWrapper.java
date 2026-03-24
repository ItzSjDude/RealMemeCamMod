package com.android.internal.app;

import com.android.internal.widget.IResolverDrawerLayoutExt;

/* loaded from: classes4.dex */
public interface IResolverDrawerLayoutWrapper {
    default IResolverDrawerLayoutExt getResolverDrawerLayoutExt() {
        return null;
    }

    default void performDrag(float dy) {
    }

    default boolean isNestedListChildScrolled() {
        return false;
    }

    default void setDismissOnScrollerFinished(boolean isFinished) {
    }

    default void smoothScrollTo(int yOffset, float velocity) {
    }

    default void dismiss() {
    }

    default boolean isDismissable() {
        return false;
    }
}

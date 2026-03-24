package com.android.internal.policy;

/* loaded from: classes4.dex */
public interface IPhoneWindowWrapper {
    default void setForcedNavigationBarColor(boolean isForced) {
    }

    default boolean isForcedNavigationBarColor() {
        return false;
    }

    default void setForcedStatusBarColor(boolean isForced) {
    }

    default CharSequence getTitle() {
        return "";
    }

    default DecorView getDecorView() {
        return null;
    }

    default IPhoneWindowExt getExtImpl() {
        return null;
    }
}

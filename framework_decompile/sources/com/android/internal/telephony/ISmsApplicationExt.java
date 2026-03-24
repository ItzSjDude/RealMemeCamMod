package com.android.internal.telephony;

/* loaded from: classes4.dex */
public interface ISmsApplicationExt {
    public static final int MAIN_USER_ID = 0;

    default boolean shouldWriteMessageForPackage(String packageName) {
        return true;
    }

    default void setUserId(int userId) {
    }

    default int getUserId() {
        return 0;
    }

    default boolean isUserIdEqualMainUserId() {
        return false;
    }

    default String[] oemPackageName() {
        return null;
    }
}

package com.android.internal.app;

import android.content.Intent;
import android.os.UserHandle;

/* loaded from: classes4.dex */
public interface IResolverActivityWrapper {
    default IResolverActivityExt getResolverActivityExt() {
        return null;
    }

    default String getPersonalTabLabel() {
        return "";
    }

    default String getWorkTabLabel() {
        return "";
    }

    default int getLaunchedFromUid() {
        return UserHandle.myUserId();
    }

    default void prepareIntentForCrossProfileLaunch(Intent intent) {
    }
}

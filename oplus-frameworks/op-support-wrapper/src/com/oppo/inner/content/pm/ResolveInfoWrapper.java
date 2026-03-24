package com.oppo.inner.content.pm;

import android.content.pm.ComponentInfo;
import android.content.pm.ResolveInfo;

/* loaded from: classes.dex */
public class ResolveInfoWrapper {
    private static final String TAG = "ResolveInfoWrapper";

    private ResolveInfoWrapper() {
    }

    public static ComponentInfo getComponentInfo(ResolveInfo resolveInfo) {
        return resolveInfo.getComponentInfo();
    }
}

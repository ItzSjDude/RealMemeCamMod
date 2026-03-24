package com.oplus.inner.content.pm;

import android.content.ComponentName;
import android.content.pm.ComponentInfo;

/* loaded from: classes.dex */
public class ComponentInfoWrapper {
    private static final String TAG = "ComponentInfoWrapper";

    private ComponentInfoWrapper() {
    }

    public static ComponentName getComponentName(ComponentInfo componentInfo) {
        return componentInfo.getComponentName();
    }
}

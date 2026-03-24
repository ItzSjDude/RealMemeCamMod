package com.oplus.ocs.camera.common.util;

import android.annotation.SuppressLint;
import android.content.Context;
/* loaded from: classes.dex */
public class ContextHolder {
    @SuppressLint({"StaticFieldLeak"})
    private static Context sContext;

    public static void setContext(Context context) {
        if (context == null) {
            sContext = null;
        } else {
            sContext = context.getApplicationContext();
        }
    }

    public static Context getContext() {
        return sContext;
    }
}

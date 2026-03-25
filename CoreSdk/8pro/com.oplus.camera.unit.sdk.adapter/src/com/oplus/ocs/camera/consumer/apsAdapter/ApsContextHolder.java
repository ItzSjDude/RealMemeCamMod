package com.oplus.ocs.camera.consumer.apsAdapter;

import android.annotation.SuppressLint;
import android.content.Context;

/* JADX INFO: loaded from: classes.dex */
public class ApsContextHolder {

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

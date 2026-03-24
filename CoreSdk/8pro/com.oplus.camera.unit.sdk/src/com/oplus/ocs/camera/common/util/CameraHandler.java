package com.oplus.ocs.camera.common.util;

import android.os.Handler;
import android.os.Looper;

/* JADX INFO: loaded from: classes.dex */
public class CameraHandler extends Handler {
    protected Looper mMyLooper;

    public CameraHandler(Looper looper) {
        super(looper);
        this.mMyLooper = looper;
    }

    public void postRunnable(Runnable runnable) {
        if (Looper.myLooper() == this.mMyLooper) {
            runnable.run();
        } else {
            super.post(runnable);
        }
    }
}

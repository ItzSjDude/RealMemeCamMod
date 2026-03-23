package com.oplus.compat.app;

import androidx.annotation.RequiresApi;
/* loaded from: classes.dex */
public interface ITaskStackListenerNative {
    @RequiresApi(api = 30)
    void onActivityPinned(String str, int i, int i2, int i3);

    @RequiresApi(api = 30)
    void onActivityUnpinned();

    @RequiresApi(api = 30)
    void onTaskSnapshotChanged(int i, Object obj);
}

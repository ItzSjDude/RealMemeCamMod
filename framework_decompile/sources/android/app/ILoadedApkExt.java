package android.app;

import android.content.Context;

/* loaded from: classes.dex */
public interface ILoadedApkExt {
    default boolean checkUnregisterReceiver(Context context) {
        return false;
    }
}

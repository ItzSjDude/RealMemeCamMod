package android.app;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.res.Resources;

/* loaded from: classes.dex */
public interface ILoadedApkSocExt {
    default void setAppContext(Context context) {
    }

    default void preloadRes(Resources resources, ApplicationInfo appInfo, Application app, String packageName) {
    }
}

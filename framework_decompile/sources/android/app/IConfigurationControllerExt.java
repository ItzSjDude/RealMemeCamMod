package android.app;

import android.content.Context;
import android.content.res.Configuration;

/* loaded from: classes.dex */
public interface IConfigurationControllerExt {
    default boolean hookHandleConfigurationChanged(Application application, Configuration config, int diff, Configuration configuration) {
        return false;
    }

    default boolean handleStateCheck(String packageName, Configuration newConfig, Configuration oldConfig) {
        return true;
    }

    default void hookConfigChangeForLocale(Context appCxt, Configuration config) {
    }
}

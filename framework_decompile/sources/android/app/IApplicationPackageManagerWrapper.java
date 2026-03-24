package android.app;

import android.graphics.drawable.Drawable;

/* loaded from: classes.dex */
public interface IApplicationPackageManagerWrapper {
    default Object newResourceName(String packageName, int iconId) {
        return new Object();
    }

    default Drawable getCachedIcon(Object resourceName) {
        return null;
    }

    default void putCachedIcon(Object resourceName, Drawable drawable) {
    }
}

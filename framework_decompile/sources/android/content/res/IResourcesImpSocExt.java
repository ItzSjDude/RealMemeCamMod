package android.content.res;

import android.content.Context;
import android.graphics.drawable.Drawable;

/* loaded from: classes.dex */
public interface IResourcesImpSocExt {
    default void setAppContext(Context context) {
    }

    default Drawable getCachedDrawable(Object lock, Resources wrapper, long key, int id) {
        return null;
    }

    default void putCacheList(long key, Drawable dr, int resId, boolean isColorDrawable) {
    }
}

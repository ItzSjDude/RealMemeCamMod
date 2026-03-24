package android.content.res;

import android.content.Context;
import android.graphics.drawable.Drawable;

/* loaded from: classes.dex */
public class ResourcesImplSocExtImpl implements IResourcesImpSocExt {
    public ResourcesImplSocExtImpl(Object resourcesImpl) {
    }

    @Override // android.content.res.IResourcesImpSocExt
    public void setAppContext(Context context) {
    }

    @Override // android.content.res.IResourcesImpSocExt
    public Drawable getCachedDrawable(Object lock, Resources wrapper, long key, int id) {
        return null;
    }

    @Override // android.content.res.IResourcesImpSocExt
    public void putCacheList(long key, Drawable dr, int resId, boolean isColorDrawable) {
    }
}

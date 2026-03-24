package android.app;

import android.content.res.ResourcesImpl;
import android.content.res.ResourcesKey;
import android.util.ArrayMap;
import java.lang.ref.WeakReference;

/* loaded from: classes.dex */
public interface IResourcesManagerWrapper {
    default ArrayMap<ResourcesKey, WeakReference<ResourcesImpl>> getResourcesImplMap() {
        return null;
    }
}

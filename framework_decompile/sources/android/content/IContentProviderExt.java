package android.content;

import android.net.Uri;

/* loaded from: classes.dex */
public interface IContentProviderExt {
    default boolean skipMultiappHandleUri(int userId, Uri uri) {
        return false;
    }

    default void init(ContentProvider cp) {
    }

    default String adjustCallingPkg(ContentProvider cp, AttributionSource callingAttributionSource) {
        return null;
    }
}

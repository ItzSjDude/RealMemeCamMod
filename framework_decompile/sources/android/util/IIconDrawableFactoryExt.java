package android.util;

import android.graphics.drawable.Drawable;

/* loaded from: classes3.dex */
public interface IIconDrawableFactoryExt {
    default boolean isOemIcons() {
        return false;
    }

    default boolean isMultiAppUserId(int userId) {
        return false;
    }

    default Drawable hookgetBadgedIcon(Drawable icon) {
        return icon;
    }
}

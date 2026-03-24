package android.content.res;

import android.graphics.drawable.Drawable;

/* loaded from: classes.dex */
public interface IResourcesExt {
    default void setResourceImplExt(IResourcesImplExt implExt) {
    }

    default void setIsThemeChanged(boolean changed) {
    }

    default boolean getThemeChanged() {
        return false;
    }

    default Drawable loadIcon(int id) {
        return null;
    }

    default CharSequence getThemeCharSequence(int id) {
        return null;
    }

    default Drawable loadIcon(int id, boolean useWrap) {
        return loadIcon(id, null, useWrap);
    }

    default Drawable loadIcon(int id, String str) {
        return loadIcon(id, str, true);
    }

    default void init(String name) {
    }

    default Drawable loadIcon(int id, String str, boolean useWrap) {
        return null;
    }

    default Resources getResources() {
        return null;
    }

    default Configuration getConfiguration() {
        return null;
    }

    default Configuration getSystemConfiguration() {
        return null;
    }
}

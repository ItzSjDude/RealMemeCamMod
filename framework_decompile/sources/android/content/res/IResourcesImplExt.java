package android.content.res;

import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.util.DisplayMetrics;
import android.util.SparseArray;
import android.util.TypedValue;
import android.view.DisplayAdjustments;
import java.io.InputStream;

/* loaded from: classes.dex */
public interface IResourcesImplExt {
    default void init(String name) {
    }

    default String getPackageName() {
        return null;
    }

    default void checkUpdate(int changes, boolean languageChaged) {
    }

    default void getExValue(int id, TypedValue outValue, boolean resolveRefs) {
    }

    default SparseArray<Boolean> getLoadArrary() {
        return null;
    }

    default Configuration getConfiguration() {
        return null;
    }

    default Configuration getSystemConfiguration() {
        return null;
    }

    default void initThemeResource(String name) {
    }

    default boolean isHasDrawables() {
        return false;
    }

    default Drawable loadIcon(Resources wrapper, int id, String str, boolean useWrap) {
        return null;
    }

    default Drawable loadOverlayDrawable(Resources wrapper, TypedValue value, int id) {
        return null;
    }

    default InputStream openThemeRawResource(int id, TypedValue outValue) throws Resources.NotFoundException {
        return null;
    }

    default TypedArray replaceTypedArray(TypedArray typedarray) {
        return null;
    }

    default void setIsThemeChanged(boolean changed) {
    }

    default CharSequence getThemeCharSequence(int id) {
        return null;
    }

    default boolean getThemeChanged() {
        return false;
    }

    default int updateExConfiguration(ResourcesImpl resources, Configuration config) {
        return -1;
    }

    default void clearCache() {
    }

    default ResourcesImpl getResourcesImpl() {
        return null;
    }

    default DisplayAdjustments getCompactWindowAdjustments() {
        return null;
    }

    default void updateCompactWindowAdjustments(Configuration oldOverrideConfig, Configuration newOverrideConfig) {
    }

    default DisplayMetrics getCompactWindowMetrics(ResourcesImpl resources, DisplayMetrics oldMetrics) {
        return null;
    }

    default void debuglogApkAssets() {
    }

    default DisplayMetrics hookGetDisplayMetrics(DisplayMetrics originalMetrics) {
        return originalMetrics;
    }

    default void setIsAppConfig(boolean isAppConfig) {
    }
}

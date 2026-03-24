package android.app;

import android.content.res.CompatibilityInfo;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.ResourcesImpl;
import android.content.res.ResourcesKey;
import android.os.IBinder;
import android.util.DisplayMetrics;

/* loaded from: classes.dex */
public interface IResourcesManagerExt {
    default void updateResourcesForActivity(String packageName, IBinder activityToken, Configuration overrideConfig, int displayId) {
    }

    default void redirectResourcesToNewImplLocked(Resources r, ResourcesImpl impl, boolean update) {
    }

    default void applyConfigurationToResources(Configuration config, int change) {
    }

    default void updateCompactWindowConfigToApplicationResourcesImpl(Configuration activityThreadConfig, ResourcesImpl impl) {
    }

    default void setCompactWindowDisplayAdjustment(ResourcesImpl impl, Configuration oldOverrideConfig, Configuration newOverrideConfig) {
    }

    default void updateCustomDarkModeForWechat(Configuration targetConfig, Configuration theadConfig, ResourcesImpl targetImpl, String currentProcessName) {
    }

    default boolean isPackageInCompatMode() {
        return false;
    }

    default boolean canUseOverlayConfiguration(ResourcesKey resourcesKey, Configuration configuration) {
        return true;
    }

    default DisplayMetrics hookGetDisplayMetrics(DisplayMetrics originalDisplayMetrics) {
        return originalDisplayMetrics;
    }

    default boolean canOverrideConfig(Configuration config, Configuration mOverrideConfiguration) {
        return false;
    }

    default void updateAppBoundsForComapctWindowIfNeed(Configuration config, DisplayMetrics displayMetrics, boolean forceUpdateConfig) {
    }

    default ResourcesImpl getApplicationContextResImpl() {
        return null;
    }

    default void forceUpdateAppContextResource(Application application, Configuration newConfig, CompatibilityInfo compat) {
    }
}

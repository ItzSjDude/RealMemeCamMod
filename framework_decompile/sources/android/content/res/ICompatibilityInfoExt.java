package android.content.res;

import android.content.pm.ApplicationInfo;
import android.util.DisplayMetrics;

/* loaded from: classes.dex */
interface ICompatibilityInfoExt {
    default int getCompatDensity(ApplicationInfo ai, int defaultDensity) {
        return defaultDensity;
    }

    default int updateCompatFlagsIfNeed(ApplicationInfo ai, int compatFlags) {
        return compatFlags;
    }

    default boolean hasOverrideScaling(int compatFlags) {
        return false;
    }

    default void overrideDisplayMetricsIfNeed(DisplayMetrics inoutDm, CompatibilityInfo compat, int compatFlags) {
    }

    default void applyToConfiguration(Configuration inoutConfig, CompatibilityInfo compat, int compatFlags) {
    }
}

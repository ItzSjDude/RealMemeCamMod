package com.oplus.inner.graphics;

import android.graphics.drawable.AdaptiveIconDrawable;
import android.graphics.drawable.IAdaptiveIconDrawableExt;
import android.util.Log;

/* loaded from: classes.dex */
public class AdaptiveIconDrawableWrapper {
    private static final String TAG = "AdaptiveIconDrawbaleWrapper";

    public static float getForegroundScalePercent(AdaptiveIconDrawable drawable) {
        try {
            IAdaptiveIconDrawableExt iAdaptiveIconDrawableExt = drawable.getWrapper().getAdaptiveIconDrawableExt();
            if (iAdaptiveIconDrawableExt != null) {
                return iAdaptiveIconDrawableExt.getForegroundScalePercent();
            }
            return 0.0f;
        } catch (Exception e) {
            Log.e(TAG, e.toString());
            return 0.0f;
        }
    }
}

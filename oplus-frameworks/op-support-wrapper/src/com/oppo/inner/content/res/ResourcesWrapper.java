package com.oppo.inner.content.res;

import android.content.res.Resources;
import android.util.Log;

/* loaded from: classes.dex */
public class ResourcesWrapper {
    private static final String TAG = "ResourcesWrapper";

    public static float getCompatApplicationScale(Resources res) {
        try {
            float result = res.getCompatibilityInfo().applicationScale;
            return result;
        } catch (Throwable e) {
            Log.e(TAG, e.toString());
            return -1.0f;
        }
    }

    public static boolean getThemeChanged(Resources res) {
        try {
            if (res.mResourcesExt == null) {
                return false;
            }
            boolean result = res.mResourcesExt.getThemeChanged();
            return result;
        } catch (Throwable e) {
            Log.e(TAG, e.toString());
            return false;
        }
    }

    public static void setIsThemeChanged(Resources res, boolean changed) {
        try {
            if (res.mResourcesExt != null) {
                res.mResourcesExt.setIsThemeChanged(changed);
            }
        } catch (Throwable e) {
            Log.e(TAG, e.toString());
        }
    }
}

package com.oppo.inner.content.res;

import android.content.res.Resources;
import android.util.Log;
import com.oplus.inner.content.res.ResourcesWrapper;

public class ResourcesWrapper {
    public static float getCompatApplicationScale(Resources res) {
        return ResourcesWrapper.getCompatApplicationScale(res);
    }

    public static boolean getThemeChanged(Resources res) {
        return ResourcesWrapper.getThemeChanged(res);
    }

    public static void setIsThemeChanged(Resources res, boolean changed) {
        ResourcesWrapper.setIsThemeChanged(res, changed);
    }

}
package com.oplus.compat.graphics;

import android.graphics.drawable.AdaptiveIconDrawable;
import androidx.annotation.RequiresApi;
import com.oplus.compat.annotation.Oem;
import com.oplus.compat.utils.util.UnSupportedApiVersionException;
import com.oplus.compat.utils.util.VersionUtils;
import com.oplus.compatsdk.annotation.OplusCompatibleMethod;
import com.oplus.inner.graphics.AdaptiveIconDrawableWrapper;
import com.oplus.ocs.camera.common.util.ApsConstant;
import com.oplus.utils.reflect.RefClass;
import com.oplus.utils.reflect.RefMethod;
import com.oplus.utils.reflect.RefObject;
/* loaded from: classes.dex */
public class AdaptiveIconDrawableNative {
    @OplusCompatibleMethod
    private static Object getForegroundScalePercentCompat(AdaptiveIconDrawable adaptiveIconDrawable) {
        return null;
    }

    private AdaptiveIconDrawableNative() {
    }

    @Oem
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public static float getForegroundScalePercent(AdaptiveIconDrawable adaptiveIconDrawable) throws UnSupportedApiVersionException {
        if (VersionUtils.isS()) {
            return OplusMirrorAdaptiveIconDrawableExt.getForegroundScalePercent.call(OplusMirrorAdaptiveIconDrawable.mIconDrawableExt.get(adaptiveIconDrawable), new Object[0]).floatValue();
        } else if (VersionUtils.isOsVersion11_3()) {
            return AdaptiveIconDrawableWrapper.getForegroundScalePercent(adaptiveIconDrawable);
        } else {
            if (VersionUtils.isQ()) {
                return ((Float) getForegroundScalePercentCompat(adaptiveIconDrawable)).floatValue();
            }
            throw new UnSupportedApiVersionException("Not supported before Q");
        }
    }

    /* loaded from: classes.dex */
    private static class OplusMirrorAdaptiveIconDrawable {
        public static Class<?> TYPE = RefClass.load(OplusMirrorAdaptiveIconDrawable.class, AdaptiveIconDrawable.class);
        public static RefObject<Object> mIconDrawableExt;

        private OplusMirrorAdaptiveIconDrawable() {
        }
    }

    /* loaded from: classes.dex */
    private static class OplusMirrorAdaptiveIconDrawableExt {
        public static Class<?> TYPE = RefClass.load(OplusMirrorAdaptiveIconDrawableExt.class, "android.graphics.drawable.IAdaptiveIconDrawableExt");
        public static RefMethod<Float> getForegroundScalePercent;

        private OplusMirrorAdaptiveIconDrawableExt() {
        }
    }
}

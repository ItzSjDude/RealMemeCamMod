package android.graphics.drawable;

import android.content.res.IResourcesExt;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.drawable.VectorDrawable;

/* loaded from: classes.dex */
public interface IVectorDrawableExt {

    public interface IStaticExt {
        default long changePaintWhenVectorDraw(VectorDrawable vectorDrawable, Canvas canvas, ColorFilter colorFilter, VectorDrawable.VGroup vGroup) {
            if (colorFilter == null) {
                return 0L;
            }
            return colorFilter.getNativeInstance();
        }

        default void resetPaintWhenVectorDraw(VectorDrawable vectorDrawable, Canvas canvas, ColorFilter colorFilter) {
        }

        default void hookVFullInflate(IResourcesExt res) {
        }

        default Float calculateStrokeWidth(String pathName, float defaultWidth) {
            return Float.valueOf(defaultWidth);
        }
    }
}

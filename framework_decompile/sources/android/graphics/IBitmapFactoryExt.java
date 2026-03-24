package android.graphics;

import android.content.res.Resources;
import android.graphics.BitmapFactory;

/* loaded from: classes.dex */
public interface IBitmapFactoryExt {
    default void osenseSetSceneAction(int timeout) {
    }

    default Bitmap getBitmapCache(Resources res, int id, BitmapFactory.Options opts) {
        return null;
    }

    default void setBitmapCache(Bitmap cache, Resources res, int id) {
    }
}

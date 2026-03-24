package android.util;

import android.content.res.Resources;
import android.graphics.drawable.Drawable;

/* loaded from: classes3.dex */
public interface ILauncherIconsExt {
    default Drawable getCorpIconBadgeShadow(Resources resources) {
        return null;
    }

    default Drawable getCorpIconBadgeColor(Resources resources) {
        return null;
    }
}

package android.view;

import android.content.Context;
import android.graphics.Region;

/* loaded from: classes3.dex */
public interface IOplusSystemUINavigationGestureExt {
    default void registerSmartSideBarRegion(Context context) {
    }

    default void unregisterSmartSideBarRegion() {
    }

    default Region getSmartSideBarRegion() {
        return new Region();
    }
}

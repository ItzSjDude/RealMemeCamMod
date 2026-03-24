package android.view;

import android.content.Context;
import android.graphics.Rect;
import android.view.WindowManager;

/* loaded from: classes3.dex */
public interface IWindowLayoutExt {
    default boolean isCutoutModeShow(int cutoutMode) {
        return false;
    }

    default void adjustWindowFrame(WindowManager.LayoutParams attrs, Rect windowBounds, int windowingMode, Rect outDisplayFrame, Rect outParentFrame) {
    }

    default void setInsetsHeightForCropping(int screenHeight, int imeHeight, int navBarHeight, int statusBarHeight, int windowMode) {
    }

    default void setOtherParametersForCropping(float density, float scale, int rotation, Rect zoomRect, Context context) {
    }

    default void adjustDisplayCutoutSafeExceptMaybeBars(WindowManager.LayoutParams attrs, Rect displayFrame, Rect displayCutoutSafeExceptMaybeBars) {
    }
}

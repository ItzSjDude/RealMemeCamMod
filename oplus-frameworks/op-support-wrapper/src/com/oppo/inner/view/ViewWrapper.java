package com.oppo.inner.view;

import android.util.Log;
import android.view.IViewExt;
import android.view.View;
import com.oplus.inner.view.ViewWrapper;

public class ViewWrapper {
    public static boolean isVisibleToUser(View view) {
        return ViewWrapper.isVisibleToUser(view);
    }

    public static boolean isLayoutRtl(View view) {
        return ViewWrapper.isLayoutRtl(view);
    }

    public static void setScrollXForColor(View view, int x) {
        ViewWrapper.setScrollXForColor(view, x);
    }

    public static void setScrollYForColor(View view, int y) {
        ViewWrapper.setScrollYForColor(view, y);
    }

    public static boolean requestAccessibilityFocus(View view) {
        return ViewWrapper.requestAccessibilityFocus(view);
    }

}
package com.oplus.inner.view;

import android.util.Log;
import android.view.IViewExt;
import android.view.View;

/* loaded from: classes.dex */
public class ViewWrapper {
    private static final String TAG = "ViewWrapper";

    public static boolean isVisibleToUser(View view) {
        try {
            boolean result = view.isVisibleToUser();
            return result;
        } catch (Throwable e) {
            Log.e(TAG, e.toString());
            return false;
        }
    }

    public static boolean isLayoutRtl(View view) {
        try {
            boolean result = view.isLayoutRtl();
            return result;
        } catch (Throwable e) {
            Log.e(TAG, e.toString());
            return false;
        }
    }

    public static void setScrollXForColor(View view, int x) {
        try {
            IViewExt viewExt = getViewExt(view);
            viewExt.setScrollXForColor(x);
        } catch (Throwable e) {
            Log.e(TAG, e.toString());
        }
    }

    public static void setScrollYForColor(View view, int y) {
        try {
            IViewExt viewExt = getViewExt(view);
            viewExt.setScrollYForColor(y);
        } catch (Throwable e) {
            Log.e(TAG, e.toString());
        }
    }

    public static boolean requestAccessibilityFocus(View view) {
        try {
            boolean result = view.requestAccessibilityFocus();
            return result;
        } catch (Throwable e) {
            Log.e(TAG, e.toString());
            return false;
        }
    }

    private static IViewExt getViewExt(View view) {
        return view.getViewWrapper().getViewExt();
    }
}

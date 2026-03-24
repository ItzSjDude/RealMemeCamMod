package com.oplus.inner.view;

import android.util.Log;
import android.view.Window;

/* loaded from: classes.dex */
public class WindowWrapper {
    public static final String TAG = "WindowWrapper";

    public static boolean isDestroyed(Window window) {
        try {
            boolean result = window.isDestroyed();
            return result;
        } catch (Throwable e) {
            Log.e(TAG, e.toString());
            return false;
        }
    }

    public static void setCloseOnTouchOutside(Window window, boolean close) {
        window.setCloseOnTouchOutside(close);
    }
}

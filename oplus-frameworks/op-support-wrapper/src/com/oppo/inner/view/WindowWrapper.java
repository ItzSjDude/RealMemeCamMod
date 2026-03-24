package com.oppo.inner.view;

import android.util.Log;
import android.view.Window;
import com.oplus.inner.view.WindowWrapper;

public class WindowWrapper {
    public static boolean isDestroyed(Window window) {
        return WindowWrapper.isDestroyed(window);
    }

    public static void setCloseOnTouchOutside(Window window, boolean close) {
        WindowWrapper.setCloseOnTouchOutside(window, close);
    }

}
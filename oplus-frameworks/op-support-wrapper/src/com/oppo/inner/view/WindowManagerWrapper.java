package com.oppo.inner.view;

import android.util.Log;
import android.view.OplusBaseLayoutParams;
import android.view.WindowManager;
import com.oplus.util.OplusTypeCastingHelper;
import com.oplus.inner.view.WindowManagerWrapper;

public class WindowManagerWrapper {
    public static int getStatusBarStateByWindowManager(WindowManager.LayoutParams params) {
        return WindowManagerWrapper.getStatusBarStateByWindowManager(params);
    }

    public static void setStatusBarStateByWindowManager(WindowManager.LayoutParams params, int disableStatusBar) {
        WindowManagerWrapper.setStatusBarStateByWindowManager(params, disableStatusBar);
    }

    public static int getHomeAndMenuKeyState(WindowManager.LayoutParams params) {
        return WindowManagerWrapper.getHomeAndMenuKeyState(params);
    }

    public static void setHomeAndMenuKeyState(WindowManager.LayoutParams params, int ignoreHomeMenuKey) {
        WindowManagerWrapper.setHomeAndMenuKeyState(params, ignoreHomeMenuKey);
    }

    public static OplusBaseLayoutParams typeCasting(WindowManager.LayoutParams params) {
        return WindowManagerWrapper.typeCasting(params);
    }

}
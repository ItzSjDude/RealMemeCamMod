package com.oppo.inner.view;

import android.util.Log;
import android.view.OplusBaseLayoutParams;
import android.view.WindowManager;
import com.oplus.util.OplusTypeCastingHelper;

/* loaded from: classes.dex */
public class WindowManagerWrapper {
    private static final String TAG = "WindowManagerWrapper";

    public static class LayoutParamsWrapper {
        public static final int DEFAULT_STATUS_BAR = 0;
        public static final int DISABLE_STATUS_BAR = 1;
        public static final int ENABLE_STATUS_BAR = 2;
        public static final int IGNORE_HOME_KEY = 2;
        public static final int IGNORE_HOME_MENU_KEY = 1;
        public static final int IGNORE_MENU_KEY = 3;
        public static final int UNSET_ANY_KEY = 0;

        public static int getStatusBarStateByWindowManager(WindowManager.LayoutParams params) {
            OplusBaseLayoutParams baseParams = WindowManagerWrapper.typeCasting(params);
            try {
                return baseParams.isDisableStatusBar;
            } catch (Exception e) {
                Log.e(WindowManagerWrapper.TAG, e.toString());
                return -1;
            }
        }

        public static void setStatusBarStateByWindowManager(WindowManager.LayoutParams params, int disableStatusBar) {
            OplusBaseLayoutParams baseParams = WindowManagerWrapper.typeCasting(params);
            try {
                baseParams.isDisableStatusBar = disableStatusBar;
            } catch (Exception e) {
                Log.e(WindowManagerWrapper.TAG, e.toString());
            }
        }

        public static int getHomeAndMenuKeyState(WindowManager.LayoutParams params) {
            OplusBaseLayoutParams baseParams = WindowManagerWrapper.typeCasting(params);
            try {
                return baseParams.ignoreHomeMenuKey;
            } catch (Exception e) {
                Log.e(WindowManagerWrapper.TAG, e.toString());
                return -1;
            }
        }

        public static void setHomeAndMenuKeyState(WindowManager.LayoutParams params, int ignoreHomeMenuKey) {
            OplusBaseLayoutParams baseParams = WindowManagerWrapper.typeCasting(params);
            try {
                baseParams.ignoreHomeMenuKey = ignoreHomeMenuKey;
            } catch (Exception e) {
                Log.e(WindowManagerWrapper.TAG, e.toString());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static OplusBaseLayoutParams typeCasting(WindowManager.LayoutParams params) {
        return (OplusBaseLayoutParams) OplusTypeCastingHelper.typeCasting(OplusBaseLayoutParams.class, params);
    }
}

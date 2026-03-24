package com.oplus.inner.view.inputmethod;

import android.util.Log;
import android.view.inputmethod.InputMethodManager;

/* loaded from: classes.dex */
public class InputMethodManagerWrapper {
    private static final String TAG = "InputMethodManagerWrapper";

    private InputMethodManagerWrapper() {
    }

    public static int getInputMethodWindowVisibleHeight(InputMethodManager inputMethodManager) {
        try {
            int result = inputMethodManager.getInputMethodWindowVisibleHeight();
            return result;
        } catch (Throwable e) {
            Log.e(TAG, e.toString());
            return 0;
        }
    }
}

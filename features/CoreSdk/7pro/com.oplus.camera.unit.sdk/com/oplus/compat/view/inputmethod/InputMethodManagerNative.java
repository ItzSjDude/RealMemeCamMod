package com.oplus.compat.view.inputmethod;

import android.view.inputmethod.InputMethodManager;
import androidx.annotation.RequiresApi;
import com.oplus.compat.annotation.Grey;
import com.oplus.compat.utils.util.UnSupportedApiVersionException;
import com.oplus.compat.utils.util.VersionUtils;
import com.oplus.compatsdk.annotation.OplusCompatibleMethod;
import com.oplus.inner.view.inputmethod.InputMethodManagerWrapper;
import com.oplus.ocs.camera.common.util.ApsConstant;
/* loaded from: classes.dex */
public class InputMethodManagerNative {
    @OplusCompatibleMethod
    private static Object getInputMethodWindowVisibleHeightQCompat(InputMethodManager inputMethodManager) {
        return null;
    }

    private InputMethodManagerNative() {
    }

    @Grey
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_MULTI_FRAME_DENOISE_HDR)
    public static int getInputMethodWindowVisibleHeight(InputMethodManager inputMethodManager) throws UnSupportedApiVersionException {
        if (VersionUtils.isS()) {
            return inputMethodManager.getInputMethodWindowVisibleHeight();
        }
        if (VersionUtils.isOsVersion11_3()) {
            return InputMethodManagerWrapper.getInputMethodWindowVisibleHeight(inputMethodManager);
        }
        if (VersionUtils.isQ()) {
            return ((Integer) getInputMethodWindowVisibleHeightQCompat(inputMethodManager)).intValue();
        }
        if (VersionUtils.isN()) {
            return inputMethodManager.getInputMethodWindowVisibleHeight();
        }
        throw new UnSupportedApiVersionException("not supported be N");
    }
}

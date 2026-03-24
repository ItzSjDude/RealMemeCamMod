package com.oplus.compat.view;

import android.view.Window;
import androidx.annotation.RequiresApi;
import com.oplus.compat.annotation.Grey;
import com.oplus.compat.utils.util.UnSupportedApiVersionException;
import com.oplus.compat.utils.util.VersionUtils;
/* loaded from: classes.dex */
public class WindowNative {
    private static final String TAG = "WindowNative";

    private WindowNative() {
    }

    @Grey
    @RequiresApi(api = 21)
    public static void setCloseOnTouchOutside(Window window, boolean z) throws UnSupportedApiVersionException {
        if (VersionUtils.isL()) {
            window.setCloseOnTouchOutside(z);
            return;
        }
        throw new UnSupportedApiVersionException("not supported before L");
    }
}

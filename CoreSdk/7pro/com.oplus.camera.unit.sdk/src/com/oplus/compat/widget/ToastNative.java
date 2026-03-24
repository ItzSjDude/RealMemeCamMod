package com.oplus.compat.widget;

import android.view.WindowManager;
import android.widget.Toast;
import androidx.annotation.RequiresApi;
import com.oplus.compat.annotation.Grey;
import com.oplus.compat.utils.util.UnSupportedApiVersionException;
import com.oplus.compat.utils.util.VersionUtils;
import com.oplus.utils.reflect.RefClass;
import com.oplus.utils.reflect.RefMethod;
/* loaded from: classes.dex */
public class ToastNative {
    private ToastNative() {
    }

    /* loaded from: classes.dex */
    private static class ReflectInfo {
        public static RefMethod<WindowManager.LayoutParams> getWindowParams;

        private ReflectInfo() {
        }

        static {
            RefClass.load(ReflectInfo.class, Toast.class);
        }
    }

    @Grey
    @RequiresApi(api = 28)
    public static WindowManager.LayoutParams getWindowParams(Toast toast) throws UnSupportedApiVersionException {
        if (VersionUtils.isP()) {
            return ReflectInfo.getWindowParams.call(toast, new Object[0]);
        }
        throw new UnSupportedApiVersionException("not supported before P");
    }
}

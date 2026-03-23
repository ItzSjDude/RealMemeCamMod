package com.oplus.compat.os;

import android.os.Handler;
import androidx.annotation.RequiresApi;
import com.oplus.compat.annotation.Grey;
import com.oplus.compat.utils.util.UnSupportedApiVersionException;
import com.oplus.compat.utils.util.VersionUtils;
import com.oplus.utils.reflect.RefClass;
import com.oplus.utils.reflect.RefMethod;
/* loaded from: classes.dex */
public class HandlerNative {

    /* loaded from: classes.dex */
    private static class ReflectInfo {
        private static RefMethod<Boolean> hasCallbacks;

        private ReflectInfo() {
        }

        static {
            RefClass.load(ReflectInfo.class, Handler.class);
        }
    }

    private HandlerNative() {
    }

    @Grey
    @RequiresApi(api = 21)
    public static boolean hasCallbacks(Handler handler, Runnable runnable) throws UnSupportedApiVersionException {
        if (VersionUtils.isQ()) {
            return handler.hasCallbacks(runnable);
        }
        if (VersionUtils.isL()) {
            return ((Boolean) ReflectInfo.hasCallbacks.call(handler, runnable)).booleanValue();
        }
        throw new UnSupportedApiVersionException("Not supported before L");
    }
}

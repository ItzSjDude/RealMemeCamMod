package com.oplus.compat.os;

import androidx.annotation.RequiresApi;
import com.oplus.compat.annotation.Blocked;
import com.oplus.compat.utils.util.UnSupportedApiVersionException;
import com.oplus.compat.utils.util.VersionUtils;
import com.oplus.utils.reflect.RefClass;
import com.oplus.utils.reflect.RefMethod;
/* loaded from: classes.dex */
public class PerformanceManagerNative {

    /* loaded from: classes.dex */
    private static class ReflectInfo {
        private static RefMethod<Void> disableMultiThreadOptimize;
        private static RefMethod<Void> enableMultiThreadOptimize;

        private ReflectInfo() {
        }

        static {
            RefClass.load(ReflectInfo.class, "android.os.PerformanceManager");
        }
    }

    private PerformanceManagerNative() {
    }

    @Blocked
    @RequiresApi(api = 30)
    public static void disableMultiThreadOptimize() throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            ReflectInfo.disableMultiThreadOptimize.call(null, new Object[0]);
            return;
        }
        throw new UnSupportedApiVersionException("not supported before R");
    }

    @Blocked
    @RequiresApi(api = 30)
    public static void enableMultiThreadOptimize() throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            ReflectInfo.enableMultiThreadOptimize.call(null, new Object[0]);
            return;
        }
        throw new UnSupportedApiVersionException("not supported before R");
    }
}

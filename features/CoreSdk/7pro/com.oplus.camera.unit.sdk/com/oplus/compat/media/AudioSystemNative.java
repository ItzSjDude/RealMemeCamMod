package com.oplus.compat.media;

import androidx.annotation.RequiresApi;
import com.oplus.compat.annotation.Grey;
import com.oplus.compat.utils.util.UnSupportedApiVersionException;
import com.oplus.compat.utils.util.VersionUtils;
import com.oplus.utils.reflect.RefClass;
import com.oplus.utils.reflect.RefMethod;
/* loaded from: classes.dex */
public class AudioSystemNative {
    private AudioSystemNative() {
    }

    /* loaded from: classes.dex */
    private static class ReflectInfo {
        private static RefMethod<Boolean> isStreamActive;
        private static RefMethod<Integer> setParameters;

        private ReflectInfo() {
        }

        static {
            RefClass.load(ReflectInfo.class, "android.media.AudioSystem");
        }
    }

    @Grey
    @RequiresApi(api = 30)
    public static boolean isStreamActive(int i, int i2) throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            return ((Boolean) ReflectInfo.isStreamActive.call(null, Integer.valueOf(i), Integer.valueOf(i2))).booleanValue();
        }
        throw new UnSupportedApiVersionException("Not supported before R");
    }

    @Grey
    @RequiresApi(api = 30)
    public static int setParameters(String str) throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            return ((Integer) ReflectInfo.setParameters.call(null, str)).intValue();
        }
        throw new UnSupportedApiVersionException("Not supported before R");
    }
}

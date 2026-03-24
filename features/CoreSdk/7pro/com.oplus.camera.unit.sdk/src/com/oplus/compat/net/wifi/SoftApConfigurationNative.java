package com.oplus.compat.net.wifi;

import android.util.Log;
import androidx.annotation.RequiresApi;
import com.oplus.compat.annotation.Oem;
import com.oplus.compat.utils.util.VersionUtils;
import com.oplus.utils.reflect.RefClass;
import com.oplus.utils.reflect.RefInt;
/* loaded from: classes.dex */
public class SoftApConfigurationNative {
    @Oem
    @RequiresApi(api = 30)
    public static int BAND_DUAL = 0;
    @Oem
    @RequiresApi(api = 30)
    public static int SECURITY_TYPE_OWE = 0;
    @Oem
    @RequiresApi(api = 30)
    public static int SECURITY_TYPE_SAE = 0;
    private static final String TAG = "SoftApConfigurationNative";

    /* loaded from: classes.dex */
    private static class ReflectInfo {
        private static RefInt BAND_DUAL;
        private static RefInt SECURITY_TYPE_OWE;
        private static RefInt SECURITY_TYPE_SAE;

        private ReflectInfo() {
        }

        static {
            RefClass.load(ReflectInfo.class, "android.net.wifi.SoftApConfiguration");
        }
    }

    static {
        if (VersionUtils.isR()) {
            SECURITY_TYPE_OWE = ReflectInfo.SECURITY_TYPE_OWE.get(null);
            SECURITY_TYPE_SAE = ReflectInfo.SECURITY_TYPE_SAE.get(null);
            BAND_DUAL = ReflectInfo.BAND_DUAL.get(null);
            return;
        }
        Log.e(TAG, "not support before R");
    }
}

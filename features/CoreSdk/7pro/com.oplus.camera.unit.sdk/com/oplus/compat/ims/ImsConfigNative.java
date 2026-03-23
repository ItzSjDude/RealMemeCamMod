package com.oplus.compat.ims;

import android.util.Log;
import androidx.annotation.RequiresApi;
import com.oplus.compat.annotation.Blocked;
import com.oplus.compat.utils.util.UnSupportedApiVersionException;
import com.oplus.compat.utils.util.VersionUtils;
import com.oplus.utils.reflect.RefClass;
import com.oplus.utils.reflect.RefInt;
/* loaded from: classes.dex */
public class ImsConfigNative {
    private static final String TAG = "ImsConfigNative";

    private ImsConfigNative() {
    }

    /* loaded from: classes.dex */
    private static class ReflectInfo {
        private static RefInt IMS_PREFERRED;

        private ReflectInfo() {
        }

        static {
            RefClass.load(ReflectInfo.class, "com.android.ims.ImsConfig.WfcModeFeatureValueConstants");
        }
    }

    /* loaded from: classes.dex */
    public static class WfcModeFeatureValueConstantsNative {
        @Blocked
        @RequiresApi(api = 30)
        public static int IMS_PREFERRED;

        static {
            try {
                if (VersionUtils.isR()) {
                    IMS_PREFERRED = ReflectInfo.IMS_PREFERRED.getWithException(null);
                    return;
                }
                throw new UnSupportedApiVersionException("not support before R");
            } catch (Throwable th) {
                Log.e(ImsConfigNative.TAG, th.toString());
            }
        }
    }
}

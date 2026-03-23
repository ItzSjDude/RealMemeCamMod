package com.oplus.compat.hypnus;

import android.util.Log;
import androidx.annotation.RequiresApi;
import com.oplus.compat.annotation.Oem;
import com.oplus.compat.utils.util.UnSupportedApiVersionException;
import com.oplus.compat.utils.util.VersionUtils;
import com.oplus.compatsdk.annotation.OplusCompatibleMethod;
/* loaded from: classes.dex */
public class HypnusManagerNative {
    private static final String TAG = "HypnusManagerNative";
    private Object mHypnusManager;

    @OplusCompatibleMethod
    private static Object hypnusGetBenchModeStateForQ(Object obj) {
        return null;
    }

    @OplusCompatibleMethod
    private static Object init() {
        return null;
    }

    @Oem
    @RequiresApi(api = 28)
    public HypnusManagerNative() {
        if (VersionUtils.isR()) {
            Log.e(TAG, "not supported in R");
        } else if (VersionUtils.isP()) {
            this.mHypnusManager = init();
        } else {
            Log.e(TAG, "not supported before P");
        }
    }

    @Oem
    @RequiresApi(api = 28)
    public String hypnusGetBenchModeState() throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            throw new UnSupportedApiVersionException("should not be invoked in R");
        }
        if (VersionUtils.isP()) {
            return (String) hypnusGetBenchModeStateForQ(this.mHypnusManager);
        }
        throw new UnSupportedApiVersionException("should not be invoked before P");
    }
}

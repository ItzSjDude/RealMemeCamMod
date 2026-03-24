package com.oplus.compat.internal.policy;

import android.content.Context;
import android.view.Window;
import androidx.annotation.RequiresApi;
import com.android.internal.policy.PhoneWindow;
import com.oplus.compat.annotation.Grey;
import com.oplus.compat.utils.util.UnSupportedApiVersionException;
import com.oplus.compat.utils.util.VersionUtils;
import com.oplus.compatsdk.annotation.OplusCompatibleMethod;
import com.oplus.inner.internal.policy.PhoneWindowWrapper;
import com.oplus.ocs.camera.common.util.ApsConstant;
/* loaded from: classes.dex */
public class PhoneWindowNative {
    private static final String TAG = "PhoneWindowNative";
    private PhoneWindow mWindow;
    private Object mWindowWrapper;

    @OplusCompatibleMethod
    private static Object getWindowCompat(Object obj) {
        return null;
    }

    @OplusCompatibleMethod
    private static Object initWrapperCompat(Context context) {
        return null;
    }

    @Grey
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_MULTI_FRAME_DENOISE_HDR)
    public PhoneWindowNative(Context context) throws UnSupportedApiVersionException {
        if (VersionUtils.isS()) {
            this.mWindow = new PhoneWindow(context);
        } else if (VersionUtils.isOsVersion11_3()) {
            this.mWindowWrapper = new PhoneWindowWrapper(context);
        } else if (VersionUtils.isQ()) {
            this.mWindowWrapper = initWrapperCompat(context);
        } else if (VersionUtils.isN()) {
            this.mWindow = new PhoneWindow(context);
        } else {
            throw new UnSupportedApiVersionException();
        }
    }

    @Grey
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_MULTI_FRAME_DENOISE_HDR)
    public Window getWindow() throws UnSupportedApiVersionException {
        if (VersionUtils.isS()) {
            return this.mWindow;
        }
        if (VersionUtils.isOsVersion11_3()) {
            return ((PhoneWindowWrapper) this.mWindowWrapper).getWindow();
        }
        if (VersionUtils.isQ()) {
            return (Window) getWindowCompat(this.mWindowWrapper);
        }
        if (VersionUtils.isN()) {
            return this.mWindow;
        }
        throw new UnSupportedApiVersionException();
    }
}

package com.oplus.compat.hardware.camera2;

import android.hardware.camera2.CaptureResult;
import android.util.Log;
import androidx.annotation.RequiresApi;
import com.oplus.compat.annotation.Blocked;
import com.oplus.compat.annotation.Grey;
import com.oplus.compat.utils.util.UnSupportedApiVersionException;
import com.oplus.compat.utils.util.VersionUtils;
import com.oplus.compatsdk.annotation.OplusCompatibleMethod;
import com.oplus.inner.hardware.camera2.CaptureResultWrapper;
import com.oplus.ocs.camera.common.util.ApsConstant;
/* loaded from: classes.dex */
public class CaptureResultNative {
    private static final String TAG = "CaptureResultNative";

    @OplusCompatibleMethod
    private static <T> Object captureRequestKeyQCompat(String str, Class<T> cls, long j) {
        return null;
    }

    @OplusCompatibleMethod
    private static <T> Object captureResultKeyQCompat(String str, Class<T> cls) {
        return null;
    }

    private CaptureResultNative() {
    }

    @Blocked
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public static <T> CaptureResult.Key<T> captureResultKey(String str, Class<T> cls, long j) throws UnSupportedApiVersionException {
        if (VersionUtils.isS()) {
            try {
                return new CaptureResult.Key<>(str, cls, j);
            } catch (NoSuchMethodError e) {
                Log.e(TAG, e.toString());
                throw new UnSupportedApiVersionException("no permission to access the blocked method", e);
            }
        } else if (VersionUtils.isOsVersion11_3()) {
            return CaptureResultWrapper.captureResultKey(str, cls, j);
        } else {
            if (VersionUtils.isQ()) {
                return (CaptureResult.Key) captureRequestKeyQCompat(str, cls, j);
            }
            throw new UnSupportedApiVersionException();
        }
    }

    @Grey
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public static <T> CaptureResult.Key<T> captureResultKey(String str, Class<T> cls) throws UnSupportedApiVersionException {
        if (VersionUtils.isS()) {
            return new CaptureResult.Key<>(str, cls);
        }
        if (VersionUtils.isOsVersion11_3()) {
            return CaptureResultWrapper.captureResultKey(str, cls);
        }
        if (VersionUtils.isQ()) {
            return (CaptureResult.Key) captureResultKeyQCompat(str, cls);
        }
        throw new UnSupportedApiVersionException();
    }
}

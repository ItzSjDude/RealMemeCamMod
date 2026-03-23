package com.oplus.compat.hardware.camera2;

import android.hardware.camera2.CaptureRequest;
import android.util.Log;
import androidx.annotation.RequiresApi;
import com.oplus.compat.annotation.Blocked;
import com.oplus.compat.annotation.Grey;
import com.oplus.compat.utils.util.UnSupportedApiVersionException;
import com.oplus.compat.utils.util.VersionUtils;
import com.oplus.compatsdk.annotation.OplusCompatibleMethod;
import com.oplus.inner.hardware.camera2.CaptureRequestWrapper;
import com.oplus.ocs.camera.common.util.ApsConstant;
/* loaded from: classes.dex */
public class CaptureRequestNative {
    private static final String TAG = "CaptureRequestNative";

    @OplusCompatibleMethod
    private static <T> Object captureRequestKeyQCompat(String str, Class<T> cls) {
        return null;
    }

    @OplusCompatibleMethod
    private static <T> Object captureRequestKeyQCompat(String str, Class<T> cls, long j) {
        return null;
    }

    private CaptureRequestNative() {
    }

    @Blocked
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public static <T> CaptureRequest.Key<T> captureRequestKey(String str, Class<T> cls, long j) throws UnSupportedApiVersionException {
        if (VersionUtils.isS()) {
            try {
                return new CaptureRequest.Key<>(str, cls, j);
            } catch (NoSuchMethodError e) {
                Log.e(TAG, e.toString());
                throw new UnSupportedApiVersionException("no permission to access the blocked method", e);
            }
        } else if (VersionUtils.isOsVersion11_3()) {
            return CaptureRequestWrapper.captureRequestKey(str, cls, j);
        } else {
            if (VersionUtils.isQ()) {
                return (CaptureRequest.Key) captureRequestKeyQCompat(str, cls, j);
            }
            throw new UnsupportedOperationException();
        }
    }

    @Grey
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public static <T> CaptureRequest.Key<T> captureRequestKey(String str, Class<T> cls) throws UnSupportedApiVersionException {
        if (VersionUtils.isS()) {
            return new CaptureRequest.Key<>(str, cls);
        }
        if (VersionUtils.isOsVersion11_3()) {
            return CaptureRequestWrapper.captureRequestKey(str, cls);
        }
        if (VersionUtils.isQ()) {
            return (CaptureRequest.Key) captureRequestKeyQCompat(str, cls);
        }
        throw new UnSupportedApiVersionException();
    }
}

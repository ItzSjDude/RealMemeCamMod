package com.oplus.compat.nfc.cardemulation;

import android.nfc.cardemulation.OplusBaseApduServiceInfo;
import android.util.Log;
import androidx.annotation.RequiresApi;
import com.oplus.compat.annotation.Blocked;
import com.oplus.compat.util.OplusTypeCastingHelperNative;
import com.oplus.compat.utils.util.UnSupportedApiVersionException;
import com.oplus.compat.utils.util.VersionUtils;
import com.oplus.compatsdk.annotation.OplusCompatibleMethod;
import com.oplus.inner.nfc.cardemulation.ApduServiceInfoWrapper;
import com.oplus.ocs.camera.common.util.ApsConstant;
/* loaded from: classes.dex */
public class ApduServiceInfoNative {
    private static final String TAG = "ApduServiceInfoNative";

    @OplusCompatibleMethod
    private static Object isServiceEnabledCompat(Object obj, String str) {
        return null;
    }

    private ApduServiceInfoNative() {
    }

    @Blocked
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public static boolean isServiceEnabled(Object obj, String str) throws UnSupportedApiVersionException {
        if (VersionUtils.isS()) {
            try {
                OplusBaseApduServiceInfo oplusBaseApduServiceInfo = (OplusBaseApduServiceInfo) OplusTypeCastingHelperNative.typeCasting(OplusBaseApduServiceInfo.class, obj);
                if (oplusBaseApduServiceInfo != null) {
                    return oplusBaseApduServiceInfo.isServiceEnabled(str);
                }
                return false;
            } catch (NoSuchMethodError e) {
                Log.e(TAG, e.toString());
                throw new UnSupportedApiVersionException("no permission to access the blocked method", e);
            }
        } else if (VersionUtils.isOsVersion11_3()) {
            return ApduServiceInfoWrapper.isServiceEnabled(obj, str);
        } else {
            if (VersionUtils.isQ()) {
                return ((Boolean) isServiceEnabledCompat(obj, str)).booleanValue();
            }
            throw new UnSupportedApiVersionException("Not supported before Q");
        }
    }
}

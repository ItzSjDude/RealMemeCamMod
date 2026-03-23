package com.oplus.compat.telephony;

import androidx.annotation.RequiresApi;
import com.android.internal.telephony.Phone;
import com.oplus.compat.annotation.Blocked;
import com.oplus.compat.utils.util.VersionUtils;
import com.oplus.compatsdk.annotation.OplusCompatibleMethod;
import com.oplus.inner.telephony.PhoneWrapper;
import com.oplus.ocs.camera.common.util.ApsConstant;
/* loaded from: classes.dex */
public class PhoneNative {
    @Blocked
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public static int PREFERRED_NT_MODE = ((Integer) getPreferredNtModeCompat()).intValue();
    private static final String TAG = "PhoneNative";

    @OplusCompatibleMethod
    private static Object getPreferredNtModeCompat() {
        if (VersionUtils.isS()) {
            return Integer.valueOf(Phone.PREFERRED_NT_MODE);
        }
        if (VersionUtils.isOsVersion11_3()) {
            return Integer.valueOf(PhoneWrapper.PREFERRED_NT_MODE);
        }
        return null;
    }

    private PhoneNative() {
    }
}

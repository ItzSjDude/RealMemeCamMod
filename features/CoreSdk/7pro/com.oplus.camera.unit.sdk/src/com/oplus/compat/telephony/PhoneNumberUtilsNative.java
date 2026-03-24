package com.oplus.compat.telephony;

import android.telephony.PhoneNumberUtils;
import androidx.annotation.RequiresApi;
import com.oplus.compat.annotation.Grey;
import com.oplus.compat.utils.util.UnSupportedApiVersionException;
import com.oplus.compat.utils.util.VersionUtils;
import com.oplus.compatsdk.annotation.OplusCompatibleMethod;
import com.oplus.ocs.camera.common.util.ApsConstant;
/* loaded from: classes.dex */
public class PhoneNumberUtilsNative {
    @OplusCompatibleMethod
    private static Object cdmaCheckAndProcessPlusCodeCompat(String str) {
        return null;
    }

    private PhoneNumberUtilsNative() {
    }

    @Grey
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public static String cdmaCheckAndProcessPlusCode(String str) throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            return PhoneNumberUtils.cdmaCheckAndProcessPlusCode(str);
        }
        if (VersionUtils.isQ()) {
            return (String) cdmaCheckAndProcessPlusCodeCompat(str);
        }
        throw new UnSupportedApiVersionException("not supported before Q");
    }
}

package com.oplus.compat.internal.os;

import android.content.Context;
import androidx.annotation.RequiresApi;
import com.android.internal.os.PowerProfile;
import com.oplus.compat.annotation.Grey;
import com.oplus.compat.utils.util.UnSupportedApiVersionException;
import com.oplus.compat.utils.util.VersionUtils;
import com.oplus.compatsdk.annotation.OplusCompatibleMethod;
import com.oplus.inner.internal.os.PowerProfileWrapper;
import com.oplus.ocs.camera.common.util.ApsConstant;
/* loaded from: classes.dex */
public class PowerProfileNative {
    private static final String TAG = "PowerProfileNative";

    @OplusCompatibleMethod
    private static Object getAveragePowerCompat(Context context, String str) {
        return null;
    }

    @OplusCompatibleMethod
    private static Object getBatteryCapacityCompat(Context context) {
        return null;
    }

    private PowerProfileNative() {
    }

    @Grey
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public static double getBatteryCapacity(Context context) throws UnSupportedApiVersionException {
        if (VersionUtils.isS()) {
            return new PowerProfile(context).getBatteryCapacity();
        }
        if (VersionUtils.isOsVersion11_3()) {
            return PowerProfileWrapper.getBatteryCapacity(context);
        }
        if (VersionUtils.isQ()) {
            return ((Double) getBatteryCapacityCompat(context)).doubleValue();
        }
        throw new UnSupportedApiVersionException();
    }

    @Grey
    @RequiresApi(api = 26)
    public static double getAveragePower(Context context, String str) throws UnSupportedApiVersionException {
        if (VersionUtils.isS()) {
            return new PowerProfile(context).getAveragePower(str);
        }
        if (VersionUtils.isOsVersion11_3()) {
            return PowerProfileWrapper.getAveragePower(context, str);
        }
        if (VersionUtils.isQ()) {
            return ((Double) getAveragePowerCompat(context, str)).doubleValue();
        }
        if (VersionUtils.isO()) {
            return new PowerProfile(context).getAveragePower(str);
        }
        throw new UnSupportedApiVersionException();
    }
}

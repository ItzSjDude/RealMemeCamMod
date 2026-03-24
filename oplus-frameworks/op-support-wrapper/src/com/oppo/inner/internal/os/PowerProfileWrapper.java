package com.oppo.inner.internal.os;

import android.content.Context;
import android.util.Log;
import com.android.internal.os.PowerProfile;
import com.oplus.inner.internal.os.PowerProfileWrapper;

public class PowerProfileWrapper {
    public static double getBatteryCapacity(Context context) {
        return PowerProfileWrapper.getBatteryCapacity(context);
    }

    public static double getAveragePower(Context context, String type) {
        return PowerProfileWrapper.getAveragePower(context, type);
    }

}
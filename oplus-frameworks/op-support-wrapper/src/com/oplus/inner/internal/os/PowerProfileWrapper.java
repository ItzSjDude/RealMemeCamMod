package com.oplus.inner.internal.os;

import android.content.Context;
import android.util.Log;
import com.android.internal.os.PowerProfile;

/* loaded from: classes.dex */
public class PowerProfileWrapper {
    private static final String TAG = "PowerProfileWrapper";

    private PowerProfileWrapper() {
    }

    public static double getBatteryCapacity(Context context) {
        try {
            PowerProfile powerProfile = new PowerProfile(context);
            return powerProfile.getBatteryCapacity();
        } catch (Throwable e) {
            Log.e(TAG, e.toString());
            return 0.0d;
        }
    }

    public static double getAveragePower(Context context, String type) {
        try {
            PowerProfile powerProfile = new PowerProfile(context);
            return powerProfile.getAveragePower(type);
        } catch (Throwable e) {
            Log.e(TAG, e.toString());
            return 0.0d;
        }
    }
}

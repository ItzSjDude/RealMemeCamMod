package com.oplus.compat.os;

import android.os.Build;
import android.util.Log;
import androidx.annotation.RequiresApi;
import com.oplus.compat.annotation.Oem;
import com.oplus.compatsdk.annotation.OplusCompatibleMethod;
import com.oplus.ocs.camera.common.util.ApsConstant;
/* loaded from: classes.dex */
public class WaveformEffectNative {
    @Oem
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public static int EFFECT_ALARM_NOTIFICATION = 0;
    private static final String TAG = "WaveformEffectNative";

    @OplusCompatibleMethod
    private static Object initForQ() {
        return null;
    }

    static {
        if (Build.VERSION.SDK_INT == 29) {
            EFFECT_ALARM_NOTIFICATION = ((Integer) initForQ()).intValue();
        } else {
            Log.e(TAG, "only support before Q");
        }
    }
}

package com.oplus.compat.net;

import androidx.annotation.RequiresApi;
import com.oplus.compat.annotation.Blocked;
import com.oplus.compat.utils.util.UnSupportedApiVersionException;
import com.oplus.compat.utils.util.VersionUtils;
import com.oplus.compatsdk.annotation.OplusCompatibleMethod;
import com.oplus.ocs.camera.common.util.ApsConstant;
/* loaded from: classes.dex */
public class TrafficStatsNative {
    private static final String TAG = "TrafficStatsNative";

    @OplusCompatibleMethod
    private static Object getStatsServiceQCompat() {
        return null;
    }

    @Blocked
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public static Object getStatsService() throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            throw new UnSupportedApiVersionException("Not supported in R because of blacklist");
        }
        if (VersionUtils.isQ()) {
            return getStatsServiceQCompat();
        }
        throw new UnSupportedApiVersionException();
    }
}

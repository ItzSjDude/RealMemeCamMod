package com.oplus.compat.app.usage;

import android.app.usage.UsageStats;
import androidx.annotation.RequiresApi;
import com.oplus.compat.annotation.Grey;
import com.oplus.compat.utils.util.UnSupportedApiVersionException;
import com.oplus.compat.utils.util.VersionUtils;
import com.oplus.ocs.camera.common.util.ApsConstant;
/* loaded from: classes.dex */
public class UsageStatsNative {
    private UsageStatsNative() {
    }

    @Grey
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public static int getAppLaunchCount(UsageStats usageStats) throws UnSupportedApiVersionException {
        if (VersionUtils.isQ()) {
            return usageStats.getAppLaunchCount();
        }
        throw new UnSupportedApiVersionException("not supported before Q");
    }
}

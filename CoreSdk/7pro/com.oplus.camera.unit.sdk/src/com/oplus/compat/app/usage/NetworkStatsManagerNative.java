package com.oplus.compat.app.usage;

import android.app.usage.NetworkStats;
import android.app.usage.NetworkStatsManager;
import android.net.NetworkTemplate;
import androidx.annotation.RequiresApi;
import com.oplus.compat.annotation.Blocked;
import com.oplus.compat.utils.util.UnSupportedApiVersionException;
import com.oplus.compat.utils.util.VersionUtils;
import com.oplus.compatsdk.annotation.OplusCompatibleMethod;
import com.oplus.inner.app.usage.NetworkStatsManagerWrapper;
import com.oplus.ocs.camera.common.util.ApsConstant;
/* loaded from: classes.dex */
public class NetworkStatsManagerNative {
    @OplusCompatibleMethod
    private static Object querySummaryForDeviceWithMobileAllTemplateForCompat(NetworkStatsManager networkStatsManager, String str, long j, long j2) {
        return null;
    }

    @OplusCompatibleMethod
    private static Object querySummaryForDeviceWithWifiTemplateForCompat(NetworkStatsManager networkStatsManager, long j, long j2) {
        return null;
    }

    private NetworkStatsManagerNative() {
    }

    @Blocked
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public static long querySummaryForDeviceWithMobileAllTemplate(NetworkStatsManager networkStatsManager, String str, long j, long j2) throws UnSupportedApiVersionException {
        try {
            if (VersionUtils.isS()) {
                NetworkStats.Bucket querySummaryForDevice = networkStatsManager.querySummaryForDevice(NetworkTemplate.buildTemplateMobileAll(str), j, j2);
                return querySummaryForDevice.getRxBytes() + querySummaryForDevice.getTxBytes();
            } else if (VersionUtils.isOsVersion11_3()) {
                return NetworkStatsManagerWrapper.querySummaryForDeviceWithMobileAllTemplate(networkStatsManager, str, j, j2);
            } else {
                if (VersionUtils.isQ()) {
                    return ((Long) querySummaryForDeviceWithMobileAllTemplateForCompat(networkStatsManager, str, j, j2)).longValue();
                }
                throw new UnSupportedApiVersionException("Not supported before Q");
            }
        } catch (Throwable th) {
            throw new UnSupportedApiVersionException(th);
        }
    }

    @Blocked
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public static long querySummaryForDeviceWithWifiTemplate(NetworkStatsManager networkStatsManager, long j, long j2) throws UnSupportedApiVersionException {
        try {
            if (VersionUtils.isS()) {
                NetworkStats.Bucket querySummaryForDevice = networkStatsManager.querySummaryForDevice(NetworkTemplate.buildTemplateWifiWildcard(), j, j2);
                return querySummaryForDevice.getRxBytes() + querySummaryForDevice.getTxBytes();
            } else if (VersionUtils.isOsVersion11_3()) {
                return NetworkStatsManagerWrapper.querySummaryForDeviceWithWifiTemplate(networkStatsManager, j, j2);
            } else {
                if (VersionUtils.isQ()) {
                    return ((Long) querySummaryForDeviceWithWifiTemplateForCompat(networkStatsManager, j, j2)).longValue();
                }
                throw new UnSupportedApiVersionException("Not supported before Q");
            }
        } catch (Throwable th) {
            throw new UnSupportedApiVersionException(th);
        }
    }
}

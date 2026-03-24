package com.oppo.inner.app.usage;

import android.app.usage.NetworkStatsManager;
import android.os.RemoteException;
import com.oplus.inner.app.usage.NetworkStatsManagerWrapper;

public class NetworkStatsManagerWrapper {
    public static long querySummaryForDeviceWithMobileAllTemplate(NetworkStatsManager networkStatsManager, String subscriberId, long startTime, long endTime) {
        return NetworkStatsManagerWrapper.querySummaryForDeviceWithMobileAllTemplate(networkStatsManager, subscriberId, startTime, endTime);
    }

    public static long querySummaryForDeviceWithWifiTemplate(NetworkStatsManager networkStatsManager, long startTime, long endTime) {
        return NetworkStatsManagerWrapper.querySummaryForDeviceWithWifiTemplate(networkStatsManager, startTime, endTime);
    }

}
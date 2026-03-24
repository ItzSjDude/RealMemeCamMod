package com.oppo.inner.app.usage;

import android.app.usage.NetworkStatsManager;
import android.os.RemoteException;

/* loaded from: classes.dex */
public class NetworkStatsManagerWrapper {
    private static final String TAG = "NetworkStatsManagerWrapper";

    private NetworkStatsManagerWrapper() {
    }

    public static long querySummaryForDeviceWithMobileAllTemplate(NetworkStatsManager networkStatsManager, String subscriberId, long startTime, long endTime) throws RemoteException {
        return 0L;
    }

    public static long querySummaryForDeviceWithWifiTemplate(NetworkStatsManager networkStatsManager, long startTime, long endTime) throws RemoteException {
        return 0L;
    }
}

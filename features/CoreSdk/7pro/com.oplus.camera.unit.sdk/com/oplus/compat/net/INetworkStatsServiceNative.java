package com.oplus.compat.net;

import android.net.INetworkStatsService;
import android.os.RemoteException;
import android.os.ServiceManager;
import androidx.annotation.RequiresApi;
import com.oplus.compat.annotation.Grey;
import com.oplus.compat.utils.util.UnSupportedApiVersionException;
import com.oplus.compat.utils.util.VersionUtils;
import com.oplus.compatsdk.annotation.OplusCompatibleMethod;
/* loaded from: classes.dex */
public class INetworkStatsServiceNative {
    private static final String TAG = "INetworkStatsServiceNative";

    @OplusCompatibleMethod
    private static Object openSessionQCompat() {
        return null;
    }

    @Grey
    @RequiresApi(api = 28)
    public static INetworkStatsSessionNative openSession() throws UnSupportedApiVersionException, RemoteException {
        if (VersionUtils.isR()) {
            return new INetworkStatsSessionNative();
        }
        if (VersionUtils.isQ()) {
            return new INetworkStatsSessionNative(openSessionQCompat());
        }
        if (VersionUtils.isP()) {
            return new INetworkStatsSessionNative(INetworkStatsService.Stub.asInterface(ServiceManager.getService("netstats")).openSession());
        }
        throw new UnSupportedApiVersionException();
    }
}

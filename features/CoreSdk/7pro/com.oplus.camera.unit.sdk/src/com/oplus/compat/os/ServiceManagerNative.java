package com.oplus.compat.os;

import android.os.IBinder;
import android.os.ServiceManager;
import androidx.annotation.RequiresApi;
import com.oplus.compat.annotation.Grey;
import com.oplus.compat.utils.util.UnSupportedApiVersionException;
import com.oplus.compat.utils.util.VersionUtils;
import com.oplus.compatsdk.annotation.OplusCompatibleMethod;
/* loaded from: classes.dex */
public class ServiceManagerNative {
    @OplusCompatibleMethod
    private static void addServiceCompat(String str, IBinder iBinder) {
    }

    @OplusCompatibleMethod
    private static Object getServiceQCompat(String str) {
        return null;
    }

    private ServiceManagerNative() {
    }

    @Grey
    @RequiresApi(api = 26)
    public static IBinder checkService(String str) throws UnSupportedApiVersionException {
        if (VersionUtils.isO()) {
            return ServiceManager.checkService(str);
        }
        throw new UnSupportedApiVersionException("not supported before O");
    }

    @Grey
    @RequiresApi(api = 21)
    public static IBinder getService(String str) throws UnSupportedApiVersionException {
        if (VersionUtils.isL()) {
            return ServiceManager.getService(str);
        }
        throw new UnSupportedApiVersionException("not supported before L");
    }

    @Grey
    @RequiresApi(api = 28)
    public static void addService(String str, IBinder iBinder) throws UnSupportedApiVersionException {
        if (VersionUtils.isP()) {
            ServiceManager.addService(str, iBinder);
            return;
        }
        throw new UnSupportedApiVersionException("not supported before P");
    }
}

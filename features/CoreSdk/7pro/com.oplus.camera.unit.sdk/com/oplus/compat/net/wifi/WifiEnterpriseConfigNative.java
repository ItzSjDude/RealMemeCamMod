package com.oplus.compat.net.wifi;

import android.net.wifi.WifiEnterpriseConfig;
import androidx.annotation.RequiresApi;
import com.oplus.compat.annotation.Oem;
import com.oplus.compat.utils.util.UnSupportedApiVersionException;
import com.oplus.compat.utils.util.VersionUtils;
import com.oplus.compatsdk.annotation.OplusCompatibleMethod;
import com.oplus.ocs.camera.common.util.ApsConstant;
/* loaded from: classes.dex */
public class WifiEnterpriseConfigNative {
    @OplusCompatibleMethod
    private static Object getSimNumCompat(WifiEnterpriseConfig wifiEnterpriseConfig) {
        return null;
    }

    @OplusCompatibleMethod
    private static void setSimNumCompat(WifiEnterpriseConfig wifiEnterpriseConfig, int i) {
    }

    private WifiEnterpriseConfigNative() {
    }

    @Oem
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    @Deprecated
    public static void setSimNum(WifiEnterpriseConfig wifiEnterpriseConfig, int i) throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            throw new UnSupportedApiVersionException("not supported in R");
        }
        if (VersionUtils.isQ()) {
            setSimNumCompat(wifiEnterpriseConfig, i);
            return;
        }
        throw new UnSupportedApiVersionException();
    }

    @Oem
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    @Deprecated
    public static String getSimNum(WifiEnterpriseConfig wifiEnterpriseConfig) throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            throw new UnSupportedApiVersionException("not supported in R");
        }
        if (VersionUtils.isQ()) {
            return (String) getSimNumCompat(wifiEnterpriseConfig);
        }
        throw new UnSupportedApiVersionException();
    }
}

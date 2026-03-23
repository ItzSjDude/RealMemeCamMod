package com.oplus.compat.net.wifi;

import android.net.wifi.WifiConfiguration;
import android.util.Log;
import androidx.annotation.RequiresApi;
import com.oplus.compat.annotation.Blocked;
import com.oplus.compat.annotation.Grey;
import com.oplus.compat.annotation.Oem;
import com.oplus.compat.utils.util.UnSupportedApiVersionException;
import com.oplus.compat.utils.util.VersionUtils;
import com.oplus.compatsdk.annotation.OplusCompatibleMethod;
import com.oplus.ocs.camera.common.util.ApsConstant;
import com.oplus.utils.reflect.RefBoolean;
import com.oplus.utils.reflect.RefClass;
import com.oplus.utils.reflect.RefInt;
/* loaded from: classes.dex */
public class WifiConfigurationNative {
    private static final String TAG = "WifiConfigurationNative";

    @OplusCompatibleMethod
    private static Object getApBandCompat(WifiConfiguration wifiConfiguration) {
        return null;
    }

    @OplusCompatibleMethod
    private static Object getApChannelCompat(WifiConfiguration wifiConfiguration) {
        return null;
    }

    @OplusCompatibleMethod
    private static Object getWapiCERTCompat() {
        return null;
    }

    @OplusCompatibleMethod
    private static Object getWapiCertSelCompat(WifiConfiguration wifiConfiguration) {
        return null;
    }

    @OplusCompatibleMethod
    private static Object getWapiCertSelModeCompat(WifiConfiguration wifiConfiguration) {
        return null;
    }

    @OplusCompatibleMethod
    private static Object getWapiPSKCompat() {
        return null;
    }

    @OplusCompatibleMethod
    private static Object getWapiPskCompat(WifiConfiguration wifiConfiguration) {
        return null;
    }

    @OplusCompatibleMethod
    private static Object getWapiPskTypeCompat(WifiConfiguration wifiConfiguration) {
        return null;
    }

    @OplusCompatibleMethod
    private static void setApBandCompat(WifiConfiguration wifiConfiguration, int i) {
    }

    @OplusCompatibleMethod
    private static void setApChannelCompat(WifiConfiguration wifiConfiguration, int i) {
    }

    @OplusCompatibleMethod
    private static void setWapiCertSelCompat(WifiConfiguration wifiConfiguration, String str) {
    }

    @OplusCompatibleMethod
    private static void setWapiCertSelModeCompat(WifiConfiguration wifiConfiguration, int i) {
    }

    @OplusCompatibleMethod
    private static void setWapiPskCompat(WifiConfiguration wifiConfiguration, String str) {
    }

    @OplusCompatibleMethod
    private static void setWapiPskTypeCompat(WifiConfiguration wifiConfiguration, int i) {
    }

    static /* synthetic */ Object access$400() {
        return getWapiPSKCompat();
    }

    static /* synthetic */ Object access$500() {
        return getWapiCERTCompat();
    }

    private WifiConfigurationNative() {
    }

    /* loaded from: classes.dex */
    private static class ReflectInfo {
        private static RefInt apBand;
        private static RefInt apChannel;
        private static RefBoolean shareThisAp;

        private ReflectInfo() {
        }

        static {
            RefClass.load(ReflectInfo.class, WifiConfiguration.class);
        }
    }

    /* loaded from: classes.dex */
    private static class RefKeyMgmtInfo {
        private static RefInt DPP;

        private RefKeyMgmtInfo() {
        }

        static {
            RefClass.load(RefKeyMgmtInfo.class, WifiConfiguration.KeyMgmt.class);
        }
    }

    @Grey
    @RequiresApi(api = 23)
    public static void setApBand(WifiConfiguration wifiConfiguration, int i) throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            ReflectInfo.apBand.set(wifiConfiguration, i);
        } else if (VersionUtils.isQ()) {
            setApBandCompat(wifiConfiguration, i);
        } else if (VersionUtils.isM()) {
            wifiConfiguration.apBand = i;
        } else {
            throw new UnSupportedApiVersionException("not supported before M");
        }
    }

    @Grey
    @RequiresApi(api = 23)
    public static int getApBand(WifiConfiguration wifiConfiguration) throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            return ReflectInfo.apBand.get(wifiConfiguration);
        }
        if (VersionUtils.isQ()) {
            return ((Integer) getApBandCompat(wifiConfiguration)).intValue();
        }
        if (VersionUtils.isM()) {
            return wifiConfiguration.apBand;
        }
        throw new UnSupportedApiVersionException("not supported before M");
    }

    @Grey
    @RequiresApi(api = 23)
    public static int getApChannel(WifiConfiguration wifiConfiguration) throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            return ReflectInfo.apChannel.get(wifiConfiguration);
        }
        if (VersionUtils.isQ()) {
            return ((Integer) getApChannelCompat(wifiConfiguration)).intValue();
        }
        if (VersionUtils.isM()) {
            return wifiConfiguration.apChannel;
        }
        throw new UnSupportedApiVersionException("not supported before M");
    }

    @Grey
    @RequiresApi(api = 23)
    public static void setApChannel(WifiConfiguration wifiConfiguration, int i) throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            ReflectInfo.apChannel.set(wifiConfiguration, i);
        } else if (VersionUtils.isQ()) {
            setApChannelCompat(wifiConfiguration, i);
        } else if (VersionUtils.isM()) {
            wifiConfiguration.apChannel = i;
        } else {
            throw new UnSupportedApiVersionException("not supported before M");
        }
    }

    @Oem
    @RequiresApi(api = 30)
    @Deprecated
    public static void setShareThisAp(WifiConfiguration wifiConfiguration, boolean z) throws UnSupportedApiVersionException {
        if (VersionUtils.isS()) {
            throw new UnSupportedApiVersionException("not supported in S");
        }
        if (VersionUtils.isR()) {
            ReflectInfo.shareThisAp.set(wifiConfiguration, z);
            return;
        }
        throw new UnSupportedApiVersionException("not support before R");
    }

    @Oem
    @RequiresApi(api = 30)
    @Deprecated
    public static boolean getShareThisAp(WifiConfiguration wifiConfiguration) throws UnSupportedApiVersionException {
        if (VersionUtils.isS()) {
            throw new UnSupportedApiVersionException("not supported in S");
        }
        if (VersionUtils.isR()) {
            return ReflectInfo.shareThisAp.get(wifiConfiguration);
        }
        throw new UnSupportedApiVersionException("not support before R");
    }

    @Oem
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    @Deprecated
    public static void setWapiPsk(WifiConfiguration wifiConfiguration, String str) throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            throw new UnSupportedApiVersionException("not supported in R");
        }
        if (VersionUtils.isQ()) {
            setWapiPskCompat(wifiConfiguration, str);
            return;
        }
        throw new UnSupportedApiVersionException();
    }

    @Oem
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    @Deprecated
    public static void setWapiPskType(WifiConfiguration wifiConfiguration, int i) throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            throw new UnSupportedApiVersionException("not supported in R");
        }
        if (VersionUtils.isQ()) {
            setWapiPskTypeCompat(wifiConfiguration, i);
            return;
        }
        throw new UnSupportedApiVersionException();
    }

    @Oem
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    @Deprecated
    public static void setWapiCertSel(WifiConfiguration wifiConfiguration, String str) throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            throw new UnSupportedApiVersionException("not supported in R");
        }
        if (VersionUtils.isQ()) {
            setWapiCertSelCompat(wifiConfiguration, str);
            return;
        }
        throw new UnSupportedApiVersionException();
    }

    @Oem
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    @Deprecated
    public static void setWapiCertSelMode(WifiConfiguration wifiConfiguration, int i) throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            throw new UnSupportedApiVersionException("not supported in R");
        }
        if (VersionUtils.isQ()) {
            setWapiCertSelModeCompat(wifiConfiguration, i);
            return;
        }
        throw new UnSupportedApiVersionException();
    }

    @Oem
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    @Deprecated
    public static String getWapiPsk(WifiConfiguration wifiConfiguration) throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            throw new UnSupportedApiVersionException("not supported in R");
        }
        if (VersionUtils.isQ()) {
            return (String) getWapiPskCompat(wifiConfiguration);
        }
        throw new UnSupportedApiVersionException();
    }

    @Oem
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    @Deprecated
    public static int getWapiPskType(WifiConfiguration wifiConfiguration) throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            throw new UnSupportedApiVersionException("not supported in R");
        }
        if (VersionUtils.isQ()) {
            return ((Integer) getWapiPskTypeCompat(wifiConfiguration)).intValue();
        }
        throw new UnSupportedApiVersionException();
    }

    @Oem
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    @Deprecated
    public static String getWapiCertSel(WifiConfiguration wifiConfiguration) throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            throw new UnSupportedApiVersionException("not supported in R");
        }
        if (VersionUtils.isQ()) {
            return (String) getWapiCertSelCompat(wifiConfiguration);
        }
        throw new UnSupportedApiVersionException();
    }

    @Oem
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    @Deprecated
    public static int getWapiCertSelMode(WifiConfiguration wifiConfiguration) throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            throw new UnSupportedApiVersionException("not supported in R");
        }
        if (VersionUtils.isQ()) {
            return ((Integer) getWapiCertSelModeCompat(wifiConfiguration)).intValue();
        }
        throw new UnSupportedApiVersionException();
    }

    /* loaded from: classes.dex */
    public static class KeyMgmtNative {
        @Oem
        @Blocked
        @RequiresApi(api = 30)
        public static int DPP;

        private KeyMgmtNative() {
        }

        static {
            try {
                if (VersionUtils.isR()) {
                    DPP = RefKeyMgmtInfo.DPP.get(null);
                } else {
                    Log.e(WifiConfigurationNative.TAG, "not support before R");
                }
            } catch (Exception e) {
                Log.e(WifiConfigurationNative.TAG, e.toString());
            }
        }

        @Oem
        @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
        @Deprecated
        public static int getWapiPSK() throws UnSupportedApiVersionException {
            if (VersionUtils.isR()) {
                throw new UnSupportedApiVersionException("not supported in R");
            }
            if (VersionUtils.isQ()) {
                return ((Integer) WifiConfigurationNative.access$400()).intValue();
            }
            throw new UnSupportedApiVersionException();
        }

        @Oem
        @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
        @Deprecated
        public static int getWapiCERT() throws UnSupportedApiVersionException {
            if (VersionUtils.isR()) {
                throw new UnSupportedApiVersionException("not supported in R");
            }
            if (VersionUtils.isQ()) {
                return ((Integer) WifiConfigurationNative.access$500()).intValue();
            }
            throw new UnSupportedApiVersionException();
        }
    }
}

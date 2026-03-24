package android.security;

import android.location.OplusLbsCommonConstant;
import android.os.ServiceManager;
import android.os.ServiceSpecificException;
import android.os.SystemProperties;
import android.security.legacykeystore.ILegacyKeystore;
import android.util.Log;

/* loaded from: classes3.dex */
public class LegacyVpnProfileStore {
    private static final String LEGACY_KEYSTORE_SERVICE_NAME = "android.security.legacykeystore";
    public static final int PROFILE_NOT_FOUND = 7;
    public static final int SYSTEM_ERROR = 4;
    private static final String TAG = "LegacyVpnProfileStore";
    private static final boolean isQcomPlatform = SystemProperties.get("ro.boot.hardware", "unknow").toLowerCase().startsWith(OplusLbsCommonConstant.QCOM_PLATFORM);

    private static ILegacyKeystore getService() {
        return ILegacyKeystore.Stub.asInterface(ServiceManager.checkService(LEGACY_KEYSTORE_SERVICE_NAME));
    }

    public static boolean put(String alias, byte[] profile) {
        try {
            getService().put(alias, getUID(alias), profile);
            return true;
        } catch (Exception e) {
            Log.e(TAG, "Failed to put vpn profile.", e);
            return false;
        }
    }

    public static byte[] get(String alias) {
        try {
            return getService().get(alias, getUID(alias));
        } catch (ServiceSpecificException e) {
            if (e.errorCode != 7) {
                Log.e(TAG, "Failed to get vpn profile.", e);
                return null;
            }
            return null;
        } catch (Exception e2) {
            Log.e(TAG, "Failed to get vpn profile.", e2);
            return null;
        }
    }

    public static boolean remove(String alias) {
        try {
            getService().remove(alias, getUID(alias));
            return true;
        } catch (ServiceSpecificException e) {
            if (e.errorCode != 7) {
                Log.e(TAG, "Failed to remove vpn profile.", e);
                return false;
            }
            return false;
        } catch (Exception e2) {
            Log.e(TAG, "Failed to remove vpn profile.", e2);
            return false;
        }
    }

    public static String[] list(String prefix) {
        try {
            String[] aliases = getService().list(prefix, getUID(prefix));
            for (int i = 0; i < aliases.length; i++) {
                aliases[i] = aliases[i].substring(prefix.length());
            }
            return aliases;
        } catch (Exception e) {
            Log.e(TAG, "Failed to list vpn profiles.", e);
            return new String[0];
        }
    }

    private static int getUID(String alias) {
        return (isQcomPlatform && alias.contains("WAPI")) ? 1010 : -1;
    }
}

package com.oplus.compat.telephony;

import android.os.PersistableBundle;
import android.telephony.CarrierConfigManager;
import android.util.Log;
import androidx.annotation.RequiresApi;
import com.oplus.compat.annotation.Blocked;
import com.oplus.compat.annotation.Grey;
import com.oplus.compat.annotation.Oem;
import com.oplus.compat.utils.util.UnSupportedApiVersionException;
import com.oplus.compat.utils.util.VersionUtils;
import com.oplus.compatsdk.annotation.OplusCompatibleMethod;
import com.oplus.ocs.camera.common.util.ApsConstant;
import com.oplus.utils.reflect.RefClass;
import com.oplus.utils.reflect.RefMethod;
import com.oplus.utils.reflect.RefObject;
/* loaded from: classes.dex */
public class CarrierConfigManagerNative {
    @Oem
    @Blocked
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public static String KEY_CARRIER_ALLOW_TRANSFER_IMS_CALL_BOOL = null;
    @Oem
    @Blocked
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public static String KEY_CARRIER_SUPPORTS_MULTIANCHOR_CONFERENCE = null;
    @Oem
    @Blocked
    @RequiresApi(api = 30)
    public static String KEY_CARRIER_WFC_SUPPORTS_IMS_PREFERRED_BOOL = null;
    @Oem
    @Blocked
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public static String KEY_CDMA_CW_CF_ENABLED_BOOL = null;
    @Oem
    @Blocked
    @RequiresApi(api = 30)
    public static String KEY_HIDE_ENABLED_5G_BOOL = null;
    private static final String TAG = "CarrierConfigManagerNative";

    @OplusCompatibleMethod
    private static Object getDefaultConfigCompat() {
        return null;
    }

    /* loaded from: classes.dex */
    private static class ReflectInfo {
        private static RefObject<String> KEY_CARRIER_ALLOW_TRANSFER_IMS_CALL_BOOL;
        private static RefObject<String> KEY_CARRIER_SUPPORTS_MULTIANCHOR_CONFERENCE;
        private static RefObject<String> KEY_CARRIER_WFC_SUPPORTS_IMS_PREFERRED_BOOL;
        private static RefObject<String> KEY_CDMA_CW_CF_ENABLED_BOOL;
        private static RefObject<String> KEY_HIDE_ENABLED_5G_BOOL;
        private static RefMethod<PersistableBundle> getDefaultConfig;

        private ReflectInfo() {
        }

        static {
            RefClass.load(ReflectInfo.class, CarrierConfigManager.class);
        }
    }

    static {
        try {
            if (VersionUtils.isR()) {
                KEY_CDMA_CW_CF_ENABLED_BOOL = (String) ReflectInfo.KEY_CDMA_CW_CF_ENABLED_BOOL.getWithException(null);
                KEY_CARRIER_ALLOW_TRANSFER_IMS_CALL_BOOL = (String) ReflectInfo.KEY_CARRIER_ALLOW_TRANSFER_IMS_CALL_BOOL.getWithException(null);
                KEY_CARRIER_SUPPORTS_MULTIANCHOR_CONFERENCE = (String) ReflectInfo.KEY_CARRIER_SUPPORTS_MULTIANCHOR_CONFERENCE.getWithException(null);
                KEY_CARRIER_WFC_SUPPORTS_IMS_PREFERRED_BOOL = (String) ReflectInfo.KEY_CARRIER_WFC_SUPPORTS_IMS_PREFERRED_BOOL.getWithException(null);
                KEY_HIDE_ENABLED_5G_BOOL = (String) ReflectInfo.KEY_HIDE_ENABLED_5G_BOOL.getWithException(null);
            } else {
                Log.e(TAG, "not supported before R");
            }
        } catch (Exception e) {
            Log.e(TAG, e.toString());
        }
    }

    private CarrierConfigManagerNative() {
    }

    @Grey
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public static PersistableBundle getDefaultConfig() throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            return (PersistableBundle) ReflectInfo.getDefaultConfig.call(null, new Object[0]);
        }
        if (VersionUtils.isQ()) {
            return (PersistableBundle) getDefaultConfigCompat();
        }
        throw new UnSupportedApiVersionException("not supported before Q");
    }
}

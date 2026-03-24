package com.oplus.compat.net;

import android.net.OplusNetworkingControlManager;
import android.util.Log;
import com.oplus.compat.utils.util.UnSupportedApiVersionException;
import com.oplus.compat.utils.util.VersionUtils;
/* loaded from: classes.dex */
public class OplusNetworkingControlManagerNative {
    private static final String CLASS_NAME = "android.net.OplusNetworkingControlManager";
    private static final String METHOD_NAME = "getOplusNetworkingControlManager";
    private static final String TAG = "OplusNCManagerNative";

    private OplusNetworkingControlManagerNative() {
    }

    public static OplusNetworkingControlManager getOplusNetworkingControlManager() throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            try {
                return (OplusNetworkingControlManager) Class.forName(CLASS_NAME).getMethod(METHOD_NAME, new Class[0]).invoke(null, new Object[0]);
            } catch (Exception e) {
                Log.e(TAG, "getOplusNetworkingControlManager caught : " + e.toString());
                return null;
            }
        }
        throw new UnSupportedApiVersionException("not supported before R");
    }
}

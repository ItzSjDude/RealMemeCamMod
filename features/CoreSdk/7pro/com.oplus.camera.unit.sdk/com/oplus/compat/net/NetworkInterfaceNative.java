package com.oplus.compat.net;

import android.util.Log;
import androidx.annotation.RequiresApi;
import com.oplus.compat.annotation.Grey;
import com.oplus.compat.annotation.Permission;
import com.oplus.compat.utils.util.UnSupportedApiVersionException;
import com.oplus.compat.utils.util.VersionUtils;
import com.oplus.epona.Epona;
import com.oplus.epona.Request;
import com.oplus.epona.Response;
/* loaded from: classes.dex */
public class NetworkInterfaceNative {
    private static final String TAG = "NetworkInterfaceNative";

    private NetworkInterfaceNative() {
    }

    @Grey
    @Permission(authStr = "getHardwareAddress", type = "epona")
    @RequiresApi(api = 30)
    public static byte[] getHardwareAddress(String str) throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            Response execute = Epona.newCall(new Request.Builder().setComponentName("java.net.NetworkInterface").setActionName("getHardwareAddress").withString("name", str).build()).execute();
            if (execute.isSuccessful()) {
                return execute.getBundle().getByteArray("result");
            }
            Log.e(TAG, "getHardwareAddress: " + execute.getMessage());
            return null;
        }
        throw new UnSupportedApiVersionException("not supported before R");
    }
}

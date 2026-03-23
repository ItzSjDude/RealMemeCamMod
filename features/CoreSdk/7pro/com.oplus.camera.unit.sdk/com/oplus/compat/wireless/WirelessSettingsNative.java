package com.oplus.compat.wireless;

import androidx.annotation.RequiresApi;
import com.oplus.compat.annotation.Permission;
import com.oplus.compat.annotation.System;
import com.oplus.compat.utils.util.UnSupportedApiVersionException;
import com.oplus.compat.utils.util.VersionUtils;
import com.oplus.epona.Epona;
import com.oplus.epona.Request;
import com.oplus.epona.Response;
/* loaded from: classes.dex */
public class WirelessSettingsNative {
    private static final String COMPONENT_NAME = "android.wireless.WirelessSettingsNative";
    private static final String KEY_RESULT = "result";

    private WirelessSettingsNative() {
    }

    @Permission(authStr = "installCert", type = "epona")
    @Deprecated
    @RequiresApi(api = 30)
    @System
    public static boolean installCert(byte[] bArr, byte[] bArr2, byte[] bArr3, String str) throws UnSupportedApiVersionException {
        if (bArr == null || bArr2 == null || bArr3 == null || str == null) {
            return false;
        }
        if (VersionUtils.isR()) {
            Response execute = Epona.newCall(new Request.Builder().setComponentName(COMPONENT_NAME).setActionName("installCert").withByteArray("userCert", bArr).withByteArray("priKey", bArr2).withByteArray("caCert", bArr3).withString("certAlias", str).build()).execute();
            if (execute.isSuccessful()) {
                return execute.getBundle().getBoolean(KEY_RESULT);
            }
            return false;
        }
        throw new UnSupportedApiVersionException("not supported before R");
    }
}

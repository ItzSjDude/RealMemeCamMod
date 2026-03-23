package com.oplus.compat.os;

import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import com.oplus.compat.annotation.Oem;
import com.oplus.compat.annotation.Permission;
import com.oplus.compat.utils.util.UnSupportedApiVersionException;
import com.oplus.compat.utils.util.VersionUtils;
import com.oplus.epona.Epona;
import com.oplus.epona.Request;
/* loaded from: classes.dex */
public class RecoverySystemNative {
    @Oem
    @Permission(authStr = "setWipeProperty", type = "epona")
    @RequiresApi(api = 30)
    public static void setWipeProperty(@NonNull String str) throws UnSupportedApiVersionException {
        if (VersionUtils.isS()) {
            throw new UnSupportedApiVersionException("not supported in S");
        }
        if (VersionUtils.isR()) {
            Epona.newCall(new Request.Builder().setComponentName("android.os.RecoverySystem").setActionName("setWipeProperty").withString("value", str).build()).execute();
            return;
        }
        throw new UnSupportedApiVersionException("not supported before R");
    }
}

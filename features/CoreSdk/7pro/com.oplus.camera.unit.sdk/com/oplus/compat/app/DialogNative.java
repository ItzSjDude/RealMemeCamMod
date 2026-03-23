package com.oplus.compat.app;

import android.app.Dialog;
import android.content.Context;
import androidx.annotation.RequiresApi;
import com.oplus.compat.annotation.Permission;
import com.oplus.compat.utils.util.UnSupportedApiVersionException;
import com.oplus.compat.utils.util.VersionUtils;
import com.oplus.tingle.ipc.Slave;
/* loaded from: classes.dex */
public class DialogNative {
    @Permission(authStr = "IWindowSession", type = "tingle")
    @RequiresApi(api = 30)
    public static void show(Context context, Dialog dialog) throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            Slave.cleanSystemService(context, "window");
            dialog.show();
            return;
        }
        throw new UnSupportedApiVersionException("Not supported before R");
    }
}

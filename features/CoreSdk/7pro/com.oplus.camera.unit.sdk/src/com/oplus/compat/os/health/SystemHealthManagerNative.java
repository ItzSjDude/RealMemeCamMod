package com.oplus.compat.os.health;

import androidx.annotation.RequiresApi;
import com.oplus.compat.annotation.Oem;
import com.oplus.compat.annotation.Permission;
import com.oplus.compat.utils.util.UnSupportedApiVersionException;
import com.oplus.compat.utils.util.VersionUtils;
import com.oplus.epona.Epona;
import com.oplus.epona.Request;
import com.oplus.epona.Response;
/* loaded from: classes.dex */
public class SystemHealthManagerNative {
    private static final String COMPONENT_NAME = "android.os.health.SystemHealthManager";
    private static final String RESULT = "result";
    private static final String TAG = "SystemHealthManagerNative";

    private SystemHealthManagerNative() {
    }

    @Oem
    @Permission(authStr = "getTimerCountFormTakeUidSnapshot", type = "epona")
    @RequiresApi(api = 30)
    public static int getTimerCountFormTakeUidSnapshot(int i, int i2) throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            Response execute = Epona.newCall(new Request.Builder().setComponentName(COMPONENT_NAME).setActionName("getTimerCountFormTakeUidSnapshot").withInt("uid", i).withInt("key", i2).build()).execute();
            if (execute.isSuccessful()) {
                return execute.getBundle().getInt(RESULT);
            }
            return 0;
        }
        throw new UnSupportedApiVersionException("Not Supported Before R");
    }
}

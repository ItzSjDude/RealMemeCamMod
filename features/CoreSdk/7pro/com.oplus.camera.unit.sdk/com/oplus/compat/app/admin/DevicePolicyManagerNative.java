package com.oplus.compat.app.admin;

import android.content.ComponentName;
import android.util.Log;
import androidx.annotation.RequiresApi;
import com.oplus.compat.annotation.Permission;
import com.oplus.compat.utils.util.UnSupportedApiVersionException;
import com.oplus.compat.utils.util.VersionUtils;
import com.oplus.epona.Epona;
import com.oplus.epona.Request;
import com.oplus.epona.Response;
/* loaded from: classes.dex */
public class DevicePolicyManagerNative {
    private static final String COMPONENT_NAME = "android.app.admin.DevicePolicyManager";
    private static final String TAG = "DevicePolicyManagerNa";

    @Permission(authStr = "removeActiveAdmin", type = "epona")
    @RequiresApi(api = 30)
    public static void removeActiveAdmin(ComponentName componentName) throws UnSupportedApiVersionException {
        try {
            if (VersionUtils.isR()) {
                Response execute = Epona.newCall(new Request.Builder().setComponentName(COMPONENT_NAME).setActionName("removeActiveAdmin").withParcelable("component", componentName).build()).execute();
                if (execute.isSuccessful()) {
                    return;
                }
                Log.e(TAG, execute.getMessage());
            }
        } catch (Throwable th) {
            throw new UnSupportedApiVersionException(th);
        }
    }
}

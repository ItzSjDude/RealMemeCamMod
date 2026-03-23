package com.oplus.compat.telecom;

import android.content.Context;
import android.telecom.DefaultDialerManager;
import android.util.Log;
import androidx.annotation.RequiresApi;
import com.oplus.compat.annotation.Blocked;
import com.oplus.compat.annotation.Permission;
import com.oplus.compat.annotation.System;
import com.oplus.compat.utils.util.UnSupportedApiVersionException;
import com.oplus.compat.utils.util.VersionUtils;
import com.oplus.epona.Epona;
import com.oplus.epona.Request;
import com.oplus.epona.Response;
import com.oplus.ocs.camera.common.util.ApsConstant;
/* loaded from: classes.dex */
public class DefaultDialerManagerNative {
    private static final String COMPONENT_NAME = "android.telecom.DefaultDialerManager";
    private static final String TAG = "DefaultDialerManagerNative";

    private DefaultDialerManagerNative() {
    }

    @Permission(authStr = "setDefaultDialerApplication", type = "epona")
    @Blocked
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    @System
    public static boolean setDefaultDialerApplication(Context context, String str) throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            Response execute = Epona.newCall(new Request.Builder().setComponentName(COMPONENT_NAME).setActionName("setDefaultDialerApplication").withString("packageName", str).build()).execute();
            if (execute.isSuccessful()) {
                return execute.getBundle().getBoolean("result");
            }
            Log.e(TAG, "response code error:" + execute.getMessage());
            return false;
        } else if (VersionUtils.isQ()) {
            return DefaultDialerManager.setDefaultDialerApplication(context, str);
        } else {
            throw new UnSupportedApiVersionException("not supported before Q");
        }
    }
}

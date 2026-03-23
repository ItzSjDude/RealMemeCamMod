package com.oplus.compat.multiuser;

import android.os.Bundle;
import android.util.Log;
import androidx.annotation.RequiresApi;
import com.oplus.compat.annotation.Oem;
import com.oplus.compat.annotation.Permission;
import com.oplus.compat.annotation.System;
import com.oplus.compat.utils.util.UnSupportedApiVersionException;
import com.oplus.compat.utils.util.VersionUtils;
import com.oplus.epona.Epona;
import com.oplus.epona.Request;
import com.oplus.epona.Response;
/* loaded from: classes.dex */
public class OplusMultiUserManagerNative {
    private static final String COMPONENT_NAME = "com.oplus.multiuser.OplusMultiUserManager";
    private static final String RESULT = "result";
    private static final String TAG = "OplusMultiUserManagerNative";

    private OplusMultiUserManagerNative() {
    }

    @Permission(authStr = "OplusMultiUserManager", type = "epona")
    @Oem
    @RequiresApi(api = 30)
    @System
    public static boolean hasMultiSystemUser() throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            Request build = new Request.Builder().setComponentName(COMPONENT_NAME).setActionName("hasMultiSystemUser").build();
            build.putBundle(new Bundle());
            Response execute = Epona.newCall(build).execute();
            if (execute.isSuccessful()) {
                return execute.getBundle().getBoolean(RESULT);
            }
            Log.e(TAG, execute.getMessage());
            return false;
        }
        throw new UnSupportedApiVersionException("not supported before R");
    }

    @Permission(authStr = "OplusMultiUserManager", type = "epona")
    @Oem
    @RequiresApi(api = 30)
    @System
    public static int getMultiSystemUserId() throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            Request build = new Request.Builder().setComponentName(COMPONENT_NAME).setActionName("getMultiSystemUserId").build();
            build.putBundle(new Bundle());
            Response execute = Epona.newCall(build).execute();
            if (execute.isSuccessful()) {
                return execute.getBundle().getInt(RESULT);
            }
            Log.e(TAG, execute.getMessage());
            return -10000;
        }
        throw new UnSupportedApiVersionException("not supported before R");
    }

    @Permission(authStr = "OplusMultiUserManager", type = "epona")
    @Oem
    @RequiresApi(api = 30)
    @System
    public static boolean isMultiSystemUserId(int i) throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            Response execute = Epona.newCall(new Request.Builder().setComponentName(COMPONENT_NAME).setActionName("isMultiSystemUserId").withInt("userId", i).build()).execute();
            if (execute.isSuccessful()) {
                return execute.getBundle().getBoolean(RESULT);
            }
            Log.e(TAG, execute.getMessage());
            return false;
        }
        throw new UnSupportedApiVersionException("not supported before R");
    }
}

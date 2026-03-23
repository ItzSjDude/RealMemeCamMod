package com.oplus.compat.os.customize;

import android.util.Log;
import androidx.annotation.RequiresApi;
import com.oplus.compat.annotation.Oem;
import com.oplus.compat.annotation.Permission;
import com.oplus.compat.annotation.System;
import com.oplus.compat.utils.util.UnSupportedApiVersionException;
import com.oplus.compat.utils.util.VersionUtils;
import com.oplus.compatsdk.annotation.OplusCompatibleMethod;
import com.oplus.epona.Epona;
import com.oplus.epona.Request;
import com.oplus.epona.Response;
/* loaded from: classes.dex */
public class OplusCustomizeRestrictionManagerNative {
    private static final String ACTION_SCREEN_STATE = "getForbidRecordScreenState";
    private static final String ACTION_SIDEBAR_POLICY = "getSideBarPolicies";
    private static final String COMPONENT_NAME = getComponentName();
    private static final String RESULT = "result";
    private static final String TAG = "RestrictionNative";

    @OplusCompatibleMethod
    private static Object getComponentNameForCompat() {
        return null;
    }

    private static String getComponentName() {
        return VersionUtils.isOsVersion11_3() ? "com.oplus.screenrecorder.RestrictionManager" : (String) getComponentNameForCompat();
    }

    @Permission(authStr = ACTION_SCREEN_STATE, type = "epona")
    @Oem
    @RequiresApi(api = 30)
    @System
    public static boolean getForbidRecordScreenState() throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            Response execute = Epona.newCall(new Request.Builder().setComponentName(COMPONENT_NAME).setActionName(ACTION_SCREEN_STATE).build()).execute();
            if (execute.isSuccessful()) {
                return execute.getBundle().getBoolean(RESULT);
            }
            Log.e(TAG, execute.getMessage());
            return false;
        }
        throw new UnSupportedApiVersionException("Not Supported Before R");
    }

    @Permission(authStr = ACTION_SIDEBAR_POLICY, type = "epona")
    @Oem
    @RequiresApi(api = 30)
    @System
    public static int getSideBarPolicies() throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            Response execute = Epona.newCall(new Request.Builder().setComponentName(COMPONENT_NAME).setActionName(ACTION_SIDEBAR_POLICY).build()).execute();
            if (execute.isSuccessful()) {
                return execute.getBundle().getInt(RESULT);
            }
            Log.e(TAG, execute.getMessage());
            return 0;
        }
        throw new UnSupportedApiVersionException("Not Supported Before R");
    }
}

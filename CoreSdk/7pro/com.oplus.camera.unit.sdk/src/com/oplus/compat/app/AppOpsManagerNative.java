package com.oplus.compat.app;

import android.app.AppOpsManager;
import android.content.Context;
import android.os.IBinder;
import android.util.Log;
import androidx.annotation.RequiresApi;
import com.oplus.compat.annotation.Blocked;
import com.oplus.compat.annotation.Grey;
import com.oplus.compat.annotation.Permission;
import com.oplus.compat.annotation.System;
import com.oplus.compat.utils.util.UnSupportedApiVersionException;
import com.oplus.compat.utils.util.VersionUtils;
import com.oplus.epona.Epona;
import com.oplus.epona.Request;
import com.oplus.epona.Response;
import com.oplus.ocs.camera.common.util.ApsConstant;
import com.oplus.utils.reflect.MethodName;
import com.oplus.utils.reflect.RefClass;
import com.oplus.utils.reflect.RefMethod;
import java.util.HashMap;
import java.util.HashSet;
/* loaded from: classes.dex */
public class AppOpsManagerNative {
    private static final String ACTION_SET_USER_RESTRICTION = "setUserRestriction";
    private static final String COMPONENT_NAME = "android.app.AppOpsManager";
    @Grey
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public static int OP_GET_USAGE_STATS = 43;
    @Grey
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public static int OP_WRITE_SETTINGS = 23;
    private static final String PARAM_CODE = "code";
    private static final String PARAM_EXCEPTION_PACKAGES = "exceptionPackages";
    private static final String PARAM_RESTRICTED = "restricted";
    private static final String PARAM_TOKEN = "token";
    private static final String TAG = "AppOpsManagerNative";

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class ReflectInfo {
        @MethodName(name = "setMode", params = {int.class, int.class, String.class, int.class})
        public static RefMethod<Void> setMode;
        @MethodName(name = AppOpsManagerNative.ACTION_SET_USER_RESTRICTION, params = {int.class, boolean.class, IBinder.class, String[].class})
        public static RefMethod<Void> setUserRestriction;

        private ReflectInfo() {
        }

        static {
            RefClass.load(ReflectInfo.class, AppOpsManager.class);
        }
    }

    private AppOpsManagerNative() {
    }

    @Permission(authStr = "setUidMode", type = "epona")
    @Blocked
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    @System
    public static void setUidMode(Context context, String str, int i, int i2) throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            Response execute = Epona.newCall(new Request.Builder().setComponentName(COMPONENT_NAME).setActionName("setUidMode").withString("appOp", str).withInt("uid", i).withInt("mode", i2).build()).execute();
            if (execute.isSuccessful()) {
                return;
            }
            Log.e(TAG, execute.getMessage());
        } else if (VersionUtils.isQ()) {
            ((AppOpsManager) context.getSystemService("appops")).setUidMode(str, i, i2);
        } else {
            throw new UnSupportedApiVersionException("not supported before Q");
        }
    }

    @Permission(authStr = "setMode", type = "epona")
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    @System
    public static void setMode(Context context, int i, int i2, String str, int i3) throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            Response execute = Epona.newCall(new Request.Builder().setComponentName(COMPONENT_NAME).setActionName("setMode").withInt(PARAM_CODE, i).withInt("uid", i2).withString("packageName", str).withInt("mode", i3).build()).execute();
            if (execute.isSuccessful()) {
                return;
            }
            Log.e(TAG, execute.getMessage());
        } else if (VersionUtils.isQ()) {
            ReflectInfo.setMode.call((AppOpsManager) context.getSystemService("appops"), Integer.valueOf(i), Integer.valueOf(i2), str, Integer.valueOf(i3));
        } else {
            throw new UnSupportedApiVersionException("not supported before Q");
        }
    }

    @Permission(authStr = ACTION_SET_USER_RESTRICTION, type = "epona")
    @Deprecated
    @Blocked
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    @System
    public static void setUserRestriction(int i, boolean z, IBinder iBinder, String[] strArr) throws UnSupportedApiVersionException {
        if (VersionUtils.isS()) {
            throw new UnSupportedApiVersionException("not supported after or equals S");
        }
        if (VersionUtils.isR()) {
            Response execute = Epona.newCall(new Request.Builder().setComponentName(COMPONENT_NAME).setActionName(ACTION_SET_USER_RESTRICTION).withInt(PARAM_CODE, i).withBoolean(PARAM_RESTRICTED, z).withBinder(PARAM_TOKEN, iBinder).withStringArray(PARAM_EXCEPTION_PACKAGES, strArr).build()).execute();
            if (execute.isSuccessful()) {
                return;
            }
            Log.e(TAG, execute.getMessage());
        } else if (VersionUtils.isQ()) {
            ReflectInfo.setUserRestriction.call((AppOpsManager) Epona.getContext().getSystemService("appops"), Integer.valueOf(i), Boolean.valueOf(z), iBinder, strArr);
        } else {
            throw new UnSupportedApiVersionException("not supported before Q");
        }
    }

    @Permission(authStr = ACTION_SET_USER_RESTRICTION, type = "epona")
    @Blocked
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    @System
    public static void setUserRestriction(int i, boolean z, IBinder iBinder, HashMap<String, HashSet<String>> hashMap) throws UnSupportedApiVersionException {
        if (VersionUtils.isS()) {
            Response execute = Epona.newCall(new Request.Builder().setComponentName(COMPONENT_NAME).setActionName(ACTION_SET_USER_RESTRICTION).withInt(PARAM_CODE, i).withBoolean(PARAM_RESTRICTED, z).withBinder(PARAM_TOKEN, iBinder).withSerializable(PARAM_EXCEPTION_PACKAGES, hashMap).build()).execute();
            if (execute.isSuccessful()) {
                return;
            }
            Log.e(TAG, execute.getMessage());
            return;
        }
        setUserRestriction(i, z, iBinder, hashMap != null ? (String[]) hashMap.keySet().toArray(new String[0]) : null);
    }
}

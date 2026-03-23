package com.oplus.compat.os;

import android.os.OplusSystemProperties;
import android.os.SystemProperties;
import android.util.Log;
import androidx.annotation.NonNull;
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
public class OplusSystemPropertiesNative {
    private static final String COMPONENT_NAME = "android.os.OplusSystemProperties";
    private static final String RESULT = "result";
    private static final String TAG = "OplusSystemPropertiesNative";

    @Permission(authStr = "get", type = "epona")
    @Blocked
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public static String get(@NonNull String str) throws UnSupportedApiVersionException {
        return get(str, "");
    }

    @Permission(authStr = "get", type = "epona")
    @Blocked
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public static String get(@NonNull String str, String str2) throws UnSupportedApiVersionException {
        if (VersionUtils.isS()) {
            try {
                return OplusSystemProperties.get(str, str2);
            } catch (NoSuchMethodError e) {
                Log.e(TAG, e.toString());
                throw new UnSupportedApiVersionException("no permission to access the blocked method", e);
            }
        } else if (VersionUtils.isR()) {
            Response execute = Epona.newCall(new Request.Builder().setComponentName(COMPONENT_NAME).setActionName("get").withString("key", str).withString("def", str2).build()).execute();
            if (execute.isSuccessful()) {
                return execute.getBundle().getString(RESULT);
            }
            execute.checkThrowable(IllegalArgumentException.class);
            return str2;
        } else if (VersionUtils.isQ()) {
            return SystemProperties.get(str, str2);
        } else {
            throw new UnSupportedApiVersionException("not supported before Q");
        }
    }

    @Permission(authStr = "getInt", type = "epona")
    @Blocked
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public static int getInt(@NonNull String str, int i) throws UnSupportedApiVersionException {
        if (VersionUtils.isS()) {
            try {
                return OplusSystemProperties.getInt(str, i);
            } catch (NoSuchMethodError e) {
                Log.e(TAG, e.toString());
                throw new UnSupportedApiVersionException("no permission to access the blocked method", e);
            }
        } else if (VersionUtils.isR()) {
            Response execute = Epona.newCall(new Request.Builder().setComponentName(COMPONENT_NAME).setActionName("getInt").withString("key", str).withInt("def", i).build()).execute();
            if (execute.isSuccessful()) {
                return execute.getBundle().getInt(RESULT);
            }
            execute.checkThrowable(IllegalArgumentException.class);
            return i;
        } else if (VersionUtils.isQ()) {
            return SystemProperties.getInt(str, i);
        } else {
            throw new UnSupportedApiVersionException("not supported before Q");
        }
    }

    @Permission(authStr = "getLong", type = "epona")
    @Blocked
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public static long getLong(@NonNull String str, long j) throws UnSupportedApiVersionException {
        if (VersionUtils.isS()) {
            try {
                return OplusSystemProperties.getLong(str, j);
            } catch (NoSuchMethodError e) {
                Log.e(TAG, e.toString());
                throw new UnSupportedApiVersionException("no permission to access the blocked method", e);
            }
        } else if (VersionUtils.isR()) {
            Response execute = Epona.newCall(new Request.Builder().setComponentName(COMPONENT_NAME).setActionName("getLong").withString("key", str).withLong("def", j).build()).execute();
            if (execute.isSuccessful()) {
                return execute.getBundle().getLong(RESULT);
            }
            execute.checkThrowable(IllegalArgumentException.class);
            return j;
        } else if (VersionUtils.isQ()) {
            return SystemProperties.getLong(str, j);
        } else {
            throw new UnSupportedApiVersionException("not supported before Q");
        }
    }

    @Permission(authStr = "getBoolean", type = "epona")
    @Blocked
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public static boolean getBoolean(@NonNull String str, Boolean bool) throws UnSupportedApiVersionException {
        if (VersionUtils.isS()) {
            try {
                return OplusSystemProperties.getBoolean(str, bool.booleanValue());
            } catch (NoSuchMethodError e) {
                Log.e(TAG, e.toString());
                throw new UnSupportedApiVersionException("no permission to access the blocked method", e);
            }
        } else if (VersionUtils.isR()) {
            Response execute = Epona.newCall(new Request.Builder().setComponentName(COMPONENT_NAME).setActionName("getBoolean").withString("key", str).withBoolean("def", bool.booleanValue()).build()).execute();
            if (execute.isSuccessful()) {
                return execute.getBundle().getBoolean(RESULT);
            }
            execute.checkThrowable(IllegalArgumentException.class);
            return bool.booleanValue();
        } else if (VersionUtils.isQ()) {
            return SystemProperties.getBoolean(str, bool.booleanValue());
        } else {
            throw new UnSupportedApiVersionException("not supported before Q");
        }
    }

    @Permission(authStr = "notifyInitCotaDownloaded", type = "epona")
    @Blocked
    @RequiresApi(api = 30)
    @System
    public static void notifyInitCotaDownloaded() throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            Response execute = Epona.newCall(new Request.Builder().setComponentName(COMPONENT_NAME).setActionName("notifyInitCotaDownloaded").build()).execute();
            if (execute.isSuccessful()) {
                return;
            }
            execute.checkThrowable(IllegalArgumentException.class);
            return;
        }
        throw new UnSupportedApiVersionException("not supported before R");
    }
}

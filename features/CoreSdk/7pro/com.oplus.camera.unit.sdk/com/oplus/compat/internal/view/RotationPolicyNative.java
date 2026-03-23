package com.oplus.compat.internal.view;

import android.util.Log;
import androidx.annotation.RequiresApi;
import com.android.internal.view.RotationPolicy;
import com.oplus.compat.annotation.Blocked;
import com.oplus.compat.annotation.Permission;
import com.oplus.compat.annotation.System;
import com.oplus.compat.utils.util.UnSupportedApiVersionException;
import com.oplus.compat.utils.util.VersionUtils;
import com.oplus.epona.Epona;
import com.oplus.epona.Request;
import com.oplus.epona.Response;
import com.oplus.utils.reflect.RefClass;
import com.oplus.utils.reflect.RefMethod;
/* loaded from: classes.dex */
public class RotationPolicyNative {
    private static final String COMPONENT_NAME = "com.android.internal.view.RotationPolicy";
    private static final String SUCCESS = "success";
    private static final String TAG = "RotationPolicyNative";

    /* loaded from: classes.dex */
    private static class RefRotationPolicyInfo {
        public static RefMethod<Boolean> isRotationSupported;

        private RefRotationPolicyInfo() {
        }

        static {
            RefClass.load(RefRotationPolicyInfo.class, RotationPolicy.class);
        }
    }

    private RotationPolicyNative() {
    }

    @Permission(authStr = "setRotationLock", type = "epona")
    @Blocked
    @RequiresApi(api = 30)
    @System
    public static void setRotationLock(boolean z) throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            Epona.newCall(new Request.Builder().setComponentName(COMPONENT_NAME).setActionName("setRotationLock").withBoolean("enabled", z).build()).execute();
            return;
        }
        throw new UnSupportedApiVersionException();
    }

    @Permission(authStr = "isRotationLocked", type = "epona")
    @Blocked
    @RequiresApi(api = 30)
    @System
    public static boolean isRotationLocked() throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            Response execute = Epona.newCall(new Request.Builder().setComponentName(COMPONENT_NAME).setActionName("isRotationLocked").build()).execute();
            if (execute.isSuccessful()) {
                return execute.getBundle().getBoolean(SUCCESS);
            }
            return false;
        }
        throw new UnSupportedApiVersionException();
    }

    @Permission(authStr = "isRotationSupported", type = "epona")
    @Blocked
    @RequiresApi(api = 30)
    public static boolean isRotationSupported() throws UnSupportedApiVersionException {
        if (VersionUtils.isS()) {
            try {
                return RefRotationPolicyInfo.isRotationSupported.call(null, Epona.getContext()).booleanValue();
            } catch (NoSuchMethodError e) {
                Log.e(TAG, e.toString());
                throw new UnSupportedApiVersionException("no permission to access the blocked method", e);
            }
        } else if (VersionUtils.isR()) {
            Response execute = Epona.newCall(new Request.Builder().setComponentName(COMPONENT_NAME).setActionName("isRotationSupported").build()).execute();
            if (execute.isSuccessful()) {
                return execute.getBundle().getBoolean(SUCCESS);
            }
            return false;
        } else {
            throw new UnSupportedApiVersionException();
        }
    }
}

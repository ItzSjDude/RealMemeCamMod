package com.oplus.compat.ims;

import android.util.Log;
import androidx.annotation.RequiresApi;
import com.android.ims.ImsManager;
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
/* loaded from: classes.dex */
public class ImsManagerNative {
    private static final String COMPONENT_NAME = "com.android.ims.ImsManager";
    private static final String KEY_PHONE_ID = "phoneId";
    private static final String KEY_RESULT = "result";
    private static final String TAG = "ImsManagerNative";
    private static int mPhoneId;

    /* loaded from: classes.dex */
    private static class RefImsManagerInfo {
        @MethodName(name = "isEnhanced4gLteModeSettingEnabledByUser", params = {})
        public static RefMethod<Boolean> isEnhanced4gLteModeSettingEnabledByUser;
        @MethodName(name = "isVolteEnabledByPlatform", params = {})
        public static RefMethod<Boolean> isVolteEnabledByPlatform;
        @MethodName(name = "isVtEnabledByPlatform", params = {})
        public static RefMethod<Boolean> isVtEnabledByPlatform;
        @MethodName(name = "isVtEnabledByUser", params = {})
        public static RefMethod<Boolean> isVtEnabledByUser;
        @MethodName(name = "isWfcEnabledByPlatform", params = {})
        public static RefMethod<Boolean> isWfcEnabledByPlatform;
        @MethodName(name = "isWfcEnabledByUser", params = {})
        public static RefMethod<Boolean> isWfcEnabledByUser;

        private RefImsManagerInfo() {
        }

        static {
            RefClass.load(RefImsManagerInfo.class, ImsManager.class);
        }
    }

    private ImsManagerNative() {
    }

    /* loaded from: classes.dex */
    private static class LazyHolder {
        private static final ImsManagerNative INSTANCE = new ImsManagerNative();

        private LazyHolder() {
        }
    }

    @Grey
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public static ImsManagerNative getInstance(int i) throws UnSupportedApiVersionException {
        if (VersionUtils.isQ()) {
            mPhoneId = i;
            return LazyHolder.INSTANCE;
        }
        throw new UnSupportedApiVersionException("not supported before Q");
    }

    @Permission(authStr = "isVtEnabledByPlatform", type = "epona")
    @Blocked
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    @System
    public boolean isVtEnabledByPlatform() throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            Response execute = Epona.newCall(new Request.Builder().setComponentName(COMPONENT_NAME).setActionName("isVtEnabledByPlatform").withInt(KEY_PHONE_ID, mPhoneId).build()).execute();
            if (execute.isSuccessful()) {
                return execute.getBundle().getBoolean(KEY_RESULT);
            }
            Log.e(TAG, execute.getMessage());
            return false;
        } else if (VersionUtils.isQ()) {
            return RefImsManagerInfo.isVtEnabledByPlatform.call(ImsManager.getInstance(Epona.getContext(), mPhoneId), new Object[0]).booleanValue();
        } else {
            throw new UnSupportedApiVersionException("not supported before Q");
        }
    }

    @Permission(authStr = "isWfcEnabledByPlatform", type = "epona")
    @Blocked
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    @System
    public boolean isWfcEnabledByPlatform() throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            Response execute = Epona.newCall(new Request.Builder().setComponentName(COMPONENT_NAME).setActionName("isWfcEnabledByPlatform").withInt(KEY_PHONE_ID, mPhoneId).build()).execute();
            if (execute.isSuccessful()) {
                return execute.getBundle().getBoolean(KEY_RESULT);
            }
            Log.e(TAG, execute.getMessage());
            return false;
        } else if (VersionUtils.isQ()) {
            return RefImsManagerInfo.isWfcEnabledByPlatform.call(ImsManager.getInstance(Epona.getContext(), mPhoneId), new Object[0]).booleanValue();
        } else {
            throw new UnSupportedApiVersionException("not supported before Q");
        }
    }

    @Permission(authStr = "isVolteEnabledByPlatform", type = "epona")
    @Blocked
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    @System
    public boolean isVolteEnabledByPlatform() throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            Response execute = Epona.newCall(new Request.Builder().setComponentName(COMPONENT_NAME).setActionName("isVolteEnabledByPlatform").withInt(KEY_PHONE_ID, mPhoneId).build()).execute();
            if (execute.isSuccessful()) {
                return execute.getBundle().getBoolean(KEY_RESULT);
            }
            Log.e(TAG, execute.getMessage());
            return false;
        } else if (VersionUtils.isQ()) {
            return RefImsManagerInfo.isVolteEnabledByPlatform.call(ImsManager.getInstance(Epona.getContext(), mPhoneId), new Object[0]).booleanValue();
        } else {
            throw new UnSupportedApiVersionException("not supported before R");
        }
    }

    @Permission(authStr = "isVtEnabledByUser", type = "epona")
    @Blocked
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    @System
    public boolean isVtEnabledByUser() throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            Response execute = Epona.newCall(new Request.Builder().setComponentName(COMPONENT_NAME).setActionName("isVtEnabledByUser").withInt(KEY_PHONE_ID, mPhoneId).build()).execute();
            if (execute.isSuccessful()) {
                return execute.getBundle().getBoolean(KEY_RESULT);
            }
            Log.e(TAG, execute.getMessage());
            return false;
        } else if (VersionUtils.isQ()) {
            return RefImsManagerInfo.isVtEnabledByUser.call(ImsManager.getInstance(Epona.getContext(), mPhoneId), new Object[0]).booleanValue();
        } else {
            throw new UnSupportedApiVersionException("not supported before Q");
        }
    }

    @Permission(authStr = "isWfcEnabledByUser", type = "epona")
    @Blocked
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    @System
    public boolean isWfcEnabledByUser() throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            Response execute = Epona.newCall(new Request.Builder().setComponentName(COMPONENT_NAME).setActionName("isWfcEnabledByUser").withInt(KEY_PHONE_ID, mPhoneId).build()).execute();
            if (execute.isSuccessful()) {
                return execute.getBundle().getBoolean(KEY_RESULT);
            }
            Log.e(TAG, execute.getMessage());
            return false;
        } else if (VersionUtils.isQ()) {
            return RefImsManagerInfo.isWfcEnabledByUser.call(ImsManager.getInstance(Epona.getContext(), mPhoneId), new Object[0]).booleanValue();
        } else {
            throw new UnSupportedApiVersionException("not supported before Q");
        }
    }

    @Permission(authStr = "isEnhanced4gLteModeSettingEnabledByUser", type = "epona")
    @Blocked
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    @System
    public boolean isEnhanced4gLteModeSettingEnabledByUser() throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            Response execute = Epona.newCall(new Request.Builder().setComponentName(COMPONENT_NAME).setActionName("isEnhanced4gLteModeSettingEnabledByUser").withInt(KEY_PHONE_ID, mPhoneId).build()).execute();
            if (execute.isSuccessful()) {
                return execute.getBundle().getBoolean(KEY_RESULT);
            }
            Log.e(TAG, execute.getMessage());
            return false;
        } else if (VersionUtils.isQ()) {
            return RefImsManagerInfo.isEnhanced4gLteModeSettingEnabledByUser.call(ImsManager.getInstance(Epona.getContext(), mPhoneId), new Object[0]).booleanValue();
        } else {
            throw new UnSupportedApiVersionException("not supported before Q");
        }
    }
}

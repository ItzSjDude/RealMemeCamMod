package com.oplus.compat.internal.widget;

import android.content.Context;
import android.util.Log;
import androidx.annotation.RequiresApi;
import com.android.internal.widget.LockPatternUtils;
import com.oplus.compat.annotation.Blocked;
import com.oplus.compat.annotation.Grey;
import com.oplus.compat.annotation.Oem;
import com.oplus.compat.annotation.Permission;
import com.oplus.compat.annotation.System;
import com.oplus.compat.utils.util.UnSupportedApiVersionException;
import com.oplus.compat.utils.util.VersionUtils;
import com.oplus.compatsdk.annotation.OplusCompatibleMethod;
import com.oplus.epona.Epona;
import com.oplus.epona.Request;
import com.oplus.epona.Response;
import com.oplus.utils.reflect.RefClass;
import com.oplus.utils.reflect.RefMethod;
/* loaded from: classes.dex */
public class LockPatternUtilsNative {
    private static final String ACTION_GET_KEYGUARD_STORED_PASSWORD_QUALITY = "getKeyguardStoredPasswordQuality";
    private static final String ACTION_IS_LOCK_SCREEN_DISABLED = "isLockScreenDisabled";
    private static final String ACTION_IS_SECURE = "isSecure";
    private static final String ACTION_SET_LOCK_CREDENTIAL = "setLockCredential";
    private static final String ACTION_VERIFY_CREDENTIAL = "verifyCredential";
    private static final String CHALLENGE_VALUE = "challenge";
    private static final String COMPONENT_NAME = "com.android.internal.widget.LockPatternUtils";
    private static final String CREDENTIAL_VALUE = "credential";
    private static final String GET_KEYGUARD_STORED_PASSWORD_QUALITY_RESULT = "get_keyguard_stored_password_quality_result";
    private static final String IS_LOCK_SCREEN_DISABLED_RESULT = "is_lock_screen_disabled_result";
    private static final String IS_SECURE_RESULT = "is_secure_result";
    private static final String NEW_CREDENTIAL_VALUE = "newCredential";
    @Permission(authStr = "LockPatternUtils", type = "epona")
    @Blocked
    public static String PASSWORD_TYPE_KEY = null;
    private static final String RESULT = "result";
    private static final String SAVED_CREDENTIAL_VALUE = "savedCredential";
    private static final String SET_LOCK_CREDENTIAL_RESULT = "set_lock_credential_result";
    private static final String TAG = "LockPatternUtilsNative";
    private static final String USER_HANDLE_VALUE = "userHandle";
    private static final String USER_ID_VALUE = "userId";
    private static final String VERIFY_CREDENTIAL_RESULT = "verify_credential_result";
    private LockPatternUtils mLockPatternUtils;
    private Object mLockPatternUtilsWrapperCompat;

    @OplusCompatibleMethod
    private static Object getKeyguardStoredPasswordQualityCompat(Object obj, int i) {
        return null;
    }

    @OplusCompatibleMethod
    private static Object initWrapperCompat(Context context) {
        return null;
    }

    @OplusCompatibleMethod
    private static Object isLockPasswordEnabledCompat(Object obj, int i) {
        return null;
    }

    @OplusCompatibleMethod
    private static Object isLockScreenDisabledCompat(Object obj, int i) {
        return null;
    }

    @OplusCompatibleMethod
    private static Object isSecureCompat(Object obj, int i) {
        return null;
    }

    @OplusCompatibleMethod
    private static Object isTactileFeedbackEnabledCompat(Object obj) {
        return null;
    }

    @OplusCompatibleMethod
    private static Object isVisiblePatternEnabledCompat(Object obj, int i) {
        return null;
    }

    @OplusCompatibleMethod
    private static void reportSuccessfulPasswordAttemptCompat(Object obj, int i) {
    }

    @OplusCompatibleMethod
    private static Object sanitizePasswordCompat(Object obj) {
        return null;
    }

    @OplusCompatibleMethod
    private static Object setLockoutAttemptDeadlineCompat(Object obj, int i, int i2) {
        return null;
    }

    static {
        if (VersionUtils.isS()) {
            try {
                PASSWORD_TYPE_KEY = "lockscreen.password_type";
                return;
            } catch (Exception e) {
                Log.e(TAG, e.toString());
                return;
            }
        }
        Response execute = Epona.newCall(new Request.Builder().setComponentName(COMPONENT_NAME).setActionName("PASSWORD_TYPE_KEY").build()).execute();
        if (execute.isSuccessful()) {
            PASSWORD_TYPE_KEY = execute.getBundle().getString(RESULT);
        } else {
            Log.e(TAG, "Epona Communication failed, static initializer failed.");
        }
    }

    private LockPatternUtilsNative() {
    }

    @Grey
    @RequiresApi(api = 21)
    public LockPatternUtilsNative(Context context) {
        if (VersionUtils.isOsVersion11_3()) {
            this.mLockPatternUtils = new LockPatternUtils(context);
        } else if (VersionUtils.isQ()) {
            this.mLockPatternUtilsWrapperCompat = initWrapperCompat(context);
            this.mLockPatternUtils = new LockPatternUtils(context);
        } else if (VersionUtils.isL()) {
            this.mLockPatternUtils = new LockPatternUtils(context);
        } else {
            Log.e(TAG, "not supported before L");
        }
    }

    @Permission(authStr = ACTION_SET_LOCK_CREDENTIAL, type = "epona")
    @Blocked
    @RequiresApi(api = 30)
    @System
    public static boolean setLockCredential(LockscreenCredentialNative lockscreenCredentialNative, LockscreenCredentialNative lockscreenCredentialNative2, int i) throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            Response execute = Epona.newCall(new Request.Builder().setComponentName(COMPONENT_NAME).setActionName(ACTION_SET_LOCK_CREDENTIAL).withParcelable(NEW_CREDENTIAL_VALUE, lockscreenCredentialNative.getLockscreenCredential()).withParcelable(SAVED_CREDENTIAL_VALUE, lockscreenCredentialNative2.getLockscreenCredential()).withInt(USER_HANDLE_VALUE, i).build()).execute();
            if (execute.isSuccessful()) {
                return execute.getBundle().getBoolean(SET_LOCK_CREDENTIAL_RESULT);
            }
            return false;
        }
        throw new UnSupportedApiVersionException("not supported before R");
    }

    @Permission(authStr = ACTION_VERIFY_CREDENTIAL, type = "epona")
    @Blocked
    @RequiresApi(api = 30)
    @System
    public static byte[] verifyCredential(LockscreenCredentialNative lockscreenCredentialNative, long j, int i) throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            Response execute = Epona.newCall(new Request.Builder().setComponentName(COMPONENT_NAME).setActionName(ACTION_VERIFY_CREDENTIAL).withParcelable(CREDENTIAL_VALUE, lockscreenCredentialNative.getLockscreenCredential()).withLong(CHALLENGE_VALUE, j).withInt(USER_ID_VALUE, i).build()).execute();
            if (execute.isSuccessful()) {
                return execute.getBundle().getByteArray(VERIFY_CREDENTIAL_RESULT);
            }
            return null;
        }
        throw new UnSupportedApiVersionException("not supported before R");
    }

    @Permission(authStr = ACTION_GET_KEYGUARD_STORED_PASSWORD_QUALITY, type = "epona")
    @RequiresApi(api = 21)
    @System
    public static int getKeyguardStoredPasswordQuality(int i) throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            Response execute = Epona.newCall(new Request.Builder().setComponentName(COMPONENT_NAME).setActionName(ACTION_GET_KEYGUARD_STORED_PASSWORD_QUALITY).withInt(USER_HANDLE_VALUE, i).build()).execute();
            if (execute.isSuccessful()) {
                return execute.getBundle().getInt(GET_KEYGUARD_STORED_PASSWORD_QUALITY_RESULT);
            }
            Log.e(TAG, "getKeyguardStoredPasswordQuality: " + execute.getMessage());
            return -1;
        } else if (!VersionUtils.isQ()) {
            if (!VersionUtils.isL()) {
                throw new UnSupportedApiVersionException();
            }
            if (LazyHolder.INSTANCE.mLockPatternUtils != null) {
                return LazyHolder.INSTANCE.mLockPatternUtils.getKeyguardStoredPasswordQuality(i);
            }
            return -1;
        } else if (LazyHolder.INSTANCE.mLockPatternUtilsWrapperCompat != null) {
            return ((Integer) getKeyguardStoredPasswordQualityCompat(LazyHolder.INSTANCE.mLockPatternUtilsWrapperCompat, i)).intValue();
        } else {
            return -1;
        }
    }

    @Grey
    @Permission(authStr = ACTION_IS_SECURE, type = "epona")
    @RequiresApi(api = 22)
    public static boolean isSecure(int i) throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            Response execute = Epona.newCall(new Request.Builder().setComponentName(COMPONENT_NAME).setActionName(ACTION_IS_SECURE).withInt(USER_ID_VALUE, i).build()).execute();
            if (execute.isSuccessful()) {
                return execute.getBundle().getBoolean(IS_SECURE_RESULT);
            }
            Log.e(TAG, "isSecure: " + execute.getMessage());
            return false;
        } else if (!VersionUtils.isQ()) {
            if (!VersionUtils.isL_MR1()) {
                throw new UnSupportedApiVersionException();
            }
            if (LazyHolder.INSTANCE.mLockPatternUtils != null) {
                return LazyHolder.INSTANCE.mLockPatternUtils.isSecure(i);
            }
            return false;
        } else if (LazyHolder.INSTANCE.mLockPatternUtilsWrapperCompat != null) {
            return ((Boolean) isSecureCompat(LazyHolder.INSTANCE.mLockPatternUtilsWrapperCompat, i)).booleanValue();
        } else {
            return false;
        }
    }

    @Grey
    @Permission(authStr = ACTION_IS_LOCK_SCREEN_DISABLED, type = "epona")
    @RequiresApi(api = 23)
    public static boolean isLockScreenDisabled(int i) throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            Response execute = Epona.newCall(new Request.Builder().setComponentName(COMPONENT_NAME).setActionName(ACTION_IS_LOCK_SCREEN_DISABLED).withInt(USER_ID_VALUE, i).build()).execute();
            if (execute.isSuccessful()) {
                return execute.getBundle().getBoolean(IS_LOCK_SCREEN_DISABLED_RESULT);
            }
            Log.e(TAG, "isLockScreenDisabled: " + execute.getMessage());
            return false;
        } else if (!VersionUtils.isQ()) {
            if (!VersionUtils.isM()) {
                throw new UnSupportedApiVersionException();
            }
            return LazyHolder.INSTANCE.mLockPatternUtils.isLockScreenDisabled(i);
        } else {
            return ((Boolean) isLockScreenDisabledCompat(LazyHolder.INSTANCE.mLockPatternUtilsWrapperCompat, i)).booleanValue();
        }
    }

    @Grey
    @Permission(authStr = "isLockPatternEnabled", type = "epona")
    @RequiresApi(api = 26)
    public static boolean isLockPatternEnabled(int i) throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            Response execute = Epona.newCall(new Request.Builder().setComponentName(COMPONENT_NAME).setActionName("isLockPatternEnabled").withInt(USER_ID_VALUE, i).build()).execute();
            if (execute.isSuccessful()) {
                return execute.getBundle().getBoolean("is_lock_pattern_enabled_result");
            }
            Log.e(TAG, "isLockPatternEnabled: " + execute.getMessage());
            return false;
        } else if (!VersionUtils.isO()) {
            throw new UnSupportedApiVersionException("Not supported before O");
        } else {
            return LazyHolder.INSTANCE.mLockPatternUtils.isLockPatternEnabled(i);
        }
    }

    @Permission(authStr = "isLockPasswordEnabled", type = "epona")
    @Blocked
    @RequiresApi(api = 26)
    @System
    public static boolean isLockPasswordEnabled(int i) throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            Response execute = Epona.newCall(new Request.Builder().setComponentName(COMPONENT_NAME).setActionName("isLockPasswordEnabled").withInt(USER_ID_VALUE, i).build()).execute();
            if (execute.isSuccessful()) {
                return execute.getBundle().getBoolean("is_lock_password_enabled_result");
            }
            Log.e(TAG, "isLockPasswordEnabled: " + execute.getMessage());
            return false;
        } else if (!VersionUtils.isQ()) {
            if (!VersionUtils.isO()) {
                throw new UnSupportedApiVersionException();
            }
            return LazyHolder.INSTANCE.mLockPatternUtils.isLockPasswordEnabled(i);
        } else {
            return ((Boolean) isLockPasswordEnabledCompat(LazyHolder.INSTANCE.mLockPatternUtilsWrapperCompat, i)).booleanValue();
        }
    }

    @Permission(authStr = "setLockScreenDisabled", type = "epona")
    @Blocked
    @RequiresApi(api = 30)
    @System
    public static void setLockScreenDisabled(boolean z, int i) throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            Epona.newCall(new Request.Builder().setComponentName(COMPONENT_NAME).setActionName("setLockScreenDisabled").withBoolean("disable", z).withInt(USER_ID_VALUE, i).build()).execute();
            return;
        }
        throw new UnSupportedApiVersionException("Not supported before R");
    }

    @Grey
    @RequiresApi(api = 23)
    public void reportSuccessfulPasswordAttempt(int i) throws UnSupportedApiVersionException {
        if (VersionUtils.isOsVersion11_3()) {
            if (this.mLockPatternUtils != null) {
                this.mLockPatternUtils.reportSuccessfulPasswordAttempt(i);
            }
        } else if (VersionUtils.isQ()) {
            if (this.mLockPatternUtilsWrapperCompat != null) {
                reportSuccessfulPasswordAttemptCompat(this.mLockPatternUtilsWrapperCompat, i);
            }
        } else if (VersionUtils.isM()) {
            if (this.mLockPatternUtils != null) {
                this.mLockPatternUtils.reportSuccessfulPasswordAttempt(i);
            }
        } else {
            throw new UnSupportedApiVersionException();
        }
    }

    @Oem
    @RequiresApi(api = 30)
    public void sanitizePassword() throws UnSupportedApiVersionException {
        try {
            if (!VersionUtils.isOsVersion11_3()) {
                if (!VersionUtils.isR()) {
                    throw new UnSupportedApiVersionException("not supported before R");
                }
                ReflectInfo.sanitizePassword.call(sanitizePasswordCompat(this.mLockPatternUtilsWrapperCompat), new Object[0]);
                return;
            }
            ReflectInfo.sanitizePassword.call(this.mLockPatternUtils, new Object[0]);
        } catch (Throwable th) {
            throw new UnSupportedApiVersionException(th);
        }
    }

    @Grey
    @RequiresApi(api = 23)
    public long setLockoutAttemptDeadline(int i, int i2) throws UnSupportedApiVersionException {
        if (VersionUtils.isOsVersion11_3()) {
            if (this.mLockPatternUtils != null) {
                return this.mLockPatternUtils.setLockoutAttemptDeadline(i, i2);
            }
            return -1L;
        } else if (VersionUtils.isQ()) {
            if (this.mLockPatternUtilsWrapperCompat != null) {
                return ((Long) setLockoutAttemptDeadlineCompat(this.mLockPatternUtilsWrapperCompat, i, i2)).longValue();
            }
            return -1L;
        } else if (VersionUtils.isM()) {
            if (this.mLockPatternUtils != null) {
                return this.mLockPatternUtils.setLockoutAttemptDeadline(i, i2);
            }
            return -1L;
        } else {
            throw new UnSupportedApiVersionException();
        }
    }

    @Grey
    @RequiresApi(api = 21)
    public boolean isTactileFeedbackEnabled() throws UnSupportedApiVersionException {
        if (VersionUtils.isOsVersion11_3()) {
            if (this.mLockPatternUtils != null) {
                return this.mLockPatternUtils.isTactileFeedbackEnabled();
            }
            return false;
        } else if (VersionUtils.isQ()) {
            if (this.mLockPatternUtilsWrapperCompat != null) {
                return ((Boolean) isTactileFeedbackEnabledCompat(this.mLockPatternUtilsWrapperCompat)).booleanValue();
            }
            return false;
        } else if (VersionUtils.isL()) {
            if (this.mLockPatternUtils != null) {
                return this.mLockPatternUtils.isTactileFeedbackEnabled();
            }
            return false;
        } else {
            throw new UnSupportedApiVersionException();
        }
    }

    @Grey
    @RequiresApi(api = 23)
    public boolean isVisiblePatternEnabled(int i) throws UnSupportedApiVersionException {
        if (VersionUtils.isOsVersion11_3()) {
            if (this.mLockPatternUtils != null) {
                return this.mLockPatternUtils.isVisiblePatternEnabled(i);
            }
            return false;
        } else if (VersionUtils.isQ()) {
            if (this.mLockPatternUtilsWrapperCompat != null) {
                return ((Boolean) isVisiblePatternEnabledCompat(this.mLockPatternUtilsWrapperCompat, i)).booleanValue();
            }
            return false;
        } else if (VersionUtils.isM()) {
            if (this.mLockPatternUtils != null) {
                return this.mLockPatternUtils.isVisiblePatternEnabled(i);
            }
            return false;
        } else {
            throw new UnSupportedApiVersionException();
        }
    }

    /* loaded from: classes.dex */
    private static class ReflectInfo {
        private static RefMethod<Void> clearLock;
        private static RefMethod<Void> sanitizePassword;

        private ReflectInfo() {
        }

        static {
            RefClass.load(ReflectInfo.class, LockPatternUtils.class);
        }
    }

    /* loaded from: classes.dex */
    private static class LazyHolder {
        private static final LockPatternUtilsNative INSTANCE = new LockPatternUtilsNative(Epona.getContext());

        private LazyHolder() {
        }
    }
}

package com.oplus.compat.internal.widget;

import android.util.Log;
import androidx.annotation.RequiresApi;
import com.android.internal.widget.LockscreenCredential;
import com.oplus.compat.annotation.Blocked;
import com.oplus.compat.annotation.Permission;
import com.oplus.compat.utils.util.UnSupportedApiVersionException;
import com.oplus.compat.utils.util.VersionUtils;
import com.oplus.epona.Epona;
import com.oplus.epona.Request;
import com.oplus.epona.Response;
import com.oplus.utils.reflect.RefClass;
import com.oplus.utils.reflect.RefMethod;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
/* loaded from: classes.dex */
public class LockscreenCredentialNative {
    private static final String COMPONENT_NAME = "internal.widget.LockscreenCredential";
    private static final String KEY_RESULT = "result";
    private static final String PASSWORD_VALUE = "PASSWORD_VALUE";
    private static final String TAG = "LockscreenCredentialNative";
    private LockscreenCredential mLockscreenCredential;

    /* loaded from: classes.dex */
    private static class RefLockscreenCredentialInfo {
        public static RefMethod<LockscreenCredential> createNone;
        public static RefMethod<LockscreenCredential> createPassword;

        private RefLockscreenCredentialInfo() {
        }

        static {
            RefClass.load(RefLockscreenCredentialInfo.class, "com.android.internal.widget.LockscreenCredential");
        }
    }

    private LockscreenCredentialNative(LockscreenCredential lockscreenCredential) {
        this.mLockscreenCredential = lockscreenCredential;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public LockscreenCredential getLockscreenCredential() {
        return this.mLockscreenCredential;
    }

    @Permission(authStr = "createNone", type = "epona")
    @Blocked
    @RequiresApi(api = 30)
    public static LockscreenCredentialNative createNone() throws UnSupportedApiVersionException {
        if (VersionUtils.isS()) {
            return new LockscreenCredentialNative(RefLockscreenCredentialInfo.createNone.call(null, new Object[0]));
        }
        if (VersionUtils.isR()) {
            Response execute = Epona.newCall(new Request.Builder().setComponentName(COMPONENT_NAME).setActionName("createNone").build()).execute();
            if (execute.isSuccessful()) {
                return new LockscreenCredentialNative(execute.getBundle().getParcelable(KEY_RESULT));
            }
            return null;
        }
        throw new UnSupportedApiVersionException("not supported before R");
    }

    @Permission(authStr = "createPassword", type = "epona")
    @Blocked
    @RequiresApi(api = 30)
    public static LockscreenCredentialNative createPassword(CharSequence charSequence) throws UnSupportedApiVersionException {
        if (VersionUtils.isS()) {
            try {
                return new LockscreenCredentialNative((LockscreenCredential) getResult(getMethod("com.android.internal.widget.LockscreenCredential", "createPassword", new Class[]{CharSequence.class}), null, charSequence));
            } catch (Exception e) {
                Log.e(TAG, e.toString());
            }
        } else if (VersionUtils.isR()) {
            Response execute = Epona.newCall(new Request.Builder().setComponentName(COMPONENT_NAME).setActionName("createPassword").withCharSequence(PASSWORD_VALUE, charSequence).build()).execute();
            if (execute.isSuccessful()) {
                return new LockscreenCredentialNative(execute.getBundle().getParcelable(KEY_RESULT));
            }
        } else {
            throw new UnSupportedApiVersionException("not supported before R");
        }
        return null;
    }

    private static Method getMethod(String str, String str2, Class<?>[] clsArr) throws NoSuchMethodException, ClassNotFoundException {
        return Class.forName(str).getDeclaredMethod(str2, clsArr);
    }

    private static Object getResult(Method method, Object obj, Object... objArr) throws InvocationTargetException, IllegalAccessException {
        return method.invoke(obj, objArr);
    }
}

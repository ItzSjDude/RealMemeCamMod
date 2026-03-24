package com.oplus.compat.app;

import android.app.KeyguardManager;
import android.util.Log;
import androidx.annotation.RequiresApi;
import com.oplus.compat.annotation.Blocked;
import com.oplus.compat.annotation.Permission;
import com.oplus.compat.utils.util.VersionUtils;
import com.oplus.epona.Epona;
import com.oplus.epona.Request;
import com.oplus.epona.Response;
import com.oplus.ocs.camera.common.util.ApsConstant;
import com.oplus.utils.reflect.RefClass;
import com.oplus.utils.reflect.RefObject;
/* loaded from: classes.dex */
public class KeyguardManagerNative {
    @Permission(authStr = "KeyguardManager", type = "epona")
    @Blocked
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public static String ACTION_CONFIRM_DEVICE_CREDENTIAL = null;
    private static final String COMPONENT_NAME = "android.app.KeyguardManager";
    private static final String CONSTANT_ACTION_CONFIRM_DEVICE_CREDENTIAL = "ACTION_CONFIRM_DEVICE_CREDENTIAL";
    private static final String TAG = "KeyguardManagerNative";

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class ReflectInfo {
        public static RefObject<String> ACTION_CONFIRM_DEVICE_CREDENTIAL;

        private ReflectInfo() {
        }

        static {
            RefClass.load(ReflectInfo.class, KeyguardManager.class);
        }
    }

    private KeyguardManagerNative() {
    }

    static {
        initConstant();
    }

    private static void initConstant() {
        try {
            if (VersionUtils.isS()) {
                ACTION_CONFIRM_DEVICE_CREDENTIAL = "android.app.action.CONFIRM_DEVICE_CREDENTIAL";
            } else if (VersionUtils.isR()) {
                Response execute = Epona.newCall(new Request.Builder().setComponentName(COMPONENT_NAME).setActionName("const").build()).execute();
                if (execute.isSuccessful()) {
                    ACTION_CONFIRM_DEVICE_CREDENTIAL = execute.getBundle().getString(CONSTANT_ACTION_CONFIRM_DEVICE_CREDENTIAL);
                } else {
                    Log.e(TAG, "Epona Communication failed, static initializer failed.");
                }
            } else if (VersionUtils.isQ()) {
                ACTION_CONFIRM_DEVICE_CREDENTIAL = ReflectInfo.ACTION_CONFIRM_DEVICE_CREDENTIAL.getWithException(null);
            } else {
                Log.e(TAG, "not supported before Q");
            }
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
        }
    }
}

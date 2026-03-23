package com.oplus.compat.content;

import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.os.UserHandle;
import android.util.Log;
import android.view.Display;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import com.oplus.compat.annotation.Blocked;
import com.oplus.compat.annotation.Grey;
import com.oplus.compat.annotation.Permission;
import com.oplus.compat.annotation.System;
import com.oplus.compat.utils.util.UnSupportedApiVersionException;
import com.oplus.compat.utils.util.VersionUtils;
import com.oplus.compatsdk.annotation.OplusCompatibleMethod;
import com.oplus.epona.Epona;
import com.oplus.epona.Request;
import com.oplus.epona.Response;
import com.oplus.inner.content.ContextWrapper;
import com.oplus.ocs.camera.common.util.ApsConstant;
import com.oplus.tingle.ipc.Slave;
import com.oplus.utils.reflect.RefClass;
import com.oplus.utils.reflect.RefMethod;
import java.io.File;
/* loaded from: classes.dex */
public class ContextNative {
    @Blocked
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public static int BIND_FOREGROUND_SERVICE = 0;
    @Blocked
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public static int BIND_FOREGROUND_SERVICE_WHILE_AWAKE = 0;
    private static final String COMPONENT_NAME = "android.content.Context";
    private static final String PACKAGE_MANAGER = "package";
    @Grey
    @RequiresApi(api = 25)
    public static String STATUS_BAR_SERVICE = null;
    private static final String TAG = "ContextNative";

    @OplusCompatibleMethod
    private static Object createCredentialProtectedStorageContextForCompat(Context context) {
        return null;
    }

    @OplusCompatibleMethod
    private static Object getDisplayForCompat(Context context) {
        return null;
    }

    @OplusCompatibleMethod
    private static Object getSharedPreferencesPathForCompat(Context context, String str) {
        return null;
    }

    @OplusCompatibleMethod
    private static Object initStatusBarService() {
        return null;
    }

    @OplusCompatibleMethod
    private static void startActivityAsUserForCompat(Context context, Intent intent, Bundle bundle, UserHandle userHandle) {
    }

    @OplusCompatibleMethod
    private static void startActivityAsUserForCompat(Context context, Intent intent, UserHandle userHandle) {
    }

    static {
        try {
            if (VersionUtils.isOsVersion11_3()) {
                STATUS_BAR_SERVICE = "statusbar";
                BIND_FOREGROUND_SERVICE_WHILE_AWAKE = 33554432;
                BIND_FOREGROUND_SERVICE = 67108864;
            } else if (VersionUtils.isQ()) {
                STATUS_BAR_SERVICE = (String) initStatusBarService();
                BIND_FOREGROUND_SERVICE_WHILE_AWAKE = 33554432;
                BIND_FOREGROUND_SERVICE = 67108864;
            } else if (VersionUtils.isN_MR1()) {
                STATUS_BAR_SERVICE = "statusbar";
            } else {
                throw new UnSupportedApiVersionException();
            }
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
        }
    }

    private ContextNative() {
    }

    /* loaded from: classes.dex */
    private static class ReflectInfo {
        private static RefMethod<File> getSharedPrefsFile;

        private ReflectInfo() {
        }

        static {
            RefClass.load(ReflectInfo.class, Context.class);
        }
    }

    @Permission(authStr = "getApplicationInfo", type = "tingle")
    @Grey
    @RequiresApi(api = 30)
    @System
    public static Context createPackageContextAsUser(@NonNull Context context, String str, int i, UserHandle userHandle) throws UnSupportedApiVersionException, PackageManager.NameNotFoundException {
        if (VersionUtils.isR()) {
            Slave.getSystemService(context, PACKAGE_MANAGER);
            return context.createPackageContextAsUser(str, i, userHandle);
        }
        throw new UnSupportedApiVersionException("not supported before R");
    }

    @Grey
    @RequiresApi(api = 30)
    public static File getSharedPrefsFile(@NonNull Context context, String str) throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            return (File) ReflectInfo.getSharedPrefsFile.call(context, str);
        }
        throw new UnSupportedApiVersionException();
    }

    @Permission(authStr = "startActivity", type = "epona")
    @RequiresApi(api = 30)
    public static void startActivity(Intent intent) throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            Response execute = Epona.newCall(new Request.Builder().setComponentName(COMPONENT_NAME).setActionName("startActivity").withParcelable("intent", intent).build()).execute();
            if (execute.isSuccessful()) {
                return;
            }
            Log.e(TAG, execute.getMessage());
            return;
        }
        throw new UnSupportedApiVersionException();
    }

    @Permission(authStr = "startActivityAsUser", type = "epona")
    @RequiresApi(api = 21)
    public static void startActivityAsUser(Intent intent, Bundle bundle, UserHandle userHandle) throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            Epona.newCall(new Request.Builder().setComponentName(COMPONENT_NAME).setActionName("startActivityAsUser").withParcelable("Intent", intent).withBundle("Bundle", bundle).withParcelable("UserHandle", userHandle).build()).execute();
        } else if (VersionUtils.isQ()) {
            startActivityAsUserForCompat(Epona.getContext(), intent, bundle, userHandle);
        } else if (VersionUtils.isL()) {
            Epona.getContext().startActivityAsUser(intent, bundle, userHandle);
        } else {
            throw new UnSupportedApiVersionException("Not supported before L");
        }
    }

    @Permission(authStr = "bindIsolatedService", type = "tingle")
    @RequiresApi(api = 30)
    public static boolean bindServiceAsUser(@NonNull Context context, Intent intent, ServiceConnection serviceConnection, int i, UserHandle userHandle) throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            Slave.cleanSystemService(context, "activity");
            return context.bindServiceAsUser(intent, serviceConnection, i, userHandle);
        }
        throw new UnSupportedApiVersionException();
    }

    @Grey
    @RequiresApi(api = 21)
    public static void startActivityAsUser(Context context, Intent intent, UserHandle userHandle) throws UnSupportedApiVersionException {
        startActivityAsUser(intent, (Bundle) null, userHandle);
    }

    @Blocked
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_MULTI_FRAME_DENOISE_HDR)
    public static Display getDisplay(Context context) throws UnSupportedApiVersionException {
        if (VersionUtils.isS()) {
            try {
                return context.getDisplay();
            } catch (NoSuchMethodError e) {
                Log.e(TAG, e.toString());
                throw new UnSupportedApiVersionException("no permission to access the blocked method", e);
            }
        } else if (VersionUtils.isOsVersion11_3()) {
            return ContextWrapper.getDisplay(context);
        } else {
            if (VersionUtils.isQ()) {
                return (Display) getDisplayForCompat(context);
            }
            if (VersionUtils.isN()) {
                return context.getDisplay();
            }
            throw new UnSupportedApiVersionException();
        }
    }

    @Grey
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_MULTI_FRAME_DENOISE_HDR)
    public static Context createCredentialProtectedStorageContext(@NonNull Context context) throws UnSupportedApiVersionException {
        if (VersionUtils.isS()) {
            return context.createCredentialProtectedStorageContext();
        }
        if (VersionUtils.isOsVersion11_3()) {
            return ContextWrapper.createCredentialProtectedStorageContext(context);
        }
        if (VersionUtils.isQ()) {
            return (Context) createCredentialProtectedStorageContextForCompat(context);
        }
        if (VersionUtils.isN()) {
            return context.createCredentialProtectedStorageContext();
        }
        throw new UnSupportedApiVersionException();
    }

    @Grey
    @RequiresApi(api = 25)
    public static File getSharedPreferencesPath(@NonNull Context context, String str) throws UnSupportedApiVersionException {
        if (VersionUtils.isS()) {
            return context.getSharedPreferencesPath(str);
        }
        if (VersionUtils.isOsVersion11_3()) {
            return ContextWrapper.getSharedPreferencesPath(context, str);
        }
        if (VersionUtils.isQ()) {
            return (File) getSharedPreferencesPathForCompat(context, str);
        }
        if (VersionUtils.isN_MR1()) {
            return context.getSharedPreferencesPath(str);
        }
        throw new UnSupportedApiVersionException();
    }

    @Grey
    @RequiresApi(api = 25)
    public static int getThemeResId(Context context) throws UnSupportedApiVersionException {
        if (VersionUtils.isN_MR1()) {
            return context.getThemeResId();
        }
        throw new UnSupportedApiVersionException();
    }
}

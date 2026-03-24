package com.oplus.compat.app.role;

import android.app.role.RoleManager;
import android.content.Context;
import android.os.UserHandle;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import com.oplus.compat.annotation.Permission;
import com.oplus.compat.annotation.System;
import com.oplus.compat.utils.util.UnSupportedApiVersionException;
import com.oplus.compat.utils.util.VersionUtils;
import com.oplus.ocs.camera.common.util.ApsConstant;
import com.oplus.tingle.ipc.Slave;
import java.util.concurrent.Executor;
import java.util.function.Consumer;
/* loaded from: classes.dex */
public class RoleManagerNative {
    private static final String TAG = "RoleManagerNative";

    private RoleManagerNative() {
    }

    @Permission(authStr = "addRoleHolderAsUser", type = "tingle")
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    @System
    public static void addRoleHolderAsUser(Context context, @NonNull String str, @NonNull String str2, int i, @NonNull UserHandle userHandle, @NonNull Executor executor, @NonNull Consumer<Boolean> consumer) throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            ((RoleManager) Slave.getSystemService(context, "role")).addRoleHolderAsUser(str, str2, i, userHandle, executor, consumer);
        } else if (VersionUtils.isQ()) {
            ((RoleManager) context.getSystemService("role")).addRoleHolderAsUser(str, str2, i, userHandle, executor, consumer);
        } else {
            throw new UnSupportedApiVersionException("Not supported before Q");
        }
    }

    @Permission(authStr = "removeRoleHolderAsUser", type = "tingle")
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    @System
    public static void removeRoleHolderAsUser(Context context, @NonNull String str, @NonNull String str2, int i, @NonNull UserHandle userHandle, @NonNull Executor executor, @NonNull Consumer<Boolean> consumer) throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            ((RoleManager) Slave.getSystemService(context, "role")).removeRoleHolderAsUser(str, str2, i, userHandle, executor, consumer);
        } else if (VersionUtils.isQ()) {
            ((RoleManager) context.getSystemService("role")).removeRoleHolderAsUser(str, str2, i, userHandle, executor, consumer);
        } else {
            throw new UnSupportedApiVersionException("Not supported before Q");
        }
    }
}

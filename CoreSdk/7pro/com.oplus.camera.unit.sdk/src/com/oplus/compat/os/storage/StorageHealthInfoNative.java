package com.oplus.compat.os.storage;

import android.os.storage.StorageHealthInfoManager;
import android.util.Log;
import com.oplus.compat.annotation.Blocked;
import com.oplus.compat.annotation.Permission;
import com.oplus.compat.annotation.System;
import com.oplus.compat.utils.util.UnSupportedApiVersionException;
import com.oplus.compat.utils.util.VersionUtils;
import com.oplus.epona.Epona;
import com.oplus.epona.Request;
import com.oplus.epona.Response;
/* loaded from: classes.dex */
public class StorageHealthInfoNative {
    private static final String ACTION_NAME = "getStorageHealthInfoMap";
    private static final String COMPONENT_NAME = "android.os.storage.StorageHealthInfoManager";
    private static final String RESULT = "HealthInfoMap";
    private static final String TAG = "StorageHealthInfoNative";

    @Permission(authStr = ACTION_NAME, type = "epona")
    @Blocked
    @System
    public static Object getStorageHealthInfoMap() throws UnSupportedApiVersionException {
        try {
            if (VersionUtils.isR()) {
                Response execute = Epona.newCall(new Request.Builder().setComponentName(COMPONENT_NAME).setActionName(ACTION_NAME).build()).execute();
                if (execute.isSuccessful()) {
                    return execute.getBundle().get(RESULT);
                }
                Log.e(TAG, "getStorageHealthInfoMap failed: " + execute.getMessage());
                return null;
            } else if (VersionUtils.isQ()) {
                StorageHealthInfoManager storageHealthInfoManager = (StorageHealthInfoManager) Epona.getContext().getSystemService("storage_healthinfo");
                if (storageHealthInfoManager != null) {
                    return storageHealthInfoManager.getStorageHealthInfoMap();
                }
                return null;
            } else {
                throw new UnSupportedApiVersionException("getStorageHealthInfoMap not supported before Q");
            }
        } catch (Throwable th) {
            throw new UnSupportedApiVersionException(th);
        }
    }
}

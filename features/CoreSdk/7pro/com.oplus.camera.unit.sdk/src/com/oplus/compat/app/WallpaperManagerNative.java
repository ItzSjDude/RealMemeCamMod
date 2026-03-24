package com.oplus.compat.app;

import android.app.IWallpaperManager;
import android.content.ComponentName;
import android.os.ParcelFileDescriptor;
import android.os.RemoteException;
import android.os.ServiceManager;
import android.util.Log;
import androidx.annotation.RequiresApi;
import com.oplus.compat.annotation.Grey;
import com.oplus.compat.annotation.Permission;
import com.oplus.compat.annotation.System;
import com.oplus.compat.utils.util.UnSupportedApiVersionException;
import com.oplus.compat.utils.util.VersionUtils;
import com.oplus.epona.Epona;
import com.oplus.epona.Request;
import com.oplus.epona.Response;
/* loaded from: classes.dex */
public class WallpaperManagerNative {
    private static final String COMPONENT_NAME = "android.app.WallpaperManager";
    private static final String RESULT = "result";
    private static final String TAG = "WallpaperManagerNative";

    private WallpaperManagerNative() {
    }

    @Grey
    @RequiresApi(api = 30)
    public static int getHeightHint(int i) throws UnSupportedApiVersionException, RemoteException {
        if (VersionUtils.isR()) {
            return IWallpaperManager.Stub.asInterface(ServiceManager.getService("wallpaper")).getHeightHint(i);
        }
        throw new UnSupportedApiVersionException("Not supported before R");
    }

    @Grey
    @RequiresApi(api = 30)
    public static int getWidthHint(int i) throws UnSupportedApiVersionException, RemoteException {
        if (VersionUtils.isR()) {
            return IWallpaperManager.Stub.asInterface(ServiceManager.getService("wallpaper")).getWidthHint(i);
        }
        throw new UnSupportedApiVersionException("Not supported before R");
    }

    @Permission(authStr = "setWallpaperComponent", type = "epona")
    @RequiresApi(api = 30)
    @System
    public static boolean setWallPaperComponent(ComponentName componentName) throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            Response execute = Epona.newCall(new Request.Builder().setComponentName(COMPONENT_NAME).setActionName("setWallpaperComponent").withParcelable("component_name", componentName).build()).execute();
            if (execute.isSuccessful()) {
                return execute.getBundle().getBoolean(RESULT);
            }
            Log.e(TAG, "setWallPaperComponent: " + execute.getMessage());
            return false;
        }
        throw new UnSupportedApiVersionException("not supported before R");
    }

    @Permission(authStr = "isWallpaperSupported", type = "epona")
    @RequiresApi(api = 30)
    public static boolean isWallpaperSupported() throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            Response execute = Epona.newCall(new Request.Builder().setComponentName(COMPONENT_NAME).setActionName("isWallpaperSupported").build()).execute();
            if (execute.isSuccessful()) {
                return execute.getBundle().getBoolean(RESULT);
            }
            Log.e(TAG, "isWallpaperSupported: " + execute.getMessage());
            return false;
        }
        throw new UnSupportedApiVersionException("not supported before R");
    }

    @Grey
    @Permission(authStr = "getWallpaperFile", type = "epona")
    @RequiresApi(api = 30)
    public static ParcelFileDescriptor getWallpaperFile(int i, int i2) throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            Response execute = Epona.newCall(new Request.Builder().setComponentName(COMPONENT_NAME).setActionName("getWallpaperFile").withInt("which", i).withInt("user_id", i2).build()).execute();
            if (execute.isSuccessful()) {
                return (ParcelFileDescriptor) execute.getBundle().getParcelable(RESULT);
            }
            Log.e(TAG, "getWallpaperFile: " + execute.getMessage());
            return null;
        }
        throw new UnSupportedApiVersionException("not supported before R");
    }
}

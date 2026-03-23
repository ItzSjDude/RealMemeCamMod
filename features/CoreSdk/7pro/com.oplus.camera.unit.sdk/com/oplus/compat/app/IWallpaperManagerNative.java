package com.oplus.compat.app;

import android.app.IWallpaperManager;
import android.app.IWallpaperManagerCallback;
import android.app.IWallpaperManagerCallbackNative;
import android.app.WallpaperColors;
import android.os.Bundle;
import android.os.ParcelFileDescriptor;
import android.os.RemoteException;
import android.os.ServiceManager;
import android.util.Log;
import androidx.annotation.RequiresApi;
import com.oplus.compat.annotation.Blocked;
import com.oplus.compat.annotation.Permission;
import com.oplus.compat.annotation.System;
import com.oplus.compat.utils.util.UnSupportedApiVersionException;
import com.oplus.compat.utils.util.VersionUtils;
import com.oplus.epona.Epona;
import com.oplus.epona.Request;
import com.oplus.epona.Response;
/* loaded from: classes.dex */
public class IWallpaperManagerNative {
    private static final String COMPONENT_NAME = "android.app.IWallpaperManager";
    private static final String RESULT = "result";
    private static final String TAG = "IWallpaperManagerNative";

    private IWallpaperManagerNative() {
    }

    @Permission(authStr = "getWallpaperWithFeature", type = "epona")
    @Blocked
    @RequiresApi(api = 30)
    @System
    public static ParcelFileDescriptor getWallpaperWithFeature(String str, String str2, final IWallpaperManagerCallbackNative iWallpaperManagerCallbackNative, int i, Bundle bundle, int i2) throws UnSupportedApiVersionException, RemoteException {
        if (VersionUtils.isR()) {
            Bundle bundle2 = new Bundle();
            bundle2.putString("callingPkg", str);
            bundle2.putString("callingFeatureId", str2);
            bundle2.putBinder("iWallpaperManagerCallback", iWallpaperManagerCallbackNative.asBinder());
            bundle2.putInt("which", i);
            bundle2.putBundle("outParams", bundle);
            bundle2.putInt("wallpaperUserId", i2);
            Request build = new Request.Builder().setComponentName(COMPONENT_NAME).setActionName("getWallpaperWithFeature").build();
            build.putBundle(bundle2);
            Response execute = Epona.newCall(build).execute();
            if (execute.isSuccessful()) {
                return (ParcelFileDescriptor) execute.getBundle().getParcelable(RESULT);
            }
            Log.e(TAG, "getWallpaperWithFeature error: " + execute.getMessage());
            return null;
        } else if (VersionUtils.isQ()) {
            return IWallpaperManager.Stub.asInterface(ServiceManager.getService("wallpaper")).getWallpaper(str, iWallpaperManagerCallbackNative != null ? new IWallpaperManagerCallback.Stub() { // from class: com.oplus.compat.app.IWallpaperManagerNative.1
                public void onWallpaperChanged() throws RemoteException {
                    IWallpaperManagerCallbackNative.this.onWallpaperChanged();
                }

                public void onWallpaperColorsChanged(WallpaperColors wallpaperColors, int i3, int i4) throws RemoteException {
                    IWallpaperManagerCallbackNative.this.onWallpaperColorsChanged(wallpaperColors, i3, i4);
                }
            } : null, i, bundle, i2);
        } else {
            throw new UnSupportedApiVersionException("not supported before Q");
        }
    }
}

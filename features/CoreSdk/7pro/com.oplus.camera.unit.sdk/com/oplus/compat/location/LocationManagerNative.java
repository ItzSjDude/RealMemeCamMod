package com.oplus.compat.location;

import android.content.Context;
import android.location.LocationManager;
import android.location.OplusLocationManager;
import android.os.RemoteException;
import android.os.UserHandle;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import com.oplus.compat.annotation.Oem;
import com.oplus.compat.annotation.Permission;
import com.oplus.compat.annotation.System;
import com.oplus.compat.utils.util.UnSupportedApiVersionException;
import com.oplus.compat.utils.util.VersionUtils;
import com.oplus.compatsdk.annotation.OplusCompatibleMethod;
import com.oplus.epona.Epona;
import com.oplus.epona.Request;
import com.oplus.ocs.camera.common.util.ApsConstant;
import com.oplus.utils.reflect.RefClass;
import com.oplus.utils.reflect.RefMethod;
import java.util.Collections;
import java.util.List;
/* loaded from: classes.dex */
public class LocationManagerNative {
    private static final String COMPONENT_NAME = "android.location.LocationManager";
    private static final String TAG = "LocationManagerNative";
    private static OplusLocationManager sOplusLocationManager;

    @OplusCompatibleMethod
    private static void getLocAppsOpCompat(@NonNull LocationManager locationManager, int i, Object obj) {
    }

    @OplusCompatibleMethod
    private static Object setLocAppsOpCompat(@NonNull LocationManager locationManager) {
        return null;
    }

    @OplusCompatibleMethod
    private static void setLocAppsOpCompat(@NonNull LocationManager locationManager, int i, Object obj) {
    }

    /* loaded from: classes.dex */
    private static class ReflectInfo {
        public static RefMethod<Void> getLocAppsOp;
        public static RefMethod<Void> setLocAppsOp;

        private ReflectInfo() {
        }

        static {
            RefClass.load(ReflectInfo.class, OplusLocationManager.class);
        }
    }

    private LocationManagerNative() {
    }

    static {
        if (VersionUtils.isR()) {
            sOplusLocationManager = new OplusLocationManager();
        }
    }

    @Permission(authStr = "setLocationEnabledForUser", type = "epona")
    @RequiresApi(api = 30)
    @System
    public static void setLocationEnabledForUser(Context context, boolean z, UserHandle userHandle) throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            if (Epona.newCall(new Request.Builder().setComponentName(COMPONENT_NAME).setActionName("setLocationEnabledForUser").withBoolean("enable", z).withParcelable("userHandle", userHandle).build()).execute().isSuccessful()) {
                return;
            }
            Log.e(TAG, "setLocationEnabledForUser: call failed");
            return;
        }
        throw new UnSupportedApiVersionException("Not Supported Before R");
    }

    @Oem
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public static void getLocAppsOp(@NonNull LocationManager locationManager, int i, LocAppsOpNative locAppsOpNative) throws UnSupportedApiVersionException {
        if (VersionUtils.isS()) {
            throw new UnSupportedApiVersionException("Not supported in S");
        }
        if (VersionUtils.isR()) {
            try {
                ReflectInfo.getLocAppsOp.callWithException(sOplusLocationManager, Integer.valueOf(i), locAppsOpNative.getLocAppsOpWrapper());
            } catch (Throwable th) {
                Log.e(TAG, th.toString());
            }
        } else if (VersionUtils.isQ()) {
            getLocAppsOpCompat(locationManager, i, locAppsOpNative.getLocAppsOpWrapper());
        } else {
            throw new UnSupportedApiVersionException();
        }
    }

    @Oem
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public static void setLocAppsOp(@NonNull LocationManager locationManager, int i, LocAppsOpNative locAppsOpNative) throws UnSupportedApiVersionException {
        if (VersionUtils.isS()) {
            throw new UnSupportedApiVersionException("Not supported in S");
        }
        if (VersionUtils.isR()) {
            try {
                ReflectInfo.setLocAppsOp.callWithException(sOplusLocationManager, Integer.valueOf(i), locAppsOpNative.getLocAppsOpWrapper());
            } catch (Throwable th) {
                Log.e(TAG, th.toString());
            }
        } else if (VersionUtils.isQ()) {
            setLocAppsOpCompat(locationManager, i, locAppsOpNative.getLocAppsOpWrapper());
        } else {
            throw new UnSupportedApiVersionException();
        }
    }

    @Oem
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public static List<String> getInUsePackagesList(@NonNull LocationManager locationManager) throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            try {
                return sOplusLocationManager.getInUsePackagesList();
            } catch (RemoteException e) {
                Log.e(TAG, e.toString());
                return Collections.emptyList();
            }
        } else if (VersionUtils.isQ()) {
            return (List) setLocAppsOpCompat(locationManager);
        } else {
            throw new UnSupportedApiVersionException();
        }
    }
}

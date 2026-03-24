package com.oplus.compat.bluetooth;

import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothManager;
import android.content.Context;
import android.os.ParcelUuid;
import android.util.Log;
import androidx.annotation.RequiresApi;
import com.oplus.compat.annotation.Grey;
import com.oplus.compat.annotation.Permission;
import com.oplus.compat.annotation.System;
import com.oplus.compat.utils.util.UnSupportedApiVersionException;
import com.oplus.compat.utils.util.VersionUtils;
import com.oplus.compatsdk.annotation.OplusCompatibleMethod;
import com.oplus.epona.Epona;
import com.oplus.epona.Request;
import com.oplus.epona.Response;
import com.oplus.inner.bluetooth.BluetoothAdapterWrapper;
import com.oplus.ocs.camera.common.util.ApsConstant;
import com.oplus.utils.reflect.RefClass;
import com.oplus.utils.reflect.RefMethod;
/* loaded from: classes.dex */
public class BluetoothAdapterNative {
    private static final String COMPONENT_NAME;
    private static final String TAG = "BluetoothAdapterNative";

    @OplusCompatibleMethod
    private static Object getConnectionStateForCompat(BluetoothAdapter bluetoothAdapter) {
        return null;
    }

    @OplusCompatibleMethod
    private static Object getUuidsForCompat(BluetoothAdapter bluetoothAdapter) {
        return null;
    }

    @OplusCompatibleMethod
    private static Object initComponentName() {
        return null;
    }

    @OplusCompatibleMethod
    private static Object setScanModeForCompat(BluetoothAdapter bluetoothAdapter, int i) {
        return null;
    }

    /* loaded from: classes.dex */
    private static class ReflectInfo {
        private static RefMethod<Boolean> enableNoAutoConnect;

        private ReflectInfo() {
        }

        static {
            RefClass.load(ReflectInfo.class, BluetoothAdapter.class);
        }
    }

    static {
        if (VersionUtils.isOsVersion11_3()) {
            COMPONENT_NAME = "com.oplus.compat.bluetooth.BluetoothAdapter";
        } else {
            COMPONENT_NAME = (String) initComponentName();
        }
    }

    private BluetoothAdapterNative() {
    }

    @Permission(authStr = "getAddress", type = "epona")
    @RequiresApi(api = 30)
    @System
    public static String getAddress(Context context) throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            Response execute = Epona.newCall(new Request.Builder().setComponentName(COMPONENT_NAME).setActionName("getAddress").build()).execute();
            return execute.isSuccessful() ? execute.getBundle().getString("address") : "02:00:00:00:00:00";
        }
        throw new UnSupportedApiVersionException("not supported before R");
    }

    @Grey
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public static int getConnectionState(BluetoothAdapter bluetoothAdapter) {
        try {
            if (VersionUtils.isS()) {
                return bluetoothAdapter.getConnectionState();
            }
            if (VersionUtils.isOsVersion11_3()) {
                return BluetoothAdapterWrapper.getConnectionState(bluetoothAdapter);
            }
            if (VersionUtils.isQ()) {
                return ((Integer) getConnectionStateForCompat(bluetoothAdapter)).intValue();
            }
            throw new UnSupportedApiVersionException();
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
            return 0;
        }
    }

    @Grey
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public static ParcelUuid[] getUuids(BluetoothAdapter bluetoothAdapter) {
        try {
            if (VersionUtils.isS()) {
                return bluetoothAdapter.getUuids();
            }
            if (VersionUtils.isOsVersion11_3()) {
                return BluetoothAdapterWrapper.getUuids(bluetoothAdapter);
            }
            if (VersionUtils.isQ()) {
                return (ParcelUuid[]) getUuidsForCompat(bluetoothAdapter);
            }
            throw new UnSupportedApiVersionException();
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
            return null;
        }
    }

    @Grey
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public static boolean setScanMode(BluetoothAdapter bluetoothAdapter, int i) {
        try {
            if (VersionUtils.isS()) {
                return bluetoothAdapter.setScanMode(i);
            }
            if (VersionUtils.isOsVersion11_3()) {
                return BluetoothAdapterWrapper.setScanMode(bluetoothAdapter, i);
            }
            if (VersionUtils.isQ()) {
                return ((Boolean) setScanModeForCompat(bluetoothAdapter, i)).booleanValue();
            }
            throw new UnSupportedApiVersionException();
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
            return false;
        }
    }

    @Permission(authStr = "enable", type = "epona")
    @RequiresApi(api = 30)
    @System
    public static boolean enable() throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            Response execute = Epona.newCall(new Request.Builder().setComponentName(COMPONENT_NAME).setActionName("enable").build()).execute();
            if (execute.isSuccessful()) {
                return execute.getBundle().getBoolean("success");
            }
            return false;
        }
        throw new UnSupportedApiVersionException("Not Supported Before R");
    }

    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    @System
    public static boolean enableNoAutoConnect() throws UnSupportedApiVersionException {
        if (VersionUtils.isQ()) {
            return ((Boolean) ReflectInfo.enableNoAutoConnect.call(((BluetoothManager) Epona.getContext().getSystemService("bluetooth")).getAdapter(), new Object[0])).booleanValue();
        }
        throw new UnSupportedApiVersionException("Not Supported Before Q");
    }
}

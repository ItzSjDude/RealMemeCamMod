package com.oplus.compat.bluetooth;

import android.bluetooth.BluetoothA2dp;
import android.bluetooth.BluetoothDevice;
import android.util.Log;
import androidx.annotation.RequiresApi;
import com.oplus.compat.annotation.Grey;
import com.oplus.compat.utils.util.UnSupportedApiVersionException;
import com.oplus.compat.utils.util.VersionUtils;
import com.oplus.compatsdk.annotation.OplusCompatibleMethod;
import com.oplus.inner.bluetooth.BluetoothA2dpWrapper;
import com.oplus.ocs.camera.common.util.ApsConstant;
/* loaded from: classes.dex */
public class BluetoothA2dpNative {
    private static final String TAG = "BluetoothA2dpNative";

    @OplusCompatibleMethod
    private static Object connectForCompat(BluetoothA2dp bluetoothA2dp, BluetoothDevice bluetoothDevice) {
        return null;
    }

    @OplusCompatibleMethod
    private static Object disconnectForCompat(BluetoothA2dp bluetoothA2dp, BluetoothDevice bluetoothDevice) {
        return null;
    }

    @OplusCompatibleMethod
    private static Object getActiveDeviceForCompat(BluetoothA2dp bluetoothA2dp) {
        return null;
    }

    @OplusCompatibleMethod
    private static Object setActiveDeviceForCompat(BluetoothA2dp bluetoothA2dp, BluetoothDevice bluetoothDevice) {
        return null;
    }

    private BluetoothA2dpNative() {
    }

    @Grey
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public static boolean disconnect(BluetoothA2dp bluetoothA2dp, BluetoothDevice bluetoothDevice) {
        try {
            if (VersionUtils.isS()) {
                return bluetoothA2dp.disconnect(bluetoothDevice);
            }
            if (VersionUtils.isOsVersion11_3()) {
                return BluetoothA2dpWrapper.disconnect(bluetoothA2dp, bluetoothDevice);
            }
            if (VersionUtils.isQ()) {
                return ((Boolean) disconnectForCompat(bluetoothA2dp, bluetoothDevice)).booleanValue();
            }
            throw new UnSupportedApiVersionException();
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
            return false;
        }
    }

    @Grey
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public static boolean connect(BluetoothA2dp bluetoothA2dp, BluetoothDevice bluetoothDevice) {
        try {
            if (VersionUtils.isS()) {
                return bluetoothA2dp.connect(bluetoothDevice);
            }
            if (VersionUtils.isOsVersion11_3()) {
                return BluetoothA2dpWrapper.connect(bluetoothA2dp, bluetoothDevice);
            }
            if (VersionUtils.isQ()) {
                return ((Boolean) connectForCompat(bluetoothA2dp, bluetoothDevice)).booleanValue();
            }
            throw new UnSupportedApiVersionException();
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
            return false;
        }
    }

    @Grey
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public static boolean setActiveDevice(BluetoothA2dp bluetoothA2dp, BluetoothDevice bluetoothDevice) {
        try {
            if (VersionUtils.isS()) {
                return bluetoothA2dp.setActiveDevice(bluetoothDevice);
            }
            if (VersionUtils.isOsVersion11_3()) {
                return BluetoothA2dpWrapper.setActiveDevice(bluetoothA2dp, bluetoothDevice);
            }
            if (VersionUtils.isQ()) {
                return ((Boolean) setActiveDeviceForCompat(bluetoothA2dp, bluetoothDevice)).booleanValue();
            }
            throw new UnSupportedApiVersionException();
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
            return false;
        }
    }

    @Grey
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public static BluetoothDevice getActiveDevice(BluetoothA2dp bluetoothA2dp) {
        try {
            if (VersionUtils.isS()) {
                return bluetoothA2dp.getActiveDevice();
            }
            if (VersionUtils.isOsVersion11_3()) {
                return BluetoothA2dpWrapper.getActiveDevice(bluetoothA2dp);
            }
            if (VersionUtils.isQ()) {
                return (BluetoothDevice) getActiveDeviceForCompat(bluetoothA2dp);
            }
            throw new UnSupportedApiVersionException();
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
            return null;
        }
    }
}

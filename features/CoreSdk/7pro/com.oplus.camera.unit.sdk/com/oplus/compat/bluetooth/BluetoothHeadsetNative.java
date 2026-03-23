package com.oplus.compat.bluetooth;

import android.bluetooth.BluetoothDevice;
import android.bluetooth.BluetoothHeadset;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import com.oplus.compat.annotation.Blocked;
import com.oplus.compat.annotation.Grey;
import com.oplus.compat.utils.util.UnSupportedApiVersionException;
import com.oplus.compat.utils.util.VersionUtils;
import com.oplus.compatsdk.annotation.OplusCompatibleMethod;
import com.oplus.inner.bluetooth.BluetoothHeadsetWrapper;
import com.oplus.ocs.camera.common.util.ApsConstant;
/* loaded from: classes.dex */
public class BluetoothHeadsetNative {
    private static final String TAG = "BluetoothHeadsetNative";

    @OplusCompatibleMethod
    private static Object connectForCompat(BluetoothHeadset bluetoothHeadset, BluetoothDevice bluetoothDevice) {
        return null;
    }

    @OplusCompatibleMethod
    private static Object disconnectForCompat(BluetoothHeadset bluetoothHeadset, BluetoothDevice bluetoothDevice) {
        return null;
    }

    @OplusCompatibleMethod
    private static Object getActiveDeviceForCompat(BluetoothHeadset bluetoothHeadset) {
        return null;
    }

    @OplusCompatibleMethod
    private static Object getPriorityForCompat(BluetoothHeadset bluetoothHeadset, BluetoothDevice bluetoothDevice) {
        return null;
    }

    @OplusCompatibleMethod
    private static Object setPriorityForCompat(BluetoothHeadset bluetoothHeadset, BluetoothDevice bluetoothDevice, int i) {
        return null;
    }

    private BluetoothHeadsetNative() {
    }

    @Grey
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public static BluetoothDevice getActiveDevice(@NonNull BluetoothHeadset bluetoothHeadset) {
        try {
            if (VersionUtils.isS()) {
                return bluetoothHeadset.getActiveDevice();
            }
            if (VersionUtils.isOsVersion11_3()) {
                return BluetoothHeadsetWrapper.getActiveDevice(bluetoothHeadset);
            }
            if (VersionUtils.isQ()) {
                return (BluetoothDevice) getActiveDeviceForCompat(bluetoothHeadset);
            }
            return null;
        } catch (Exception unused) {
            return null;
        }
    }

    @Grey
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public static boolean connect(@NonNull BluetoothHeadset bluetoothHeadset, BluetoothDevice bluetoothDevice) {
        try {
            if (VersionUtils.isS()) {
                return bluetoothHeadset.connect(bluetoothDevice);
            }
            if (VersionUtils.isOsVersion11_3()) {
                return BluetoothHeadsetWrapper.connect(bluetoothHeadset, bluetoothDevice);
            }
            if (VersionUtils.isQ()) {
                return ((Boolean) connectForCompat(bluetoothHeadset, bluetoothDevice)).booleanValue();
            }
            return false;
        } catch (Exception unused) {
            return false;
        }
    }

    @Grey
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public static boolean disconnect(@NonNull BluetoothHeadset bluetoothHeadset, BluetoothDevice bluetoothDevice) {
        try {
            if (VersionUtils.isS()) {
                return bluetoothHeadset.disconnect(bluetoothDevice);
            }
            if (VersionUtils.isOsVersion11_3()) {
                return BluetoothHeadsetWrapper.disconnect(bluetoothHeadset, bluetoothDevice);
            }
            if (VersionUtils.isQ()) {
                return ((Boolean) disconnectForCompat(bluetoothHeadset, bluetoothDevice)).booleanValue();
            }
            return false;
        } catch (Exception unused) {
            return false;
        }
    }

    @Blocked
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public static int getPriority(@NonNull BluetoothHeadset bluetoothHeadset, BluetoothDevice bluetoothDevice) throws UnSupportedApiVersionException {
        if (VersionUtils.isS()) {
            try {
                return bluetoothHeadset.getPriority(bluetoothDevice);
            } catch (NoSuchMethodError e) {
                Log.e(TAG, e.toString());
                throw new UnSupportedApiVersionException("no permission to access the blocked method", e);
            }
        }
        try {
            if (VersionUtils.isOsVersion11_3()) {
                return BluetoothHeadsetWrapper.getPriority(bluetoothHeadset, bluetoothDevice);
            }
            if (VersionUtils.isQ()) {
                return ((Integer) getPriorityForCompat(bluetoothHeadset, bluetoothDevice)).intValue();
            }
            return -1;
        } catch (Exception unused) {
            return -1;
        }
    }

    @Grey
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    @Deprecated
    public static boolean setPriority(@NonNull BluetoothHeadset bluetoothHeadset, BluetoothDevice bluetoothDevice, int i) {
        try {
            if (VersionUtils.isS()) {
                return bluetoothHeadset.setPriority(bluetoothDevice, i);
            }
            if (VersionUtils.isOsVersion11_3()) {
                return BluetoothHeadsetWrapper.setPriority(bluetoothHeadset, bluetoothDevice, i);
            }
            if (VersionUtils.isQ()) {
                return ((Boolean) setPriorityForCompat(bluetoothHeadset, bluetoothDevice, i)).booleanValue();
            }
            return false;
        } catch (Exception unused) {
            return false;
        }
    }
}

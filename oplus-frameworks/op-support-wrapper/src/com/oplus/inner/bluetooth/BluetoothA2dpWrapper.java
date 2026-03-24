package com.oplus.inner.bluetooth;

import android.bluetooth.BluetoothA2dp;
import android.bluetooth.BluetoothDevice;
import android.util.Log;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class BluetoothA2dpWrapper {
    private static final String TAG = "BluetoothA2dpWrapper";

    public static int getPriority(BluetoothA2dp mService, BluetoothDevice device) {
        if (mService != null) {
            return mService.getPriority(device);
        }
        return 0;
    }

    public static boolean setPriority(BluetoothA2dp mService, BluetoothDevice device, int priority) {
        if (mService != null) {
            return mService.setPriority(device, priority);
        }
        return false;
    }

    public static boolean disconnect(BluetoothA2dp mService, BluetoothDevice device) {
        if (mService != null) {
            return mService.disconnect(device);
        }
        return false;
    }

    public static boolean connect(BluetoothA2dp mService, BluetoothDevice device) {
        if (mService != null) {
            return mService.connect(device);
        }
        return false;
    }

    public static boolean setActiveDevice(BluetoothA2dp mService, BluetoothDevice device) {
        if (mService != null) {
            return mService.setActiveDevice(device);
        }
        return false;
    }

    public static BluetoothDevice getActiveDevice(BluetoothA2dp mService) {
        if (mService != null) {
            return mService.getActiveDevice();
        }
        return null;
    }

    public static List<BluetoothDevice> tempowGetActiveDevices(BluetoothA2dp mService) {
        ArrayList<BluetoothDevice> result = new ArrayList<>();
        if (mService != null) {
            try {
                Class bluetoothA2dpClass = mService.getClass();
                Method method = bluetoothA2dpClass.getDeclaredMethod("tempowGetActiveDevices", new Class[0]);
                if (method == null) {
                    Log.d(TAG, "not found method tempowGetActiveDevices");
                    return result;
                }
                return (List) method.invoke(mService, new Object[0]);
            } catch (Throwable e) {
                Log.e(TAG, e.toString());
                return result;
            }
        }
        return result;
    }

    public static boolean tempowRemoveActiveDevice(BluetoothA2dp mService, BluetoothDevice device) {
        if (mService == null) {
            return false;
        }
        try {
            Class bluetoothA2dpClass = mService.getClass();
            Method method = bluetoothA2dpClass.getDeclaredMethod("tempowRemoveActiveDevice", BluetoothDevice.class);
            if (method != null) {
                return ((Boolean) method.invoke(mService, device)).booleanValue();
            }
            Log.d(TAG, "not found method tempowRemoveActiveDevice");
            return false;
        } catch (Throwable e) {
            Log.e(TAG, e.toString());
            return false;
        }
    }
}

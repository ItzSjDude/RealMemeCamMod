package com.oppo.inner.bluetooth;

import android.bluetooth.BluetoothDevice;
import android.bluetooth.BluetoothHeadset;
import com.oplus.inner.bluetooth.BluetoothHeadsetWrapper;

public class BluetoothHeadsetWrapper {
    public static boolean setPriority(BluetoothHeadset mService, BluetoothDevice device, int priority) {
        return BluetoothHeadsetWrapper.setPriority(mService, device, priority);
    }

    public static int getPriority(BluetoothHeadset mService, BluetoothDevice device) {
        return BluetoothHeadsetWrapper.getPriority(mService, device);
    }

    public static boolean connect(BluetoothHeadset mService, BluetoothDevice device) {
        return BluetoothHeadsetWrapper.connect(mService, device);
    }

    public static boolean disconnect(BluetoothHeadset mService, BluetoothDevice device) {
        return BluetoothHeadsetWrapper.disconnect(mService, device);
    }

    public static BluetoothDevice getActiveDevice(BluetoothHeadset mService) {
        return BluetoothHeadsetWrapper.getActiveDevice(mService);
    }

}
package com.oppo.inner.bluetooth;

import android.bluetooth.BluetoothA2dp;
import android.bluetooth.BluetoothDevice;
import android.util.Log;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.List;
import com.oplus.inner.bluetooth.BluetoothA2dpWrapper;

public class BluetoothA2dpWrapper {
    public static int getPriority(BluetoothA2dp mService, BluetoothDevice device) {
        return BluetoothA2dpWrapper.getPriority(mService, device);
    }

    public static boolean setPriority(BluetoothA2dp mService, BluetoothDevice device, int priority) {
        return BluetoothA2dpWrapper.setPriority(mService, device, priority);
    }

    public static boolean disconnect(BluetoothA2dp mService, BluetoothDevice device) {
        return BluetoothA2dpWrapper.disconnect(mService, device);
    }

    public static boolean connect(BluetoothA2dp mService, BluetoothDevice device) {
        return BluetoothA2dpWrapper.connect(mService, device);
    }

    public static boolean setActiveDevice(BluetoothA2dp mService, BluetoothDevice device) {
        return BluetoothA2dpWrapper.setActiveDevice(mService, device);
    }

    public static BluetoothDevice getActiveDevice(BluetoothA2dp mService) {
        return BluetoothA2dpWrapper.getActiveDevice(mService);
    }

    public static List<BluetoothDevice> tempowGetActiveDevices(BluetoothA2dp mService) {
        return BluetoothA2dpWrapper.tempowGetActiveDevices(mService);
    }

    public static boolean tempowRemoveActiveDevice(BluetoothA2dp mService, BluetoothDevice device) {
        return BluetoothA2dpWrapper.tempowRemoveActiveDevice(mService, device);
    }

}
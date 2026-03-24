package com.oppo.inner.bluetooth;

import android.bluetooth.BluetoothAdapter;
import android.content.Intent;
import android.os.ParcelUuid;
import android.util.Log;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.List;
import com.oplus.inner.bluetooth.BluetoothAdapterWrapper;

public class BluetoothAdapterWrapper {
    public static int getConnectionState(BluetoothAdapter bluetoothAdapter) {
        return BluetoothAdapterWrapper.getConnectionState(bluetoothAdapter);
    }

    public static ParcelUuid[] getUuids(BluetoothAdapter mAdapter) {
        return BluetoothAdapterWrapper.getUuids(mAdapter);
    }

    public static boolean setScanMode(BluetoothAdapter mAdapter, int mode) {
        return BluetoothAdapterWrapper.setScanMode(mAdapter, mode);
    }

    public static int getMaxConnectedAudioDevices(BluetoothAdapter mAdapter) {
        return BluetoothAdapterWrapper.getMaxConnectedAudioDevices(mAdapter);
    }

    public static List<Integer> getSupportedProfiles(BluetoothAdapter mAdapter) {
        return BluetoothAdapterWrapper.getSupportedProfiles(mAdapter);
    }

    public static byte[] tempowCommand(BluetoothAdapter mAdapter, int event, byte[] command) {
        return BluetoothAdapterWrapper.tempowCommand(mAdapter, event, command);
    }

    public static void tempowIntent(BluetoothAdapter mAdapter, Intent intent) {
        BluetoothAdapterWrapper.tempowIntent(mAdapter, intent);
    }

}
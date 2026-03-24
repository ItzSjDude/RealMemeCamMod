package com.oppo.inner.bluetooth;

import android.bluetooth.BluetoothDevice;
import com.oplus.inner.bluetooth.BluetoothDeviceWrapper;

public class BluetoothDeviceWrapper {
    public static boolean isConnected(BluetoothDevice device) {
        return BluetoothDeviceWrapper.isConnected(device);
    }

    public static String getAliasName(BluetoothDevice device) {
        return BluetoothDeviceWrapper.getAliasName(device);
    }

    public static int getBatteryLevel(BluetoothDevice device) {
        return BluetoothDeviceWrapper.getBatteryLevel(device);
    }

    public static boolean cancelBondProcess(BluetoothDevice device) {
        return BluetoothDeviceWrapper.cancelBondProcess(device);
    }

    public static boolean removeBond(BluetoothDevice device) {
        return BluetoothDeviceWrapper.removeBond(device);
    }

    public static boolean setAlias(BluetoothDevice device, String name) {
        return BluetoothDeviceWrapper.setAlias(device, name);
    }

    public static boolean isBluetoothDock(BluetoothDevice device) {
        return BluetoothDeviceWrapper.isBluetoothDock(device);
    }

    public static boolean isBondingInitiatedLocally(BluetoothDevice device) {
        return BluetoothDeviceWrapper.isBondingInitiatedLocally(device);
    }

    public static int getPhonebookAccessPermission(BluetoothDevice device) {
        return BluetoothDeviceWrapper.getPhonebookAccessPermission(device);
    }

    public static boolean setPhonebookAccessPermission(BluetoothDevice device, int value) {
        return BluetoothDeviceWrapper.setPhonebookAccessPermission(device, value);
    }

    public static int getMessageAccessPermission(BluetoothDevice device) {
        return BluetoothDeviceWrapper.getMessageAccessPermission(device);
    }

    public static boolean setMessageAccessPermission(BluetoothDevice device, int value) {
        return BluetoothDeviceWrapper.setMessageAccessPermission(device, value);
    }

}
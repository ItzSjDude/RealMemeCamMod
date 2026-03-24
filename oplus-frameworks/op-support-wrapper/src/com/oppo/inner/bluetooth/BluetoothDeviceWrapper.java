package com.oppo.inner.bluetooth;

import android.bluetooth.BluetoothDevice;

/* loaded from: classes.dex */
public class BluetoothDeviceWrapper {
    public static boolean isConnected(BluetoothDevice device) {
        if (device != null) {
            return device.isConnected();
        }
        return false;
    }

    public static String getAliasName(BluetoothDevice device) {
        if (device != null) {
            return device.getAlias();
        }
        return "";
    }

    public static int getBatteryLevel(BluetoothDevice device) {
        if (device != null) {
            return device.getBatteryLevel();
        }
        return -1;
    }

    public static boolean cancelBondProcess(BluetoothDevice device) {
        if (device != null) {
            return device.cancelBondProcess();
        }
        return false;
    }

    public static boolean removeBond(BluetoothDevice device) {
        if (device != null) {
            return device.removeBond();
        }
        return false;
    }

    public static boolean setAlias(BluetoothDevice device, String name) {
        return device != null && device.setAlias(name) == 0;
    }

    public static boolean isBluetoothDock(BluetoothDevice device) {
        return false;
    }

    public static boolean isBondingInitiatedLocally(BluetoothDevice device) {
        if (device != null) {
            return device.isBondingInitiatedLocally();
        }
        return false;
    }

    public static int getPhonebookAccessPermission(BluetoothDevice device) {
        if (device != null) {
            return device.getPhonebookAccessPermission();
        }
        return 0;
    }

    public static boolean setPhonebookAccessPermission(BluetoothDevice device, int value) {
        if (device != null) {
            return device.setPhonebookAccessPermission(value);
        }
        return false;
    }

    public static int getMessageAccessPermission(BluetoothDevice device) {
        if (device != null) {
            return device.getMessageAccessPermission();
        }
        return 0;
    }

    public static boolean setMessageAccessPermission(BluetoothDevice device, int value) {
        if (device != null) {
            return device.setMessageAccessPermission(value);
        }
        return false;
    }
}

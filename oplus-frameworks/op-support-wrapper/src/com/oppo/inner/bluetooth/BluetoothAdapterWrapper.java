package com.oppo.inner.bluetooth;

import android.bluetooth.BluetoothAdapter;
import android.content.Intent;
import android.os.ParcelUuid;
import android.util.Log;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class BluetoothAdapterWrapper {
    private static final String TAG = "BluetoothAdapterWrapper";

    private BluetoothAdapterWrapper() {
    }

    public static int getConnectionState(BluetoothAdapter bluetoothAdapter) {
        if (bluetoothAdapter != null) {
            return bluetoothAdapter.getConnectionState();
        }
        return 0;
    }

    public static ParcelUuid[] getUuids(BluetoothAdapter mAdapter) {
        if (mAdapter != null) {
            return mAdapter.getUuids();
        }
        return null;
    }

    public static boolean setScanMode(BluetoothAdapter mAdapter, int mode) {
        return false;
    }

    public static int getMaxConnectedAudioDevices(BluetoothAdapter mAdapter) {
        if (mAdapter != null) {
            return mAdapter.getMaxConnectedAudioDevices();
        }
        return 1;
    }

    public static List<Integer> getSupportedProfiles(BluetoothAdapter mAdapter) {
        if (mAdapter != null) {
            return mAdapter.getSupportedProfiles();
        }
        return new ArrayList();
    }

    public static byte[] tempowCommand(BluetoothAdapter mAdapter, int event, byte[] command) {
        if (mAdapter == null) {
            return null;
        }
        try {
            Class bluetoothAdapterClass = mAdapter.getClass();
            Method method = bluetoothAdapterClass.getDeclaredMethod("tempowCommand", Integer.TYPE, byte[].class);
            if (method != null) {
                return (byte[]) method.invoke(mAdapter, Integer.valueOf(event), command);
            }
            Log.d(TAG, "not found method tempowCommand");
            return null;
        } catch (Throwable e) {
            Log.e(TAG, e.toString());
            return null;
        }
    }

    public static void tempowIntent(BluetoothAdapter mAdapter, Intent intent) {
        if (mAdapter != null) {
            try {
                Class bluetoothAdapterClass = mAdapter.getClass();
                Method method = bluetoothAdapterClass.getDeclaredMethod("tempowIntent", Intent.class);
                if (method == null) {
                    Log.d(TAG, "not found method tempowIntent");
                } else {
                    method.invoke(mAdapter, intent);
                }
            } catch (Throwable e) {
                Log.e(TAG, e.toString());
            }
        }
    }
}

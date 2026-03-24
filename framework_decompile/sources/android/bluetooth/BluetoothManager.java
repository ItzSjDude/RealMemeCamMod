package android.bluetooth;

import android.content.AttributionSource;
import android.content.Context;
import android.os.RemoteException;
import android.util.Log;
import com.android.modules.utils.SynchronousResultReceiver;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.TimeoutException;

/* loaded from: classes.dex */
public final class BluetoothManager {
    private static final boolean DBG = false;
    private static final String TAG = "BluetoothManager";
    private final BluetoothAdapter mAdapter;
    private final AttributionSource mAttributionSource;

    public BluetoothManager(Context context) {
        AttributionSource attributionSource = context != null ? context.getAttributionSource() : AttributionSource.myAttributionSource();
        this.mAttributionSource = attributionSource;
        this.mAdapter = BluetoothAdapter.createAdapter(attributionSource);
    }

    public BluetoothAdapter getAdapter() {
        return this.mAdapter;
    }

    public int getConnectionState(BluetoothDevice device, int profile) {
        List<BluetoothDevice> connectedDevices = getConnectedDevices(profile);
        for (BluetoothDevice connectedDevice : connectedDevices) {
            if (device.equals(connectedDevice)) {
                return 2;
            }
        }
        return 0;
    }

    public List<BluetoothDevice> getConnectedDevices(int profile) {
        return getDevicesMatchingConnectionStates(profile, new int[]{2});
    }

    public List<BluetoothDevice> getDevicesMatchingConnectionStates(int profile, int[] states) {
        if (profile != 7 && profile != 8) {
            throw new IllegalArgumentException("Profile not supported: " + profile);
        }
        List<BluetoothDevice> arrayList = new ArrayList<>();
        try {
            IBluetoothManager managerService = this.mAdapter.getBluetoothManager();
            IBluetoothGatt iGatt = managerService.getBluetoothGatt();
            if (iGatt == null) {
                return arrayList;
            }
            SynchronousResultReceiver<List<BluetoothDevice>> recv = SynchronousResultReceiver.get();
            iGatt.getDevicesMatchingConnectionStates(states, this.mAttributionSource, recv);
            List<BluetoothDevice> devices = Attributable.setAttributionSource(recv.awaitResultNoInterrupt(BluetoothUtils.getSyncTimeout()).getValue(arrayList), this.mAttributionSource);
            return devices;
        } catch (RemoteException | TimeoutException e) {
            Log.e(TAG, "", e);
            return arrayList;
        }
    }

    public BluetoothGattServer openGattServer(Context context, BluetoothGattServerCallback callback) {
        return openGattServer(context, callback, 0);
    }

    public BluetoothGattServer openGattServer(Context context, BluetoothGattServerCallback callback, boolean eatt_support) {
        return openGattServer(context, callback, 0, eatt_support);
    }

    public BluetoothGattServer openGattServer(Context context, BluetoothGattServerCallback callback, int transport) {
        return openGattServer(context, callback, transport, false);
    }

    public BluetoothGattServer openGattServer(Context context, BluetoothGattServerCallback callback, int transport, boolean eatt_support) {
        if (context == null || callback == null) {
            throw new IllegalArgumentException("null parameter: " + context + " " + callback);
        }
        try {
            IBluetoothManager managerService = this.mAdapter.getBluetoothManager();
            IBluetoothGatt iGatt = managerService.getBluetoothGatt();
            if (iGatt == null) {
                Log.e(TAG, "Fail to get GATT Server connection");
                return null;
            }
            BluetoothGattServer mGattServer = new BluetoothGattServer(iGatt, transport, this.mAdapter);
            Boolean regStatus = Boolean.valueOf(mGattServer.registerCallback(callback, eatt_support));
            if (regStatus.booleanValue()) {
                return mGattServer;
            }
            return null;
        } catch (RemoteException e) {
            Log.e(TAG, "", e);
            return null;
        }
    }
}

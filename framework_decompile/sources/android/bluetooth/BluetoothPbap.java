package android.bluetooth;

import android.annotation.SystemApi;
import android.bluetooth.BluetoothProfile;
import android.bluetooth.IBluetoothPbap;
import android.content.AttributionSource;
import android.content.Context;
import android.os.IBinder;
import android.os.RemoteException;
import android.util.Log;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

@SystemApi
/* loaded from: classes.dex */
public class BluetoothPbap implements BluetoothProfile {

    @SystemApi
    public static final String ACTION_CONNECTION_STATE_CHANGED = "android.bluetooth.pbap.profile.action.CONNECTION_STATE_CHANGED";
    private static final boolean DBG = false;
    public static final int RESULT_CANCELED = 2;
    public static final int RESULT_FAILURE = 0;
    public static final int RESULT_SUCCESS = 1;
    private static final String TAG = "BluetoothPbap";
    private BluetoothAdapter mAdapter;
    private final AttributionSource mAttributionSource;
    private final BluetoothProfileConnector<IBluetoothPbap> mProfileConnector;

    public BluetoothPbap(Context context, BluetoothProfile.ServiceListener listener, BluetoothAdapter adapter) {
        BluetoothProfileConnector<IBluetoothPbap> bluetoothProfileConnector = new BluetoothProfileConnector(this, 6, TAG, IBluetoothPbap.class.getName()) { // from class: android.bluetooth.BluetoothPbap.1
            @Override // android.bluetooth.BluetoothProfileConnector
            public IBluetoothPbap getServiceInterface(IBinder service) {
                return IBluetoothPbap.Stub.asInterface(service);
            }
        };
        this.mProfileConnector = bluetoothProfileConnector;
        this.mAdapter = adapter;
        this.mAttributionSource = adapter.getAttributionSource();
        bluetoothProfileConnector.connect(context, listener);
    }

    protected void finalize() throws Throwable {
        try {
            close();
        } finally {
            super.finalize();
        }
    }

    public synchronized void close() {
        this.mProfileConnector.disconnect();
    }

    private IBluetoothPbap getService() {
        return this.mProfileConnector.getService();
    }

    @Override // android.bluetooth.BluetoothProfile
    public List<BluetoothDevice> getConnectedDevices() {
        log("getConnectedDevices()");
        IBluetoothPbap service = getService();
        if (service == null) {
            Log.w(TAG, "Proxy not attached to service");
            return new ArrayList();
        }
        try {
            return Attributable.setAttributionSource(service.getConnectedDevices(this.mAttributionSource), this.mAttributionSource);
        } catch (RemoteException e) {
            Log.e(TAG, e.toString());
            return new ArrayList();
        }
    }

    @Override // android.bluetooth.BluetoothProfile
    @SystemApi
    public int getConnectionState(BluetoothDevice device) {
        log("getConnectionState: device=" + device);
        try {
            IBluetoothPbap service = getService();
            if (service != null && isEnabled() && isValidDevice(device)) {
                return service.getConnectionState(device, this.mAttributionSource);
            }
            if (service == null) {
                Log.w(TAG, "Proxy not attached to service");
            }
            return 0;
        } catch (RemoteException e) {
            Log.e(TAG, e.toString());
            return 0;
        }
    }

    @Override // android.bluetooth.BluetoothProfile
    public List<BluetoothDevice> getDevicesMatchingConnectionStates(int[] states) {
        log("getDevicesMatchingConnectionStates: states=" + Arrays.toString(states));
        IBluetoothPbap service = getService();
        if (service == null) {
            Log.w(TAG, "Proxy not attached to service");
            return new ArrayList();
        }
        try {
            return Attributable.setAttributionSource(service.getDevicesMatchingConnectionStates(states, this.mAttributionSource), this.mAttributionSource);
        } catch (RemoteException e) {
            Log.e(TAG, e.toString());
            return new ArrayList();
        }
    }

    @SystemApi
    public boolean setConnectionPolicy(BluetoothDevice device, int connectionPolicy) {
        try {
            IBluetoothPbap service = getService();
            if (service != null && isEnabled() && isValidDevice(device)) {
                if (connectionPolicy == 0 || connectionPolicy == 100) {
                    return service.setConnectionPolicy(device, connectionPolicy, this.mAttributionSource);
                }
                return false;
            }
            if (service == null) {
                Log.w(TAG, "Proxy not attached to service");
            }
            return false;
        } catch (RemoteException e) {
            Log.e(TAG, "Stack:" + Log.getStackTraceString(new Throwable()));
            return false;
        }
    }

    public boolean disconnect(BluetoothDevice device) {
        log("disconnect()");
        IBluetoothPbap service = getService();
        if (service == null) {
            Log.w(TAG, "Proxy not attached to service");
            return false;
        }
        try {
            service.disconnect(device, this.mAttributionSource);
            return true;
        } catch (RemoteException e) {
            Log.e(TAG, e.toString());
            return false;
        }
    }

    private boolean isEnabled() {
        return this.mAdapter.getState() == 12;
    }

    private boolean isValidDevice(BluetoothDevice device) {
        return device != null && BluetoothAdapter.checkBluetoothAddress(device.getAddress());
    }

    private static void log(String msg) {
    }
}

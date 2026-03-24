package android.bluetooth;

import android.annotation.SystemApi;
import android.bluetooth.BluetoothProfile;
import android.bluetooth.IBluetoothHearingAid;
import android.content.AttributionSource;
import android.content.Context;
import android.inputmethodservice.navigationbar.NavigationBarInflaterView;
import android.os.IBinder;
import android.os.RemoteException;
import android.telephony.ims.ImsConferenceState;
import android.util.Log;
import com.android.modules.utils.SynchronousResultReceiver;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.TimeoutException;

/* loaded from: classes.dex */
public final class BluetoothHearingAid implements BluetoothProfile {

    @SystemApi
    public static final String ACTION_ACTIVE_DEVICE_CHANGED = "android.bluetooth.hearingaid.profile.action.ACTIVE_DEVICE_CHANGED";
    public static final String ACTION_CONNECTION_STATE_CHANGED = "android.bluetooth.hearingaid.profile.action.CONNECTION_STATE_CHANGED";
    private static final boolean DBG = true;

    @SystemApi
    public static final long HI_SYNC_ID_INVALID = 0;
    public static final int MODE_BINAURAL = 1;
    public static final int MODE_MONAURAL = 0;
    public static final int SIDE_LEFT = 0;
    public static final int SIDE_RIGHT = 1;
    private static final String TAG = "BluetoothHearingAid";
    private static final boolean VDBG = false;
    private final BluetoothAdapter mAdapter;
    private final AttributionSource mAttributionSource;
    private final BluetoothProfileConnector<IBluetoothHearingAid> mProfileConnector;

    BluetoothHearingAid(Context context, BluetoothProfile.ServiceListener listener, BluetoothAdapter adapter) {
        BluetoothProfileConnector<IBluetoothHearingAid> bluetoothProfileConnector = new BluetoothProfileConnector(this, 21, TAG, IBluetoothHearingAid.class.getName()) { // from class: android.bluetooth.BluetoothHearingAid.1
            @Override // android.bluetooth.BluetoothProfileConnector
            public IBluetoothHearingAid getServiceInterface(IBinder service) {
                return IBluetoothHearingAid.Stub.asInterface(service);
            }
        };
        this.mProfileConnector = bluetoothProfileConnector;
        this.mAdapter = adapter;
        this.mAttributionSource = adapter.getAttributionSource();
        bluetoothProfileConnector.connect(context, listener);
    }

    void close() {
        this.mProfileConnector.disconnect();
    }

    private IBluetoothHearingAid getService() {
        return this.mProfileConnector.getService();
    }

    public boolean connect(BluetoothDevice device) {
        log("connect(" + device + NavigationBarInflaterView.KEY_CODE_END);
        IBluetoothHearingAid service = getService();
        if (service == null) {
            Log.w(TAG, "Proxy not attached to service");
            log(Log.getStackTraceString(new Throwable()));
        } else if (isEnabled() && isValidDevice(device)) {
            try {
                SynchronousResultReceiver<Boolean> recv = SynchronousResultReceiver.get();
                service.connect(device, this.mAttributionSource, recv);
                return recv.awaitResultNoInterrupt(BluetoothUtils.getSyncTimeout()).getValue(false).booleanValue();
            } catch (RemoteException | TimeoutException e) {
                Log.e(TAG, e.toString() + "\n" + Log.getStackTraceString(new Throwable()));
            }
        }
        return false;
    }

    public boolean disconnect(BluetoothDevice device) {
        log("disconnect(" + device + NavigationBarInflaterView.KEY_CODE_END);
        IBluetoothHearingAid service = getService();
        if (service == null) {
            Log.w(TAG, "Proxy not attached to service");
            log(Log.getStackTraceString(new Throwable()));
        } else if (isEnabled() && isValidDevice(device)) {
            try {
                SynchronousResultReceiver<Boolean> recv = SynchronousResultReceiver.get();
                service.disconnect(device, this.mAttributionSource, recv);
                return recv.awaitResultNoInterrupt(BluetoothUtils.getSyncTimeout()).getValue(false).booleanValue();
            } catch (RemoteException | TimeoutException e) {
                Log.e(TAG, e.toString() + "\n" + Log.getStackTraceString(new Throwable()));
            }
        }
        return false;
    }

    @Override // android.bluetooth.BluetoothProfile
    public List<BluetoothDevice> getConnectedDevices() {
        IBluetoothHearingAid service = getService();
        List<BluetoothDevice> arrayList = new ArrayList<>();
        if (service == null) {
            Log.w(TAG, "Proxy not attached to service");
            log(Log.getStackTraceString(new Throwable()));
        } else if (isEnabled()) {
            try {
                SynchronousResultReceiver<List<BluetoothDevice>> recv = SynchronousResultReceiver.get();
                service.getConnectedDevices(this.mAttributionSource, recv);
                return Attributable.setAttributionSource(recv.awaitResultNoInterrupt(BluetoothUtils.getSyncTimeout()).getValue(arrayList), this.mAttributionSource);
            } catch (RemoteException | TimeoutException e) {
                Log.e(TAG, e.toString() + "\n" + Log.getStackTraceString(new Throwable()));
            }
        }
        return arrayList;
    }

    @Override // android.bluetooth.BluetoothProfile
    public List<BluetoothDevice> getDevicesMatchingConnectionStates(int[] states) {
        IBluetoothHearingAid service = getService();
        List<BluetoothDevice> arrayList = new ArrayList<>();
        if (service == null) {
            Log.w(TAG, "Proxy not attached to service");
            log(Log.getStackTraceString(new Throwable()));
        } else if (isEnabled()) {
            try {
                SynchronousResultReceiver<List<BluetoothDevice>> recv = SynchronousResultReceiver.get();
                service.getDevicesMatchingConnectionStates(states, this.mAttributionSource, recv);
                return Attributable.setAttributionSource(recv.awaitResultNoInterrupt(BluetoothUtils.getSyncTimeout()).getValue(arrayList), this.mAttributionSource);
            } catch (RemoteException | TimeoutException e) {
                Log.e(TAG, e.toString() + "\n" + Log.getStackTraceString(new Throwable()));
            }
        }
        return arrayList;
    }

    @Override // android.bluetooth.BluetoothProfile
    public int getConnectionState(BluetoothDevice device) {
        IBluetoothHearingAid service = getService();
        if (service == null) {
            Log.w(TAG, "Proxy not attached to service");
            log(Log.getStackTraceString(new Throwable()));
        } else if (isEnabled() && isValidDevice(device)) {
            try {
                SynchronousResultReceiver<Integer> recv = SynchronousResultReceiver.get();
                service.getConnectionState(device, this.mAttributionSource, recv);
                return recv.awaitResultNoInterrupt(BluetoothUtils.getSyncTimeout()).getValue(0).intValue();
            } catch (RemoteException | TimeoutException e) {
                Log.e(TAG, e.toString() + "\n" + Log.getStackTraceString(new Throwable()));
            }
        }
        return 0;
    }

    public boolean setActiveDevice(BluetoothDevice device) {
        log("setActiveDevice(" + device + NavigationBarInflaterView.KEY_CODE_END);
        IBluetoothHearingAid service = getService();
        if (service == null) {
            Log.w(TAG, "Proxy not attached to service");
            log(Log.getStackTraceString(new Throwable()));
        } else if (isEnabled() && (device == null || isValidDevice(device))) {
            try {
                SynchronousResultReceiver<Boolean> recv = SynchronousResultReceiver.get();
                service.setActiveDevice(device, this.mAttributionSource, recv);
                return recv.awaitResultNoInterrupt(BluetoothUtils.getSyncTimeout()).getValue(false).booleanValue();
            } catch (RemoteException | TimeoutException e) {
                Log.e(TAG, e.toString() + "\n" + Log.getStackTraceString(new Throwable()));
            }
        }
        return false;
    }

    public List<BluetoothDevice> getActiveDevices() {
        IBluetoothHearingAid service = getService();
        List<BluetoothDevice> arrayList = new ArrayList<>();
        if (service == null) {
            Log.w(TAG, "Proxy not attached to service");
            log(Log.getStackTraceString(new Throwable()));
        } else if (isEnabled()) {
            try {
                SynchronousResultReceiver<List<BluetoothDevice>> recv = SynchronousResultReceiver.get();
                service.getActiveDevices(this.mAttributionSource, recv);
                return Attributable.setAttributionSource(recv.awaitResultNoInterrupt(BluetoothUtils.getSyncTimeout()).getValue(arrayList), this.mAttributionSource);
            } catch (RemoteException | TimeoutException e) {
                Log.e(TAG, e.toString() + "\n" + Log.getStackTraceString(new Throwable()));
            }
        }
        return arrayList;
    }

    public boolean setPriority(BluetoothDevice device, int priority) {
        log("setPriority(" + device + ", " + priority + NavigationBarInflaterView.KEY_CODE_END);
        return setConnectionPolicy(device, BluetoothAdapter.priorityToConnectionPolicy(priority));
    }

    @SystemApi
    public boolean setConnectionPolicy(BluetoothDevice device, int connectionPolicy) {
        log("setConnectionPolicy(" + device + ", " + connectionPolicy + NavigationBarInflaterView.KEY_CODE_END);
        verifyDeviceNotNull(device, "setConnectionPolicy");
        IBluetoothHearingAid service = getService();
        if (service == null) {
            Log.w(TAG, "Proxy not attached to service");
            log(Log.getStackTraceString(new Throwable()));
        } else if (isEnabled() && isValidDevice(device) && (connectionPolicy == 0 || connectionPolicy == 100)) {
            try {
                SynchronousResultReceiver<Boolean> recv = SynchronousResultReceiver.get();
                service.setConnectionPolicy(device, connectionPolicy, this.mAttributionSource, recv);
                return recv.awaitResultNoInterrupt(BluetoothUtils.getSyncTimeout()).getValue(false).booleanValue();
            } catch (RemoteException | TimeoutException e) {
                Log.e(TAG, e.toString() + "\n" + Log.getStackTraceString(new Throwable()));
            }
        }
        return false;
    }

    public int getPriority(BluetoothDevice device) {
        return BluetoothAdapter.connectionPolicyToPriority(getConnectionPolicy(device));
    }

    @SystemApi
    public int getConnectionPolicy(BluetoothDevice device) {
        verifyDeviceNotNull(device, "getConnectionPolicy");
        IBluetoothHearingAid service = getService();
        if (service == null) {
            Log.w(TAG, "Proxy not attached to service");
            log(Log.getStackTraceString(new Throwable()));
        } else if (isEnabled() && isValidDevice(device)) {
            try {
                SynchronousResultReceiver<Integer> recv = SynchronousResultReceiver.get();
                service.getConnectionPolicy(device, this.mAttributionSource, recv);
                return recv.awaitResultNoInterrupt(BluetoothUtils.getSyncTimeout()).getValue(0).intValue();
            } catch (RemoteException | TimeoutException e) {
                Log.e(TAG, e.toString() + "\n" + Log.getStackTraceString(new Throwable()));
            }
        }
        return 0;
    }

    public static String stateToString(int state) {
        switch (state) {
            case 0:
                return "disconnected";
            case 1:
                return "connecting";
            case 2:
                return "connected";
            case 3:
                return ImsConferenceState.STATUS_DISCONNECTING;
            default:
                return "<unknown state " + state + ">";
        }
    }

    @SystemApi
    public void setVolume(int volume) {
        Log.d(TAG, "setVolume(" + volume + NavigationBarInflaterView.KEY_CODE_END);
        IBluetoothHearingAid service = getService();
        if (service == null) {
            Log.w(TAG, "Proxy not attached to service");
            log(Log.getStackTraceString(new Throwable()));
        } else if (isEnabled()) {
            try {
                SynchronousResultReceiver recv = SynchronousResultReceiver.get();
                service.setVolume(volume, this.mAttributionSource, recv);
                recv.awaitResultNoInterrupt(BluetoothUtils.getSyncTimeout()).getValue(null);
            } catch (RemoteException | TimeoutException e) {
                Log.e(TAG, e.toString() + "\n" + Log.getStackTraceString(new Throwable()));
            }
        }
    }

    @SystemApi
    public long getHiSyncId(BluetoothDevice device) {
        verifyDeviceNotNull(device, "getHiSyncId");
        IBluetoothHearingAid service = getService();
        if (service == null) {
            Log.w(TAG, "Proxy not attached to service");
            log(Log.getStackTraceString(new Throwable()));
        } else if (isEnabled() && isValidDevice(device)) {
            try {
                SynchronousResultReceiver<Long> recv = SynchronousResultReceiver.get();
                service.getHiSyncId(device, this.mAttributionSource, recv);
                return recv.awaitResultNoInterrupt(BluetoothUtils.getSyncTimeout()).getValue(0L).longValue();
            } catch (RemoteException | TimeoutException e) {
                Log.e(TAG, e.toString() + "\n" + Log.getStackTraceString(new Throwable()));
            }
        }
        return 0L;
    }

    public int getDeviceSide(BluetoothDevice device) {
        IBluetoothHearingAid service = getService();
        if (service == null) {
            Log.w(TAG, "Proxy not attached to service");
            log(Log.getStackTraceString(new Throwable()));
        } else if (isEnabled() && isValidDevice(device)) {
            try {
                SynchronousResultReceiver<Integer> recv = SynchronousResultReceiver.get();
                service.getDeviceSide(device, this.mAttributionSource, recv);
                return recv.awaitResultNoInterrupt(BluetoothUtils.getSyncTimeout()).getValue(0).intValue();
            } catch (RemoteException | TimeoutException e) {
                Log.e(TAG, e.toString() + "\n" + Log.getStackTraceString(new Throwable()));
            }
        }
        return 0;
    }

    public int getDeviceMode(BluetoothDevice device) {
        IBluetoothHearingAid service = getService();
        if (service == null) {
            Log.w(TAG, "Proxy not attached to service");
            log(Log.getStackTraceString(new Throwable()));
        } else if (isEnabled() && isValidDevice(device)) {
            try {
                SynchronousResultReceiver<Integer> recv = SynchronousResultReceiver.get();
                service.getDeviceMode(device, this.mAttributionSource, recv);
                return recv.awaitResultNoInterrupt(BluetoothUtils.getSyncTimeout()).getValue(0).intValue();
            } catch (RemoteException | TimeoutException e) {
                Log.e(TAG, e.toString() + "\n" + Log.getStackTraceString(new Throwable()));
            }
        }
        return 0;
    }

    private int getDeviceSideInternal(BluetoothDevice device) {
        return getDeviceSide(device);
    }

    private int getDeviceModeInternal(BluetoothDevice device) {
        return getDeviceMode(device);
    }

    private boolean isEnabled() {
        return this.mAdapter.getState() == 12;
    }

    private void verifyDeviceNotNull(BluetoothDevice device, String methodName) {
        if (device == null) {
            Log.e(TAG, methodName + ": device param is null");
            throw new IllegalArgumentException("Device cannot be null");
        }
    }

    private boolean isValidDevice(BluetoothDevice device) {
        return device != null && BluetoothAdapter.checkBluetoothAddress(device.getAddress());
    }

    private static void log(String msg) {
        Log.d(TAG, msg);
    }
}

package android.bluetooth;

import android.annotation.SystemApi;
import android.bluetooth.BluetoothProfile;
import android.bluetooth.IBluetoothMap;
import android.content.AttributionSource;
import android.content.Context;
import android.inputmethodservice.navigationbar.NavigationBarInflaterView;
import android.os.IBinder;
import android.os.IpcDataCache;
import android.os.RemoteException;
import android.util.CloseGuard;
import android.util.Log;
import android.util.Pair;
import com.android.modules.utils.SynchronousResultReceiver;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.TimeoutException;

@SystemApi
/* loaded from: classes.dex */
public final class BluetoothMap implements BluetoothProfile, AutoCloseable {

    @SystemApi
    public static final String ACTION_CONNECTION_STATE_CHANGED = "android.bluetooth.map.profile.action.CONNECTION_STATE_CHANGED";
    private static final boolean DBG = true;
    private static final String GET_CONNECTION_STATE_API = "BluetoothMap_getConnectionState";
    public static final int RESULT_CANCELED = 2;
    public static final int RESULT_FAILURE = 0;
    public static final int RESULT_SUCCESS = 1;
    public static final int STATE_ERROR = -1;
    private static final String TAG = "BluetoothMap";
    private static final boolean VDBG = false;
    private final BluetoothAdapter mAdapter;
    private final AttributionSource mAttributionSource;
    private final BluetoothCache<Pair<IBluetoothMap, BluetoothDevice>, Integer> mBluetoothConnectionCache;
    private final IpcDataCache.QueryHandler<Pair<IBluetoothMap, BluetoothDevice>, Integer> mBluetoothConnectionQuery;
    private CloseGuard mCloseGuard;
    private final BluetoothProfileConnector<IBluetoothMap> mProfileConnector;

    BluetoothMap(Context context, BluetoothProfile.ServiceListener listener, BluetoothAdapter adapter) {
        BluetoothProfileConnector<IBluetoothMap> bluetoothProfileConnector = new BluetoothProfileConnector(this, 9, TAG, IBluetoothMap.class.getName()) { // from class: android.bluetooth.BluetoothMap.1
            @Override // android.bluetooth.BluetoothProfileConnector
            public IBluetoothMap getServiceInterface(IBinder service) {
                return IBluetoothMap.Stub.asInterface(service);
            }
        };
        this.mProfileConnector = bluetoothProfileConnector;
        IpcDataCache.QueryHandler<Pair<IBluetoothMap, BluetoothDevice>, Integer> queryHandler = new IpcDataCache.QueryHandler<Pair<IBluetoothMap, BluetoothDevice>, Integer>() { // from class: android.bluetooth.BluetoothMap.2
            @Override // android.os.IpcDataCache.QueryHandler, android.app.PropertyInvalidatedCache.QueryHandler
            public Integer apply(Pair<IBluetoothMap, BluetoothDevice> pairQuery) {
                BluetoothMap.log("getConnectionState(" + pairQuery.second.getAnonymizedAddress() + ") uncached");
                SynchronousResultReceiver<Integer> recv = SynchronousResultReceiver.get();
                try {
                    pairQuery.first.getConnectionState(pairQuery.second, BluetoothMap.this.mAttributionSource, recv);
                    return recv.awaitResultNoInterrupt(BluetoothUtils.getSyncTimeout()).getValue(0);
                } catch (RemoteException | TimeoutException e) {
                    throw new RuntimeException(e);
                }
            }
        };
        this.mBluetoothConnectionQuery = queryHandler;
        this.mBluetoothConnectionCache = new BluetoothCache<>(GET_CONNECTION_STATE_API, queryHandler);
        Log.d(TAG, "Create BluetoothMap proxy object");
        this.mAdapter = adapter;
        this.mAttributionSource = adapter.getAttributionSource();
        bluetoothProfileConnector.connect(context, listener);
        CloseGuard closeGuard = new CloseGuard();
        this.mCloseGuard = closeGuard;
        closeGuard.open("close");
    }

    protected void finalize() {
        CloseGuard closeGuard = this.mCloseGuard;
        if (closeGuard != null) {
            closeGuard.warnIfOpen();
        }
        close();
    }

    @Override // java.lang.AutoCloseable
    @SystemApi
    public void close() {
        this.mProfileConnector.disconnect();
    }

    private IBluetoothMap getService() {
        return this.mProfileConnector.getService();
    }

    public int getState() {
        IBluetoothMap service = getService();
        if (service == null) {
            Log.w(TAG, "Proxy not attached to service");
            log(Log.getStackTraceString(new Throwable()));
        } else if (isEnabled()) {
            try {
                SynchronousResultReceiver<Integer> recv = SynchronousResultReceiver.get();
                service.getState(this.mAttributionSource, recv);
                return recv.awaitResultNoInterrupt(BluetoothUtils.getSyncTimeout()).getValue(-1).intValue();
            } catch (RemoteException | TimeoutException e) {
                Log.e(TAG, e.toString() + "\n" + Log.getStackTraceString(new Throwable()));
            }
        }
        return -1;
    }

    public BluetoothDevice getClient() {
        IBluetoothMap service = getService();
        if (service == null) {
            Log.w(TAG, "Proxy not attached to service");
            log(Log.getStackTraceString(new Throwable()));
        } else if (isEnabled()) {
            try {
                SynchronousResultReceiver<BluetoothDevice> recv = SynchronousResultReceiver.get();
                service.getClient(this.mAttributionSource, recv);
                return (BluetoothDevice) Attributable.setAttributionSource(recv.awaitResultNoInterrupt(BluetoothUtils.getSyncTimeout()).getValue(null), this.mAttributionSource);
            } catch (RemoteException | TimeoutException e) {
                Log.e(TAG, e.toString() + "\n" + Log.getStackTraceString(new Throwable()));
            }
        }
        return null;
    }

    public boolean isConnected(BluetoothDevice device) {
        IBluetoothMap service = getService();
        if (service == null) {
            Log.w(TAG, "Proxy not attached to service");
            log(Log.getStackTraceString(new Throwable()));
        } else if (isEnabled() && isValidDevice(device)) {
            try {
                SynchronousResultReceiver<Boolean> recv = SynchronousResultReceiver.get();
                service.isConnected(device, this.mAttributionSource, recv);
                return recv.awaitResultNoInterrupt(BluetoothUtils.getSyncTimeout()).getValue(false).booleanValue();
            } catch (RemoteException | TimeoutException e) {
                Log.e(TAG, e.toString() + "\n" + Log.getStackTraceString(new Throwable()));
            }
        }
        return false;
    }

    public boolean connect(BluetoothDevice device) {
        log("connect(" + device + ")not supported for MAPS");
        return false;
    }

    public boolean disconnect(BluetoothDevice device) {
        log("disconnect(" + device + NavigationBarInflaterView.KEY_CODE_END);
        IBluetoothMap service = getService();
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

    public static boolean doesClassMatchSink(BluetoothClass btClass) {
        switch (btClass.getDeviceClass()) {
            case 256:
            case 260:
            case 264:
            case 268:
                return true;
            default:
                return false;
        }
    }

    @Override // android.bluetooth.BluetoothProfile
    @SystemApi
    public List<BluetoothDevice> getConnectedDevices() {
        log("getConnectedDevices()");
        IBluetoothMap service = getService();
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
        log("getDevicesMatchingStates()");
        IBluetoothMap service = getService();
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

    private static class BluetoothCache<Q, R> extends IpcDataCache<Q, R> {
        BluetoothCache(String api, IpcDataCache.QueryHandler query) {
            super(8, "bluetooth", api, api, query);
        }
    }

    public void disableBluetoothGetConnectionStateCache() {
        this.mBluetoothConnectionCache.disableForCurrentProcess();
    }

    public static void invalidateBluetoothGetConnectionStateCache() {
        invalidateCache(GET_CONNECTION_STATE_API);
    }

    private static void invalidateCache(String api) {
        IpcDataCache.invalidateCache("bluetooth", api);
    }

    @Override // android.bluetooth.BluetoothProfile
    public int getConnectionState(BluetoothDevice device) {
        log("getConnectionState(" + device + NavigationBarInflaterView.KEY_CODE_END);
        IBluetoothMap service = getService();
        if (service == null) {
            Log.w(TAG, "BT not enabled. Cannot get connection state");
            log(Log.getStackTraceString(new Throwable()));
            return 0;
        }
        if (isEnabled() && isValidDevice(device)) {
            try {
                int map_state = this.mBluetoothConnectionCache.query(new Pair(service, device)).intValue();
                log("map_state = " + map_state + ", ACL_isconnected = " + device.isConnected());
                if (device.isConnected()) {
                    return map_state;
                }
                return 0;
            } catch (RuntimeException e) {
                if ((e.getCause() instanceof TimeoutException) || (e.getCause() instanceof RemoteException)) {
                    Log.e(TAG, e.toString() + "\n" + Log.getStackTraceString(new Throwable()));
                    return 0;
                }
                throw e;
            }
        }
        return 0;
    }

    public boolean setPriority(BluetoothDevice device, int priority) {
        log("setPriority(" + device + ", " + priority + NavigationBarInflaterView.KEY_CODE_END);
        return setConnectionPolicy(device, BluetoothAdapter.priorityToConnectionPolicy(priority));
    }

    @SystemApi
    public boolean setConnectionPolicy(BluetoothDevice device, int connectionPolicy) {
        log("setConnectionPolicy(" + device + ", " + connectionPolicy + NavigationBarInflaterView.KEY_CODE_END);
        IBluetoothMap service = getService();
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
        IBluetoothMap service = getService();
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

    /* JADX INFO: Access modifiers changed from: private */
    public static void log(String msg) {
        Log.d(TAG, msg);
    }

    private boolean isEnabled() {
        return this.mAdapter.isEnabled();
    }

    private static boolean isValidDevice(BluetoothDevice device) {
        return device != null && BluetoothAdapter.checkBluetoothAddress(device.getAddress());
    }
}

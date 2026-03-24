package android.bluetooth;

import android.annotation.SystemApi;
import android.bluetooth.BluetoothProfile;
import android.bluetooth.IBluetoothLeBroadcastAssistant;
import android.bluetooth.le.ScanFilter;
import android.content.AttributionSource;
import android.content.Context;
import android.inputmethodservice.navigationbar.NavigationBarInflaterView;
import android.os.IBinder;
import android.os.RemoteException;
import android.util.CloseGuard;
import android.util.Log;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.Executor;

@SystemApi
/* loaded from: classes.dex */
public final class BluetoothLeBroadcastAssistant implements BluetoothProfile, AutoCloseable {

    @SystemApi
    public static final String ACTION_CONNECTION_STATE_CHANGED = "android.bluetooth.action.CONNECTION_STATE_CHANGED";
    private static final boolean DBG = true;
    private static final String TAG = "BluetoothLeBroadcastAssistant";
    private final AttributionSource mAttributionSource;
    private BluetoothAdapter mBluetoothAdapter;
    private BluetoothLeBroadcastAssistantCallback mCallback;
    private final Map<Callback, Executor> mCallbackMap = new HashMap();
    private CloseGuard mCloseGuard;
    private Context mContext;
    private final BluetoothProfileConnector<IBluetoothLeBroadcastAssistant> mProfileConnector;

    @SystemApi
    public interface Callback {

        @Retention(RetentionPolicy.SOURCE)
        public @interface Reason {
        }

        @SystemApi
        void onReceiveStateChanged(BluetoothDevice bluetoothDevice, int i, BluetoothLeBroadcastReceiveState bluetoothLeBroadcastReceiveState);

        @SystemApi
        void onSearchStartFailed(int i);

        @SystemApi
        void onSearchStarted(int i);

        @SystemApi
        void onSearchStopFailed(int i);

        @SystemApi
        void onSearchStopped(int i);

        @SystemApi
        void onSourceAddFailed(BluetoothDevice bluetoothDevice, BluetoothLeBroadcastMetadata bluetoothLeBroadcastMetadata, int i);

        @SystemApi
        void onSourceAdded(BluetoothDevice bluetoothDevice, int i, int i2);

        @SystemApi
        void onSourceFound(BluetoothLeBroadcastMetadata bluetoothLeBroadcastMetadata);

        @SystemApi
        void onSourceModified(BluetoothDevice bluetoothDevice, int i, int i2);

        @SystemApi
        void onSourceModifyFailed(BluetoothDevice bluetoothDevice, int i, int i2);

        @SystemApi
        void onSourceRemoveFailed(BluetoothDevice bluetoothDevice, int i, int i2);

        @SystemApi
        void onSourceRemoved(BluetoothDevice bluetoothDevice, int i, int i2);
    }

    BluetoothLeBroadcastAssistant(Context context, BluetoothProfile.ServiceListener listener) {
        BluetoothProfileConnector<IBluetoothLeBroadcastAssistant> bluetoothProfileConnector = new BluetoothProfileConnector(this, 29, TAG, IBluetoothLeBroadcastAssistant.class.getName()) { // from class: android.bluetooth.BluetoothLeBroadcastAssistant.1
            @Override // android.bluetooth.BluetoothProfileConnector
            public IBluetoothLeBroadcastAssistant getServiceInterface(IBinder service) {
                return IBluetoothLeBroadcastAssistant.Stub.asInterface(service);
            }
        };
        this.mProfileConnector = bluetoothProfileConnector;
        this.mContext = context;
        BluetoothAdapter defaultAdapter = BluetoothAdapter.getDefaultAdapter();
        this.mBluetoothAdapter = defaultAdapter;
        this.mAttributionSource = defaultAdapter.getAttributionSource();
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
    public void close() {
        this.mProfileConnector.disconnect();
    }

    private IBluetoothLeBroadcastAssistant getService() {
        return this.mProfileConnector.getService();
    }

    @Override // android.bluetooth.BluetoothProfile
    @SystemApi
    public int getConnectionState(BluetoothDevice sink) {
        log("getConnectionState(" + sink + NavigationBarInflaterView.KEY_CODE_END);
        Objects.requireNonNull(sink, "sink cannot be null");
        IBluetoothLeBroadcastAssistant service = getService();
        if (service == null) {
            Log.w(TAG, "Proxy not attached to service");
            log(Log.getStackTraceString(new Throwable()));
            return 0;
        }
        if (this.mBluetoothAdapter.isEnabled() && isValidDevice(sink)) {
            try {
                return service.getConnectionState(sink);
            } catch (RemoteException e) {
                Log.e(TAG, e.toString() + "\n" + Log.getStackTraceString(new Throwable()));
                return 0;
            }
        }
        return 0;
    }

    @Override // android.bluetooth.BluetoothProfile
    @SystemApi
    public List<BluetoothDevice> getDevicesMatchingConnectionStates(int[] states) {
        log("getDevicesMatchingConnectionStates()");
        Objects.requireNonNull(states, "states cannot be null");
        IBluetoothLeBroadcastAssistant service = getService();
        List<BluetoothDevice> defaultValue = new ArrayList<>();
        if (service == null) {
            Log.w(TAG, "Proxy not attached to service");
            log(Log.getStackTraceString(new Throwable()));
        } else if (this.mBluetoothAdapter.isEnabled()) {
            try {
                return service.getDevicesMatchingConnectionStates(states);
            } catch (RemoteException e) {
                Log.e(TAG, e.toString() + "\n" + Log.getStackTraceString(new Throwable()));
            }
        }
        return defaultValue;
    }

    @Override // android.bluetooth.BluetoothProfile
    @SystemApi
    public List<BluetoothDevice> getConnectedDevices() {
        log("getConnectedDevices()");
        IBluetoothLeBroadcastAssistant service = getService();
        List<BluetoothDevice> defaultValue = new ArrayList<>();
        if (service == null) {
            Log.w(TAG, "Proxy not attached to service");
            log(Log.getStackTraceString(new Throwable()));
        } else if (this.mBluetoothAdapter.isEnabled()) {
            try {
                return service.getConnectedDevices();
            } catch (RemoteException e) {
                Log.e(TAG, e.toString() + "\n" + Log.getStackTraceString(new Throwable()));
            }
        }
        return defaultValue;
    }

    @SystemApi
    public boolean setConnectionPolicy(BluetoothDevice device, int connectionPolicy) {
        log("setConnectionPolicy()");
        Objects.requireNonNull(device, "device cannot be null");
        IBluetoothLeBroadcastAssistant service = getService();
        if (service == null) {
            Log.w(TAG, "Proxy not attached to service");
            log(Log.getStackTraceString(new Throwable()));
            return false;
        }
        if (!this.mBluetoothAdapter.isEnabled() || !isValidDevice(device)) {
            return false;
        }
        if (connectionPolicy == 0 || connectionPolicy == 100) {
            try {
                return service.setConnectionPolicy(device, connectionPolicy);
            } catch (RemoteException e) {
                Log.e(TAG, e.toString() + "\n" + Log.getStackTraceString(new Throwable()));
                return false;
            }
        }
        return false;
    }

    @SystemApi
    public int getConnectionPolicy(BluetoothDevice device) {
        log("getConnectionPolicy()");
        Objects.requireNonNull(device, "device cannot be null");
        IBluetoothLeBroadcastAssistant service = getService();
        if (service == null) {
            Log.w(TAG, "Proxy not attached to service");
            log(Log.getStackTraceString(new Throwable()));
            return 0;
        }
        if (this.mBluetoothAdapter.isEnabled() && isValidDevice(device)) {
            try {
                return service.getConnectionPolicy(device);
            } catch (RemoteException e) {
                Log.e(TAG, e.toString() + "\n" + Log.getStackTraceString(new Throwable()));
                return 0;
            }
        }
        return 0;
    }

    @SystemApi
    public void registerCallback(Executor executor, Callback callback) {
        Objects.requireNonNull(executor, "executor cannot be null");
        Objects.requireNonNull(callback, "callback cannot be null");
        log("registerCallback");
        IBluetoothLeBroadcastAssistant service = getService();
        if (service == null) {
            Log.w(TAG, "Proxy not attached to service");
            log(Log.getStackTraceString(new Throwable()));
        } else if (this.mBluetoothAdapter.isEnabled()) {
            if (this.mCallback == null) {
                this.mCallback = new BluetoothLeBroadcastAssistantCallback(service);
            }
            this.mCallback.register(executor, callback);
        }
    }

    @SystemApi
    public void unregisterCallback(Callback callback) {
        Objects.requireNonNull(callback, "callback cannot be null");
        log("unregisterCallback");
        IBluetoothLeBroadcastAssistant service = getService();
        if (service == null) {
            Log.w(TAG, "Proxy not attached to service");
            log(Log.getStackTraceString(new Throwable()));
        } else if (this.mBluetoothAdapter.isEnabled()) {
            BluetoothLeBroadcastAssistantCallback bluetoothLeBroadcastAssistantCallback = this.mCallback;
            if (bluetoothLeBroadcastAssistantCallback == null) {
                throw new IllegalArgumentException("no callback was ever registered");
            }
            bluetoothLeBroadcastAssistantCallback.unregister(callback);
        }
    }

    @SystemApi
    public void startSearchingForSources(List<ScanFilter> filters) {
        log("searchForBroadcastSources");
        Objects.requireNonNull(filters, "filters can be empty, but not null");
        BluetoothLeBroadcastAssistantCallback bluetoothLeBroadcastAssistantCallback = this.mCallback;
        if (bluetoothLeBroadcastAssistantCallback == null) {
            throw new IllegalStateException("No callback was ever registered");
        }
        if (!bluetoothLeBroadcastAssistantCallback.isAtLeastOneCallbackRegistered()) {
            throw new IllegalStateException("All callbacks are unregistered");
        }
        IBluetoothLeBroadcastAssistant service = getService();
        if (service == null) {
            Log.w(TAG, "Proxy not attached to service");
            log(Log.getStackTraceString(new Throwable()));
        } else if (this.mBluetoothAdapter.isEnabled()) {
            try {
                service.startSearchingForSources(filters);
            } catch (RemoteException e) {
                Log.e(TAG, e.toString() + "\n" + Log.getStackTraceString(new Throwable()));
            }
        }
    }

    @SystemApi
    public void stopSearchingForSources() {
        log("stopSearchingForSources:");
        BluetoothLeBroadcastAssistantCallback bluetoothLeBroadcastAssistantCallback = this.mCallback;
        if (bluetoothLeBroadcastAssistantCallback == null) {
            throw new IllegalStateException("No callback was ever registered");
        }
        if (!bluetoothLeBroadcastAssistantCallback.isAtLeastOneCallbackRegistered()) {
            throw new IllegalStateException("All callbacks are unregistered");
        }
        IBluetoothLeBroadcastAssistant service = getService();
        if (service == null) {
            Log.w(TAG, "Proxy not attached to service");
            log(Log.getStackTraceString(new Throwable()));
        } else if (this.mBluetoothAdapter.isEnabled()) {
            try {
                service.stopSearchingForSources();
            } catch (RemoteException e) {
                Log.e(TAG, e.toString() + "\n" + Log.getStackTraceString(new Throwable()));
            }
        }
    }

    @SystemApi
    public boolean isSearchInProgress() {
        log("stopSearchingForSources:");
        IBluetoothLeBroadcastAssistant service = getService();
        if (service == null) {
            Log.w(TAG, "Proxy not attached to service");
            log(Log.getStackTraceString(new Throwable()));
            return false;
        }
        if (this.mBluetoothAdapter.isEnabled()) {
            try {
                return service.isSearchInProgress();
            } catch (RemoteException e) {
                Log.e(TAG, e.toString() + "\n" + Log.getStackTraceString(new Throwable()));
                return false;
            }
        }
        return false;
    }

    @SystemApi
    public void addSource(BluetoothDevice sink, BluetoothLeBroadcastMetadata sourceMetadata, boolean isGroupOp) {
        log("addBroadcastSource: " + sourceMetadata + " on " + sink);
        Objects.requireNonNull(sink, "sink cannot be null");
        Objects.requireNonNull(sourceMetadata, "sourceMetadata cannot be null");
        BluetoothLeBroadcastAssistantCallback bluetoothLeBroadcastAssistantCallback = this.mCallback;
        if (bluetoothLeBroadcastAssistantCallback == null) {
            throw new IllegalStateException("No callback was ever registered");
        }
        if (!bluetoothLeBroadcastAssistantCallback.isAtLeastOneCallbackRegistered()) {
            throw new IllegalStateException("All callbacks are unregistered");
        }
        IBluetoothLeBroadcastAssistant service = getService();
        if (service == null) {
            Log.w(TAG, "Proxy not attached to service");
            log(Log.getStackTraceString(new Throwable()));
        } else if (this.mBluetoothAdapter.isEnabled() && isValidDevice(sink)) {
            try {
                service.addSource(sink, sourceMetadata, isGroupOp);
            } catch (RemoteException e) {
                Log.e(TAG, e.toString() + "\n" + Log.getStackTraceString(new Throwable()));
            }
        }
    }

    @SystemApi
    public void modifySource(BluetoothDevice sink, int sourceId, BluetoothLeBroadcastMetadata updatedMetadata) {
        log("updateBroadcastSource: " + updatedMetadata + " on " + sink);
        Objects.requireNonNull(sink, "sink cannot be null");
        Objects.requireNonNull(updatedMetadata, "updatedMetadata cannot be null");
        BluetoothLeBroadcastAssistantCallback bluetoothLeBroadcastAssistantCallback = this.mCallback;
        if (bluetoothLeBroadcastAssistantCallback == null) {
            throw new IllegalStateException("No callback was ever registered");
        }
        if (!bluetoothLeBroadcastAssistantCallback.isAtLeastOneCallbackRegistered()) {
            throw new IllegalStateException("All callbacks are unregistered");
        }
        IBluetoothLeBroadcastAssistant service = getService();
        if (service == null) {
            Log.w(TAG, "Proxy not attached to service");
            log(Log.getStackTraceString(new Throwable()));
        } else if (this.mBluetoothAdapter.isEnabled() && isValidDevice(sink)) {
            try {
                service.modifySource(sink, sourceId, updatedMetadata);
            } catch (RemoteException e) {
                Log.e(TAG, e.toString() + "\n" + Log.getStackTraceString(new Throwable()));
            }
        }
    }

    @SystemApi
    public void removeSource(BluetoothDevice sink, int sourceId) {
        log("removeBroadcastSource: " + sourceId + " from " + sink);
        Objects.requireNonNull(sink, "sink cannot be null");
        BluetoothLeBroadcastAssistantCallback bluetoothLeBroadcastAssistantCallback = this.mCallback;
        if (bluetoothLeBroadcastAssistantCallback == null) {
            throw new IllegalStateException("No callback was ever registered");
        }
        if (!bluetoothLeBroadcastAssistantCallback.isAtLeastOneCallbackRegistered()) {
            throw new IllegalStateException("All callbacks are unregistered");
        }
        IBluetoothLeBroadcastAssistant service = getService();
        if (service == null) {
            Log.w(TAG, "Proxy not attached to service");
            log(Log.getStackTraceString(new Throwable()));
        } else if (this.mBluetoothAdapter.isEnabled() && isValidDevice(sink)) {
            try {
                service.removeSource(sink, sourceId);
            } catch (RemoteException e) {
                Log.e(TAG, e.toString() + "\n" + Log.getStackTraceString(new Throwable()));
            }
        }
    }

    @SystemApi
    public List<BluetoothLeBroadcastReceiveState> getAllSources(BluetoothDevice sink) {
        log("getAllSources()");
        Objects.requireNonNull(sink, "sink cannot be null");
        IBluetoothLeBroadcastAssistant service = getService();
        List<BluetoothLeBroadcastReceiveState> defaultValue = new ArrayList<>();
        if (service == null) {
            Log.w(TAG, "Proxy not attached to service");
            log(Log.getStackTraceString(new Throwable()));
        } else if (this.mBluetoothAdapter.isEnabled()) {
            try {
                return service.getAllSources(sink);
            } catch (RemoteException e) {
                Log.e(TAG, e.toString() + "\n" + Log.getStackTraceString(new Throwable()));
            }
        }
        return defaultValue;
    }

    @SystemApi
    public int getMaximumSourceCapacity(BluetoothDevice sink) {
        Objects.requireNonNull(sink, "sink cannot be null");
        IBluetoothLeBroadcastAssistant service = getService();
        if (service == null) {
            Log.w(TAG, "Proxy not attached to service");
            log(Log.getStackTraceString(new Throwable()));
            return 0;
        }
        if (this.mBluetoothAdapter.isEnabled() && isValidDevice(sink)) {
            try {
                return service.getMaximumSourceCapacity(sink);
            } catch (RemoteException e) {
                Log.e(TAG, e.toString() + "\n" + Log.getStackTraceString(new Throwable()));
                return 0;
            }
        }
        return 0;
    }

    private static void log(String msg) {
        Log.d(TAG, msg);
    }

    private static boolean isValidDevice(BluetoothDevice device) {
        return device != null && BluetoothAdapter.checkBluetoothAddress(device.getAddress());
    }
}

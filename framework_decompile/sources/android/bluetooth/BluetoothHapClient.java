package android.bluetooth;

import android.annotation.SystemApi;
import android.bluetooth.BluetoothProfile;
import android.bluetooth.IBluetoothHapClient;
import android.bluetooth.IBluetoothHapClientCallback;
import android.bluetooth.IBluetoothStateChangeCallback;
import android.content.AttributionSource;
import android.content.Context;
import android.os.IBinder;
import android.os.RemoteException;
import android.util.CloseGuard;
import android.util.Log;
import com.android.modules.utils.SynchronousResultReceiver;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeoutException;

@SystemApi
/* loaded from: classes.dex */
public final class BluetoothHapClient implements BluetoothProfile, AutoCloseable {

    @SystemApi
    public static final String ACTION_HAP_CONNECTION_STATE_CHANGED = "android.bluetooth.action.HAP_CONNECTION_STATE_CHANGED";
    public static final String ACTION_HAP_DEVICE_AVAILABLE = "android.bluetooth.action.HAP_DEVICE_AVAILABLE";
    private static final boolean DBG = false;
    public static final String EXTRA_HAP_FEATURES = "android.bluetooth.extra.HAP_FEATURES";
    public static final int FEATURE_DYNAMIC_PRESETS = 16;
    public static final int FEATURE_INDEPENDENT_PRESETS = 8;
    public static final int FEATURE_SYNCHRONIZATED_PRESETS = 4;
    public static final int FEATURE_TYPE_BANDED = 2;
    public static final int FEATURE_TYPE_MONAURAL = 1;
    public static final int FEATURE_WRITABLE_PRESETS = 32;
    public static final int PRESET_INDEX_UNAVAILABLE = 0;
    private static final String TAG = "BluetoothHapClient";
    private static final boolean VDBG = false;
    private final BluetoothAdapter mAdapter;
    private final AttributionSource mAttributionSource;
    private final IBluetoothStateChangeCallback mBluetoothStateChangeCallback;
    private CloseGuard mCloseGuard;
    private final BluetoothProfileConnector<IBluetoothHapClient> mProfileConnector;
    private final Map<Callback, Executor> mCallbackExecutorMap = new HashMap();
    private final IBluetoothHapClientCallback mCallback = new AnonymousClass1();

    @SystemApi
    public interface Callback {

        @Retention(RetentionPolicy.SOURCE)
        public @interface GroupPresetNameChangeFailureReason {
        }

        @Retention(RetentionPolicy.SOURCE)
        public @interface GroupPresetSelectionFailureReason {
        }

        @Retention(RetentionPolicy.SOURCE)
        public @interface PresetInfoChangeReason {
        }

        @Retention(RetentionPolicy.SOURCE)
        public @interface PresetNameChangeFailureReason {
        }

        @Retention(RetentionPolicy.SOURCE)
        public @interface PresetSelectionFailureReason {
        }

        @Retention(RetentionPolicy.SOURCE)
        public @interface PresetSelectionReason {
        }

        @SystemApi
        void onPresetInfoChanged(BluetoothDevice bluetoothDevice, List<BluetoothHapPresetInfo> list, int i);

        @SystemApi
        void onPresetSelected(BluetoothDevice bluetoothDevice, int i, int i2);

        @SystemApi
        void onPresetSelectionFailed(BluetoothDevice bluetoothDevice, int i);

        @SystemApi
        void onPresetSelectionForGroupFailed(int i, int i2);

        @SystemApi
        void onSetPresetNameFailed(BluetoothDevice bluetoothDevice, int i);

        @SystemApi
        void onSetPresetNameForGroupFailed(int i, int i2);
    }

    @Retention(RetentionPolicy.SOURCE)
    @interface Feature {
    }

    /* renamed from: android.bluetooth.BluetoothHapClient$1, reason: invalid class name */
    class AnonymousClass1 extends IBluetoothHapClientCallback.Stub {
        AnonymousClass1() {
        }

        @Override // android.bluetooth.IBluetoothHapClientCallback
        public void onPresetSelected(final BluetoothDevice device, final int presetIndex, final int reasonCode) {
            Attributable.setAttributionSource(device, BluetoothHapClient.this.mAttributionSource);
            for (Map.Entry<Callback, Executor> callbackExecutorEntry : BluetoothHapClient.this.mCallbackExecutorMap.entrySet()) {
                final Callback callback = callbackExecutorEntry.getKey();
                Executor executor = callbackExecutorEntry.getValue();
                executor.execute(new Runnable() { // from class: android.bluetooth.BluetoothHapClient$1$$ExternalSyntheticLambda1
                    @Override // java.lang.Runnable
                    public final void run() {
                        callback.onPresetSelected(device, presetIndex, reasonCode);
                    }
                });
            }
        }

        @Override // android.bluetooth.IBluetoothHapClientCallback
        public void onPresetSelectionFailed(final BluetoothDevice device, final int status) {
            Attributable.setAttributionSource(device, BluetoothHapClient.this.mAttributionSource);
            for (Map.Entry<Callback, Executor> callbackExecutorEntry : BluetoothHapClient.this.mCallbackExecutorMap.entrySet()) {
                final Callback callback = callbackExecutorEntry.getKey();
                Executor executor = callbackExecutorEntry.getValue();
                executor.execute(new Runnable() { // from class: android.bluetooth.BluetoothHapClient$1$$ExternalSyntheticLambda5
                    @Override // java.lang.Runnable
                    public final void run() {
                        callback.onPresetSelectionFailed(device, status);
                    }
                });
            }
        }

        @Override // android.bluetooth.IBluetoothHapClientCallback
        public void onPresetSelectionForGroupFailed(final int hapGroupId, final int statusCode) {
            for (Map.Entry<Callback, Executor> callbackExecutorEntry : BluetoothHapClient.this.mCallbackExecutorMap.entrySet()) {
                final Callback callback = callbackExecutorEntry.getKey();
                Executor executor = callbackExecutorEntry.getValue();
                executor.execute(new Runnable() { // from class: android.bluetooth.BluetoothHapClient$1$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        callback.onPresetSelectionForGroupFailed(hapGroupId, statusCode);
                    }
                });
            }
        }

        @Override // android.bluetooth.IBluetoothHapClientCallback
        public void onPresetInfoChanged(final BluetoothDevice device, final List<BluetoothHapPresetInfo> presetInfoList, final int statusCode) {
            Attributable.setAttributionSource(device, BluetoothHapClient.this.mAttributionSource);
            for (Map.Entry<Callback, Executor> callbackExecutorEntry : BluetoothHapClient.this.mCallbackExecutorMap.entrySet()) {
                final Callback callback = callbackExecutorEntry.getKey();
                Executor executor = callbackExecutorEntry.getValue();
                executor.execute(new Runnable() { // from class: android.bluetooth.BluetoothHapClient$1$$ExternalSyntheticLambda2
                    @Override // java.lang.Runnable
                    public final void run() {
                        callback.onPresetInfoChanged(device, presetInfoList, statusCode);
                    }
                });
            }
        }

        @Override // android.bluetooth.IBluetoothHapClientCallback
        public void onSetPresetNameFailed(final BluetoothDevice device, final int status) {
            Attributable.setAttributionSource(device, BluetoothHapClient.this.mAttributionSource);
            for (Map.Entry<Callback, Executor> callbackExecutorEntry : BluetoothHapClient.this.mCallbackExecutorMap.entrySet()) {
                final Callback callback = callbackExecutorEntry.getKey();
                Executor executor = callbackExecutorEntry.getValue();
                executor.execute(new Runnable() { // from class: android.bluetooth.BluetoothHapClient$1$$ExternalSyntheticLambda4
                    @Override // java.lang.Runnable
                    public final void run() {
                        callback.onSetPresetNameFailed(device, status);
                    }
                });
            }
        }

        @Override // android.bluetooth.IBluetoothHapClientCallback
        public void onSetPresetNameForGroupFailed(final int hapGroupId, final int status) {
            for (Map.Entry<Callback, Executor> callbackExecutorEntry : BluetoothHapClient.this.mCallbackExecutorMap.entrySet()) {
                final Callback callback = callbackExecutorEntry.getKey();
                Executor executor = callbackExecutorEntry.getValue();
                executor.execute(new Runnable() { // from class: android.bluetooth.BluetoothHapClient$1$$ExternalSyntheticLambda3
                    @Override // java.lang.Runnable
                    public final void run() {
                        callback.onSetPresetNameForGroupFailed(hapGroupId, status);
                    }
                });
            }
        }
    }

    BluetoothHapClient(Context context, BluetoothProfile.ServiceListener listener) {
        BluetoothProfileConnector<IBluetoothHapClient> bluetoothProfileConnector = new BluetoothProfileConnector(this, 28, TAG, IBluetoothHapClient.class.getName()) { // from class: android.bluetooth.BluetoothHapClient.2
            @Override // android.bluetooth.BluetoothProfileConnector
            public IBluetoothHapClient getServiceInterface(IBinder service) {
                return IBluetoothHapClient.Stub.asInterface(service);
            }
        };
        this.mProfileConnector = bluetoothProfileConnector;
        IBluetoothStateChangeCallback.Stub stub = new IBluetoothStateChangeCallback.Stub() { // from class: android.bluetooth.BluetoothHapClient.3
            @Override // android.bluetooth.IBluetoothStateChangeCallback
            public void onBluetoothStateChange(boolean up) {
                if (up) {
                    synchronized (BluetoothHapClient.this.mCallbackExecutorMap) {
                        if (BluetoothHapClient.this.mCallbackExecutorMap.isEmpty()) {
                            return;
                        }
                        try {
                            try {
                                IBluetoothHapClient service = BluetoothHapClient.this.getService();
                                if (service != null) {
                                    SynchronousResultReceiver<Integer> recv = SynchronousResultReceiver.get();
                                    service.registerCallback(BluetoothHapClient.this.mCallback, BluetoothHapClient.this.mAttributionSource, recv);
                                    recv.awaitResultNoInterrupt(BluetoothUtils.getSyncTimeout()).getValue(null);
                                }
                            } catch (TimeoutException e) {
                                Log.e(BluetoothHapClient.TAG, e.toString() + "\n" + Log.getStackTraceString(new Throwable()));
                            }
                        } catch (RemoteException e2) {
                            throw e2.rethrowFromSystemServer();
                        }
                    }
                }
            }
        };
        this.mBluetoothStateChangeCallback = stub;
        BluetoothAdapter defaultAdapter = BluetoothAdapter.getDefaultAdapter();
        this.mAdapter = defaultAdapter;
        this.mAttributionSource = defaultAdapter.getAttributionSource();
        bluetoothProfileConnector.connect(context, listener);
        IBluetoothManager mgr = defaultAdapter.getBluetoothManager();
        if (mgr != null) {
            try {
                mgr.registerStateChangeCallback(stub);
            } catch (RemoteException e) {
                throw e.rethrowFromSystemServer();
            }
        }
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
        IBluetoothManager mgr = this.mAdapter.getBluetoothManager();
        if (mgr != null) {
            try {
                mgr.unregisterStateChangeCallback(this.mBluetoothStateChangeCallback);
            } catch (RemoteException e) {
                Log.e(TAG, "", e);
            }
        }
        this.mProfileConnector.disconnect();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public IBluetoothHapClient getService() {
        return this.mProfileConnector.getService();
    }

    @SystemApi
    public void registerCallback(Executor executor, Callback callback) {
        Objects.requireNonNull(executor, "executor cannot be null");
        Objects.requireNonNull(callback, "callback cannot be null");
        synchronized (this.mCallbackExecutorMap) {
            if (this.mCallbackExecutorMap.isEmpty()) {
                if (!isEnabled()) {
                    this.mCallbackExecutorMap.put(callback, executor);
                    return;
                }
                try {
                    IBluetoothHapClient service = getService();
                    if (service != null) {
                        SynchronousResultReceiver<Integer> recv = SynchronousResultReceiver.get();
                        service.registerCallback(this.mCallback, this.mAttributionSource, recv);
                        recv.awaitResultNoInterrupt(BluetoothUtils.getSyncTimeout()).getValue(null);
                    }
                } catch (RemoteException e) {
                    throw e.rethrowFromSystemServer();
                } catch (TimeoutException e2) {
                    Log.e(TAG, e2.toString() + "\n" + Log.getStackTraceString(new Throwable()));
                }
            }
            if (this.mCallbackExecutorMap.containsKey(callback)) {
                throw new IllegalArgumentException("This callback has already been registered");
            }
            this.mCallbackExecutorMap.put(callback, executor);
        }
    }

    @SystemApi
    public void unregisterCallback(Callback callback) {
        Objects.requireNonNull(callback, "callback cannot be null");
        synchronized (this.mCallbackExecutorMap) {
            if (this.mCallbackExecutorMap.remove(callback) == null) {
                throw new IllegalArgumentException("This callback has not been registered");
            }
        }
        if (this.mCallbackExecutorMap.isEmpty()) {
            try {
                IBluetoothHapClient service = getService();
                if (service != null) {
                    SynchronousResultReceiver<Integer> recv = SynchronousResultReceiver.get();
                    service.unregisterCallback(this.mCallback, this.mAttributionSource, recv);
                    recv.awaitResultNoInterrupt(BluetoothUtils.getSyncTimeout()).getValue(null);
                }
            } catch (RemoteException e) {
                throw e.rethrowFromSystemServer();
            } catch (TimeoutException e2) {
                Log.e(TAG, e2.toString() + "\n" + Log.getStackTraceString(new Throwable()));
            }
        }
    }

    @SystemApi
    public boolean setConnectionPolicy(BluetoothDevice device, int connectionPolicy) {
        Objects.requireNonNull(device, "BluetoothDevice cannot be null");
        IBluetoothHapClient service = getService();
        if (service == null) {
            Log.w(TAG, "Proxy not attached to service");
        } else if (this.mAdapter.isEnabled() && isValidDevice(device) && (connectionPolicy == 0 || connectionPolicy == 100)) {
            try {
                SynchronousResultReceiver<Boolean> recv = SynchronousResultReceiver.get();
                service.setConnectionPolicy(device, connectionPolicy, this.mAttributionSource, recv);
                return recv.awaitResultNoInterrupt(BluetoothUtils.getSyncTimeout()).getValue(false).booleanValue();
            } catch (RemoteException e) {
                throw e.rethrowFromSystemServer();
            } catch (TimeoutException e2) {
                Log.e(TAG, e2.toString() + "\n" + Log.getStackTraceString(new Throwable()));
            }
        }
        return false;
    }

    @SystemApi
    public int getConnectionPolicy(BluetoothDevice device) {
        IBluetoothHapClient service = getService();
        if (service == null) {
            Log.w(TAG, "Proxy not attached to service");
        } else if (this.mAdapter.isEnabled() && isValidDevice(device)) {
            try {
                SynchronousResultReceiver<Integer> recv = SynchronousResultReceiver.get();
                service.getConnectionPolicy(device, this.mAttributionSource, recv);
                return recv.awaitResultNoInterrupt(BluetoothUtils.getSyncTimeout()).getValue(0).intValue();
            } catch (RemoteException e) {
                throw e.rethrowFromSystemServer();
            } catch (TimeoutException e2) {
                Log.e(TAG, e2.toString() + "\n" + Log.getStackTraceString(new Throwable()));
            }
        }
        return 0;
    }

    @Override // android.bluetooth.BluetoothProfile
    @SystemApi
    public List<BluetoothDevice> getConnectedDevices() {
        IBluetoothHapClient service = getService();
        List arrayList = new ArrayList();
        if (service == null) {
            Log.w(TAG, "Proxy not attached to service");
        } else if (isEnabled()) {
            try {
                SynchronousResultReceiver<List> recv = SynchronousResultReceiver.get();
                service.getConnectedDevices(this.mAttributionSource, recv);
                return Attributable.setAttributionSource(recv.awaitResultNoInterrupt(BluetoothUtils.getSyncTimeout()).getValue(arrayList), this.mAttributionSource);
            } catch (RemoteException e) {
                throw e.rethrowFromSystemServer();
            } catch (TimeoutException e2) {
                Log.e(TAG, e2.toString() + "\n" + Log.getStackTraceString(new Throwable()));
            }
        }
        return arrayList;
    }

    @Override // android.bluetooth.BluetoothProfile
    @SystemApi
    public List<BluetoothDevice> getDevicesMatchingConnectionStates(int[] states) {
        IBluetoothHapClient service = getService();
        List arrayList = new ArrayList();
        if (service == null) {
            Log.w(TAG, "Proxy not attached to service");
        } else if (isEnabled()) {
            try {
                SynchronousResultReceiver<List> recv = SynchronousResultReceiver.get();
                service.getDevicesMatchingConnectionStates(states, this.mAttributionSource, recv);
                return Attributable.setAttributionSource(recv.awaitResultNoInterrupt(BluetoothUtils.getSyncTimeout()).getValue(arrayList), this.mAttributionSource);
            } catch (RemoteException e) {
                throw e.rethrowFromSystemServer();
            } catch (TimeoutException e2) {
                Log.e(TAG, e2.toString() + "\n" + Log.getStackTraceString(new Throwable()));
            }
        }
        return arrayList;
    }

    @Override // android.bluetooth.BluetoothProfile
    @SystemApi
    public int getConnectionState(BluetoothDevice device) {
        IBluetoothHapClient service = getService();
        if (service == null) {
            Log.w(TAG, "Proxy not attached to service");
        } else if (isEnabled() && isValidDevice(device)) {
            try {
                SynchronousResultReceiver<Integer> recv = SynchronousResultReceiver.get();
                service.getConnectionState(device, this.mAttributionSource, recv);
                return recv.awaitResultNoInterrupt(BluetoothUtils.getSyncTimeout()).getValue(0).intValue();
            } catch (RemoteException e) {
                throw e.rethrowFromSystemServer();
            } catch (TimeoutException e2) {
                Log.e(TAG, e2.toString() + "\n" + Log.getStackTraceString(new Throwable()));
            }
        }
        return 0;
    }

    public int getHapGroup(BluetoothDevice device) {
        IBluetoothHapClient service = getService();
        if (service == null) {
            Log.w(TAG, "Proxy not attached to service");
        } else if (isEnabled() && isValidDevice(device)) {
            try {
                SynchronousResultReceiver<Integer> recv = SynchronousResultReceiver.get();
                service.getHapGroup(device, this.mAttributionSource, recv);
                return recv.awaitResultNoInterrupt(BluetoothUtils.getSyncTimeout()).getValue(-1).intValue();
            } catch (RemoteException e) {
                throw e.rethrowFromSystemServer();
            } catch (TimeoutException e2) {
                Log.e(TAG, e2.toString() + "\n" + Log.getStackTraceString(new Throwable()));
            }
        }
        return -1;
    }

    public int getActivePresetIndex(BluetoothDevice device) {
        IBluetoothHapClient service = getService();
        if (service == null) {
            Log.w(TAG, "Proxy not attached to service");
        } else if (isEnabled() && isValidDevice(device)) {
            try {
                SynchronousResultReceiver<Integer> recv = SynchronousResultReceiver.get();
                service.getActivePresetIndex(device, this.mAttributionSource, recv);
                return recv.awaitResultNoInterrupt(BluetoothUtils.getSyncTimeout()).getValue(0).intValue();
            } catch (RemoteException e) {
                throw e.rethrowFromSystemServer();
            } catch (TimeoutException e2) {
                Log.e(TAG, e2.toString() + "\n" + Log.getStackTraceString(new Throwable()));
            }
        }
        return 0;
    }

    @SystemApi
    public BluetoothHapPresetInfo getActivePresetInfo(BluetoothDevice device) {
        IBluetoothHapClient service = getService();
        if (service == null) {
            Log.w(TAG, "Proxy not attached to service");
        } else if (isEnabled() && isValidDevice(device)) {
            try {
                SynchronousResultReceiver<BluetoothHapPresetInfo> recv = SynchronousResultReceiver.get();
                service.getActivePresetInfo(device, this.mAttributionSource, recv);
                recv.awaitResultNoInterrupt(BluetoothUtils.getSyncTimeout()).getValue(null);
            } catch (RemoteException e) {
                throw e.rethrowFromSystemServer();
            } catch (TimeoutException e2) {
                Log.e(TAG, e2.toString() + "\n" + Log.getStackTraceString(new Throwable()));
            }
        }
        return null;
    }

    @SystemApi
    public void selectPreset(BluetoothDevice device, int presetIndex) {
        IBluetoothHapClient service = getService();
        if (service == null) {
            Log.w(TAG, "Proxy not attached to service");
        } else if (isEnabled() && isValidDevice(device)) {
            try {
                service.selectPreset(device, presetIndex, this.mAttributionSource);
            } catch (RemoteException e) {
                throw e.rethrowFromSystemServer();
            }
        }
    }

    @SystemApi
    public void selectPresetForGroup(int groupId, int presetIndex) {
        IBluetoothHapClient service = getService();
        if (service == null) {
            Log.w(TAG, "Proxy not attached to service");
        } else if (isEnabled()) {
            try {
                service.selectPresetForGroup(groupId, presetIndex, this.mAttributionSource);
            } catch (RemoteException e) {
                throw e.rethrowFromSystemServer();
            }
        }
    }

    public void switchToNextPreset(BluetoothDevice device) {
        IBluetoothHapClient service = getService();
        if (service == null) {
            Log.w(TAG, "Proxy not attached to service");
        } else if (isEnabled() && isValidDevice(device)) {
            try {
                service.switchToNextPreset(device, this.mAttributionSource);
            } catch (RemoteException e) {
                throw e.rethrowFromSystemServer();
            }
        }
    }

    public void switchToNextPresetForGroup(int groupId) {
        IBluetoothHapClient service = getService();
        if (service == null) {
            Log.w(TAG, "Proxy not attached to service");
        } else if (isEnabled()) {
            try {
                service.switchToNextPresetForGroup(groupId, this.mAttributionSource);
            } catch (RemoteException e) {
                throw e.rethrowFromSystemServer();
            }
        }
    }

    public void switchToPreviousPreset(BluetoothDevice device) {
        IBluetoothHapClient service = getService();
        if (service == null) {
            Log.w(TAG, "Proxy not attached to service");
        } else if (isEnabled() && isValidDevice(device)) {
            try {
                service.switchToPreviousPreset(device, this.mAttributionSource);
            } catch (RemoteException e) {
                throw e.rethrowFromSystemServer();
            }
        }
    }

    public void switchToPreviousPresetForGroup(int groupId) {
        IBluetoothHapClient service = getService();
        if (service == null) {
            Log.w(TAG, "Proxy not attached to service");
        } else if (isEnabled()) {
            try {
                service.switchToPreviousPresetForGroup(groupId, this.mAttributionSource);
            } catch (RemoteException e) {
                throw e.rethrowFromSystemServer();
            }
        }
    }

    public BluetoothHapPresetInfo getPresetInfo(BluetoothDevice device, int presetIndex) {
        IBluetoothHapClient service = getService();
        if (service == null) {
            Log.w(TAG, "Proxy not attached to service");
        } else if (isEnabled() && isValidDevice(device)) {
            try {
                SynchronousResultReceiver<BluetoothHapPresetInfo> recv = SynchronousResultReceiver.get();
                service.getPresetInfo(device, presetIndex, this.mAttributionSource, recv);
                return recv.awaitResultNoInterrupt(BluetoothUtils.getSyncTimeout()).getValue(null);
            } catch (RemoteException e) {
                throw e.rethrowFromSystemServer();
            } catch (TimeoutException e2) {
                Log.e(TAG, e2.toString() + "\n" + Log.getStackTraceString(new Throwable()));
            }
        }
        return null;
    }

    @SystemApi
    public List<BluetoothHapPresetInfo> getAllPresetInfo(BluetoothDevice device) {
        IBluetoothHapClient service = getService();
        List<BluetoothHapPresetInfo> arrayList = new ArrayList<>();
        if (service == null) {
            Log.w(TAG, "Proxy not attached to service");
        } else if (isEnabled() && isValidDevice(device)) {
            try {
                SynchronousResultReceiver<List<BluetoothHapPresetInfo>> recv = SynchronousResultReceiver.get();
                service.getAllPresetInfo(device, this.mAttributionSource, recv);
                return recv.awaitResultNoInterrupt(BluetoothUtils.getSyncTimeout()).getValue(arrayList);
            } catch (RemoteException e) {
                throw e.rethrowFromSystemServer();
            } catch (TimeoutException e2) {
                Log.e(TAG, e2.toString() + "\n" + Log.getStackTraceString(new Throwable()));
            }
        }
        return arrayList;
    }

    public int getFeatures(BluetoothDevice device) {
        IBluetoothHapClient service = getService();
        if (service == null) {
            Log.w(TAG, "Proxy not attached to service");
        } else if (isEnabled() && isValidDevice(device)) {
            try {
                SynchronousResultReceiver<Integer> recv = SynchronousResultReceiver.get();
                service.getFeatures(device, this.mAttributionSource, recv);
                return recv.awaitResultNoInterrupt(BluetoothUtils.getSyncTimeout()).getValue(0).intValue();
            } catch (RemoteException e) {
                throw e.rethrowFromSystemServer();
            } catch (TimeoutException e2) {
                Log.e(TAG, e2.toString() + "\n" + Log.getStackTraceString(new Throwable()));
            }
        }
        return 0;
    }

    @SystemApi
    public void setPresetName(BluetoothDevice device, int presetIndex, String name) {
        IBluetoothHapClient service = getService();
        if (service == null) {
            Log.w(TAG, "Proxy not attached to service");
        } else if (isEnabled() && isValidDevice(device)) {
            try {
                service.setPresetName(device, presetIndex, name, this.mAttributionSource);
            } catch (RemoteException e) {
                throw e.rethrowFromSystemServer();
            }
        }
    }

    @SystemApi
    public void setPresetNameForGroup(int groupId, int presetIndex, String name) {
        IBluetoothHapClient service = getService();
        if (service == null) {
            Log.w(TAG, "Proxy not attached to service");
        } else if (isEnabled()) {
            try {
                service.setPresetNameForGroup(groupId, presetIndex, name, this.mAttributionSource);
            } catch (RemoteException e) {
                throw e.rethrowFromSystemServer();
            }
        }
    }

    private boolean isEnabled() {
        return this.mAdapter.getState() == 12;
    }

    private boolean isValidDevice(BluetoothDevice device) {
        return device != null && BluetoothAdapter.checkBluetoothAddress(device.getAddress());
    }

    private static void log(String msg) {
        Log.d(TAG, msg);
    }
}

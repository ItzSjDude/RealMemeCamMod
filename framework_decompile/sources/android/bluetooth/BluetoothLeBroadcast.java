package android.bluetooth;

import android.annotation.SystemApi;
import android.bluetooth.BluetoothProfile;
import android.bluetooth.IBluetoothLeAudio;
import android.bluetooth.IBluetoothLeBroadcastCallback;
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
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeoutException;

@SystemApi
/* loaded from: classes.dex */
public final class BluetoothLeBroadcast implements AutoCloseable, BluetoothProfile {
    private static final boolean DBG = true;
    private static final String TAG = "BluetoothLeBroadcast";
    private static final boolean VDBG = false;
    private final BluetoothAdapter mAdapter;
    private final AttributionSource mAttributionSource;
    private final IBluetoothStateChangeCallback mBluetoothStateChangeCallback;
    private final IBluetoothLeBroadcastCallback mCallback;
    private final Map<Callback, Executor> mCallbackExecutorMap;
    private CloseGuard mCloseGuard;
    private final BluetoothProfileConnector<IBluetoothLeAudio> mProfileConnector;

    @SystemApi
    public interface Callback {

        @Retention(RetentionPolicy.SOURCE)
        public @interface Reason {
        }

        @SystemApi
        void onBroadcastMetadataChanged(int i, BluetoothLeBroadcastMetadata bluetoothLeBroadcastMetadata);

        @SystemApi
        void onBroadcastStartFailed(int i);

        @SystemApi
        void onBroadcastStarted(int i, int i2);

        @SystemApi
        void onBroadcastStopFailed(int i);

        @SystemApi
        void onBroadcastStopped(int i, int i2);

        @SystemApi
        void onBroadcastUpdateFailed(int i, int i2);

        @SystemApi
        void onBroadcastUpdated(int i, int i2);

        @SystemApi
        void onPlaybackStarted(int i, int i2);

        @SystemApi
        void onPlaybackStopped(int i, int i2);
    }

    /* renamed from: android.bluetooth.BluetoothLeBroadcast$2, reason: invalid class name */
    class AnonymousClass2 extends IBluetoothLeBroadcastCallback.Stub {
        AnonymousClass2() {
        }

        @Override // android.bluetooth.IBluetoothLeBroadcastCallback
        public void onBroadcastStarted(final int reason, final int broadcastId) {
            for (Map.Entry<Callback, Executor> callbackExecutorEntry : BluetoothLeBroadcast.this.mCallbackExecutorMap.entrySet()) {
                final Callback callback = callbackExecutorEntry.getKey();
                Executor executor = callbackExecutorEntry.getValue();
                executor.execute(new Runnable() { // from class: android.bluetooth.BluetoothLeBroadcast$2$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        callback.onBroadcastStarted(reason, broadcastId);
                    }
                });
            }
        }

        @Override // android.bluetooth.IBluetoothLeBroadcastCallback
        public void onBroadcastStartFailed(final int reason) {
            for (Map.Entry<Callback, Executor> callbackExecutorEntry : BluetoothLeBroadcast.this.mCallbackExecutorMap.entrySet()) {
                final Callback callback = callbackExecutorEntry.getKey();
                Executor executor = callbackExecutorEntry.getValue();
                executor.execute(new Runnable() { // from class: android.bluetooth.BluetoothLeBroadcast$2$$ExternalSyntheticLambda4
                    @Override // java.lang.Runnable
                    public final void run() {
                        callback.onBroadcastStartFailed(reason);
                    }
                });
            }
        }

        @Override // android.bluetooth.IBluetoothLeBroadcastCallback
        public void onBroadcastStopped(final int reason, final int broadcastId) {
            for (Map.Entry<Callback, Executor> callbackExecutorEntry : BluetoothLeBroadcast.this.mCallbackExecutorMap.entrySet()) {
                final Callback callback = callbackExecutorEntry.getKey();
                Executor executor = callbackExecutorEntry.getValue();
                executor.execute(new Runnable() { // from class: android.bluetooth.BluetoothLeBroadcast$2$$ExternalSyntheticLambda7
                    @Override // java.lang.Runnable
                    public final void run() {
                        callback.onBroadcastStopped(reason, broadcastId);
                    }
                });
            }
        }

        @Override // android.bluetooth.IBluetoothLeBroadcastCallback
        public void onBroadcastStopFailed(final int reason) {
            for (Map.Entry<Callback, Executor> callbackExecutorEntry : BluetoothLeBroadcast.this.mCallbackExecutorMap.entrySet()) {
                final Callback callback = callbackExecutorEntry.getKey();
                Executor executor = callbackExecutorEntry.getValue();
                executor.execute(new Runnable() { // from class: android.bluetooth.BluetoothLeBroadcast$2$$ExternalSyntheticLambda3
                    @Override // java.lang.Runnable
                    public final void run() {
                        callback.onBroadcastStopFailed(reason);
                    }
                });
            }
        }

        @Override // android.bluetooth.IBluetoothLeBroadcastCallback
        public void onPlaybackStarted(final int reason, final int broadcastId) {
            for (Map.Entry<Callback, Executor> callbackExecutorEntry : BluetoothLeBroadcast.this.mCallbackExecutorMap.entrySet()) {
                final Callback callback = callbackExecutorEntry.getKey();
                Executor executor = callbackExecutorEntry.getValue();
                executor.execute(new Runnable() { // from class: android.bluetooth.BluetoothLeBroadcast$2$$ExternalSyntheticLambda6
                    @Override // java.lang.Runnable
                    public final void run() {
                        callback.onPlaybackStarted(reason, broadcastId);
                    }
                });
            }
        }

        @Override // android.bluetooth.IBluetoothLeBroadcastCallback
        public void onPlaybackStopped(final int reason, final int broadcastId) {
            for (Map.Entry<Callback, Executor> callbackExecutorEntry : BluetoothLeBroadcast.this.mCallbackExecutorMap.entrySet()) {
                final Callback callback = callbackExecutorEntry.getKey();
                Executor executor = callbackExecutorEntry.getValue();
                executor.execute(new Runnable() { // from class: android.bluetooth.BluetoothLeBroadcast$2$$ExternalSyntheticLambda2
                    @Override // java.lang.Runnable
                    public final void run() {
                        callback.onPlaybackStopped(reason, broadcastId);
                    }
                });
            }
        }

        @Override // android.bluetooth.IBluetoothLeBroadcastCallback
        public void onBroadcastUpdated(final int reason, final int broadcastId) {
            for (Map.Entry<Callback, Executor> callbackExecutorEntry : BluetoothLeBroadcast.this.mCallbackExecutorMap.entrySet()) {
                final Callback callback = callbackExecutorEntry.getKey();
                Executor executor = callbackExecutorEntry.getValue();
                executor.execute(new Runnable() { // from class: android.bluetooth.BluetoothLeBroadcast$2$$ExternalSyntheticLambda1
                    @Override // java.lang.Runnable
                    public final void run() {
                        callback.onBroadcastUpdated(reason, broadcastId);
                    }
                });
            }
        }

        @Override // android.bluetooth.IBluetoothLeBroadcastCallback
        public void onBroadcastUpdateFailed(final int reason, final int broadcastId) {
            for (Map.Entry<Callback, Executor> callbackExecutorEntry : BluetoothLeBroadcast.this.mCallbackExecutorMap.entrySet()) {
                final Callback callback = callbackExecutorEntry.getKey();
                Executor executor = callbackExecutorEntry.getValue();
                executor.execute(new Runnable() { // from class: android.bluetooth.BluetoothLeBroadcast$2$$ExternalSyntheticLambda5
                    @Override // java.lang.Runnable
                    public final void run() {
                        callback.onBroadcastUpdateFailed(reason, broadcastId);
                    }
                });
            }
        }

        @Override // android.bluetooth.IBluetoothLeBroadcastCallback
        public void onBroadcastMetadataChanged(final int broadcastId, final BluetoothLeBroadcastMetadata metadata) {
            for (Map.Entry<Callback, Executor> callbackExecutorEntry : BluetoothLeBroadcast.this.mCallbackExecutorMap.entrySet()) {
                final Callback callback = callbackExecutorEntry.getKey();
                Executor executor = callbackExecutorEntry.getValue();
                executor.execute(new Runnable() { // from class: android.bluetooth.BluetoothLeBroadcast$2$$ExternalSyntheticLambda8
                    @Override // java.lang.Runnable
                    public final void run() {
                        callback.onBroadcastMetadataChanged(broadcastId, metadata);
                    }
                });
            }
        }
    }

    BluetoothLeBroadcast(Context context, BluetoothProfile.ServiceListener listener) {
        BluetoothProfileConnector<IBluetoothLeAudio> bluetoothProfileConnector = new BluetoothProfileConnector(this, 26, "BluetoothLeAudioBroadcast", IBluetoothLeAudio.class.getName()) { // from class: android.bluetooth.BluetoothLeBroadcast.1
            @Override // android.bluetooth.BluetoothProfileConnector
            public IBluetoothLeAudio getServiceInterface(IBinder service) {
                return IBluetoothLeAudio.Stub.asInterface(service);
            }
        };
        this.mProfileConnector = bluetoothProfileConnector;
        this.mCallbackExecutorMap = new HashMap();
        this.mCallback = new AnonymousClass2();
        IBluetoothStateChangeCallback.Stub stub = new IBluetoothStateChangeCallback.Stub() { // from class: android.bluetooth.BluetoothLeBroadcast.3
            @Override // android.bluetooth.IBluetoothStateChangeCallback
            public void onBluetoothStateChange(boolean up) {
                Log.d(BluetoothLeBroadcast.TAG, "onBluetoothStateChange: up=" + up);
                if (up) {
                    synchronized (BluetoothLeBroadcast.this.mCallbackExecutorMap) {
                        if (!BluetoothLeBroadcast.this.mCallbackExecutorMap.isEmpty()) {
                            try {
                                try {
                                    IBluetoothLeAudio service = BluetoothLeBroadcast.this.getService();
                                    if (service != null) {
                                        SynchronousResultReceiver<Integer> recv = SynchronousResultReceiver.get();
                                        service.registerLeBroadcastCallback(BluetoothLeBroadcast.this.mCallback, BluetoothLeBroadcast.this.mAttributionSource, recv);
                                        recv.awaitResultNoInterrupt(BluetoothUtils.getSyncTimeout()).getValue(null);
                                    }
                                } catch (TimeoutException e) {
                                    Log.e(BluetoothLeBroadcast.TAG, "onBluetoothServiceUp: Failed to register Le Broadcaster callback", e);
                                }
                            } catch (RemoteException e2) {
                                throw e2.rethrowFromSystemServer();
                            }
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

    @Override // android.bluetooth.BluetoothProfile
    public int getConnectionState(BluetoothDevice device) {
        throw new UnsupportedOperationException("LE Audio Broadcasts are not connection-oriented.");
    }

    @Override // android.bluetooth.BluetoothProfile
    public List<BluetoothDevice> getDevicesMatchingConnectionStates(int[] states) {
        throw new UnsupportedOperationException("LE Audio Broadcasts are not connection-oriented.");
    }

    @Override // android.bluetooth.BluetoothProfile
    public List<BluetoothDevice> getConnectedDevices() {
        throw new UnsupportedOperationException("LE Audio Broadcasts are not connection-oriented.");
    }

    @SystemApi
    public void registerCallback(Executor executor, Callback callback) {
        Objects.requireNonNull(executor, "executor cannot be null");
        Objects.requireNonNull(callback, "callback cannot be null");
        log("registerCallback");
        synchronized (this.mCallbackExecutorMap) {
            if (this.mCallbackExecutorMap.isEmpty()) {
                if (!this.mAdapter.isEnabled()) {
                    this.mCallbackExecutorMap.put(callback, executor);
                    return;
                }
                try {
                    try {
                        IBluetoothLeAudio service = getService();
                        if (service != null) {
                            SynchronousResultReceiver<Integer> recv = SynchronousResultReceiver.get();
                            service.registerLeBroadcastCallback(this.mCallback, this.mAttributionSource, recv);
                            recv.awaitResultNoInterrupt(BluetoothUtils.getSyncTimeout()).getValue(null);
                        }
                    } catch (RemoteException e) {
                        throw e.rethrowFromSystemServer();
                    }
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
        log("unregisterCallback");
        synchronized (this.mCallbackExecutorMap) {
            if (this.mCallbackExecutorMap.remove(callback) == null) {
                throw new IllegalArgumentException("This callback has not been registered");
            }
        }
        if (this.mCallbackExecutorMap.isEmpty()) {
            try {
                IBluetoothLeAudio service = getService();
                if (service != null) {
                    SynchronousResultReceiver<Integer> recv = SynchronousResultReceiver.get();
                    service.unregisterLeBroadcastCallback(this.mCallback, this.mAttributionSource, recv);
                    recv.awaitResultNoInterrupt(BluetoothUtils.getSyncTimeout()).getValue(null);
                }
            } catch (RemoteException e) {
                throw e.rethrowFromSystemServer();
            } catch (IllegalStateException | TimeoutException e2) {
                Log.e(TAG, e2.toString() + "\n" + Log.getStackTraceString(new Throwable()));
            }
        }
    }

    @SystemApi
    public void startBroadcast(BluetoothLeAudioContentMetadata contentMetadata, byte[] broadcastCode) {
        Objects.requireNonNull(contentMetadata, "contentMetadata cannot be null");
        log("startBroadcasting");
        IBluetoothLeAudio service = getService();
        if (service == null) {
            Log.w(TAG, "Proxy not attached to service");
            log(Log.getStackTraceString(new Throwable()));
        } else if (isEnabled()) {
            try {
                service.startBroadcast(contentMetadata, broadcastCode, this.mAttributionSource);
            } catch (RemoteException e) {
                throw e.rethrowFromSystemServer();
            }
        }
    }

    @SystemApi
    public void updateBroadcast(int broadcastId, BluetoothLeAudioContentMetadata contentMetadata) {
        Objects.requireNonNull(contentMetadata, "contentMetadata cannot be null");
        log("updateBroadcast");
        IBluetoothLeAudio service = getService();
        if (service == null) {
            Log.w(TAG, "Proxy not attached to service");
            log(Log.getStackTraceString(new Throwable()));
        } else if (isEnabled()) {
            try {
                service.updateBroadcast(broadcastId, contentMetadata, this.mAttributionSource);
            } catch (RemoteException e) {
                throw e.rethrowFromSystemServer();
            }
        }
    }

    @SystemApi
    public void stopBroadcast(int broadcastId) {
        log("disableBroadcastMode");
        IBluetoothLeAudio service = getService();
        if (service == null) {
            Log.w(TAG, "Proxy not attached to service");
            log(Log.getStackTraceString(new Throwable()));
        } else if (isEnabled()) {
            try {
                service.stopBroadcast(broadcastId, this.mAttributionSource);
            } catch (RemoteException e) {
                throw e.rethrowFromSystemServer();
            }
        }
    }

    @SystemApi
    public boolean isPlaying(int broadcastId) {
        IBluetoothLeAudio service = getService();
        if (service == null) {
            Log.w(TAG, "Proxy not attached to service");
            log(Log.getStackTraceString(new Throwable()));
        } else if (isEnabled()) {
            try {
                SynchronousResultReceiver<Boolean> recv = SynchronousResultReceiver.get();
                service.isPlaying(broadcastId, this.mAttributionSource, recv);
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
    public List<BluetoothLeBroadcastMetadata> getAllBroadcastMetadata() {
        IBluetoothLeAudio service = getService();
        List<BluetoothLeBroadcastMetadata> defaultValue = Collections.emptyList();
        if (service == null) {
            Log.w(TAG, "Proxy not attached to service");
            log(Log.getStackTraceString(new Throwable()));
        } else if (isEnabled()) {
            try {
                SynchronousResultReceiver<List<BluetoothLeBroadcastMetadata>> recv = SynchronousResultReceiver.get();
                service.getAllBroadcastMetadata(this.mAttributionSource, recv);
                return recv.awaitResultNoInterrupt(BluetoothUtils.getSyncTimeout()).getValue(defaultValue);
            } catch (RemoteException e) {
                throw e.rethrowFromSystemServer();
            } catch (TimeoutException e2) {
                Log.e(TAG, e2.toString() + "\n" + Log.getStackTraceString(new Throwable()));
            }
        }
        return defaultValue;
    }

    @SystemApi
    public int getMaximumNumberOfBroadcasts() {
        IBluetoothLeAudio service = getService();
        if (service == null) {
            Log.w(TAG, "Proxy not attached to service");
            log(Log.getStackTraceString(new Throwable()));
        } else if (isEnabled()) {
            try {
                SynchronousResultReceiver<Integer> recv = SynchronousResultReceiver.get();
                service.getMaximumNumberOfBroadcasts(this.mAttributionSource, recv);
                return recv.awaitResultNoInterrupt(BluetoothUtils.getSyncTimeout()).getValue(1).intValue();
            } catch (RemoteException e) {
                throw e.rethrowFromSystemServer();
            } catch (TimeoutException e2) {
                Log.e(TAG, e2.toString() + "\n" + Log.getStackTraceString(new Throwable()));
            }
        }
        return 1;
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

    private boolean isEnabled() {
        return this.mAdapter.getState() == 12;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public IBluetoothLeAudio getService() {
        return this.mProfileConnector.getService();
    }

    private static void log(String msg) {
        Log.d(TAG, msg);
    }
}

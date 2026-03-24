package android.bluetooth;

import android.annotation.SystemApi;
import android.bluetooth.BluetoothProfile;
import android.bluetooth.IBluetoothLeAudio;
import android.bluetooth.IBluetoothLeAudioCallback;
import android.bluetooth.IBluetoothStateChangeCallback;
import android.content.AttributionSource;
import android.content.Context;
import android.inputmethodservice.navigationbar.NavigationBarInflaterView;
import android.os.IBinder;
import android.os.RemoteException;
import android.telephony.ims.ImsConferenceState;
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
import system.ext.loader.core.ExtLoader;

/* loaded from: classes.dex */
public final class BluetoothLeAudio implements BluetoothProfile, AutoCloseable {

    @SystemApi
    public static final String ACTION_LE_AUDIO_ACTIVE_DEVICE_CHANGED = "android.bluetooth.action.LE_AUDIO_ACTIVE_DEVICE_CHANGED";
    public static final String ACTION_LE_AUDIO_CONNECTION_STATE_CHANGED = "android.bluetooth.action.LE_AUDIO_CONNECTION_STATE_CHANGED";

    @SystemApi
    public static final int AUDIO_LOCATION_BACK_CENTER = 256;

    @SystemApi
    public static final int AUDIO_LOCATION_BACK_LEFT = 16;

    @SystemApi
    public static final int AUDIO_LOCATION_BACK_RIGHT = 32;

    @SystemApi
    public static final int AUDIO_LOCATION_BOTTOM_FRONT_CENTER = 2097152;

    @SystemApi
    public static final int AUDIO_LOCATION_BOTTOM_FRONT_LEFT = 4194304;

    @SystemApi
    public static final int AUDIO_LOCATION_BOTTOM_FRONT_RIGHT = 8388608;

    @SystemApi
    public static final int AUDIO_LOCATION_FRONT_CENTER = 4;

    @SystemApi
    public static final int AUDIO_LOCATION_FRONT_LEFT = 1;

    @SystemApi
    public static final int AUDIO_LOCATION_FRONT_LEFT_OF_CENTER = 64;

    @SystemApi
    public static final int AUDIO_LOCATION_FRONT_LEFT_WIDE = 16777216;

    @SystemApi
    public static final int AUDIO_LOCATION_FRONT_RIGHT = 2;

    @SystemApi
    public static final int AUDIO_LOCATION_FRONT_RIGHT_OF_CENTER = 128;

    @SystemApi
    public static final int AUDIO_LOCATION_FRONT_RIGHT_WIDE = 33554432;

    @SystemApi
    public static final int AUDIO_LOCATION_INVALID = 0;

    @SystemApi
    public static final int AUDIO_LOCATION_LEFT_SURROUND = 67108864;

    @SystemApi
    public static final int AUDIO_LOCATION_LOW_FREQ_EFFECTS_ONE = 8;

    @SystemApi
    public static final int AUDIO_LOCATION_LOW_FREQ_EFFECTS_TWO = 512;

    @SystemApi
    public static final int AUDIO_LOCATION_RIGHT_SURROUND = 134217728;

    @SystemApi
    public static final int AUDIO_LOCATION_SIDE_LEFT = 1024;

    @SystemApi
    public static final int AUDIO_LOCATION_SIDE_RIGHT = 2048;

    @SystemApi
    public static final int AUDIO_LOCATION_TOP_BACK_CENTER = 1048576;

    @SystemApi
    public static final int AUDIO_LOCATION_TOP_BACK_LEFT = 65536;

    @SystemApi
    public static final int AUDIO_LOCATION_TOP_BACK_RIGHT = 131072;

    @SystemApi
    public static final int AUDIO_LOCATION_TOP_CENTER = 32768;

    @SystemApi
    public static final int AUDIO_LOCATION_TOP_FRONT_CENTER = 16384;

    @SystemApi
    public static final int AUDIO_LOCATION_TOP_FRONT_LEFT = 4096;

    @SystemApi
    public static final int AUDIO_LOCATION_TOP_FRONT_RIGHT = 8192;

    @SystemApi
    public static final int AUDIO_LOCATION_TOP_SIDE_LEFT = 262144;

    @SystemApi
    public static final int AUDIO_LOCATION_TOP_SIDE_RIGHT = 524288;
    public static final int CONTEXT_TYPE_ATTENTION_SEEKING = 16;
    public static final int CONTEXT_TYPE_COMMUNICATION = 2;
    public static final int CONTEXT_TYPE_EMERGENCY_ALERT = 128;
    public static final int CONTEXT_TYPE_GAME = 2048;
    public static final int CONTEXT_TYPE_IMMEDIATE_ALERT = 32;
    public static final int CONTEXT_TYPE_INSTRUCTIONAL = 8;
    public static final int CONTEXT_TYPE_LIVE = 1024;
    public static final int CONTEXT_TYPE_MAN_MACHINE = 64;
    public static final int CONTEXT_TYPE_MEDIA = 4;
    public static final int CONTEXT_TYPE_RINGTONE = 256;
    public static final int CONTEXT_TYPE_TV = 512;
    public static final int CONTEXT_TYPE_UNSPECIFIED = 1;
    private static final boolean DBG = true;
    public static final String EXTRA_LE_AUDIO_AVAILABLE_CONTEXTS = "android.bluetooth.extra.LE_AUDIO_AVAILABLE_CONTEXTS";
    public static final String EXTRA_LE_AUDIO_DIRECTION = "android.bluetooth.extra.LE_AUDIO_DIRECTION";

    @SystemApi
    public static final String EXTRA_LE_AUDIO_GROUP_ID = "android.bluetooth.extra.LE_AUDIO_GROUP_ID";
    public static final String EXTRA_LE_AUDIO_SINK_LOCATION = "android.bluetooth.extra.LE_AUDIO_SINK_LOCATION";
    public static final String EXTRA_LE_AUDIO_SOURCE_LOCATION = "android.bluetooth.extra.LE_AUDIO_SOURCE_LOCATION";
    public static final int GROUP_ID_INVALID = -1;
    public static final int GROUP_STATUS_ACTIVE = 1;
    public static final int GROUP_STATUS_INACTIVE = 0;
    private static final String TAG = "BluetoothLeAudio";
    private static final boolean VDBG = true;
    private final BluetoothAdapter mAdapter;
    private final AttributionSource mAttributionSource;
    private final IBluetoothStateChangeCallback mBluetoothStateChangeCallback;
    private CloseGuard mCloseGuard;
    private final BluetoothProfileConnector<IBluetoothLeAudio> mProfileConnector;
    private final Map<Callback, Executor> mCallbackExecutorMap = new HashMap();
    private final IBluetoothLeAudioCallback mCallback = new AnonymousClass1();

    @Retention(RetentionPolicy.SOURCE)
    public @interface AudioLocation {
    }

    @SystemApi
    public interface Callback {

        @Retention(RetentionPolicy.SOURCE)
        public @interface GroupStatus {
        }

        @SystemApi
        void onCodecConfigChanged(int i, BluetoothLeAudioCodecStatus bluetoothLeAudioCodecStatus);

        @SystemApi
        void onGroupNodeAdded(BluetoothDevice bluetoothDevice, int i);

        @SystemApi
        void onGroupNodeRemoved(BluetoothDevice bluetoothDevice, int i);

        @SystemApi
        void onGroupStatusChanged(int i, int i2);
    }

    /* renamed from: android.bluetooth.BluetoothLeAudio$1, reason: invalid class name */
    class AnonymousClass1 extends IBluetoothLeAudioCallback.Stub {
        AnonymousClass1() {
        }

        @Override // android.bluetooth.IBluetoothLeAudioCallback
        public void onCodecConfigChanged(final int groupId, final BluetoothLeAudioCodecStatus status) {
            for (Map.Entry<Callback, Executor> callbackExecutorEntry : BluetoothLeAudio.this.mCallbackExecutorMap.entrySet()) {
                final Callback callback = callbackExecutorEntry.getKey();
                Executor executor = callbackExecutorEntry.getValue();
                executor.execute(new Runnable() { // from class: android.bluetooth.BluetoothLeAudio$1$$ExternalSyntheticLambda1
                    @Override // java.lang.Runnable
                    public final void run() {
                        callback.onCodecConfigChanged(groupId, status);
                    }
                });
            }
        }

        @Override // android.bluetooth.IBluetoothLeAudioCallback
        public void onGroupNodeAdded(final BluetoothDevice device, final int groupId) {
            Attributable.setAttributionSource(device, BluetoothLeAudio.this.mAttributionSource);
            for (Map.Entry<Callback, Executor> callbackExecutorEntry : BluetoothLeAudio.this.mCallbackExecutorMap.entrySet()) {
                final Callback callback = callbackExecutorEntry.getKey();
                Executor executor = callbackExecutorEntry.getValue();
                executor.execute(new Runnable() { // from class: android.bluetooth.BluetoothLeAudio$1$$ExternalSyntheticLambda2
                    @Override // java.lang.Runnable
                    public final void run() {
                        callback.onGroupNodeAdded(device, groupId);
                    }
                });
            }
        }

        @Override // android.bluetooth.IBluetoothLeAudioCallback
        public void onGroupNodeRemoved(final BluetoothDevice device, final int groupId) {
            Attributable.setAttributionSource(device, BluetoothLeAudio.this.mAttributionSource);
            for (Map.Entry<Callback, Executor> callbackExecutorEntry : BluetoothLeAudio.this.mCallbackExecutorMap.entrySet()) {
                final Callback callback = callbackExecutorEntry.getKey();
                Executor executor = callbackExecutorEntry.getValue();
                executor.execute(new Runnable() { // from class: android.bluetooth.BluetoothLeAudio$1$$ExternalSyntheticLambda3
                    @Override // java.lang.Runnable
                    public final void run() {
                        callback.onGroupNodeRemoved(device, groupId);
                    }
                });
            }
        }

        @Override // android.bluetooth.IBluetoothLeAudioCallback
        public void onGroupStatusChanged(final int groupId, final int groupStatus) {
            for (Map.Entry<Callback, Executor> callbackExecutorEntry : BluetoothLeAudio.this.mCallbackExecutorMap.entrySet()) {
                final Callback callback = callbackExecutorEntry.getKey();
                Executor executor = callbackExecutorEntry.getValue();
                executor.execute(new Runnable() { // from class: android.bluetooth.BluetoothLeAudio$1$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        callback.onGroupStatusChanged(groupId, groupStatus);
                    }
                });
            }
        }
    }

    BluetoothLeAudio(Context context, BluetoothProfile.ServiceListener listener, BluetoothAdapter adapter) {
        BluetoothProfileConnector<IBluetoothLeAudio> bluetoothProfileConnector = new BluetoothProfileConnector(this, 22, TAG, IBluetoothLeAudio.class.getName()) { // from class: android.bluetooth.BluetoothLeAudio.2
            @Override // android.bluetooth.BluetoothProfileConnector
            public IBluetoothLeAudio getServiceInterface(IBinder service) {
                return IBluetoothLeAudio.Stub.asInterface(service);
            }
        };
        this.mProfileConnector = bluetoothProfileConnector;
        IBluetoothStateChangeCallback.Stub stub = new IBluetoothStateChangeCallback.Stub() { // from class: android.bluetooth.BluetoothLeAudio.3
            @Override // android.bluetooth.IBluetoothStateChangeCallback
            public void onBluetoothStateChange(boolean up) {
                Log.d(BluetoothLeAudio.TAG, "onBluetoothStateChange: up=" + up);
                if (up) {
                    synchronized (BluetoothLeAudio.this.mCallbackExecutorMap) {
                        if (!BluetoothLeAudio.this.mCallbackExecutorMap.isEmpty()) {
                            try {
                                try {
                                    IBluetoothLeAudio service = BluetoothLeAudio.this.getService();
                                    if (service != null) {
                                        SynchronousResultReceiver<Integer> recv = SynchronousResultReceiver.get();
                                        service.registerCallback(BluetoothLeAudio.this.mCallback, BluetoothLeAudio.this.mAttributionSource, recv);
                                        recv.awaitResultNoInterrupt(BluetoothUtils.getSyncTimeout()).getValue(null);
                                    }
                                } catch (TimeoutException e) {
                                    Log.e(BluetoothLeAudio.TAG, "Failed to register callback", e);
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
        this.mAdapter = adapter;
        this.mAttributionSource = adapter.getAttributionSource();
        bluetoothProfileConnector.connect(context, listener);
        IBluetoothManager mgr = adapter.getBluetoothManager();
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
    public IBluetoothLeAudio getService() {
        return this.mProfileConnector.getService();
    }

    protected void finalize() {
        CloseGuard closeGuard = this.mCloseGuard;
        if (closeGuard != null) {
            closeGuard.warnIfOpen();
        }
        close();
    }

    public boolean connect(BluetoothDevice device) {
        log("connect(" + device + NavigationBarInflaterView.KEY_CODE_END);
        IBluetoothLeAudio service = getService();
        if (service == null) {
            Log.w(TAG, "Proxy not attached to service");
            log(Log.getStackTraceString(new Throwable()));
        } else if (this.mAdapter.isEnabled() && isValidDevice(device)) {
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
        IBluetoothLeAudio service = getService();
        if (service == null) {
            Log.w(TAG, "Proxy not attached to service");
            log(Log.getStackTraceString(new Throwable()));
        } else if (this.mAdapter.isEnabled() && isValidDevice(device)) {
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

    public BluetoothDevice getConnectedGroupLeadDevice(int groupId) {
        log("getConnectedGroupLeadDevice()");
        IBluetoothLeAudio service = getService();
        if (service == null) {
            Log.w(TAG, "Proxy not attached to service");
            log(Log.getStackTraceString(new Throwable()));
        } else if (this.mAdapter.isEnabled()) {
            try {
                SynchronousResultReceiver<BluetoothDevice> recv = SynchronousResultReceiver.get();
                service.getConnectedGroupLeadDevice(groupId, this.mAttributionSource, recv);
                return (BluetoothDevice) Attributable.setAttributionSource(recv.awaitResultNoInterrupt(BluetoothUtils.getSyncTimeout()).getValue(null), this.mAttributionSource);
            } catch (RemoteException | TimeoutException e) {
                Log.e(TAG, e.toString() + "\n" + Log.getStackTraceString(new Throwable()));
            }
        }
        return null;
    }

    @Override // android.bluetooth.BluetoothProfile
    public List<BluetoothDevice> getConnectedDevices() {
        log("getConnectedDevices()");
        IBluetoothLeAudio service = getService();
        List<BluetoothDevice> arrayList = new ArrayList<>();
        if (service == null) {
            Log.w(TAG, "Proxy not attached to service");
            log(Log.getStackTraceString(new Throwable()));
        } else if (this.mAdapter.isEnabled()) {
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
        IBluetoothLeAudio service = getService();
        List<BluetoothDevice> arrayList = new ArrayList<>();
        if (service == null) {
            Log.w(TAG, "Proxy not attached to service");
            log(Log.getStackTraceString(new Throwable()));
        } else if (this.mAdapter.isEnabled()) {
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
        log("getState(" + device + NavigationBarInflaterView.KEY_CODE_END);
        IBluetoothLeAudio service = getService();
        if (service == null) {
            Log.w(TAG, "Proxy not attached to service");
            log(Log.getStackTraceString(new Throwable()));
        } else if (this.mAdapter.isEnabled() && isValidDevice(device)) {
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
                            service.registerCallback(this.mCallback, this.mAttributionSource, recv);
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

    public boolean setActiveDevice(BluetoothDevice device) {
        log("setActiveDevice(" + device + NavigationBarInflaterView.KEY_CODE_END);
        IBluetoothLeAudio service = getService();
        if (service == null) {
            Log.w(TAG, "Proxy not attached to service");
            log(Log.getStackTraceString(new Throwable()));
        } else if (this.mAdapter.isEnabled() && (device == null || isValidDevice(device))) {
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
        log("getActiveDevice()");
        IBluetoothLeAudio service = getService();
        List<BluetoothDevice> arrayList = new ArrayList<>();
        if (service == null) {
            Log.w(TAG, "Proxy not attached to service");
            log(Log.getStackTraceString(new Throwable()));
        } else if (this.mAdapter.isEnabled()) {
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

    public int getGroupId(BluetoothDevice device) {
        log("getGroupId()");
        IBluetoothLeAudio service = getService();
        if (service == null) {
            Log.w(TAG, "Proxy not attached to service");
            log(Log.getStackTraceString(new Throwable()));
        } else if (this.mAdapter.isEnabled()) {
            try {
                SynchronousResultReceiver<Integer> recv = SynchronousResultReceiver.get();
                service.getGroupId(device, this.mAttributionSource, recv);
                return recv.awaitResultNoInterrupt(BluetoothUtils.getSyncTimeout()).getValue(-1).intValue();
            } catch (RemoteException | TimeoutException e) {
                Log.e(TAG, e.toString() + "\n" + Log.getStackTraceString(new Throwable()));
            }
        }
        return -1;
    }

    @SystemApi
    public void setVolume(int volume) {
        log("setVolume(vol: " + volume + " )");
        IBluetoothLeAudio service = getService();
        if (service == null) {
            Log.w(TAG, "Proxy not attached to service");
            log(Log.getStackTraceString(new Throwable()));
        } else if (this.mAdapter.isEnabled()) {
            try {
                SynchronousResultReceiver recv = SynchronousResultReceiver.get();
                service.setVolume(volume, this.mAttributionSource, recv);
                recv.awaitResultNoInterrupt(BluetoothUtils.getSyncTimeout()).getValue(null);
            } catch (RemoteException | TimeoutException e) {
                Log.e(TAG, e.toString() + "\n" + Log.getStackTraceString(new Throwable()));
            }
        }
    }

    public boolean groupAddNode(int group_id, BluetoothDevice device) {
        log("groupAddNode()");
        IBluetoothLeAudio service = getService();
        if (service == null) {
            Log.w(TAG, "Proxy not attached to service");
            log(Log.getStackTraceString(new Throwable()));
        } else if (this.mAdapter.isEnabled()) {
            try {
                SynchronousResultReceiver<Boolean> recv = SynchronousResultReceiver.get();
                service.groupAddNode(group_id, device, this.mAttributionSource, recv);
                return recv.awaitResultNoInterrupt(BluetoothUtils.getSyncTimeout()).getValue(false).booleanValue();
            } catch (RemoteException | TimeoutException e) {
                Log.e(TAG, e.toString() + "\n" + Log.getStackTraceString(new Throwable()));
            }
        }
        return false;
    }

    public boolean groupRemoveNode(int group_id, BluetoothDevice device) {
        log("groupRemoveNode()");
        IBluetoothLeAudio service = getService();
        if (service == null) {
            Log.w(TAG, "Proxy not attached to service");
            log(Log.getStackTraceString(new Throwable()));
        } else if (this.mAdapter.isEnabled()) {
            try {
                SynchronousResultReceiver<Boolean> recv = SynchronousResultReceiver.get();
                service.groupRemoveNode(group_id, device, this.mAttributionSource, recv);
                return recv.awaitResultNoInterrupt(BluetoothUtils.getSyncTimeout()).getValue(false).booleanValue();
            } catch (RemoteException | TimeoutException e) {
                Log.e(TAG, e.toString() + "\n" + Log.getStackTraceString(new Throwable()));
            }
        }
        return false;
    }

    @SystemApi
    public int getAudioLocation(BluetoothDevice device) {
        log("getAudioLocation()");
        IBluetoothLeAudio service = getService();
        if (service == null) {
            Log.w(TAG, "Proxy not attached to service");
            log(Log.getStackTraceString(new Throwable()));
        } else if (this.mAdapter.isEnabled() && isValidDevice(device)) {
            try {
                SynchronousResultReceiver<Integer> recv = SynchronousResultReceiver.get();
                service.getAudioLocation(device, this.mAttributionSource, recv);
                return recv.awaitResultNoInterrupt(BluetoothUtils.getSyncTimeout()).getValue(0).intValue();
            } catch (RemoteException | TimeoutException e) {
                Log.e(TAG, e.toString() + "\n" + Log.getStackTraceString(new Throwable()));
            }
        }
        return 0;
    }

    @SystemApi
    public boolean setConnectionPolicy(BluetoothDevice device, int connectionPolicy) {
        log("setConnectionPolicy(" + device + ", " + connectionPolicy + NavigationBarInflaterView.KEY_CODE_END);
        IBluetoothLeAudio service = getService();
        if (service == null) {
            Log.w(TAG, "Proxy not attached to service");
            log(Log.getStackTraceString(new Throwable()));
        } else if (this.mAdapter.isEnabled() && isValidDevice(device) && (connectionPolicy == 0 || connectionPolicy == 100)) {
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

    @SystemApi
    public int getConnectionPolicy(BluetoothDevice device) {
        log("getConnectionPolicy(" + device + NavigationBarInflaterView.KEY_CODE_END);
        IBluetoothLeAudio service = getService();
        if (service == null) {
            Log.w(TAG, "Proxy not attached to service");
            log(Log.getStackTraceString(new Throwable()));
        } else if (this.mAdapter.isEnabled() && isValidDevice(device)) {
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

    private boolean isValidDevice(BluetoothDevice device) {
        return device != null && BluetoothAdapter.checkBluetoothAddress(device.getAddress());
    }

    private static void log(String msg) {
        Log.d(TAG, msg);
    }

    @SystemApi
    public BluetoothLeAudioCodecStatus getCodecStatus(int groupId) {
        Log.d(TAG, "getCodecStatus(" + groupId + NavigationBarInflaterView.KEY_CODE_END);
        IBluetoothLeAudio service = getService();
        if (service == null) {
            Log.w(TAG, "Proxy not attached to service");
            log(Log.getStackTraceString(new Throwable()));
        } else if (this.mAdapter.isEnabled()) {
            try {
                SynchronousResultReceiver<BluetoothLeAudioCodecStatus> recv = SynchronousResultReceiver.get();
                service.getCodecStatus(groupId, this.mAttributionSource, recv);
                return recv.awaitResultNoInterrupt(BluetoothUtils.getSyncTimeout()).getValue(null);
            } catch (RemoteException e) {
                Log.e(TAG, e.toString() + "\n" + Log.getStackTraceString(new Throwable()));
                e.rethrowFromSystemServer();
            } catch (TimeoutException e2) {
                Log.e(TAG, e2.toString() + "\n" + Log.getStackTraceString(new Throwable()));
            }
        }
        return null;
    }

    @SystemApi
    public void setCodecConfigPreference(int groupId, BluetoothLeAudioCodecConfig inputCodecConfig, BluetoothLeAudioCodecConfig outputCodecConfig) {
        Log.d(TAG, "setCodecConfigPreference(" + groupId + NavigationBarInflaterView.KEY_CODE_END);
        Objects.requireNonNull(inputCodecConfig, " inputCodecConfig shall not be null");
        Objects.requireNonNull(outputCodecConfig, " outputCodecConfig shall not be null");
        IBluetoothLeAudio service = getService();
        if (service == null) {
            Log.w(TAG, "Proxy not attached to service");
            log(Log.getStackTraceString(new Throwable()));
            throw new IllegalStateException("Service is unavailable");
        }
        if (this.mAdapter.isEnabled()) {
            try {
                service.setCodecConfigPreference(groupId, inputCodecConfig, outputCodecConfig, this.mAttributionSource);
            } catch (RemoteException e) {
                Log.e(TAG, e.toString() + "\n" + Log.getStackTraceString(new Throwable()));
                e.rethrowFromSystemServer();
            }
        }
    }

    public boolean isNextAutoSwtichActiveDevice() {
        IBluetoothLeAudio service = getService();
        if (service == null) {
            Log.w(TAG, "Proxy not attached to service");
            log(Log.getStackTraceString(new Throwable()));
            return false;
        }
        IBluetoothLeAudioSocExt bluetoothLeAudioExt = (IBluetoothLeAudioSocExt) ExtLoader.type(IBluetoothLeAudioSocExt.class).base(this).create();
        return bluetoothLeAudioExt.isNextAutoSwtichActiveDevice(service, this.mAttributionSource);
    }
}

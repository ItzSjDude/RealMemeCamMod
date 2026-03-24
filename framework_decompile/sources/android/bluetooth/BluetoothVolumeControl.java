package android.bluetooth;

import android.annotation.SystemApi;
import android.bluetooth.BluetoothProfile;
import android.bluetooth.IBluetoothStateChangeCallback;
import android.bluetooth.IBluetoothVolumeControl;
import android.bluetooth.IBluetoothVolumeControlCallback;
import android.content.AttributionSource;
import android.content.Context;
import android.inputmethodservice.navigationbar.NavigationBarInflaterView;
import android.os.IBinder;
import android.os.RemoteException;
import android.util.CloseGuard;
import android.util.Log;
import com.android.modules.utils.SynchronousResultReceiver;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeoutException;

@SystemApi
/* loaded from: classes.dex */
public final class BluetoothVolumeControl implements BluetoothProfile, AutoCloseable {

    @SystemApi
    public static final String ACTION_CONNECTION_STATE_CHANGED = "android.bluetooth.volume-control.profile.action.CONNECTION_STATE_CHANGED";
    private static final boolean DBG = true;
    private static final String TAG = "BluetoothVolumeControl";
    private static final boolean VDBG = false;
    private BluetoothAdapter mAdapter;
    private final AttributionSource mAttributionSource;
    private final IBluetoothStateChangeCallback mBluetoothStateChangeCallback;
    private CloseGuard mCloseGuard;
    private final BluetoothProfileConnector<IBluetoothVolumeControl> mProfileConnector;
    private final Map<Callback, Executor> mCallbackExecutorMap = new HashMap();
    private final IBluetoothVolumeControlCallback mCallback = new AnonymousClass1();

    @SystemApi
    public interface Callback {
        @SystemApi
        void onVolumeOffsetChanged(BluetoothDevice bluetoothDevice, int i);
    }

    /* renamed from: android.bluetooth.BluetoothVolumeControl$1, reason: invalid class name */
    class AnonymousClass1 extends IBluetoothVolumeControlCallback.Stub {
        AnonymousClass1() {
        }

        @Override // android.bluetooth.IBluetoothVolumeControlCallback
        public void onVolumeOffsetChanged(final BluetoothDevice device, final int volumeOffset) {
            Attributable.setAttributionSource(device, BluetoothVolumeControl.this.mAttributionSource);
            for (Map.Entry<Callback, Executor> callbackExecutorEntry : BluetoothVolumeControl.this.mCallbackExecutorMap.entrySet()) {
                final Callback callback = callbackExecutorEntry.getKey();
                Executor executor = callbackExecutorEntry.getValue();
                executor.execute(new Runnable() { // from class: android.bluetooth.BluetoothVolumeControl$1$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        callback.onVolumeOffsetChanged(device, volumeOffset);
                    }
                });
            }
        }
    }

    BluetoothVolumeControl(Context context, BluetoothProfile.ServiceListener listener, BluetoothAdapter adapter) {
        BluetoothProfileConnector<IBluetoothVolumeControl> bluetoothProfileConnector = new BluetoothProfileConnector(this, 23, TAG, IBluetoothVolumeControl.class.getName()) { // from class: android.bluetooth.BluetoothVolumeControl.2
            @Override // android.bluetooth.BluetoothProfileConnector
            public IBluetoothVolumeControl getServiceInterface(IBinder service) {
                return IBluetoothVolumeControl.Stub.asInterface(service);
            }
        };
        this.mProfileConnector = bluetoothProfileConnector;
        IBluetoothStateChangeCallback.Stub stub = new IBluetoothStateChangeCallback.Stub() { // from class: android.bluetooth.BluetoothVolumeControl.3
            /* JADX WARN: Removed duplicated region for block: B:17:0x008c A[Catch: all -> 0x008e, DONT_GENERATE, TryCatch #2 {, blocks: (B:7:0x0023, B:9:0x002f, B:11:0x0037, B:17:0x008c, B:14:0x0058, B:16:0x0083), top: B:22:0x0023, inners: #3 }] */
            @Override // android.bluetooth.IBluetoothStateChangeCallback
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public void onBluetoothStateChange(boolean r6) {
                /*
                    r5 = this;
                    java.lang.String r0 = "BluetoothVolumeControl"
                    java.lang.StringBuilder r1 = new java.lang.StringBuilder
                    r1.<init>()
                    java.lang.String r2 = "onBluetoothStateChange: up="
                    java.lang.StringBuilder r1 = r1.append(r2)
                    java.lang.StringBuilder r1 = r1.append(r6)
                    java.lang.String r1 = r1.toString()
                    android.util.Log.d(r0, r1)
                    if (r6 != 0) goto L1c
                    return
                L1c:
                    android.bluetooth.BluetoothVolumeControl r0 = android.bluetooth.BluetoothVolumeControl.this
                    java.util.Map r0 = android.bluetooth.BluetoothVolumeControl.m794$$Nest$fgetmCallbackExecutorMap(r0)
                    monitor-enter(r0)
                    android.bluetooth.BluetoothVolumeControl r1 = android.bluetooth.BluetoothVolumeControl.this     // Catch: java.lang.Throwable -> L8e
                    java.util.Map r1 = android.bluetooth.BluetoothVolumeControl.m794$$Nest$fgetmCallbackExecutorMap(r1)     // Catch: java.lang.Throwable -> L8e
                    boolean r1 = r1.isEmpty()     // Catch: java.lang.Throwable -> L8e
                    if (r1 != 0) goto L8c
                    android.bluetooth.BluetoothVolumeControl r1 = android.bluetooth.BluetoothVolumeControl.this     // Catch: java.util.concurrent.TimeoutException -> L57 android.os.RemoteException -> L82 java.lang.Throwable -> L8e
                    android.bluetooth.IBluetoothVolumeControl r1 = android.bluetooth.BluetoothVolumeControl.m795$$Nest$mgetService(r1)     // Catch: java.util.concurrent.TimeoutException -> L57 android.os.RemoteException -> L82 java.lang.Throwable -> L8e
                    if (r1 == 0) goto L56
                    com.android.modules.utils.SynchronousResultReceiver r2 = com.android.modules.utils.SynchronousResultReceiver.get()     // Catch: java.util.concurrent.TimeoutException -> L57 android.os.RemoteException -> L82 java.lang.Throwable -> L8e
                    android.bluetooth.BluetoothVolumeControl r3 = android.bluetooth.BluetoothVolumeControl.this     // Catch: java.util.concurrent.TimeoutException -> L57 android.os.RemoteException -> L82 java.lang.Throwable -> L8e
                    android.bluetooth.IBluetoothVolumeControlCallback r3 = android.bluetooth.BluetoothVolumeControl.m793$$Nest$fgetmCallback(r3)     // Catch: java.util.concurrent.TimeoutException -> L57 android.os.RemoteException -> L82 java.lang.Throwable -> L8e
                    android.bluetooth.BluetoothVolumeControl r4 = android.bluetooth.BluetoothVolumeControl.this     // Catch: java.util.concurrent.TimeoutException -> L57 android.os.RemoteException -> L82 java.lang.Throwable -> L8e
                    android.content.AttributionSource r4 = android.bluetooth.BluetoothVolumeControl.m792$$Nest$fgetmAttributionSource(r4)     // Catch: java.util.concurrent.TimeoutException -> L57 android.os.RemoteException -> L82 java.lang.Throwable -> L8e
                    r1.registerCallback(r3, r4, r2)     // Catch: java.util.concurrent.TimeoutException -> L57 android.os.RemoteException -> L82 java.lang.Throwable -> L8e
                    java.time.Duration r3 = android.bluetooth.BluetoothUtils.getSyncTimeout()     // Catch: java.util.concurrent.TimeoutException -> L57 android.os.RemoteException -> L82 java.lang.Throwable -> L8e
                    com.android.modules.utils.SynchronousResultReceiver$Result r3 = r2.awaitResultNoInterrupt(r3)     // Catch: java.util.concurrent.TimeoutException -> L57 android.os.RemoteException -> L82 java.lang.Throwable -> L8e
                    r4 = 0
                    r3.getValue(r4)     // Catch: java.util.concurrent.TimeoutException -> L57 android.os.RemoteException -> L82 java.lang.Throwable -> L8e
                L56:
                    goto L8c
                L57:
                    r1 = move-exception
                    java.lang.String r2 = "BluetoothVolumeControl"
                    java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L8e
                    r3.<init>()     // Catch: java.lang.Throwable -> L8e
                    java.lang.String r4 = r1.toString()     // Catch: java.lang.Throwable -> L8e
                    java.lang.StringBuilder r3 = r3.append(r4)     // Catch: java.lang.Throwable -> L8e
                    java.lang.String r4 = "\n"
                    java.lang.StringBuilder r3 = r3.append(r4)     // Catch: java.lang.Throwable -> L8e
                    java.lang.Throwable r4 = new java.lang.Throwable     // Catch: java.lang.Throwable -> L8e
                    r4.<init>()     // Catch: java.lang.Throwable -> L8e
                    java.lang.String r4 = android.util.Log.getStackTraceString(r4)     // Catch: java.lang.Throwable -> L8e
                    java.lang.StringBuilder r3 = r3.append(r4)     // Catch: java.lang.Throwable -> L8e
                    java.lang.String r3 = r3.toString()     // Catch: java.lang.Throwable -> L8e
                    android.util.Log.e(r2, r3)     // Catch: java.lang.Throwable -> L8e
                    goto L8c
                L82:
                    r1 = move-exception
                    java.lang.String r2 = "BluetoothVolumeControl"
                    java.lang.String r3 = "onBluetoothServiceUp: Failed to registerVolume Control callback"
                    android.util.Log.e(r2, r3, r1)     // Catch: java.lang.Throwable -> L8e
                L8c:
                    monitor-exit(r0)     // Catch: java.lang.Throwable -> L8e
                    return
                L8e:
                    r1 = move-exception
                    monitor-exit(r0)     // Catch: java.lang.Throwable -> L8e
                    throw r1
                */
                throw new UnsupportedOperationException("Method not decompiled: android.bluetooth.BluetoothVolumeControl.AnonymousClass3.onBluetoothStateChange(boolean):void");
            }
        };
        this.mBluetoothStateChangeCallback = stub;
        this.mAdapter = adapter;
        this.mAttributionSource = adapter.getAttributionSource();
        bluetoothProfileConnector.connect(context, listener);
        IBluetoothManager mgr = this.mAdapter.getBluetoothManager();
        if (mgr != null) {
            try {
                mgr.registerStateChangeCallback(stub);
            } catch (RemoteException e) {
                Log.e(TAG, e.toString() + "\n" + Log.getStackTraceString(new Throwable()));
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
                Log.e(TAG, e.toString() + "\n" + Log.getStackTraceString(new Throwable()));
            }
        }
        this.mProfileConnector.disconnect();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public IBluetoothVolumeControl getService() {
        return this.mProfileConnector.getService();
    }

    @Override // android.bluetooth.BluetoothProfile
    @SystemApi
    public List<BluetoothDevice> getConnectedDevices() {
        log("getConnectedDevices()");
        IBluetoothVolumeControl service = getService();
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
        IBluetoothVolumeControl service = getService();
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
        log("getConnectionState(" + device + NavigationBarInflaterView.KEY_CODE_END);
        IBluetoothVolumeControl service = getService();
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
                    IBluetoothVolumeControl service = getService();
                    if (service != null) {
                        SynchronousResultReceiver<Integer> recv = SynchronousResultReceiver.get();
                        service.registerCallback(this.mCallback, this.mAttributionSource, recv);
                        recv.awaitResultNoInterrupt(BluetoothUtils.getSyncTimeout()).getValue(null);
                    }
                } catch (RemoteException e) {
                    Log.e(TAG, e.toString() + "\n" + Log.getStackTraceString(new Throwable()));
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
        log("unregisterCallback");
        synchronized (this.mCallbackExecutorMap) {
            if (this.mCallbackExecutorMap.remove(callback) == null) {
                throw new IllegalArgumentException("This callback has not been registered");
            }
        }
        if (this.mCallbackExecutorMap.isEmpty()) {
            try {
                IBluetoothVolumeControl service = getService();
                if (service != null) {
                    SynchronousResultReceiver<Integer> recv = SynchronousResultReceiver.get();
                    service.unregisterCallback(this.mCallback, this.mAttributionSource, recv);
                    recv.awaitResultNoInterrupt(BluetoothUtils.getSyncTimeout()).getValue(null);
                }
            } catch (RemoteException e) {
                Log.e(TAG, e.toString() + "\n" + Log.getStackTraceString(new Throwable()));
                throw e.rethrowFromSystemServer();
            } catch (IllegalStateException | TimeoutException e2) {
                Log.e(TAG, e2.toString() + "\n" + Log.getStackTraceString(new Throwable()));
            }
        }
    }

    @SystemApi
    public void setVolumeOffset(BluetoothDevice device, int volumeOffset) {
        log("setVolumeOffset(" + device + " volumeOffset: " + volumeOffset + NavigationBarInflaterView.KEY_CODE_END);
        IBluetoothVolumeControl service = getService();
        if (service == null) {
            Log.w(TAG, "Proxy not attached to service");
            log(Log.getStackTraceString(new Throwable()));
        } else if (isEnabled()) {
            try {
                SynchronousResultReceiver recv = SynchronousResultReceiver.get();
                service.setVolumeOffset(device, volumeOffset, this.mAttributionSource, recv);
                recv.awaitResultNoInterrupt(BluetoothUtils.getSyncTimeout()).getValue(null);
            } catch (RemoteException | TimeoutException e) {
                Log.e(TAG, e.toString() + "\n" + Log.getStackTraceString(new Throwable()));
            }
        }
    }

    @SystemApi
    public boolean isVolumeOffsetAvailable(BluetoothDevice device) {
        log("isVolumeOffsetAvailable(" + device + NavigationBarInflaterView.KEY_CODE_END);
        IBluetoothVolumeControl service = getService();
        if (service == null) {
            Log.w(TAG, "Proxy not attached to service");
            log(Log.getStackTraceString(new Throwable()));
            return false;
        }
        if (!isEnabled()) {
            return false;
        }
        try {
            SynchronousResultReceiver recv = SynchronousResultReceiver.get();
            service.isVolumeOffsetAvailable(device, this.mAttributionSource, recv);
            recv.awaitResultNoInterrupt(BluetoothUtils.getSyncTimeout()).getValue(false);
        } catch (RemoteException | TimeoutException e) {
            Log.e(TAG, e.toString() + "\n" + Log.getStackTraceString(new Throwable()));
        }
        return false;
    }

    @SystemApi
    public boolean setConnectionPolicy(BluetoothDevice device, int connectionPolicy) {
        log("setConnectionPolicy(" + device + ", " + connectionPolicy + NavigationBarInflaterView.KEY_CODE_END);
        IBluetoothVolumeControl service = getService();
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

    @SystemApi
    public int getConnectionPolicy(BluetoothDevice device) {
        IBluetoothVolumeControl service = getService();
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

    private boolean isEnabled() {
        return this.mAdapter.getState() == 12;
    }

    private static boolean isValidDevice(BluetoothDevice device) {
        return device != null && BluetoothAdapter.checkBluetoothAddress(device.getAddress());
    }

    private static void log(String msg) {
        Log.d(TAG, msg);
    }
}

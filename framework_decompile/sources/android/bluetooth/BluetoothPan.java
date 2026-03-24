package android.bluetooth;

import android.annotation.SystemApi;
import android.bluetooth.BluetoothProfile;
import android.bluetooth.IBluetoothPan;
import android.bluetooth.IBluetoothPanCallback;
import android.content.AttributionSource;
import android.content.Context;
import android.inputmethodservice.navigationbar.NavigationBarInflaterView;
import android.net.TetheringManager;
import android.os.IBinder;
import android.os.RemoteException;
import android.util.Log;
import com.android.modules.utils.SynchronousResultReceiver;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeoutException;

@SystemApi
/* loaded from: classes.dex */
public final class BluetoothPan implements BluetoothProfile {
    public static final String ACTION_CONNECTION_STATE_CHANGED = "android.bluetooth.pan.profile.action.CONNECTION_STATE_CHANGED";
    public static final String ACTION_TETHERING_STATE_CHANGED = "android.bluetooth.action.TETHERING_STATE_CHANGED";
    private static final boolean DBG = true;
    public static final String EXTRA_LOCAL_ROLE = "android.bluetooth.pan.extra.LOCAL_ROLE";
    public static final String EXTRA_TETHERING_STATE = "android.bluetooth.extra.TETHERING_STATE";
    public static final int LOCAL_NAP_ROLE = 1;
    public static final int LOCAL_PANU_ROLE = 2;
    public static final int PAN_CONNECT_FAILED_ALREADY_CONNECTED = 1001;
    public static final int PAN_CONNECT_FAILED_ATTEMPT_FAILED = 1002;
    public static final int PAN_DISCONNECT_FAILED_NOT_CONNECTED = 1000;
    public static final int PAN_OPERATION_GENERIC_FAILURE = 1003;
    public static final int PAN_OPERATION_SUCCESS = 1004;
    public static final int PAN_ROLE_NONE = 0;
    public static final int REMOTE_NAP_ROLE = 1;
    public static final int REMOTE_PANU_ROLE = 2;
    private static final String TAG = "BluetoothPan";
    public static final int TETHERING_STATE_OFF = 1;
    public static final int TETHERING_STATE_ON = 2;
    private static final boolean VDBG = false;
    private final BluetoothAdapter mAdapter;
    private final AttributionSource mAttributionSource;
    private final Context mContext;
    private final BluetoothProfileConnector<IBluetoothPan> mProfileConnector;

    @Retention(RetentionPolicy.SOURCE)
    public @interface LocalPanRole {
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface RemotePanRole {
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface TetheringState {
    }

    public class BluetoothTetheredInterfaceRequest implements TetheringManager.TetheredInterfaceRequest {
        private final int mId;
        private final IBluetoothPanCallback mPanCallback;
        private IBluetoothPan mService;

        private BluetoothTetheredInterfaceRequest(IBluetoothPan service, IBluetoothPanCallback panCallback, int id) {
            this.mService = service;
            this.mPanCallback = panCallback;
            this.mId = id;
        }

        public void release() {
            if (this.mService == null) {
                throw new IllegalStateException("The tethered interface has already been released.");
            }
            try {
                try {
                    SynchronousResultReceiver recv = SynchronousResultReceiver.get();
                    this.mService.setBluetoothTethering(this.mPanCallback, this.mId, false, BluetoothPan.this.mAttributionSource, recv);
                    recv.awaitResultNoInterrupt(BluetoothUtils.getSyncTimeout()).getValue(null);
                } catch (RemoteException | TimeoutException e) {
                    Log.e(BluetoothPan.TAG, e.toString() + "\n" + Log.getStackTraceString(new Throwable()));
                }
            } finally {
                this.mService = null;
            }
        }
    }

    BluetoothPan(Context context, BluetoothProfile.ServiceListener listener, BluetoothAdapter adapter) {
        BluetoothProfileConnector<IBluetoothPan> bluetoothProfileConnector = new BluetoothProfileConnector(this, 5, TAG, IBluetoothPan.class.getName()) { // from class: android.bluetooth.BluetoothPan.1
            @Override // android.bluetooth.BluetoothProfileConnector
            public IBluetoothPan getServiceInterface(IBinder service) {
                return IBluetoothPan.Stub.asInterface(service);
            }
        };
        this.mProfileConnector = bluetoothProfileConnector;
        this.mAdapter = adapter;
        this.mAttributionSource = adapter.getAttributionSource();
        this.mContext = context;
        bluetoothProfileConnector.connect(context, listener);
    }

    void close() {
        this.mProfileConnector.disconnect();
    }

    private IBluetoothPan getService() {
        return this.mProfileConnector.getService();
    }

    protected void finalize() {
        close();
    }

    public boolean connect(BluetoothDevice device) {
        log("connect(" + device + NavigationBarInflaterView.KEY_CODE_END);
        IBluetoothPan service = getService();
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
        IBluetoothPan service = getService();
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

    @SystemApi
    public boolean setConnectionPolicy(BluetoothDevice device, int connectionPolicy) {
        log("setConnectionPolicy(" + device + ", " + connectionPolicy + NavigationBarInflaterView.KEY_CODE_END);
        IBluetoothPan service = getService();
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

    @Override // android.bluetooth.BluetoothProfile
    @SystemApi
    public List<BluetoothDevice> getConnectedDevices() {
        IBluetoothPan service = getService();
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
        IBluetoothPan service = getService();
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
    @SystemApi
    public int getConnectionState(BluetoothDevice device) {
        IBluetoothPan service = getService();
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
    @Deprecated
    public void setBluetoothTethering(boolean value) {
        String pkgName = this.mContext.getOpPackageName();
        log("setBluetoothTethering(" + value + "), calling package:" + pkgName);
        IBluetoothPan service = getService();
        if (service == null) {
            Log.w(TAG, "Proxy not attached to service");
            log(Log.getStackTraceString(new Throwable()));
        } else if (isEnabled()) {
            try {
                SynchronousResultReceiver recv = SynchronousResultReceiver.get();
                service.setBluetoothTethering(null, 0, value, this.mAttributionSource, recv);
                recv.awaitResultNoInterrupt(BluetoothUtils.getSyncTimeout()).getValue(null);
            } catch (RemoteException | TimeoutException e) {
                Log.e(TAG, e.toString() + "\n" + Log.getStackTraceString(new Throwable()));
            }
        }
    }

    @SystemApi(client = SystemApi.Client.MODULE_LIBRARIES)
    public TetheringManager.TetheredInterfaceRequest requestTetheredInterface(Executor executor, TetheringManager.TetheredInterfaceCallback callback) {
        Objects.requireNonNull(callback, "Callback must be non-null");
        Objects.requireNonNull(executor, "Executor must be non-null");
        IBluetoothPan service = getService();
        if (service == null) {
            Log.w(TAG, "Proxy not attached to service");
            log(Log.getStackTraceString(new Throwable()));
        } else if (isEnabled()) {
            IBluetoothPanCallback panCallback = new AnonymousClass2(executor, callback);
            try {
                SynchronousResultReceiver recv = SynchronousResultReceiver.get();
                service.setBluetoothTethering(panCallback, callback.hashCode(), true, this.mAttributionSource, recv);
                recv.awaitResultNoInterrupt(BluetoothUtils.getSyncTimeout()).getValue(null);
                return new BluetoothTetheredInterfaceRequest(service, panCallback, callback.hashCode());
            } catch (RemoteException | TimeoutException e) {
                Log.e(TAG, e.toString() + "\n" + Log.getStackTraceString(new Throwable()));
            }
        }
        return null;
    }

    /* renamed from: android.bluetooth.BluetoothPan$2, reason: invalid class name */
    class AnonymousClass2 extends IBluetoothPanCallback.Stub {
        final /* synthetic */ TetheringManager.TetheredInterfaceCallback val$callback;
        final /* synthetic */ Executor val$executor;

        AnonymousClass2(Executor executor, TetheringManager.TetheredInterfaceCallback tetheredInterfaceCallback) {
            this.val$executor = executor;
            this.val$callback = tetheredInterfaceCallback;
        }

        @Override // android.bluetooth.IBluetoothPanCallback
        public void onAvailable(final String iface) {
            Executor executor = this.val$executor;
            final TetheringManager.TetheredInterfaceCallback tetheredInterfaceCallback = this.val$callback;
            executor.execute(new Runnable() { // from class: android.bluetooth.BluetoothPan$2$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    tetheredInterfaceCallback.onAvailable(iface);
                }
            });
        }

        @Override // android.bluetooth.IBluetoothPanCallback
        public void onUnavailable() {
            Executor executor = this.val$executor;
            final TetheringManager.TetheredInterfaceCallback tetheredInterfaceCallback = this.val$callback;
            executor.execute(new Runnable() { // from class: android.bluetooth.BluetoothPan$2$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    tetheredInterfaceCallback.onUnavailable();
                }
            });
        }
    }

    @SystemApi
    public boolean isTetheringOn() {
        IBluetoothPan service = getService();
        if (service == null) {
            Log.w(TAG, "Proxy not attached to service");
            log(Log.getStackTraceString(new Throwable()));
        } else if (isEnabled()) {
            try {
                SynchronousResultReceiver<Boolean> recv = SynchronousResultReceiver.get();
                service.isTetheringOn(this.mAttributionSource, recv);
                return recv.awaitResultNoInterrupt(BluetoothUtils.getSyncTimeout()).getValue(false).booleanValue();
            } catch (RemoteException | TimeoutException e) {
                Log.e(TAG, e.toString() + "\n" + Log.getStackTraceString(new Throwable()));
            }
        }
        return false;
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

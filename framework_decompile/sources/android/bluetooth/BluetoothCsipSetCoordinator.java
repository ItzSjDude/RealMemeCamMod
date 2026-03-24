package android.bluetooth;

import android.annotation.SystemApi;
import android.bluetooth.BluetoothProfile;
import android.bluetooth.IBluetoothCsipSetCoordinator;
import android.bluetooth.IBluetoothCsipSetCoordinatorLockCallback;
import android.content.AttributionSource;
import android.content.Context;
import android.os.IBinder;
import android.os.ParcelUuid;
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
import java.util.UUID;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeoutException;

/* loaded from: classes.dex */
public final class BluetoothCsipSetCoordinator implements BluetoothProfile, AutoCloseable {
    public static final String ACTION_CSIS_CONNECTION_STATE_CHANGED = "android.bluetooth.action.CSIS_CONNECTION_STATE_CHANGED";

    @SystemApi
    public static final String ACTION_CSIS_DEVICE_AVAILABLE = "android.bluetooth.action.CSIS_DEVICE_AVAILABLE";

    @SystemApi
    public static final String ACTION_CSIS_SET_MEMBER_AVAILABLE = "android.bluetooth.action.CSIS_SET_MEMBER_AVAILABLE";
    private static final boolean DBG = false;

    @SystemApi
    public static final String EXTRA_CSIS_GROUP_ID = "android.bluetooth.extra.CSIS_GROUP_ID";
    public static final String EXTRA_CSIS_GROUP_SIZE = "android.bluetooth.extra.CSIS_GROUP_SIZE";
    public static final String EXTRA_CSIS_GROUP_TYPE_UUID = "android.bluetooth.extra.CSIS_GROUP_TYPE_UUID";

    @SystemApi
    public static final int GROUP_ID_INVALID = -1;
    private static final String TAG = "BluetoothCsipSetCoordinator";
    private static final boolean VDBG = false;
    private final BluetoothAdapter mAdapter;
    private final AttributionSource mAttributionSource;
    private CloseGuard mCloseGuard;
    private final BluetoothProfileConnector<IBluetoothCsipSetCoordinator> mProfileConnector;

    @SystemApi
    public interface ClientLockCallback {

        @Retention(RetentionPolicy.SOURCE)
        public @interface Status {
        }

        @SystemApi
        void onGroupLockSet(int i, int i2, boolean z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    static class BluetoothCsipSetCoordinatorLockCallbackDelegate extends IBluetoothCsipSetCoordinatorLockCallback.Stub {
        private final ClientLockCallback mCallback;
        private final Executor mExecutor;

        BluetoothCsipSetCoordinatorLockCallbackDelegate(Executor executor, ClientLockCallback callback) {
            this.mExecutor = executor;
            this.mCallback = callback;
        }

        /* renamed from: lambda$onGroupLockSet$0$android-bluetooth-BluetoothCsipSetCoordinator$BluetoothCsipSetCoordinatorLockCallbackDelegate, reason: not valid java name */
        /* synthetic */ void m703x9f0fac76(int groupId, int opStatus, boolean isLocked) {
            this.mCallback.onGroupLockSet(groupId, opStatus, isLocked);
        }

        @Override // android.bluetooth.IBluetoothCsipSetCoordinatorLockCallback
        public void onGroupLockSet(final int groupId, final int opStatus, final boolean isLocked) {
            this.mExecutor.execute(new Runnable() { // from class: android.bluetooth.BluetoothCsipSetCoordinator$BluetoothCsipSetCoordinatorLockCallbackDelegate$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.m703x9f0fac76(groupId, opStatus, isLocked);
                }
            });
        }
    }

    BluetoothCsipSetCoordinator(Context context, BluetoothProfile.ServiceListener listener, BluetoothAdapter adapter) {
        BluetoothProfileConnector<IBluetoothCsipSetCoordinator> bluetoothProfileConnector = new BluetoothProfileConnector(this, 25, TAG, IBluetoothCsipSetCoordinator.class.getName()) { // from class: android.bluetooth.BluetoothCsipSetCoordinator.1
            @Override // android.bluetooth.BluetoothProfileConnector
            public IBluetoothCsipSetCoordinator getServiceInterface(IBinder service) {
                return IBluetoothCsipSetCoordinator.Stub.asInterface(service);
            }
        };
        this.mProfileConnector = bluetoothProfileConnector;
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
    public void close() {
        this.mProfileConnector.disconnect();
    }

    private IBluetoothCsipSetCoordinator getService() {
        return this.mProfileConnector.getService();
    }

    @SystemApi
    public UUID lockGroup(int groupId, Executor executor, ClientLockCallback callback) {
        Objects.requireNonNull(executor, "executor cannot be null");
        Objects.requireNonNull(callback, "callback cannot be null");
        IBluetoothCsipSetCoordinator service = getService();
        if (service == null) {
            Log.w(TAG, "Proxy not attached to service");
        } else if (isEnabled()) {
            IBluetoothCsipSetCoordinatorLockCallback delegate = new BluetoothCsipSetCoordinatorLockCallbackDelegate(executor, callback);
            try {
                SynchronousResultReceiver<ParcelUuid> recv = SynchronousResultReceiver.get();
                service.lockGroup(groupId, delegate, this.mAttributionSource, recv);
                ParcelUuid ret = recv.awaitResultNoInterrupt(BluetoothUtils.getSyncTimeout()).getValue(null);
                if (ret == null) {
                    return null;
                }
                return ret.getUuid();
            } catch (RemoteException e) {
                e.rethrowFromSystemServer();
            } catch (TimeoutException e2) {
                Log.e(TAG, e2.toString() + "\n" + Log.getStackTraceString(new Throwable()));
            }
        }
        return null;
    }

    @SystemApi
    public boolean unlockGroup(UUID lockUuid) {
        Objects.requireNonNull(lockUuid, "lockUuid cannot be null");
        IBluetoothCsipSetCoordinator service = getService();
        if (service == null) {
            Log.w(TAG, "Proxy not attached to service");
            return false;
        }
        if (isEnabled()) {
            try {
                SynchronousResultReceiver recv = SynchronousResultReceiver.get();
                service.unlockGroup(new ParcelUuid(lockUuid), this.mAttributionSource, recv);
                recv.awaitResultNoInterrupt(BluetoothUtils.getSyncTimeout()).getValue(null);
                return true;
            } catch (RemoteException e) {
                e.rethrowFromSystemServer();
                return false;
            } catch (TimeoutException e2) {
                Log.e(TAG, e2.toString() + "\n" + Log.getStackTraceString(new Throwable()));
                return false;
            }
        }
        return false;
    }

    @SystemApi
    public Map<Integer, ParcelUuid> getGroupUuidMapByDevice(BluetoothDevice device) {
        IBluetoothCsipSetCoordinator service = getService();
        Map map = new HashMap();
        if (service == null) {
            Log.w(TAG, "Proxy not attached to service");
        } else if (isEnabled()) {
            try {
                SynchronousResultReceiver<Map> recv = SynchronousResultReceiver.get();
                service.getGroupUuidMapByDevice(device, this.mAttributionSource, recv);
                return recv.awaitResultNoInterrupt(BluetoothUtils.getSyncTimeout()).getValue(map);
            } catch (RemoteException e) {
                e.rethrowFromSystemServer();
            } catch (TimeoutException e2) {
                Log.e(TAG, e2.toString() + "\n" + Log.getStackTraceString(new Throwable()));
            }
        }
        return map;
    }

    @SystemApi
    public List<Integer> getAllGroupIds(ParcelUuid uuid) {
        IBluetoothCsipSetCoordinator service = getService();
        List<Integer> arrayList = new ArrayList<>();
        if (service == null) {
            Log.w(TAG, "Proxy not attached to service");
        } else if (isEnabled()) {
            try {
                SynchronousResultReceiver<List<Integer>> recv = SynchronousResultReceiver.get();
                service.getAllGroupIds(uuid, this.mAttributionSource, recv);
                return recv.awaitResultNoInterrupt(BluetoothUtils.getSyncTimeout()).getValue(arrayList);
            } catch (RemoteException e) {
                e.rethrowFromSystemServer();
            } catch (TimeoutException e2) {
                Log.e(TAG, e2.toString() + "\n" + Log.getStackTraceString(new Throwable()));
            }
        }
        return arrayList;
    }

    @Override // android.bluetooth.BluetoothProfile
    public List<BluetoothDevice> getConnectedDevices() {
        IBluetoothCsipSetCoordinator service = getService();
        List<BluetoothDevice> arrayList = new ArrayList<>();
        if (service == null) {
            Log.w(TAG, "Proxy not attached to service");
        } else if (isEnabled()) {
            try {
                SynchronousResultReceiver<List<BluetoothDevice>> recv = SynchronousResultReceiver.get();
                service.getConnectedDevices(this.mAttributionSource, recv);
                return recv.awaitResultNoInterrupt(BluetoothUtils.getSyncTimeout()).getValue(arrayList);
            } catch (RemoteException e) {
                e.rethrowFromSystemServer();
            } catch (TimeoutException e2) {
                Log.e(TAG, e2.toString() + "\n" + Log.getStackTraceString(new Throwable()));
            }
        }
        return arrayList;
    }

    @Override // android.bluetooth.BluetoothProfile
    public List<BluetoothDevice> getDevicesMatchingConnectionStates(int[] states) {
        IBluetoothCsipSetCoordinator service = getService();
        List<BluetoothDevice> arrayList = new ArrayList<>();
        if (service == null) {
            Log.w(TAG, "Proxy not attached to service");
        } else if (isEnabled()) {
            try {
                SynchronousResultReceiver<List<BluetoothDevice>> recv = SynchronousResultReceiver.get();
                service.getDevicesMatchingConnectionStates(states, this.mAttributionSource, recv);
                return recv.awaitResultNoInterrupt(BluetoothUtils.getSyncTimeout()).getValue(arrayList);
            } catch (RemoteException e) {
                e.rethrowFromSystemServer();
            } catch (TimeoutException e2) {
                Log.e(TAG, e2.toString() + "\n" + Log.getStackTraceString(new Throwable()));
            }
        }
        return arrayList;
    }

    @Override // android.bluetooth.BluetoothProfile
    public int getConnectionState(BluetoothDevice device) {
        IBluetoothCsipSetCoordinator service = getService();
        if (service == null) {
            Log.w(TAG, "Proxy not attached to service");
        } else if (isEnabled()) {
            try {
                SynchronousResultReceiver<Integer> recv = SynchronousResultReceiver.get();
                service.getConnectionState(device, this.mAttributionSource, recv);
                return recv.awaitResultNoInterrupt(BluetoothUtils.getSyncTimeout()).getValue(0).intValue();
            } catch (RemoteException e) {
                e.rethrowFromSystemServer();
            } catch (TimeoutException e2) {
                Log.e(TAG, e2.toString() + "\n" + Log.getStackTraceString(new Throwable()));
            }
        }
        return 0;
    }

    @SystemApi
    public boolean setConnectionPolicy(BluetoothDevice device, int connectionPolicy) {
        IBluetoothCsipSetCoordinator service = getService();
        if (service == null) {
            Log.w(TAG, "Proxy not attached to service");
        } else if (isEnabled() && isValidDevice(device) && (connectionPolicy == 0 || connectionPolicy == 100)) {
            try {
                SynchronousResultReceiver<Boolean> recv = SynchronousResultReceiver.get();
                service.setConnectionPolicy(device, connectionPolicy, this.mAttributionSource, recv);
                return recv.awaitResultNoInterrupt(BluetoothUtils.getSyncTimeout()).getValue(false).booleanValue();
            } catch (RemoteException e) {
                e.rethrowFromSystemServer();
            } catch (TimeoutException e2) {
                Log.e(TAG, e2.toString() + "\n" + Log.getStackTraceString(new Throwable()));
            }
        }
        return false;
    }

    @SystemApi
    public int getConnectionPolicy(BluetoothDevice device) {
        IBluetoothCsipSetCoordinator service = getService();
        if (service == null) {
            Log.w(TAG, "Proxy not attached to service");
        } else if (isEnabled() && isValidDevice(device)) {
            try {
                SynchronousResultReceiver<Integer> recv = SynchronousResultReceiver.get();
                service.getConnectionPolicy(device, this.mAttributionSource, recv);
                return recv.awaitResultNoInterrupt(BluetoothUtils.getSyncTimeout()).getValue(0).intValue();
            } catch (RemoteException e) {
                e.rethrowFromSystemServer();
            } catch (TimeoutException e2) {
                Log.e(TAG, e2.toString() + "\n" + Log.getStackTraceString(new Throwable()));
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

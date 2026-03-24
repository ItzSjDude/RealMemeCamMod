package android.bluetooth;

import android.annotation.SystemApi;
import android.app.PendingIntent;
import android.bluetooth.BluetoothProfile;
import android.bluetooth.IBluetoothMapClient;
import android.content.AttributionSource;
import android.content.Context;
import android.inputmethodservice.navigationbar.NavigationBarInflaterView;
import android.net.Uri;
import android.os.IBinder;
import android.os.RemoteException;
import android.util.CloseGuard;
import android.util.Log;
import com.android.modules.utils.SynchronousResultReceiver;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.concurrent.TimeoutException;

@SystemApi
/* loaded from: classes.dex */
public final class BluetoothMapClient implements BluetoothProfile, AutoCloseable {

    @SystemApi
    public static final String ACTION_CONNECTION_STATE_CHANGED = "android.bluetooth.mapmce.profile.action.CONNECTION_STATE_CHANGED";
    public static final String ACTION_MESSAGE_DELETED_STATUS_CHANGED = "android.bluetooth.mapmce.profile.action.MESSAGE_DELETED_STATUS_CHANGED";
    public static final String ACTION_MESSAGE_DELIVERED_SUCCESSFULLY = "android.bluetooth.mapmce.profile.action.MESSAGE_DELIVERED_SUCCESSFULLY";
    public static final String ACTION_MESSAGE_READ_STATUS_CHANGED = "android.bluetooth.mapmce.profile.action.MESSAGE_READ_STATUS_CHANGED";
    public static final String ACTION_MESSAGE_RECEIVED = "android.bluetooth.mapmce.profile.action.MESSAGE_RECEIVED";
    public static final String ACTION_MESSAGE_SENT_SUCCESSFULLY = "android.bluetooth.mapmce.profile.action.MESSAGE_SENT_SUCCESSFULLY";
    public static final int DELETED = 3;
    public static final String EXTRA_MESSAGE_DELETED_STATUS = "android.bluetooth.mapmce.profile.extra.MESSAGE_DELETED_STATUS";
    public static final String EXTRA_MESSAGE_HANDLE = "android.bluetooth.mapmce.profile.extra.MESSAGE_HANDLE";
    public static final String EXTRA_MESSAGE_READ_STATUS = "android.bluetooth.mapmce.profile.extra.MESSAGE_READ_STATUS";
    public static final String EXTRA_MESSAGE_TIMESTAMP = "android.bluetooth.mapmce.profile.extra.MESSAGE_TIMESTAMP";
    public static final String EXTRA_RESULT_CODE = "android.bluetooth.device.extra.RESULT_CODE";
    public static final String EXTRA_SENDER_CONTACT_NAME = "android.bluetooth.mapmce.profile.extra.SENDER_CONTACT_NAME";
    public static final String EXTRA_SENDER_CONTACT_URI = "android.bluetooth.mapmce.profile.extra.SENDER_CONTACT_URI";
    public static final int READ = 1;
    public static final int RESULT_CANCELED = 2;
    public static final int RESULT_FAILURE = 0;
    public static final int RESULT_SUCCESS = 1;
    public static final int STATE_ERROR = -1;
    public static final int UNDELETED = 2;
    public static final int UNREAD = 0;
    private static final int UPLOADING_FEATURE_BITMASK = 8;
    private final BluetoothAdapter mAdapter;
    private final AttributionSource mAttributionSource;
    private final CloseGuard mCloseGuard;
    private final BluetoothProfileConnector<IBluetoothMapClient> mProfileConnector;
    private static final String TAG = "BluetoothMapClient";
    private static final boolean DBG = Log.isLoggable(TAG, 3);
    private static final boolean VDBG = Log.isLoggable(TAG, 2);

    BluetoothMapClient(Context context, BluetoothProfile.ServiceListener listener, BluetoothAdapter adapter) {
        BluetoothProfileConnector<IBluetoothMapClient> bluetoothProfileConnector = new BluetoothProfileConnector(this, 18, TAG, IBluetoothMapClient.class.getName()) { // from class: android.bluetooth.BluetoothMapClient.1
            @Override // android.bluetooth.BluetoothProfileConnector
            public IBluetoothMapClient getServiceInterface(IBinder service) {
                return IBluetoothMapClient.Stub.asInterface(service);
            }
        };
        this.mProfileConnector = bluetoothProfileConnector;
        if (DBG) {
            Log.d(TAG, "Create BluetoothMapClient proxy object");
        }
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
        CloseGuard closeGuard = this.mCloseGuard;
        if (closeGuard != null) {
            closeGuard.close();
        }
    }

    private IBluetoothMapClient getService() {
        return this.mProfileConnector.getService();
    }

    public boolean isConnected(BluetoothDevice device) {
        if (VDBG) {
            Log.d(TAG, "isConnected(" + device + NavigationBarInflaterView.KEY_CODE_END);
        }
        IBluetoothMapClient service = getService();
        if (service == null) {
            Log.w(TAG, "Proxy not attached to service");
            if (DBG) {
                Log.d(TAG, Log.getStackTraceString(new Throwable()));
            }
        } else if (isEnabled()) {
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
        boolean z = DBG;
        if (z) {
            Log.d(TAG, "connect(" + device + ")for MAPS MCE");
        }
        IBluetoothMapClient service = getService();
        if (service == null) {
            Log.w(TAG, "Proxy not attached to service");
            if (z) {
                Log.d(TAG, Log.getStackTraceString(new Throwable()));
            }
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
        boolean z = DBG;
        if (z) {
            Log.d(TAG, "disconnect(" + device + NavigationBarInflaterView.KEY_CODE_END);
        }
        IBluetoothMapClient service = getService();
        if (service == null) {
            Log.w(TAG, "Proxy not attached to service");
            if (z) {
                Log.d(TAG, Log.getStackTraceString(new Throwable()));
            }
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
    @SystemApi
    public List<BluetoothDevice> getConnectedDevices() {
        boolean z = DBG;
        if (z) {
            Log.d(TAG, "getConnectedDevices()");
        }
        IBluetoothMapClient service = getService();
        List<BluetoothDevice> arrayList = new ArrayList<>();
        if (service == null) {
            Log.w(TAG, "Proxy not attached to service");
            if (z) {
                Log.d(TAG, Log.getStackTraceString(new Throwable()));
            }
        } else if (isEnabled()) {
            try {
                SynchronousResultReceiver<List<BluetoothDevice>> recv = SynchronousResultReceiver.get();
                service.getConnectedDevices(this.mAttributionSource, recv);
                return Attributable.setAttributionSource(recv.awaitResultNoInterrupt(BluetoothUtils.getSyncTimeout()).getValue(arrayList), this.mAttributionSource);
            } catch (RemoteException e) {
                Log.e(TAG, e.toString() + "\n" + Log.getStackTraceString(new Throwable()));
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
        boolean z = DBG;
        if (z) {
            Log.d(TAG, "getDevicesMatchingStates()");
        }
        IBluetoothMapClient service = getService();
        List<BluetoothDevice> arrayList = new ArrayList<>();
        if (service == null) {
            Log.w(TAG, "Proxy not attached to service");
            if (z) {
                Log.d(TAG, Log.getStackTraceString(new Throwable()));
            }
        } else if (isEnabled()) {
            try {
                SynchronousResultReceiver<List<BluetoothDevice>> recv = SynchronousResultReceiver.get();
                service.getDevicesMatchingConnectionStates(states, this.mAttributionSource, recv);
                return Attributable.setAttributionSource(recv.awaitResultNoInterrupt(BluetoothUtils.getSyncTimeout()).getValue(arrayList), this.mAttributionSource);
            } catch (RemoteException e) {
                Log.e(TAG, e.toString() + "\n" + Log.getStackTraceString(new Throwable()));
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
        boolean z = DBG;
        if (z) {
            Log.d(TAG, "getConnectionState(" + device + NavigationBarInflaterView.KEY_CODE_END);
        }
        IBluetoothMapClient service = getService();
        if (service == null) {
            Log.w(TAG, "Proxy not attached to service");
            if (z) {
                Log.d(TAG, Log.getStackTraceString(new Throwable()));
            }
        } else if (isEnabled() && isValidDevice(device)) {
            try {
                SynchronousResultReceiver<Integer> recv = SynchronousResultReceiver.get();
                service.getConnectionState(device, this.mAttributionSource, recv);
                return recv.awaitResultNoInterrupt(BluetoothUtils.getSyncTimeout()).getValue(0).intValue();
            } catch (RemoteException e) {
                Log.e(TAG, e.toString() + "\n" + Log.getStackTraceString(new Throwable()));
                throw e.rethrowFromSystemServer();
            } catch (TimeoutException e2) {
                Log.e(TAG, e2.toString() + "\n" + Log.getStackTraceString(new Throwable()));
            }
        }
        return 0;
    }

    public boolean setPriority(BluetoothDevice device, int priority) {
        if (DBG) {
            Log.d(TAG, "setPriority(" + device + ", " + priority + NavigationBarInflaterView.KEY_CODE_END);
        }
        return setConnectionPolicy(device, BluetoothAdapter.priorityToConnectionPolicy(priority));
    }

    @SystemApi
    public boolean setConnectionPolicy(BluetoothDevice device, int connectionPolicy) {
        boolean z = DBG;
        if (z) {
            Log.d(TAG, "setConnectionPolicy(" + device + ", " + connectionPolicy + NavigationBarInflaterView.KEY_CODE_END);
        }
        IBluetoothMapClient service = getService();
        if (service == null) {
            Log.w(TAG, "Proxy not attached to service");
            if (z) {
                Log.d(TAG, Log.getStackTraceString(new Throwable()));
            }
        } else if (isEnabled() && isValidDevice(device) && (connectionPolicy == 0 || connectionPolicy == 100)) {
            try {
                SynchronousResultReceiver<Boolean> recv = SynchronousResultReceiver.get();
                service.setConnectionPolicy(device, connectionPolicy, this.mAttributionSource, recv);
                return recv.awaitResultNoInterrupt(BluetoothUtils.getSyncTimeout()).getValue(false).booleanValue();
            } catch (RemoteException e) {
                Log.e(TAG, e.toString() + "\n" + Log.getStackTraceString(new Throwable()));
                throw e.rethrowFromSystemServer();
            } catch (TimeoutException e2) {
                Log.e(TAG, e2.toString() + "\n" + Log.getStackTraceString(new Throwable()));
            }
        }
        return false;
    }

    public int getPriority(BluetoothDevice device) {
        if (VDBG) {
            Log.d(TAG, "getPriority(" + device + NavigationBarInflaterView.KEY_CODE_END);
        }
        return BluetoothAdapter.connectionPolicyToPriority(getConnectionPolicy(device));
    }

    @SystemApi
    public int getConnectionPolicy(BluetoothDevice device) {
        if (VDBG) {
            Log.d(TAG, "getConnectionPolicy(" + device + NavigationBarInflaterView.KEY_CODE_END);
        }
        IBluetoothMapClient service = getService();
        if (service == null) {
            Log.w(TAG, "Proxy not attached to service");
            if (DBG) {
                Log.d(TAG, Log.getStackTraceString(new Throwable()));
            }
        } else if (isEnabled() && isValidDevice(device)) {
            try {
                SynchronousResultReceiver<Integer> recv = SynchronousResultReceiver.get();
                service.getConnectionPolicy(device, this.mAttributionSource, recv);
                return recv.awaitResultNoInterrupt(BluetoothUtils.getSyncTimeout()).getValue(0).intValue();
            } catch (RemoteException e) {
                Log.e(TAG, e.toString() + "\n" + Log.getStackTraceString(new Throwable()));
                throw e.rethrowFromSystemServer();
            } catch (TimeoutException e2) {
                Log.e(TAG, e2.toString() + "\n" + Log.getStackTraceString(new Throwable()));
            }
        }
        return 0;
    }

    @SystemApi
    public boolean sendMessage(BluetoothDevice device, Collection<Uri> contacts, String message, PendingIntent sentIntent, PendingIntent deliveredIntent) {
        return sendMessage(device, (Uri[]) contacts.toArray(new Uri[contacts.size()]), message, sentIntent, deliveredIntent);
    }

    public boolean sendMessage(BluetoothDevice device, Uri[] contacts, String message, PendingIntent sentIntent, PendingIntent deliveredIntent) {
        boolean z = DBG;
        if (z) {
            Log.d(TAG, "sendMessage(" + device + ", " + contacts + ", " + message);
        }
        IBluetoothMapClient service = getService();
        if (service == null) {
            Log.w(TAG, "Proxy not attached to service");
            if (z) {
                Log.d(TAG, Log.getStackTraceString(new Throwable()));
            }
        } else if (isEnabled() && isValidDevice(device)) {
            try {
                SynchronousResultReceiver<Boolean> recv = SynchronousResultReceiver.get();
                service.sendMessage(device, contacts, message, sentIntent, deliveredIntent, this.mAttributionSource, recv);
                return recv.awaitResultNoInterrupt(BluetoothUtils.getSyncTimeout()).getValue(false).booleanValue();
            } catch (RemoteException | TimeoutException e) {
                Log.e(TAG, e.toString() + "\n" + Log.getStackTraceString(new Throwable()));
            }
        }
        return false;
    }

    public boolean getUnreadMessages(BluetoothDevice device) {
        boolean z = DBG;
        if (z) {
            Log.d(TAG, "getUnreadMessages(" + device + NavigationBarInflaterView.KEY_CODE_END);
        }
        IBluetoothMapClient service = getService();
        if (service == null) {
            Log.w(TAG, "Proxy not attached to service");
            if (z) {
                Log.d(TAG, Log.getStackTraceString(new Throwable()));
            }
        } else if (isEnabled() && isValidDevice(device)) {
            try {
                SynchronousResultReceiver<Boolean> recv = SynchronousResultReceiver.get();
                service.getUnreadMessages(device, this.mAttributionSource, recv);
                return recv.awaitResultNoInterrupt(BluetoothUtils.getSyncTimeout()).getValue(false).booleanValue();
            } catch (RemoteException | TimeoutException e) {
                Log.e(TAG, e.toString() + "\n" + Log.getStackTraceString(new Throwable()));
            }
        }
        return false;
    }

    public boolean isUploadingSupported(BluetoothDevice device) {
        boolean z = DBG;
        if (z) {
            Log.d(TAG, "isUploadingSupported(" + device + NavigationBarInflaterView.KEY_CODE_END);
        }
        IBluetoothMapClient service = getService();
        if (service == null) {
            Log.w(TAG, "Proxy not attached to service");
            if (z) {
                Log.d(TAG, Log.getStackTraceString(new Throwable()));
            }
        } else if (isEnabled() && isValidDevice(device)) {
            try {
                SynchronousResultReceiver<Integer> recv = SynchronousResultReceiver.get();
                service.getSupportedFeatures(device, this.mAttributionSource, recv);
                return (recv.awaitResultNoInterrupt(BluetoothUtils.getSyncTimeout()).getValue(0).intValue() & 8) > 0;
            } catch (RemoteException | TimeoutException e) {
                Log.e(TAG, e.toString() + "\n" + Log.getStackTraceString(new Throwable()));
            }
        }
        return false;
    }

    public boolean setMessageStatus(BluetoothDevice device, String handle, int status) {
        boolean z = DBG;
        if (z) {
            Log.d(TAG, "setMessageStatus(" + device + ", " + handle + ", " + status + NavigationBarInflaterView.KEY_CODE_END);
        }
        IBluetoothMapClient service = getService();
        if (service == null) {
            Log.w(TAG, "Proxy not attached to service");
            if (z) {
                Log.d(TAG, Log.getStackTraceString(new Throwable()));
            }
        } else if (isEnabled() && isValidDevice(device) && handle != null && (status == 1 || status == 0 || status == 2 || status == 3)) {
            try {
                SynchronousResultReceiver<Boolean> recv = SynchronousResultReceiver.get();
                service.setMessageStatus(device, handle, status, this.mAttributionSource, recv);
                return recv.awaitResultNoInterrupt(BluetoothUtils.getSyncTimeout()).getValue(false).booleanValue();
            } catch (RemoteException | TimeoutException e) {
                Log.e(TAG, e.toString() + "\n" + Log.getStackTraceString(new Throwable()));
            }
        }
        return false;
    }

    private boolean isEnabled() {
        return this.mAdapter.isEnabled();
    }

    private static boolean isValidDevice(BluetoothDevice device) {
        return device != null && BluetoothAdapter.checkBluetoothAddress(device.getAddress());
    }
}

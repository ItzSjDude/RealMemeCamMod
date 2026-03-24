package android.bluetooth;

import android.bluetooth.BluetoothProfile;
import android.bluetooth.IBluetoothLeCallControl;
import android.bluetooth.IBluetoothLeCallControlCallback;
import android.bluetooth.IBluetoothProfileServiceConnection;
import android.bluetooth.IBluetoothStateChangeCallback;
import android.content.AttributionSource;
import android.content.ComponentName;
import android.content.Context;
import android.os.Binder;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.Message;
import android.os.ParcelUuid;
import android.os.RemoteException;
import android.util.Log;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class BluetoothLeCallControl implements BluetoothProfile {
    public static final int CAPABILITY_HOLD_CALL = 1;
    public static final int CAPABILITY_JOIN_CALLS = 2;
    private static final boolean DBG = true;
    private static final int MESSAGE_TBS_SERVICE_CONNECTED = 102;
    private static final int MESSAGE_TBS_SERVICE_DISCONNECTED = 103;
    private static final int REG_TIMEOUT = 10000;
    public static final int RESULT_ERROR_APPLICATION = 3;
    public static final int RESULT_ERROR_INVALID_URI = 2;
    public static final int RESULT_ERROR_UNKNOWN_CALL_ID = 1;
    public static final int RESULT_SUCCESS = 0;
    private static final String TAG = "BluetoothLeCallControl";
    public static final int TERMINATION_REASON_CLIENT_HANGUP = 6;
    public static final int TERMINATION_REASON_FAIL = 1;
    public static final int TERMINATION_REASON_INVALID_URI = 0;
    public static final int TERMINATION_REASON_LINE_BUSY = 4;
    public static final int TERMINATION_REASON_NETWORK_CONGESTION = 5;
    public static final int TERMINATION_REASON_NO_ANSWER = 8;
    public static final int TERMINATION_REASON_NO_SERVICE = 7;
    public static final int TERMINATION_REASON_REMOTE_HANGUP = 2;
    public static final int TERMINATION_REASON_SERVER_HANGUP = 3;
    private static final boolean VDBG = false;
    private BluetoothAdapter mAdapter;
    private final AttributionSource mAttributionSource;
    private final IBluetoothStateChangeCallback mBluetoothStateChangeCallback;
    private final IBluetoothProfileServiceConnection mConnection;
    private Context mContext;
    private final Handler mHandler;
    private volatile IBluetoothLeCallControl mService;
    private BluetoothProfile.ServiceListener mServiceListener;
    private String mToken;
    private int mCcid = 0;
    private Callback mCallback = null;

    @Retention(RetentionPolicy.SOURCE)
    public @interface Result {
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface TerminationReason {
    }

    public static abstract class Callback {
        private static final String TAG = "BluetoothLeCallControl.Callback";

        public abstract void onAcceptCall(int i, UUID uuid);

        public abstract void onPlaceCall(int i, UUID uuid, String str);

        public abstract void onTerminateCall(int i, UUID uuid);

        public void onHoldCall(int requestId, UUID callId) {
            Log.e(TAG, "onHoldCall: unimplemented, however CAPABILITY_HOLD_CALL is set!");
        }

        public void onUnholdCall(int requestId, UUID callId) {
            Log.e(TAG, "onUnholdCall: unimplemented, however CAPABILITY_HOLD_CALL is set!");
        }

        public void onJoinCalls(int requestId, List<UUID> callIds) {
            Log.e(TAG, "onJoinCalls: unimplemented, however CAPABILITY_JOIN_CALLS is set!");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    class CallbackWrapper extends IBluetoothLeCallControlCallback.Stub {
        private final Callback mCallback;
        private final Executor mExecutor;

        CallbackWrapper(Executor executor, Callback callback) {
            this.mExecutor = executor;
            this.mCallback = callback;
        }

        @Override // android.bluetooth.IBluetoothLeCallControlCallback
        public void onBearerRegistered(int ccid) {
            if (this.mCallback != null) {
                BluetoothLeCallControl.this.mCcid = ccid;
            } else {
                Log.e(BluetoothLeCallControl.TAG, "onBearerRegistered: mCallback is null");
            }
        }

        @Override // android.bluetooth.IBluetoothLeCallControlCallback
        public void onAcceptCall(final int requestId, final ParcelUuid uuid) {
            long identityToken = Binder.clearCallingIdentity();
            try {
                this.mExecutor.execute(new Runnable() { // from class: android.bluetooth.BluetoothLeCallControl$CallbackWrapper$$ExternalSyntheticLambda2
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.m773xdc50e0b5(requestId, uuid);
                    }
                });
            } finally {
                Binder.restoreCallingIdentity(identityToken);
            }
        }

        /* renamed from: lambda$onAcceptCall$0$android-bluetooth-BluetoothLeCallControl$CallbackWrapper, reason: not valid java name */
        /* synthetic */ void m773xdc50e0b5(int requestId, ParcelUuid uuid) {
            this.mCallback.onAcceptCall(requestId, uuid.getUuid());
        }

        @Override // android.bluetooth.IBluetoothLeCallControlCallback
        public void onTerminateCall(final int requestId, final ParcelUuid uuid) {
            long identityToken = Binder.clearCallingIdentity();
            try {
                this.mExecutor.execute(new Runnable() { // from class: android.bluetooth.BluetoothLeCallControl$CallbackWrapper$$ExternalSyntheticLambda1
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.m777x19e745d3(requestId, uuid);
                    }
                });
            } finally {
                Binder.restoreCallingIdentity(identityToken);
            }
        }

        /* renamed from: lambda$onTerminateCall$1$android-bluetooth-BluetoothLeCallControl$CallbackWrapper, reason: not valid java name */
        /* synthetic */ void m777x19e745d3(int requestId, ParcelUuid uuid) {
            this.mCallback.onTerminateCall(requestId, uuid.getUuid());
        }

        @Override // android.bluetooth.IBluetoothLeCallControlCallback
        public void onHoldCall(final int requestId, final ParcelUuid uuid) {
            long identityToken = Binder.clearCallingIdentity();
            try {
                this.mExecutor.execute(new Runnable() { // from class: android.bluetooth.BluetoothLeCallControl$CallbackWrapper$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.m774xd2455c(requestId, uuid);
                    }
                });
            } finally {
                Binder.restoreCallingIdentity(identityToken);
            }
        }

        /* renamed from: lambda$onHoldCall$2$android-bluetooth-BluetoothLeCallControl$CallbackWrapper, reason: not valid java name */
        /* synthetic */ void m774xd2455c(int requestId, ParcelUuid uuid) {
            this.mCallback.onHoldCall(requestId, uuid.getUuid());
        }

        @Override // android.bluetooth.IBluetoothLeCallControlCallback
        public void onUnholdCall(final int requestId, final ParcelUuid uuid) {
            long identityToken = Binder.clearCallingIdentity();
            try {
                this.mExecutor.execute(new Runnable() { // from class: android.bluetooth.BluetoothLeCallControl$CallbackWrapper$$ExternalSyntheticLambda5
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.m778x69c5d242(requestId, uuid);
                    }
                });
            } finally {
                Binder.restoreCallingIdentity(identityToken);
            }
        }

        /* renamed from: lambda$onUnholdCall$3$android-bluetooth-BluetoothLeCallControl$CallbackWrapper, reason: not valid java name */
        /* synthetic */ void m778x69c5d242(int requestId, ParcelUuid uuid) {
            this.mCallback.onUnholdCall(requestId, uuid.getUuid());
        }

        @Override // android.bluetooth.IBluetoothLeCallControlCallback
        public void onPlaceCall(final int requestId, final ParcelUuid uuid, final String uri) {
            long identityToken = Binder.clearCallingIdentity();
            try {
                this.mExecutor.execute(new Runnable() { // from class: android.bluetooth.BluetoothLeCallControl$CallbackWrapper$$ExternalSyntheticLambda4
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.m776x8b111ca(requestId, uuid, uri);
                    }
                });
            } finally {
                Binder.restoreCallingIdentity(identityToken);
            }
        }

        /* renamed from: lambda$onPlaceCall$4$android-bluetooth-BluetoothLeCallControl$CallbackWrapper, reason: not valid java name */
        /* synthetic */ void m776x8b111ca(int requestId, ParcelUuid uuid, String uri) {
            this.mCallback.onPlaceCall(requestId, uuid.getUuid(), uri);
        }

        @Override // android.bluetooth.IBluetoothLeCallControlCallback
        public void onJoinCalls(final int requestId, List<ParcelUuid> parcelUuids) {
            final List<UUID> uuids = new ArrayList<>();
            for (ParcelUuid parcelUuid : parcelUuids) {
                uuids.add(parcelUuid.getUuid());
            }
            long identityToken = Binder.clearCallingIdentity();
            try {
                this.mExecutor.execute(new Runnable() { // from class: android.bluetooth.BluetoothLeCallControl$CallbackWrapper$$ExternalSyntheticLambda3
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.m775x71bd7263(requestId, uuids);
                    }
                });
            } finally {
                Binder.restoreCallingIdentity(identityToken);
            }
        }

        /* renamed from: lambda$onJoinCalls$5$android-bluetooth-BluetoothLeCallControl$CallbackWrapper, reason: not valid java name */
        /* synthetic */ void m775x71bd7263(int requestId, List uuids) {
            this.mCallback.onJoinCalls(requestId, uuids);
        }
    }

    BluetoothLeCallControl(Context context, BluetoothProfile.ServiceListener listener) {
        IBluetoothStateChangeCallback.Stub stub = new IBluetoothStateChangeCallback.Stub() { // from class: android.bluetooth.BluetoothLeCallControl.1
            @Override // android.bluetooth.IBluetoothStateChangeCallback
            public void onBluetoothStateChange(boolean up) {
                Log.d(BluetoothLeCallControl.TAG, "onBluetoothStateChange: up=" + up);
                if (!up) {
                    BluetoothLeCallControl.this.doUnbind();
                } else {
                    BluetoothLeCallControl.this.doBind();
                }
            }
        };
        this.mBluetoothStateChangeCallback = stub;
        this.mConnection = new IBluetoothProfileServiceConnection.Stub() { // from class: android.bluetooth.BluetoothLeCallControl.2
            @Override // android.bluetooth.IBluetoothProfileServiceConnection
            public void onServiceConnected(ComponentName className, IBinder service) {
                Log.d(BluetoothLeCallControl.TAG, "Proxy object connected");
                BluetoothLeCallControl.this.mService = IBluetoothLeCallControl.Stub.asInterface(service);
                BluetoothLeCallControl.this.mHandler.sendMessage(BluetoothLeCallControl.this.mHandler.obtainMessage(102));
            }

            @Override // android.bluetooth.IBluetoothProfileServiceConnection
            public void onServiceDisconnected(ComponentName className) {
                Log.d(BluetoothLeCallControl.TAG, "Proxy object disconnected");
                BluetoothLeCallControl.this.doUnbind();
                BluetoothLeCallControl.this.mHandler.sendMessage(BluetoothLeCallControl.this.mHandler.obtainMessage(103));
            }
        };
        this.mHandler = new Handler(Looper.getMainLooper()) { // from class: android.bluetooth.BluetoothLeCallControl.3
            @Override // android.os.Handler
            public void handleMessage(Message msg) {
                switch (msg.what) {
                    case 102:
                        if (BluetoothLeCallControl.this.mServiceListener != null) {
                            BluetoothLeCallControl.this.mServiceListener.onServiceConnected(27, BluetoothLeCallControl.this);
                            break;
                        }
                        break;
                    case 103:
                        if (BluetoothLeCallControl.this.mServiceListener != null) {
                            BluetoothLeCallControl.this.mServiceListener.onServiceDisconnected(27);
                            break;
                        }
                        break;
                }
            }
        };
        this.mContext = context;
        BluetoothAdapter defaultAdapter = BluetoothAdapter.getDefaultAdapter();
        this.mAdapter = defaultAdapter;
        this.mAttributionSource = defaultAdapter.getAttributionSource();
        this.mServiceListener = listener;
        IBluetoothManager mgr = this.mAdapter.getBluetoothManager();
        if (mgr != null) {
            try {
                mgr.registerStateChangeCallback(stub);
            } catch (RemoteException e) {
                Log.e(TAG, "", e);
            }
        }
        doBind();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean doBind() {
        synchronized (this.mConnection) {
            if (this.mService == null) {
                try {
                    return this.mAdapter.getBluetoothManager().bindBluetoothProfileService(27, this.mConnection);
                } catch (RemoteException e) {
                    Log.e(TAG, "Unable to bind TelephoneBearerService", e);
                }
            }
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void doUnbind() {
        synchronized (this.mConnection) {
            if (this.mService != null) {
                try {
                    try {
                        this.mAdapter.getBluetoothManager().unbindBluetoothProfileService(27, this.mConnection);
                    } catch (RemoteException e) {
                        Log.e(TAG, "Unable to unbind TelephoneBearerService", e);
                    }
                } finally {
                    this.mService = null;
                }
            }
        }
    }

    void close() {
        unregisterBearer();
        IBluetoothManager mgr = this.mAdapter.getBluetoothManager();
        if (mgr != null) {
            try {
                mgr.unregisterStateChangeCallback(this.mBluetoothStateChangeCallback);
            } catch (RemoteException re) {
                Log.e(TAG, "", re);
            }
        }
        this.mServiceListener = null;
        doUnbind();
    }

    private IBluetoothLeCallControl getService() {
        return this.mService;
    }

    @Override // android.bluetooth.BluetoothProfile
    public int getConnectionState(BluetoothDevice device) {
        throw new UnsupportedOperationException("not supported");
    }

    @Override // android.bluetooth.BluetoothProfile
    public List<BluetoothDevice> getConnectedDevices() {
        throw new UnsupportedOperationException("not supported");
    }

    @Override // android.bluetooth.BluetoothProfile
    public List<BluetoothDevice> getDevicesMatchingConnectionStates(int[] states) {
        throw new UnsupportedOperationException("not supported");
    }

    public boolean registerBearer(String uci, List<String> uriSchemes, int capabilities, String provider, int technology, Executor executor, Callback callback) {
        Callback callback2;
        CallbackWrapper callbackWrapper;
        Log.d(TAG, "registerBearer");
        if (callback == null) {
            throw new IllegalArgumentException("null parameter: " + callback);
        }
        if (this.mCcid != 0) {
            return false;
        }
        this.mToken = uci;
        IBluetoothLeCallControl service = getService();
        if (service == null) {
            Log.w(TAG, "Proxy not attached to service");
            return false;
        }
        if (this.mCallback != null) {
            Log.e(TAG, "Bearer can be opened only once");
            return false;
        }
        this.mCallback = callback;
        try {
            callbackWrapper = new CallbackWrapper(executor, callback);
            callback2 = null;
        } catch (RemoteException e) {
            e = e;
            callback2 = null;
        }
        try {
            service.registerBearer(this.mToken, callbackWrapper, uci, uriSchemes, capabilities, provider, technology, this.mAttributionSource);
            if (this.mCcid == 0) {
                this.mCallback = null;
                return false;
            }
            return true;
        } catch (RemoteException e2) {
            e = e2;
            Log.e(TAG, e.toString() + "\n" + Log.getStackTraceString(new Throwable()));
            this.mCallback = callback2;
            return false;
        }
    }

    public void unregisterBearer() {
        Log.d(TAG, "unregisterBearer");
        if (this.mCcid == 0) {
            return;
        }
        IBluetoothLeCallControl service = getService();
        if (service == null) {
            Log.w(TAG, "Proxy not attached to service");
            return;
        }
        int i = this.mCcid;
        this.mCcid = 0;
        this.mCallback = null;
        try {
            service.unregisterBearer(this.mToken, this.mAttributionSource);
        } catch (RemoteException e) {
            Log.e(TAG, e.toString() + "\n" + Log.getStackTraceString(new Throwable()));
        }
    }

    public int getContentControlId() {
        return this.mCcid;
    }

    public void onCallAdded(BluetoothLeCall call) {
        Log.d(TAG, "onCallAdded: call=" + call);
        if (this.mCcid == 0) {
            return;
        }
        IBluetoothLeCallControl service = getService();
        if (service == null) {
            Log.w(TAG, "Proxy not attached to service");
            return;
        }
        try {
            service.callAdded(this.mCcid, call, this.mAttributionSource);
        } catch (RemoteException e) {
            Log.e(TAG, e.toString() + "\n" + Log.getStackTraceString(new Throwable()));
        }
    }

    public void onCallRemoved(UUID callId, int reason) {
        Log.d(TAG, "callRemoved: callId=" + callId);
        if (this.mCcid == 0) {
            return;
        }
        IBluetoothLeCallControl service = getService();
        if (service == null) {
            Log.w(TAG, "Proxy not attached to service");
            return;
        }
        try {
            service.callRemoved(this.mCcid, new ParcelUuid(callId), reason, this.mAttributionSource);
        } catch (RemoteException e) {
            Log.e(TAG, e.toString() + "\n" + Log.getStackTraceString(new Throwable()));
        }
    }

    public void onCallStateChanged(UUID callId, int state) {
        Log.d(TAG, "callStateChanged: callId=" + callId + " state=" + state);
        if (this.mCcid == 0) {
            return;
        }
        IBluetoothLeCallControl service = getService();
        if (service == null) {
            Log.w(TAG, "Proxy not attached to service");
            return;
        }
        try {
            service.callStateChanged(this.mCcid, new ParcelUuid(callId), state, this.mAttributionSource);
        } catch (RemoteException e) {
            Log.e(TAG, e.toString() + "\n" + Log.getStackTraceString(new Throwable()));
        }
    }

    public void currentCallsList(List<BluetoothLeCall> calls) {
        IBluetoothLeCallControl service = getService();
        if (service == null) {
            Log.w(TAG, "Proxy not attached to service");
            return;
        }
        try {
            service.currentCallsList(this.mCcid, calls, this.mAttributionSource);
        } catch (RemoteException e) {
            Log.e(TAG, e.toString() + "\n" + Log.getStackTraceString(new Throwable()));
        }
    }

    public void networkStateChanged(String provider, int technology) {
        Log.d(TAG, "networkStateChanged: provider=" + provider + ", technology=" + technology);
        if (this.mCcid == 0) {
            return;
        }
        IBluetoothLeCallControl service = getService();
        if (service == null) {
            Log.w(TAG, "Proxy not attached to service");
            return;
        }
        try {
            service.networkStateChanged(this.mCcid, provider, technology, this.mAttributionSource);
        } catch (RemoteException e) {
            Log.e(TAG, e.toString() + "\n" + Log.getStackTraceString(new Throwable()));
        }
    }

    public void requestResult(int requestId, int result) {
        Log.d(TAG, "requestResult: requestId=" + requestId + " result=" + result);
        if (this.mCcid == 0) {
            return;
        }
        IBluetoothLeCallControl service = getService();
        if (service == null) {
            Log.w(TAG, "Proxy not attached to service");
            return;
        }
        try {
            service.requestResult(this.mCcid, requestId, result, this.mAttributionSource);
        } catch (RemoteException e) {
            Log.e(TAG, e.toString() + "\n" + Log.getStackTraceString(new Throwable()));
        }
    }

    private static boolean isValidDevice(BluetoothDevice device) {
        return device != null && BluetoothAdapter.checkBluetoothAddress(device.getAddress());
    }

    private static void log(String msg) {
        Log.d(TAG, msg);
    }
}

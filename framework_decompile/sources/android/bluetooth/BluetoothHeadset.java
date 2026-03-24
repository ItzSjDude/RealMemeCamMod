package android.bluetooth;

import android.Manifest;
import android.annotation.SystemApi;
import android.bluetooth.BluetoothProfile;
import android.bluetooth.IBluetoothHeadset;
import android.bluetooth.IBluetoothProfileServiceConnection;
import android.bluetooth.IBluetoothStateChangeCallback;
import android.content.AttributionSource;
import android.content.ComponentName;
import android.content.Context;
import android.inputmethodservice.navigationbar.NavigationBarInflaterView;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.Message;
import android.os.RemoteException;
import android.util.CloseGuard;
import android.util.Log;
import com.android.modules.utils.SynchronousResultReceiver;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.locks.ReentrantReadWriteLock;

/* loaded from: classes.dex */
public final class BluetoothHeadset implements BluetoothProfile {

    @SystemApi
    public static final String ACTION_ACTIVE_DEVICE_CHANGED = "android.bluetooth.headset.profile.action.ACTIVE_DEVICE_CHANGED";
    public static final String ACTION_AUDIO_STATE_CHANGED = "android.bluetooth.headset.profile.action.AUDIO_STATE_CHANGED";
    public static final String ACTION_CONNECTION_STATE_CHANGED = "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED";
    public static final String ACTION_HF_INDICATORS_VALUE_CHANGED = "android.bluetooth.headset.action.HF_INDICATORS_VALUE_CHANGED";
    public static final String ACTION_HF_TWSP_BATTERY_STATE_CHANGED = "android.bluetooth.headset.action.HF_TWSP_BATTERY_STATE_CHANGED";
    public static final String ACTION_VENDOR_SPECIFIC_HEADSET_EVENT = "android.bluetooth.headset.action.VENDOR_SPECIFIC_HEADSET_EVENT";
    public static final int AT_CMD_TYPE_ACTION = 4;
    public static final int AT_CMD_TYPE_BASIC = 3;
    public static final int AT_CMD_TYPE_READ = 0;
    public static final int AT_CMD_TYPE_SET = 2;
    public static final int AT_CMD_TYPE_TEST = 1;
    private static final boolean DBG = true;
    public static final String EXTRA_HF_INDICATORS_IND_ID = "android.bluetooth.headset.extra.HF_INDICATORS_IND_ID";
    public static final String EXTRA_HF_INDICATORS_IND_VALUE = "android.bluetooth.headset.extra.HF_INDICATORS_IND_VALUE";
    public static final String EXTRA_HF_TWSP_BATTERY_LEVEL = "android.bluetooth.headset.extra.HF_TWSP_BATTERY_LEVEL";
    public static final String EXTRA_HF_TWSP_BATTERY_STATE = "android.bluetooth.headset.extra.HF_TWSP_BATTERY_STATE";
    public static final String EXTRA_VENDOR_SPECIFIC_HEADSET_EVENT_ARGS = "android.bluetooth.headset.extra.VENDOR_SPECIFIC_HEADSET_EVENT_ARGS";
    public static final String EXTRA_VENDOR_SPECIFIC_HEADSET_EVENT_CMD = "android.bluetooth.headset.extra.VENDOR_SPECIFIC_HEADSET_EVENT_CMD";
    public static final String EXTRA_VENDOR_SPECIFIC_HEADSET_EVENT_CMD_TYPE = "android.bluetooth.headset.extra.VENDOR_SPECIFIC_HEADSET_EVENT_CMD_TYPE";
    private static final int MESSAGE_HEADSET_SERVICE_CONNECTED = 100;
    private static final int MESSAGE_HEADSET_SERVICE_DISCONNECTED = 101;
    public static final int STATE_AUDIO_CONNECTED = 12;
    public static final int STATE_AUDIO_CONNECTING = 11;
    public static final int STATE_AUDIO_DISCONNECTED = 10;
    public static final int STATE_AUDIO_DISCONNECTING = 13;
    private static final String TAG = "BluetoothHeadset";
    private static final boolean VDBG = false;
    public static final String VENDOR_RESULT_CODE_COMMAND_ANDROID = "+ANDROID";
    public static final String VENDOR_SPECIFIC_HEADSET_EVENT_COMPANY_ID_CATEGORY = "android.bluetooth.headset.intent.category.companyid";
    public static final String VENDOR_SPECIFIC_HEADSET_EVENT_IPHONEACCEV = "+IPHONEACCEV";
    public static final int VENDOR_SPECIFIC_HEADSET_EVENT_IPHONEACCEV_BATTERY_LEVEL = 1;
    public static final String VENDOR_SPECIFIC_HEADSET_EVENT_XAPL = "+XAPL";
    public static final String VENDOR_SPECIFIC_HEADSET_EVENT_XEVENT = "+XEVENT";
    public static final String VENDOR_SPECIFIC_HEADSET_EVENT_XEVENT_BATTERY_LEVEL = "BATTERY";
    private final BluetoothAdapter mAdapter;
    private final AttributionSource mAttributionSource;
    private final IBluetoothStateChangeCallback mBluetoothStateChangeCallback;
    private final IBluetoothProfileServiceConnection mConnection;
    private Context mContext;
    private final Handler mHandler;
    private IBluetoothHeadset mService;
    private BluetoothProfile.ServiceListener mServiceListener;
    private final CloseGuard mCloseGuard = new CloseGuard();
    private final ReentrantReadWriteLock mServiceLock = new ReentrantReadWriteLock();

    @Retention(RetentionPolicy.SOURCE)
    public @interface ConnectAudioReturnValues {
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface DisconnectAudioReturnValues {
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface GetAudioRouteAllowedReturnValues {
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface GetAudioStateReturnValues {
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface SetAudioRouteAllowedReturnValues {
    }

    BluetoothHeadset(Context context, BluetoothProfile.ServiceListener l, BluetoothAdapter adapter) {
        IBluetoothStateChangeCallback.Stub stub = new IBluetoothStateChangeCallback.Stub() { // from class: android.bluetooth.BluetoothHeadset.1
            @Override // android.bluetooth.IBluetoothStateChangeCallback
            public void onBluetoothStateChange(boolean up) {
                Log.d(BluetoothHeadset.TAG, "onBluetoothStateChange: up=" + up);
                if (!up) {
                    BluetoothHeadset.this.doUnbind();
                } else {
                    BluetoothHeadset.this.doBind();
                }
            }
        };
        this.mBluetoothStateChangeCallback = stub;
        this.mConnection = new IBluetoothProfileServiceConnection.Stub() { // from class: android.bluetooth.BluetoothHeadset.2
            @Override // android.bluetooth.IBluetoothProfileServiceConnection
            public void onServiceConnected(ComponentName className, IBinder service) {
                Log.d(BluetoothHeadset.TAG, "Proxy object connected");
                try {
                    BluetoothHeadset.this.mServiceLock.writeLock().lock();
                    BluetoothHeadset.this.mService = IBluetoothHeadset.Stub.asInterface(service);
                    BluetoothHeadset.this.mHandler.sendMessage(BluetoothHeadset.this.mHandler.obtainMessage(100));
                } finally {
                    BluetoothHeadset.this.mServiceLock.writeLock().unlock();
                }
            }

            @Override // android.bluetooth.IBluetoothProfileServiceConnection
            public void onServiceDisconnected(ComponentName className) {
                Log.d(BluetoothHeadset.TAG, "Proxy object disconnected");
                try {
                    BluetoothHeadset.this.mServiceLock.writeLock().lock();
                    BluetoothHeadset.this.mHandler.sendMessage(BluetoothHeadset.this.mHandler.obtainMessage(101));
                } finally {
                    BluetoothHeadset.this.mServiceLock.writeLock().unlock();
                }
            }
        };
        this.mHandler = new Handler(Looper.getMainLooper()) { // from class: android.bluetooth.BluetoothHeadset.3
            @Override // android.os.Handler
            public void handleMessage(Message msg) {
                switch (msg.what) {
                    case 100:
                        if (BluetoothHeadset.this.mServiceListener != null) {
                            BluetoothHeadset.this.mServiceListener.onServiceConnected(1, BluetoothHeadset.this);
                            break;
                        }
                        break;
                    case 101:
                        if (BluetoothHeadset.this.mServiceListener != null) {
                            BluetoothHeadset.this.mServiceListener.onServiceDisconnected(1);
                            break;
                        }
                        break;
                }
            }
        };
        this.mContext = context;
        this.mServiceListener = l;
        this.mAdapter = adapter;
        this.mAttributionSource = adapter.getAttributionSource();
        if (context.getApplicationInfo().targetSdkVersion <= 30 && context.checkSelfPermission(Manifest.permission.BLUETOOTH) != 0) {
            throw new SecurityException("Need BLUETOOTH permission");
        }
        IBluetoothManager mgr = adapter.getBluetoothManager();
        if (mgr != null) {
            try {
                mgr.registerStateChangeCallback(stub);
            } catch (RemoteException e) {
                Log.e(TAG, "", e);
            }
        }
        doBind();
        this.mCloseGuard.open("close");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean doBind() {
        synchronized (this.mConnection) {
            if (this.mService == null) {
                Log.d(TAG, "Binding service...");
                try {
                    return this.mAdapter.getBluetoothManager().bindBluetoothProfileService(1, this.mConnection);
                } catch (RemoteException e) {
                    Log.e(TAG, "Unable to bind HeadsetService", e);
                }
            }
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v12 */
    /* JADX WARN: Type inference failed for: r1v13 */
    /* JADX WARN: Type inference failed for: r1v14 */
    /* JADX WARN: Type inference failed for: r1v3 */
    /* JADX WARN: Type inference failed for: r1v6, types: [android.bluetooth.IBluetoothHeadset] */
    /* JADX WARN: Type inference failed for: r1v9, types: [java.util.concurrent.locks.ReentrantReadWriteLock$WriteLock] */
    public void doUnbind() {
        synchronized (this.mConnection) {
            Log.d(TAG, "Unbinding service...");
            if (this.mService != null) {
                ?? WriteLock = 0;
                WriteLock = 0;
                try {
                    try {
                        this.mAdapter.getBluetoothManager().unbindBluetoothProfileService(1, this.mConnection);
                        this.mServiceLock.writeLock().lock();
                        this.mService = null;
                        WriteLock = this.mServiceLock.writeLock();
                    } catch (RemoteException e) {
                        Log.e(TAG, "Unable to unbind HeadsetService", e);
                        this.mServiceLock.writeLock().lock();
                        this.mService = null;
                        WriteLock = this.mServiceLock.writeLock();
                    }
                    WriteLock.unlock();
                } catch (Throwable th) {
                    this.mServiceLock.writeLock().lock();
                    this.mService = WriteLock;
                    this.mServiceLock.writeLock().unlock();
                    throw th;
                }
            }
        }
    }

    void close() {
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
        this.mCloseGuard.close();
    }

    protected void finalize() throws Throwable {
        this.mCloseGuard.warnIfOpen();
        close();
    }

    @SystemApi
    public boolean connect(BluetoothDevice device) {
        log("connect(" + device + NavigationBarInflaterView.KEY_CODE_END);
        IBluetoothHeadset service = this.mService;
        if (service == null) {
            Log.w(TAG, "Proxy not attached to service");
            log(Log.getStackTraceString(new Throwable()));
        } else if (isEnabled() && isValidDevice(device)) {
            try {
                SynchronousResultReceiver<Boolean> recv = SynchronousResultReceiver.get();
                service.connectWithAttribution(device, this.mAttributionSource, recv);
                return recv.awaitResultNoInterrupt(BluetoothUtils.getSyncTimeout()).getValue(false).booleanValue();
            } catch (RemoteException | TimeoutException e) {
                Log.e(TAG, e.toString() + "\n" + Log.getStackTraceString(new Throwable()));
            }
        }
        return false;
    }

    @SystemApi
    public boolean disconnect(BluetoothDevice device) {
        log("disconnect(" + device + NavigationBarInflaterView.KEY_CODE_END);
        IBluetoothHeadset service = this.mService;
        if (service == null) {
            Log.w(TAG, "Proxy not attached to service");
            log(Log.getStackTraceString(new Throwable()));
        } else if (isEnabled() && isValidDevice(device)) {
            try {
                SynchronousResultReceiver<Boolean> recv = SynchronousResultReceiver.get();
                service.disconnectWithAttribution(device, this.mAttributionSource, recv);
                return recv.awaitResultNoInterrupt(BluetoothUtils.getSyncTimeout()).getValue(false).booleanValue();
            } catch (RemoteException | TimeoutException e) {
                Log.e(TAG, e.toString() + "\n" + Log.getStackTraceString(new Throwable()));
            }
        }
        return false;
    }

    @Override // android.bluetooth.BluetoothProfile
    public List<BluetoothDevice> getConnectedDevices() {
        try {
            this.mServiceLock.readLock().lock();
            IBluetoothHeadset service = this.mService;
            List<BluetoothDevice> arrayList = new ArrayList<>();
            if (service == null) {
                Log.w(TAG, "Proxy not attached to service");
                log(Log.getStackTraceString(new Throwable()));
            } else if (isEnabled()) {
                try {
                    SynchronousResultReceiver<List<BluetoothDevice>> recv = SynchronousResultReceiver.get();
                    service.getConnectedDevicesWithAttribution(this.mAttributionSource, recv);
                    return Attributable.setAttributionSource(recv.awaitResultNoInterrupt(BluetoothUtils.getSyncTimeout()).getValue(arrayList), this.mAttributionSource);
                } catch (RemoteException | TimeoutException e) {
                    Log.e(TAG, e.toString() + "\n" + Log.getStackTraceString(new Throwable()));
                }
            }
            return arrayList;
        } finally {
            this.mServiceLock.readLock().unlock();
        }
    }

    @Override // android.bluetooth.BluetoothProfile
    public List<BluetoothDevice> getDevicesMatchingConnectionStates(int[] states) {
        IBluetoothHeadset service = this.mService;
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
        IBluetoothHeadset service = this.mService;
        if (service == null) {
            Log.w(TAG, "Proxy not attached to service");
            log(Log.getStackTraceString(new Throwable()));
        } else if (isEnabled() && isValidDevice(device)) {
            try {
                SynchronousResultReceiver<Integer> recv = SynchronousResultReceiver.get();
                service.getConnectionStateWithAttribution(device, this.mAttributionSource, recv);
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
        IBluetoothHeadset service = this.mService;
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
        IBluetoothHeadset service = this.mService;
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

    public boolean isNoiseReductionSupported(BluetoothDevice device) {
        log("isNoiseReductionSupported()");
        IBluetoothHeadset service = this.mService;
        if (service == null) {
            Log.w(TAG, "Proxy not attached to service");
            log(Log.getStackTraceString(new Throwable()));
        } else if (isEnabled() && isValidDevice(device)) {
            try {
                SynchronousResultReceiver<Boolean> recv = SynchronousResultReceiver.get();
                service.isNoiseReductionSupported(device, this.mAttributionSource, recv);
                return recv.awaitResultNoInterrupt(BluetoothUtils.getSyncTimeout()).getValue(false).booleanValue();
            } catch (RemoteException | TimeoutException e) {
                Log.e(TAG, e.toString() + "\n" + Log.getStackTraceString(new Throwable()));
            }
        }
        return false;
    }

    public boolean isVoiceRecognitionSupported(BluetoothDevice device) {
        log("isVoiceRecognitionSupported()");
        IBluetoothHeadset service = this.mService;
        if (service == null) {
            Log.w(TAG, "Proxy not attached to service");
            log(Log.getStackTraceString(new Throwable()));
        } else if (isEnabled() && isValidDevice(device)) {
            try {
                SynchronousResultReceiver<Boolean> recv = SynchronousResultReceiver.get();
                service.isVoiceRecognitionSupported(device, this.mAttributionSource, recv);
                return recv.awaitResultNoInterrupt(BluetoothUtils.getSyncTimeout()).getValue(false).booleanValue();
            } catch (RemoteException | TimeoutException e) {
                Log.e(TAG, e.toString() + "\n" + Log.getStackTraceString(new Throwable()));
            }
        }
        return false;
    }

    public boolean startVoiceRecognition(BluetoothDevice device) {
        log("startVoiceRecognition()");
        IBluetoothHeadset service = this.mService;
        if (service == null) {
            Log.w(TAG, "Proxy not attached to service");
            log(Log.getStackTraceString(new Throwable()));
        } else if (isEnabled() && isValidDevice(device)) {
            try {
                SynchronousResultReceiver<Boolean> recv = SynchronousResultReceiver.get();
                service.startVoiceRecognition(device, this.mAttributionSource, recv);
                return recv.awaitResultNoInterrupt(BluetoothUtils.getSyncTimeout()).getValue(false).booleanValue();
            } catch (RemoteException | TimeoutException e) {
                Log.e(TAG, e.toString() + "\n" + Log.getStackTraceString(new Throwable()));
            }
        }
        return false;
    }

    public boolean stopVoiceRecognition(BluetoothDevice device) {
        log("stopVoiceRecognition()");
        IBluetoothHeadset service = this.mService;
        if (service == null) {
            Log.w(TAG, "Proxy not attached to service");
            log(Log.getStackTraceString(new Throwable()));
        } else if (isEnabled() && isValidDevice(device)) {
            try {
                SynchronousResultReceiver<Boolean> recv = SynchronousResultReceiver.get();
                service.stopVoiceRecognition(device, this.mAttributionSource, recv);
                return recv.awaitResultNoInterrupt(BluetoothUtils.getSyncTimeout()).getValue(false).booleanValue();
            } catch (RemoteException | TimeoutException e) {
                Log.e(TAG, e.toString() + "\n" + Log.getStackTraceString(new Throwable()));
            }
        }
        return false;
    }

    public boolean isAudioConnected(BluetoothDevice device) {
        IBluetoothHeadset service = this.mService;
        try {
            this.mServiceLock.readLock().lock();
            if (service == null) {
                Log.w(TAG, "Proxy not attached to service");
                log(Log.getStackTraceString(new Throwable()));
            } else if (isEnabled() && isValidDevice(device)) {
                try {
                    SynchronousResultReceiver<Boolean> recv = SynchronousResultReceiver.get();
                    service.isAudioConnected(device, this.mAttributionSource, recv);
                    return recv.awaitResultNoInterrupt(BluetoothUtils.getSyncTimeout()).getValue(false).booleanValue();
                } catch (RemoteException | TimeoutException e) {
                    Log.e(TAG, e.toString() + "\n" + Log.getStackTraceString(new Throwable()));
                    if (service == null) {
                        Log.w(TAG, "Proxy not attached to service");
                    }
                }
            }
            return false;
        } finally {
            this.mServiceLock.readLock().unlock();
        }
    }

    @SystemApi
    public int getAudioState(BluetoothDevice device) {
        Objects.requireNonNull(device);
        IBluetoothHeadset service = this.mService;
        if (service == null) {
            Log.w(TAG, "Proxy not attached to service");
            log(Log.getStackTraceString(new Throwable()));
        } else if (!isDisabled()) {
            try {
                SynchronousResultReceiver<Integer> recv = SynchronousResultReceiver.get();
                service.getAudioState(device, this.mAttributionSource, recv);
                return recv.awaitResultNoInterrupt(BluetoothUtils.getSyncTimeout()).getValue(10).intValue();
            } catch (RemoteException e) {
                Log.e(TAG, e.toString() + "\n" + Log.getStackTraceString(new Throwable()));
            } catch (TimeoutException e2) {
                Log.e(TAG, e2.toString() + "\n" + Log.getStackTraceString(new Throwable()));
                return 15;
            }
        }
        return 10;
    }

    @SystemApi
    public int setAudioRouteAllowed(boolean allowed) {
        IBluetoothHeadset service = this.mService;
        if (service == null) {
            Log.w(TAG, "Proxy not attached to service");
            log(Log.getStackTraceString(new Throwable()));
            return 9;
        }
        if (isEnabled()) {
            try {
                SynchronousResultReceiver recv = SynchronousResultReceiver.get();
                service.setAudioRouteAllowed(allowed, this.mAttributionSource, recv);
                recv.awaitResultNoInterrupt(BluetoothUtils.getSyncTimeout()).getValue(null);
                return 0;
            } catch (RemoteException e) {
                Log.e(TAG, e.toString() + "\n" + Log.getStackTraceString(new Throwable()));
                e.rethrowFromSystemServer();
            } catch (TimeoutException e2) {
                Log.e(TAG, e2.toString() + "\n" + Log.getStackTraceString(new Throwable()));
                return 15;
            }
        }
        Log.e(TAG, "setAudioRouteAllowed: Bluetooth disabled, but profile service still bound");
        return Integer.MAX_VALUE;
    }

    @SystemApi
    public int getAudioRouteAllowed() {
        IBluetoothHeadset service = this.mService;
        if (service == null) {
            Log.w(TAG, "Proxy not attached to service");
            log(Log.getStackTraceString(new Throwable()));
            return 9;
        }
        if (isEnabled()) {
            try {
                SynchronousResultReceiver<Boolean> recv = SynchronousResultReceiver.get();
                service.getAudioRouteAllowed(this.mAttributionSource, recv);
                return recv.awaitResultNoInterrupt(BluetoothUtils.getSyncTimeout()).getValue(false).booleanValue() ? 400 : 401;
            } catch (RemoteException e) {
                Log.e(TAG, e.toString() + "\n" + Log.getStackTraceString(new Throwable()));
                e.rethrowFromSystemServer();
            } catch (TimeoutException e2) {
                Log.e(TAG, e2.toString() + "\n" + Log.getStackTraceString(new Throwable()));
                return 15;
            }
        }
        Log.e(TAG, "getAudioRouteAllowed: Bluetooth disabled, but profile service still bound");
        return Integer.MAX_VALUE;
    }

    public void setForceScoAudio(boolean forced) {
        IBluetoothHeadset service = this.mService;
        if (service == null) {
            Log.w(TAG, "Proxy not attached to service");
            log(Log.getStackTraceString(new Throwable()));
        } else if (isEnabled()) {
            try {
                SynchronousResultReceiver recv = SynchronousResultReceiver.get();
                service.setForceScoAudio(forced, this.mAttributionSource, recv);
                recv.awaitResultNoInterrupt(BluetoothUtils.getSyncTimeout()).getValue(null);
            } catch (RemoteException | TimeoutException e) {
                Log.e(TAG, e.toString() + "\n" + Log.getStackTraceString(new Throwable()));
            }
        }
    }

    @SystemApi
    public int connectAudio() {
        IBluetoothHeadset service = this.mService;
        if (service == null) {
            Log.w(TAG, "Proxy not attached to service");
            log(Log.getStackTraceString(new Throwable()));
            return 9;
        }
        if (isEnabled()) {
            try {
                SynchronousResultReceiver<Integer> recv = SynchronousResultReceiver.get();
                service.connectAudio(this.mAttributionSource, recv);
                return recv.awaitResultNoInterrupt(BluetoothUtils.getSyncTimeout()).getValue(Integer.MAX_VALUE).intValue();
            } catch (RemoteException e) {
                Log.e(TAG, e.toString() + "\n" + Log.getStackTraceString(new Throwable()));
            } catch (TimeoutException e2) {
                Log.e(TAG, e2.toString() + "\n" + Log.getStackTraceString(new Throwable()));
                return 15;
            }
        }
        Log.e(TAG, "connectAudio: Bluetooth disabled, but profile service still bound");
        return Integer.MAX_VALUE;
    }

    @SystemApi
    public int disconnectAudio() {
        IBluetoothHeadset service = this.mService;
        if (service == null) {
            Log.w(TAG, "Proxy not attached to service");
            log(Log.getStackTraceString(new Throwable()));
            return 9;
        }
        if (isEnabled()) {
            try {
                SynchronousResultReceiver<Integer> recv = SynchronousResultReceiver.get();
                service.disconnectAudio(this.mAttributionSource, recv);
                return recv.awaitResultNoInterrupt(BluetoothUtils.getSyncTimeout()).getValue(Integer.MAX_VALUE).intValue();
            } catch (RemoteException e) {
                Log.e(TAG, e.toString() + "\n" + Log.getStackTraceString(new Throwable()));
            } catch (TimeoutException e2) {
                Log.e(TAG, e2.toString() + "\n" + Log.getStackTraceString(new Throwable()));
                return 15;
            }
        }
        Log.e(TAG, "disconnectAudio: Bluetooth disabled, but profile service still bound");
        return Integer.MAX_VALUE;
    }

    @SystemApi
    public boolean startScoUsingVirtualVoiceCall() {
        log("startScoUsingVirtualVoiceCall()");
        IBluetoothHeadset service = this.mService;
        if (service == null) {
            Log.w(TAG, "Proxy not attached to service");
            log(Log.getStackTraceString(new Throwable()));
        } else if (isEnabled()) {
            try {
                SynchronousResultReceiver<Boolean> recv = SynchronousResultReceiver.get();
                service.startScoUsingVirtualVoiceCall(this.mAttributionSource, recv);
                return recv.awaitResultNoInterrupt(BluetoothUtils.getSyncTimeout()).getValue(false).booleanValue();
            } catch (RemoteException | TimeoutException e) {
                Log.e(TAG, e.toString() + "\n" + Log.getStackTraceString(new Throwable()));
            }
        }
        return false;
    }

    @SystemApi
    public boolean stopScoUsingVirtualVoiceCall() {
        log("stopScoUsingVirtualVoiceCall()");
        IBluetoothHeadset service = this.mService;
        if (service == null) {
            Log.w(TAG, "Proxy not attached to service");
            log(Log.getStackTraceString(new Throwable()));
        } else if (isEnabled()) {
            try {
                SynchronousResultReceiver<Boolean> recv = SynchronousResultReceiver.get();
                service.stopScoUsingVirtualVoiceCall(this.mAttributionSource, recv);
                return recv.awaitResultNoInterrupt(BluetoothUtils.getSyncTimeout()).getValue(false).booleanValue();
            } catch (RemoteException | TimeoutException e) {
                Log.e(TAG, e.toString() + "\n" + Log.getStackTraceString(new Throwable()));
            }
        }
        return false;
    }

    public void phoneStateChanged(int numActive, int numHeld, int callState, String number, int type, String name) {
        IBluetoothHeadset service = this.mService;
        if (service == null) {
            Log.w(TAG, "Proxy not attached to service");
            log(Log.getStackTraceString(new Throwable()));
        } else if (isEnabled()) {
            try {
                service.phoneStateChanged(numActive, numHeld, callState, number, type, name, this.mAttributionSource);
            } catch (RemoteException e) {
                Log.e(TAG, e.toString() + "\n" + Log.getStackTraceString(new Throwable()));
            }
        }
    }

    public void clccResponse(int index, int direction, int status, int mode, boolean mpty, String number, int type) {
        IBluetoothHeadset service = this.mService;
        if (service == null) {
            Log.w(TAG, "Proxy not attached to service");
            log(Log.getStackTraceString(new Throwable()));
        } else if (isEnabled()) {
            try {
                SynchronousResultReceiver recv = SynchronousResultReceiver.get();
                service.clccResponse(index, direction, status, mode, mpty, number, type, this.mAttributionSource, recv);
                recv.awaitResultNoInterrupt(BluetoothUtils.getSyncTimeout()).getValue(null);
            } catch (RemoteException | TimeoutException e) {
                Log.e(TAG, e.toString() + "\n" + Log.getStackTraceString(new Throwable()));
            }
        }
    }

    public boolean sendVendorSpecificResultCode(BluetoothDevice device, String command, String arg) {
        log("sendVendorSpecificResultCode()");
        if (command == null) {
            throw new IllegalArgumentException("command is null");
        }
        IBluetoothHeadset service = this.mService;
        if (service == null) {
            Log.w(TAG, "Proxy not attached to service");
            log(Log.getStackTraceString(new Throwable()));
        } else if (isEnabled() && isValidDevice(device)) {
            try {
                SynchronousResultReceiver<Boolean> recv = SynchronousResultReceiver.get();
                service.sendVendorSpecificResultCode(device, command, arg, this.mAttributionSource, recv);
                return recv.awaitResultNoInterrupt(BluetoothUtils.getSyncTimeout()).getValue(false).booleanValue();
            } catch (RemoteException | TimeoutException e) {
                Log.e(TAG, e.toString() + "\n" + Log.getStackTraceString(new Throwable()));
            }
        }
        return false;
    }

    public boolean setActiveDevice(BluetoothDevice device) {
        Log.d(TAG, "setActiveDevice: " + device);
        IBluetoothHeadset service = this.mService;
        if (service == null) {
            Log.w(TAG, "Proxy not attached to service");
            log(Log.getStackTraceString(new Throwable()));
        } else if (isEnabled() && (device == null || isValidDevice(device))) {
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

    public BluetoothDevice getActiveDevice() {
        IBluetoothHeadset service = this.mService;
        if (service == null) {
            Log.w(TAG, "Proxy not attached to service");
            log(Log.getStackTraceString(new Throwable()));
        } else if (isEnabled()) {
            try {
                SynchronousResultReceiver<BluetoothDevice> recv = SynchronousResultReceiver.get();
                service.getActiveDevice(this.mAttributionSource, recv);
                return (BluetoothDevice) Attributable.setAttributionSource(recv.awaitResultNoInterrupt(BluetoothUtils.getSyncTimeout()).getValue(null), this.mAttributionSource);
            } catch (RemoteException | TimeoutException e) {
                Log.e(TAG, e.toString() + "\n" + Log.getStackTraceString(new Throwable()));
            }
        }
        return null;
    }

    @SystemApi
    public boolean isInbandRingingEnabled() {
        log("isInbandRingingEnabled()");
        IBluetoothHeadset service = this.mService;
        if (service == null) {
            Log.w(TAG, "Proxy not attached to service");
            log(Log.getStackTraceString(new Throwable()));
        } else if (isEnabled()) {
            try {
                SynchronousResultReceiver<Boolean> recv = SynchronousResultReceiver.get();
                service.isInbandRingingEnabled(this.mAttributionSource, recv);
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

    private boolean isDisabled() {
        return this.mAdapter.getState() == 10;
    }

    private static boolean isValidDevice(BluetoothDevice device) {
        return device != null && BluetoothAdapter.checkBluetoothAddress(device.getAddress());
    }

    private static void log(String msg) {
        Log.d(TAG, msg);
    }

    public void phoneStateChangedDsDa(int numActive, int numHeld, int callState, String number, int type, String name) {
        IBluetoothHeadset service = this.mService;
        if (service == null || !isEnabled()) {
            Log.w(TAG, "Proxy not attached to service");
            Log.d(TAG, Log.getStackTraceString(new Throwable()));
        } else {
            try {
                service.phoneStateChangedDsDa(numActive, numHeld, callState, number, type, name, this.mAttributionSource);
            } catch (RemoteException e) {
                Log.e(TAG, e.toString());
            }
        }
    }

    public void clccResponseDsDa(int index, int direction, int status, int mode, boolean mpty, String number, int type) {
        IBluetoothHeadset service = this.mService;
        if (service == null || !isEnabled()) {
            Log.w(TAG, "Proxy not attached to service");
            Log.d(TAG, Log.getStackTraceString(new Throwable()));
        } else {
            try {
                service.clccResponseDsDa(index, direction, status, mode, mpty, number, type, this.mAttributionSource);
            } catch (RemoteException e) {
                Log.e(TAG, e.toString());
            }
        }
    }
}

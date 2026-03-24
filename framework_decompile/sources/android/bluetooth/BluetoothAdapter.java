package android.bluetooth;

import android.Manifest;
import android.annotation.SystemApi;
import android.app.ActivityThread;
import android.app.PendingIntent;
import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothProfile;
import android.bluetooth.IBluetoothActivityEnergyInfoListener;
import android.bluetooth.IBluetoothConnectionCallback;
import android.bluetooth.IBluetoothManager;
import android.bluetooth.IBluetoothManagerCallback;
import android.bluetooth.IBluetoothMetadataListener;
import android.bluetooth.IBluetoothOobDataCallback;
import android.bluetooth.IBluetoothStateChangeCallback;
import android.bluetooth.le.BluetoothLeAdvertiser;
import android.bluetooth.le.BluetoothLeScanner;
import android.bluetooth.le.PeriodicAdvertisingManager;
import android.bluetooth.le.ScanCallback;
import android.bluetooth.le.ScanFilter;
import android.bluetooth.le.ScanRecord;
import android.bluetooth.le.ScanResult;
import android.bluetooth.le.ScanSettings;
import android.content.AttributionSource;
import android.content.Context;
import android.inputmethodservice.navigationbar.NavigationBarInflaterView;
import android.os.Binder;
import android.os.BluetoothServiceManager;
import android.os.IBinder;
import android.os.IpcDataCache;
import android.os.ParcelUuid;
import android.os.RemoteException;
import android.os.SystemProperties;
import android.sysprop.BluetoothProperties;
import android.util.Log;
import android.util.Pair;
import com.android.modules.utils.SynchronousResultReceiver;
import java.io.IOException;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.time.Duration;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.UUID;
import java.util.WeakHashMap;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantReadWriteLock;
import java.util.function.BiConsumer;
import java.util.function.Predicate;

/* loaded from: classes.dex */
public final class BluetoothAdapter {
    public static final String ACTION_BLE_ACL_CONNECTED = "android.bluetooth.adapter.action.BLE_ACL_CONNECTED";
    public static final String ACTION_BLE_ACL_DISCONNECTED = "android.bluetooth.adapter.action.BLE_ACL_DISCONNECTED";

    @SystemApi
    public static final String ACTION_BLE_STATE_CHANGED = "android.bluetooth.adapter.action.BLE_STATE_CHANGED";
    public static final String ACTION_BLUETOOTH_ADDRESS_CHANGED = "android.bluetooth.adapter.action.BLUETOOTH_ADDRESS_CHANGED";
    public static final String ACTION_CONNECTION_STATE_CHANGED = "android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED";
    public static final String ACTION_DISCOVERY_FINISHED = "android.bluetooth.adapter.action.DISCOVERY_FINISHED";
    public static final String ACTION_DISCOVERY_STARTED = "android.bluetooth.adapter.action.DISCOVERY_STARTED";
    public static final String ACTION_LOCAL_NAME_CHANGED = "android.bluetooth.adapter.action.LOCAL_NAME_CHANGED";

    @SystemApi
    public static final String ACTION_REQUEST_BLE_SCAN_ALWAYS_AVAILABLE = "android.bluetooth.adapter.action.REQUEST_BLE_SCAN_ALWAYS_AVAILABLE";

    @SystemApi
    public static final String ACTION_REQUEST_DISABLE = "android.bluetooth.adapter.action.REQUEST_DISABLE";
    public static final String ACTION_REQUEST_DISCOVERABLE = "android.bluetooth.adapter.action.REQUEST_DISCOVERABLE";
    public static final String ACTION_REQUEST_ENABLE = "android.bluetooth.adapter.action.REQUEST_ENABLE";
    public static final String ACTION_SCAN_MODE_CHANGED = "android.bluetooth.adapter.action.SCAN_MODE_CHANGED";
    public static final String ACTION_STATE_CHANGED = "android.bluetooth.adapter.action.STATE_CHANGED";

    @SystemApi
    public static final int ACTIVE_DEVICE_ALL = 2;

    @SystemApi
    public static final int ACTIVE_DEVICE_AUDIO = 0;

    @SystemApi
    public static final int ACTIVE_DEVICE_PHONE_CALL = 1;
    private static final int ADDRESS_LENGTH = 17;
    public static final String BLUETOOTH_MANAGER_SERVICE = "bluetooth_manager";
    private static final boolean DBG = true;
    public static final String DEFAULT_MAC_ADDRESS = "02:00:00:00:00:00";
    private static final String DESCRIPTOR = "android.bluetooth.BluetoothAdapter";
    public static final int ERROR = Integer.MIN_VALUE;
    public static final String EXTRA_BLUETOOTH_ADDRESS = "android.bluetooth.adapter.extra.BLUETOOTH_ADDRESS";
    public static final String EXTRA_CONNECTION_STATE = "android.bluetooth.adapter.extra.CONNECTION_STATE";
    public static final String EXTRA_DISCOVERABLE_DURATION = "android.bluetooth.adapter.extra.DISCOVERABLE_DURATION";
    public static final String EXTRA_LOCAL_NAME = "android.bluetooth.adapter.extra.LOCAL_NAME";
    public static final String EXTRA_PREVIOUS_CONNECTION_STATE = "android.bluetooth.adapter.extra.PREVIOUS_CONNECTION_STATE";
    public static final String EXTRA_PREVIOUS_SCAN_MODE = "android.bluetooth.adapter.extra.PREVIOUS_SCAN_MODE";
    public static final String EXTRA_PREVIOUS_STATE = "android.bluetooth.adapter.extra.PREVIOUS_STATE";

    @SystemApi
    public static final String EXTRA_RFCOMM_LISTENER_ID = "android.bluetooth.adapter.extra.RFCOMM_LISTENER_ID";
    public static final String EXTRA_SCAN_MODE = "android.bluetooth.adapter.extra.SCAN_MODE";
    public static final String EXTRA_STATE = "android.bluetooth.adapter.extra.STATE";
    private static final String FILTERING_API = "BluetoothAdapter_isOffloadedFilteringSupported";
    private static final String GET_CONNECTION_API = "BluetoothAdapter_getConnectionState";
    private static final String GET_STATE_API = "BluetoothAdapter_getState";
    private static final String GMS_PACKAGENAME = "com.google.android.gms";
    public static final int IO_CAPABILITY_IN = 2;
    public static final int IO_CAPABILITY_IO = 1;
    public static final int IO_CAPABILITY_KBDISP = 4;
    public static final int IO_CAPABILITY_MAX = 5;
    public static final int IO_CAPABILITY_NONE = 3;
    public static final int IO_CAPABILITY_OUT = 0;
    public static final int IO_CAPABILITY_UNKNOWN = 255;
    private static final String PROFILE_API = "BluetoothAdapter_getProfileConnectionState";
    private static final String PROPERTY_DIS_GMS_ENABLE_BLE = "persist.sys.oplus.disable_gms_enableble";
    public static final int SCAN_MODE_CONNECTABLE = 21;
    public static final int SCAN_MODE_CONNECTABLE_DISCOVERABLE = 23;
    public static final int SCAN_MODE_NONE = 20;
    public static final int SOCKET_CHANNEL_AUTO_STATIC_NO_SDP = -2;

    @SystemApi
    public static final int STATE_BLE_ON = 15;
    public static final int STATE_BLE_TURNING_OFF = 16;
    public static final int STATE_BLE_TURNING_ON = 14;
    public static final int STATE_CONNECTED = 2;
    public static final int STATE_CONNECTING = 1;
    public static final int STATE_DISCONNECTED = 0;
    public static final int STATE_DISCONNECTING = 3;
    public static final int STATE_OFF = 10;
    public static final int STATE_ON = 12;
    public static final int STATE_TURNING_OFF = 13;
    public static final int STATE_TURNING_ON = 11;
    private static final String TAG = "BluetoothAdapter";
    private static BluetoothAdapter sAdapter;
    private static IBluetooth sService;
    private static boolean sServiceRegistered;
    private final AttributionSource mAttributionSource;
    private final Map<BluetoothConnectionCallback, Executor> mBluetoothConnectionCallbackExecutorMap;
    private final IpcDataCache<IBluetooth, Boolean> mBluetoothFilteringCache;
    private final IpcDataCache.QueryHandler<IBluetooth, Boolean> mBluetoothFilteringQuery;
    private final IpcDataCache<IBluetooth, Integer> mBluetoothGetAdapterConnectionStateCache;
    private final IpcDataCache.QueryHandler<IBluetooth, Integer> mBluetoothGetAdapterConnectionStateQuery;
    private final IpcDataCache<IBluetooth, Integer> mBluetoothGetStateCache;
    private final IpcDataCache.QueryHandler<IBluetooth, Integer> mBluetoothGetStateQuery;
    private BluetoothLeAdvertiser mBluetoothLeAdvertiser;
    private BluetoothLeScanner mBluetoothLeScanner;
    private final IBluetoothMetadataListener mBluetoothMetadataListener;
    private final IpcDataCache.QueryHandler<Pair<IBluetooth, Integer>, Integer> mBluetoothProfileQuery;
    private final IBluetoothConnectionCallback mConnectionCallback;
    private final IpcDataCache<Pair<IBluetooth, Integer>, Integer> mGetProfileConnectionStateCache;
    private final Map<LeScanCallback, ScanCallback> mLeScanClients;
    private final Object mLock;
    private final IBluetoothManagerCallback mManagerCallback;
    private final IBluetoothManager mManagerService;
    private final Map<BluetoothDevice, List<Pair<OnMetadataChangedListener, Executor>>> mMetadataListeners;
    private PeriodicAdvertisingManager mPeriodicAdvertisingManager;
    private IBluetooth mService;
    private final ReentrantReadWriteLock mServiceLock;
    private final IBinder mToken;
    private static final boolean VDBG = SystemProperties.getBoolean("persist.sys.assert.panic", false);
    public static final UUID LE_PSM_CHARACTERISTIC_UUID = UUID.fromString("2d410339-82b6-42aa-b34e-e2e01df8cc1a");
    private static final Object sServiceLock = new Object();
    private static final IBluetoothManagerCallback sManagerCallback = new IBluetoothManagerCallback.Stub() { // from class: android.bluetooth.BluetoothAdapter.6
        @Override // android.bluetooth.IBluetoothManagerCallback
        public void onBluetoothServiceUp(IBluetooth bluetoothService) {
            Log.d(BluetoothAdapter.TAG, "onBluetoothServiceUp: " + bluetoothService);
            synchronized (BluetoothAdapter.sServiceLock) {
                BluetoothAdapter.sService = bluetoothService;
                for (IBluetoothManagerCallback cb : BluetoothAdapter.sProxyServiceStateCallbacks.keySet()) {
                    if (cb != null) {
                        try {
                            cb.onBluetoothServiceUp(bluetoothService);
                        } catch (Exception e) {
                            Log.e(BluetoothAdapter.TAG, "", e);
                        }
                    } else {
                        Log.d(BluetoothAdapter.TAG, "onBluetoothServiceUp: cb is null!");
                    }
                }
            }
        }

        @Override // android.bluetooth.IBluetoothManagerCallback
        public void onBluetoothServiceDown() {
            Log.d(BluetoothAdapter.TAG, "onBluetoothServiceDown");
            synchronized (BluetoothAdapter.sServiceLock) {
                BluetoothAdapter.sService = null;
                for (IBluetoothManagerCallback cb : BluetoothAdapter.sProxyServiceStateCallbacks.keySet()) {
                    if (cb != null) {
                        try {
                            cb.onBluetoothServiceDown();
                        } catch (Exception e) {
                            Log.e(BluetoothAdapter.TAG, "", e);
                        }
                    } else {
                        Log.d(BluetoothAdapter.TAG, "onBluetoothServiceDown: cb is null!");
                    }
                }
            }
        }

        @Override // android.bluetooth.IBluetoothManagerCallback
        public void onBrEdrDown() {
            if (BluetoothAdapter.VDBG) {
                Log.i(BluetoothAdapter.TAG, "onBrEdrDown");
            }
            synchronized (BluetoothAdapter.sServiceLock) {
                for (IBluetoothManagerCallback cb : BluetoothAdapter.sProxyServiceStateCallbacks.keySet()) {
                    if (cb != null) {
                        try {
                            cb.onBrEdrDown();
                        } catch (Exception e) {
                            Log.e(BluetoothAdapter.TAG, "", e);
                        }
                    } else {
                        Log.d(BluetoothAdapter.TAG, "onBrEdrDown: cb is null!");
                    }
                }
            }
        }
    };
    private static final WeakHashMap<IBluetoothManagerCallback, Void> sProxyServiceStateCallbacks = new WeakHashMap<>();

    @Retention(RetentionPolicy.SOURCE)
    public @interface ActiveDeviceProfile {
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface ActiveDeviceUse {
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface AdapterState {
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface BluetoothActivityEnergyInfoCallbackError {
    }

    public interface BluetoothStateChangeCallback {
        void onBluetoothStateChange(boolean z);
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface ConnectionState {
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface InternalAdapterState {
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface IoCapability {
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface LeFeatureReturnValues {
    }

    public interface LeScanCallback {
        void onLeScan(BluetoothDevice bluetoothDevice, int i, byte[] bArr);
    }

    @SystemApi
    public interface OnBluetoothActivityEnergyInfoCallback {
        void onBluetoothActivityEnergyInfoAvailable(BluetoothActivityEnergyInfo bluetoothActivityEnergyInfo);

        void onBluetoothActivityEnergyInfoError(int i);
    }

    @SystemApi
    public interface OnMetadataChangedListener {
        void onMetadataChanged(BluetoothDevice bluetoothDevice, int i, byte[] bArr);
    }

    @SystemApi
    public interface OobDataCallback {
        void onError(int i);

        void onOobData(int i, OobData oobData);
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface OobError {
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface RfcommListenerResult {
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface ScanMode {
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface ScanModeStatusCode {
    }

    public static abstract class ServiceLifecycleCallback {
        IBluetoothManagerCallback mRemote = new IBluetoothManagerCallback.Stub() { // from class: android.bluetooth.BluetoothAdapter.ServiceLifecycleCallback.1
            @Override // android.bluetooth.IBluetoothManagerCallback
            public void onBluetoothServiceUp(IBluetooth bluetoothService) {
                ServiceLifecycleCallback.this.onBluetoothServiceUp();
            }

            @Override // android.bluetooth.IBluetoothManagerCallback
            public void onBluetoothServiceDown() {
                ServiceLifecycleCallback.this.onBluetoothServiceDown();
            }

            @Override // android.bluetooth.IBluetoothManagerCallback
            public void onBrEdrDown() {
            }
        };

        public abstract void onBluetoothServiceDown();

        public abstract void onBluetoothServiceUp();
    }

    @SystemApi
    public static String nameForState(int state) {
        switch (state) {
            case 10:
                return "OFF";
            case 11:
                return "TURNING_ON";
            case 12:
                return "ON";
            case 13:
                return "TURNING_OFF";
            case 14:
                return "BLE_TURNING_ON";
            case 15:
                return "BLE_ON";
            case 16:
                return "BLE_TURNING_OFF";
            default:
                return "?!?!? (" + state + NavigationBarInflaterView.KEY_CODE_END;
        }
    }

    /* renamed from: android.bluetooth.BluetoothAdapter$1, reason: invalid class name */
    class AnonymousClass1 extends IBluetoothMetadataListener.Stub {
        AnonymousClass1() {
        }

        @Override // android.bluetooth.IBluetoothMetadataListener
        public void onMetadataChanged(final BluetoothDevice device, final int key, final byte[] value) {
            Attributable.setAttributionSource(device, BluetoothAdapter.this.mAttributionSource);
            synchronized (BluetoothAdapter.this.mMetadataListeners) {
                if (BluetoothAdapter.this.mMetadataListeners.containsKey(device)) {
                    List<Pair<OnMetadataChangedListener, Executor>> list = (List) BluetoothAdapter.this.mMetadataListeners.get(device);
                    for (Pair<OnMetadataChangedListener, Executor> pair : list) {
                        final OnMetadataChangedListener listener = pair.first;
                        Executor executor = pair.second;
                        executor.execute(new Runnable() { // from class: android.bluetooth.BluetoothAdapter$1$$ExternalSyntheticLambda0
                            @Override // java.lang.Runnable
                            public final void run() {
                                listener.onMetadataChanged(device, key, value);
                            }
                        });
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    static class OnBluetoothActivityEnergyInfoProxy extends IBluetoothActivityEnergyInfoListener.Stub {
        private OnBluetoothActivityEnergyInfoCallback mCallback;
        private Executor mExecutor;
        private final Object mLock = new Object();

        OnBluetoothActivityEnergyInfoProxy(Executor executor, OnBluetoothActivityEnergyInfoCallback callback) {
            this.mExecutor = executor;
            this.mCallback = callback;
        }

        @Override // android.bluetooth.IBluetoothActivityEnergyInfoListener
        public void onBluetoothActivityEnergyInfoAvailable(final BluetoothActivityEnergyInfo info) {
            final OnBluetoothActivityEnergyInfoCallback callback;
            synchronized (this.mLock) {
                Executor executor = this.mExecutor;
                if (executor != null && (callback = this.mCallback) != null) {
                    this.mExecutor = null;
                    this.mCallback = null;
                    long identity = Binder.clearCallingIdentity();
                    try {
                        if (info == null) {
                            executor.execute(new Runnable() { // from class: android.bluetooth.BluetoothAdapter$OnBluetoothActivityEnergyInfoProxy$$ExternalSyntheticLambda1
                                @Override // java.lang.Runnable
                                public final void run() {
                                    callback.onBluetoothActivityEnergyInfoError(11);
                                }
                            });
                        } else {
                            executor.execute(new Runnable() { // from class: android.bluetooth.BluetoothAdapter$OnBluetoothActivityEnergyInfoProxy$$ExternalSyntheticLambda2
                                @Override // java.lang.Runnable
                                public final void run() {
                                    callback.onBluetoothActivityEnergyInfoAvailable(info);
                                }
                            });
                        }
                    } finally {
                        Binder.restoreCallingIdentity(identity);
                    }
                }
            }
        }

        public void onError(final int errorCode) {
            final OnBluetoothActivityEnergyInfoCallback callback;
            synchronized (this.mLock) {
                Executor executor = this.mExecutor;
                if (executor != null && (callback = this.mCallback) != null) {
                    this.mExecutor = null;
                    this.mCallback = null;
                    long identity = Binder.clearCallingIdentity();
                    try {
                        executor.execute(new Runnable() { // from class: android.bluetooth.BluetoothAdapter$OnBluetoothActivityEnergyInfoProxy$$ExternalSyntheticLambda0
                            @Override // java.lang.Runnable
                            public final void run() {
                                callback.onBluetoothActivityEnergyInfoError(errorCode);
                            }
                        });
                    } finally {
                        Binder.restoreCallingIdentity(identity);
                    }
                }
            }
        }
    }

    @Deprecated
    public static synchronized BluetoothAdapter getDefaultAdapter() {
        if (sAdapter == null) {
            sAdapter = createAdapter(AttributionSource.myAttributionSource());
        }
        return sAdapter;
    }

    public static BluetoothAdapter createAdapter(AttributionSource attributionSource) {
        BluetoothServiceManager manager = BluetoothFrameworkInitializer.getBluetoothServiceManager();
        if (manager == null) {
            Log.e(TAG, "BluetoothServiceManager is null");
            return null;
        }
        IBluetoothManager service = IBluetoothManager.Stub.asInterface(manager.getBluetoothManagerServiceRegisterer().get());
        if (service != null) {
            return new BluetoothAdapter(service, attributionSource);
        }
        Log.e(TAG, "Bluetooth service is null");
        return null;
    }

    BluetoothAdapter(IBluetoothManager managerService, AttributionSource attributionSource) {
        ReentrantReadWriteLock reentrantReadWriteLock = new ReentrantReadWriteLock();
        this.mServiceLock = reentrantReadWriteLock;
        this.mLock = new Object();
        this.mMetadataListeners = new HashMap();
        this.mBluetoothConnectionCallbackExecutorMap = new HashMap();
        this.mBluetoothMetadataListener = new AnonymousClass1();
        IpcDataCache.QueryHandler<IBluetooth, Integer> queryHandler = new IpcDataCache.QueryHandler<IBluetooth, Integer>() { // from class: android.bluetooth.BluetoothAdapter.2
            @Override // android.os.IpcDataCache.QueryHandler, android.app.PropertyInvalidatedCache.QueryHandler
            public Integer apply(IBluetooth serviceQuery) {
                try {
                    SynchronousResultReceiver<Integer> recv = SynchronousResultReceiver.get();
                    serviceQuery.getState(recv);
                    return recv.awaitResultNoInterrupt(BluetoothUtils.getSyncTimeout()).getValue(10);
                } catch (RemoteException | TimeoutException e) {
                    throw new RuntimeException(e);
                }
            }
        };
        this.mBluetoothGetStateQuery = queryHandler;
        this.mBluetoothGetStateCache = new BluetoothCache(GET_STATE_API, queryHandler);
        IpcDataCache.QueryHandler<IBluetooth, Boolean> queryHandler2 = new IpcDataCache.QueryHandler<IBluetooth, Boolean>() { // from class: android.bluetooth.BluetoothAdapter.3
            @Override // android.os.IpcDataCache.QueryHandler, android.app.PropertyInvalidatedCache.QueryHandler
            public Boolean apply(IBluetooth serviceQuery) {
                try {
                    SynchronousResultReceiver<Boolean> recv = SynchronousResultReceiver.get();
                    serviceQuery.isOffloadedFilteringSupported(recv);
                    return recv.awaitResultNoInterrupt(BluetoothUtils.getSyncTimeout()).getValue(false);
                } catch (RemoteException | TimeoutException e) {
                    throw new RuntimeException(e);
                }
            }
        };
        this.mBluetoothFilteringQuery = queryHandler2;
        this.mBluetoothFilteringCache = new BluetoothCache(FILTERING_API, queryHandler2);
        IpcDataCache.QueryHandler<IBluetooth, Integer> queryHandler3 = new IpcDataCache.QueryHandler<IBluetooth, Integer>() { // from class: android.bluetooth.BluetoothAdapter.4
            @Override // android.os.IpcDataCache.QueryHandler, android.app.PropertyInvalidatedCache.QueryHandler
            public Integer apply(IBluetooth serviceQuery) {
                try {
                    SynchronousResultReceiver<Integer> recv = SynchronousResultReceiver.get();
                    serviceQuery.getAdapterConnectionState(recv);
                    return recv.awaitResultNoInterrupt(BluetoothUtils.getSyncTimeout()).getValue(0);
                } catch (RemoteException | TimeoutException e) {
                    throw new RuntimeException(e);
                }
            }
        };
        this.mBluetoothGetAdapterConnectionStateQuery = queryHandler3;
        this.mBluetoothGetAdapterConnectionStateCache = new BluetoothCache(GET_CONNECTION_API, queryHandler3);
        IpcDataCache.QueryHandler<Pair<IBluetooth, Integer>, Integer> queryHandler4 = new IpcDataCache.QueryHandler<Pair<IBluetooth, Integer>, Integer>() { // from class: android.bluetooth.BluetoothAdapter.5
            @Override // android.os.IpcDataCache.QueryHandler, android.app.PropertyInvalidatedCache.QueryHandler
            public Integer apply(Pair<IBluetooth, Integer> pairQuery) {
                try {
                    SynchronousResultReceiver<Integer> recv = SynchronousResultReceiver.get();
                    pairQuery.first.getProfileConnectionState(pairQuery.second.intValue(), recv);
                    return recv.awaitResultNoInterrupt(BluetoothUtils.getSyncTimeout()).getValue(0);
                } catch (RemoteException | TimeoutException e) {
                    throw new RuntimeException(e);
                }
            }
        };
        this.mBluetoothProfileQuery = queryHandler4;
        this.mGetProfileConnectionStateCache = new BluetoothCache(PROFILE_API, queryHandler4);
        AnonymousClass7 anonymousClass7 = new AnonymousClass7();
        this.mManagerCallback = anonymousClass7;
        this.mConnectionCallback = new AnonymousClass9();
        this.mManagerService = (IBluetoothManager) Objects.requireNonNull(managerService);
        this.mAttributionSource = (AttributionSource) Objects.requireNonNull(attributionSource);
        Lock l = reentrantReadWriteLock.writeLock();
        l.lock();
        try {
            this.mService = getBluetoothService(anonymousClass7);
            l.unlock();
            this.mLeScanClients = new HashMap();
            this.mToken = new Binder(DESCRIPTOR);
        } catch (Throwable th) {
            l.unlock();
            throw th;
        }
    }

    public BluetoothDevice getRemoteDevice(String address) {
        BluetoothDevice res = new BluetoothDevice(address);
        res.setAttributionSource(this.mAttributionSource);
        return res;
    }

    public BluetoothDevice getRemoteLeDevice(String address, int addressType) {
        BluetoothDevice res = new BluetoothDevice(address, addressType);
        res.setAttributionSource(this.mAttributionSource);
        return res;
    }

    public BluetoothDevice getRemoteDevice(byte[] address) {
        if (address == null || address.length != 6) {
            throw new IllegalArgumentException("Bluetooth address must have 6 bytes");
        }
        BluetoothDevice res = new BluetoothDevice(String.format(Locale.US, "%02X:%02X:%02X:%02X:%02X:%02X", Byte.valueOf(address[0]), Byte.valueOf(address[1]), Byte.valueOf(address[2]), Byte.valueOf(address[3]), Byte.valueOf(address[4]), Byte.valueOf(address[5])));
        res.setAttributionSource(this.mAttributionSource);
        return res;
    }

    public BluetoothLeAdvertiser getBluetoothLeAdvertiser() {
        BluetoothLeAdvertiser bluetoothLeAdvertiser;
        if (!getLeAccess()) {
            return null;
        }
        synchronized (this.mLock) {
            if (this.mBluetoothLeAdvertiser == null) {
                this.mBluetoothLeAdvertiser = new BluetoothLeAdvertiser(this);
            }
            bluetoothLeAdvertiser = this.mBluetoothLeAdvertiser;
        }
        return bluetoothLeAdvertiser;
    }

    public PeriodicAdvertisingManager getPeriodicAdvertisingManager() {
        PeriodicAdvertisingManager periodicAdvertisingManager;
        if (!getLeAccess() || !isLePeriodicAdvertisingSupported()) {
            return null;
        }
        synchronized (this.mLock) {
            if (this.mPeriodicAdvertisingManager == null) {
                this.mPeriodicAdvertisingManager = new PeriodicAdvertisingManager(this);
            }
            periodicAdvertisingManager = this.mPeriodicAdvertisingManager;
        }
        return periodicAdvertisingManager;
    }

    public BluetoothLeScanner getBluetoothLeScanner() {
        BluetoothLeScanner bluetoothLeScanner;
        if (!getLeAccess()) {
            return null;
        }
        synchronized (this.mLock) {
            if (this.mBluetoothLeScanner == null) {
                this.mBluetoothLeScanner = new BluetoothLeScanner(this);
            }
            bluetoothLeScanner = this.mBluetoothLeScanner;
        }
        return bluetoothLeScanner;
    }

    public boolean isEnabled() {
        return getState() == 12;
    }

    @SystemApi
    public boolean isLeEnabled() {
        int state = getLeState();
        Log.d(TAG, "isLeEnabled(): " + nameForState(state));
        return state == 12 || state == 15 || state == 11 || state == 13;
    }

    @SystemApi
    public boolean disableBLE() {
        if (!isBleScanAlwaysAvailable()) {
            return false;
        }
        try {
            return this.mManagerService.disableBle(this.mAttributionSource, this.mToken);
        } catch (RemoteException e) {
            Log.e(TAG, "", e);
            return false;
        }
    }

    @SystemApi
    public boolean enableBLE() {
        Log.d(TAG, "enableBLE(): called by: " + ActivityThread.currentPackageName());
        if (!isBleScanAlwaysAvailable()) {
            return false;
        }
        String packageName = ActivityThread.currentPackageName();
        int state = getStateInternal();
        if (GMS_PACKAGENAME.equals(packageName) && state != 12 && SystemProperties.get(PROPERTY_DIS_GMS_ENABLE_BLE, "false").equals("true")) {
            Log.d(TAG, "Disable GMS ble scan when bt is off!");
            return false;
        }
        try {
            return this.mManagerService.enableBle(this.mAttributionSource, this.mToken);
        } catch (RemoteException e) {
            Log.e(TAG, "", e);
            return false;
        }
    }

    private static class BluetoothCache<Q, R> extends IpcDataCache<Q, R> {
        BluetoothCache(String api, IpcDataCache.QueryHandler query) {
            super(8, "bluetooth", api, api, query);
        }
    }

    private static void invalidateCache(String api) {
        IpcDataCache.invalidateCache("bluetooth", api);
    }

    public void disableBluetoothGetStateCache() {
        this.mBluetoothGetStateCache.disableForCurrentProcess();
    }

    public static void invalidateBluetoothGetStateCache() {
        invalidateCache(GET_STATE_API);
    }

    private int getStateInternal() {
        this.mServiceLock.readLock().lock();
        try {
            try {
                IBluetooth iBluetooth = this.mService;
                if (iBluetooth != null) {
                    return this.mBluetoothGetStateCache.query(iBluetooth).intValue();
                }
            } catch (RuntimeException e) {
                if (!(e.getCause() instanceof TimeoutException) && !(e.getCause() instanceof RemoteException)) {
                    throw e;
                }
                Log.e(TAG, e.toString() + "\n" + Log.getStackTraceString(new Throwable()));
            }
            return 10;
        } finally {
            this.mServiceLock.readLock().unlock();
        }
    }

    public int getState() {
        int state = getStateInternal();
        if (state == 15 || state == 14 || state == 16) {
            if (VDBG) {
                Log.d(TAG, "Consider " + nameForState(state) + " state as OFF");
            }
            state = 10;
        }
        if (VDBG) {
            Log.d(TAG, "" + hashCode() + ": getState(). Returning " + nameForState(state));
        }
        return state;
    }

    public int getLeState() {
        int state = getStateInternal();
        if (VDBG) {
            Log.d(TAG, "getLeState() returning " + nameForState(state));
        }
        return state;
    }

    boolean getLeAccess() {
        return getLeState() == 12 || getLeState() == 15;
    }

    @Deprecated
    public boolean enable() {
        Log.d(TAG, "enable(): called by: " + ActivityThread.currentPackageName());
        if (isEnabled()) {
            Log.d(TAG, "enable(): BT already enabled!");
            return true;
        }
        if (!checkOplusPermission(Manifest.permission.BLUETOOTH_ADMIN, Binder.getCallingPid(), Binder.getCallingUid())) {
            return false;
        }
        try {
            return this.mManagerService.enable(this.mAttributionSource);
        } catch (RemoteException e) {
            Log.e(TAG, "", e);
            return false;
        }
    }

    @Deprecated
    public boolean disable() {
        Log.d(TAG, "disable(): called by: " + ActivityThread.currentPackageName());
        if (!checkOplusPermission(Manifest.permission.BLUETOOTH_ADMIN, Binder.getCallingPid(), Binder.getCallingUid())) {
            return false;
        }
        try {
            return this.mManagerService.disable(this.mAttributionSource, true);
        } catch (RemoteException e) {
            Log.e(TAG, "", e);
            return false;
        }
    }

    @SystemApi
    public boolean disable(boolean persist) {
        if (!checkOplusPermission(Manifest.permission.BLUETOOTH_ADMIN, Binder.getCallingPid(), Binder.getCallingUid())) {
            return false;
        }
        try {
            return this.mManagerService.disable(this.mAttributionSource, persist);
        } catch (RemoteException e) {
            Log.e(TAG, "", e);
            return false;
        }
    }

    public String getAddress() {
        try {
            return this.mManagerService.getAddress(this.mAttributionSource);
        } catch (RemoteException e) {
            Log.e(TAG, "", e);
            return null;
        }
    }

    public String getName() {
        try {
            return this.mManagerService.getName(this.mAttributionSource);
        } catch (RemoteException e) {
            Log.e(TAG, "", e);
            return null;
        }
    }

    public int getNameLengthForAdvertise() {
        try {
            SynchronousResultReceiver<Integer> recv = SynchronousResultReceiver.get();
            this.mService.getNameLengthForAdvertise(this.mAttributionSource, recv);
            return recv.awaitResultNoInterrupt(BluetoothUtils.getSyncTimeout()).getValue(-1).intValue();
        } catch (RemoteException | TimeoutException e) {
            Log.e(TAG, e.toString() + "\n" + Log.getStackTraceString(new Throwable()));
            return -1;
        }
    }

    @SystemApi
    public boolean clearBluetooth() {
        IBluetoothManager iBluetoothManager;
        try {
            try {
                this.mServiceLock.readLock().lock();
                if (this.mService != null) {
                    SynchronousResultReceiver<Boolean> recv = SynchronousResultReceiver.get();
                    this.mService.factoryReset(this.mAttributionSource, recv);
                    if (recv.awaitResultNoInterrupt(BluetoothUtils.getSyncTimeout()).getValue(false).booleanValue() && (iBluetoothManager = this.mManagerService) != null && iBluetoothManager.onFactoryReset(this.mAttributionSource)) {
                        return true;
                    }
                }
                Log.e(TAG, "factoryReset(): Setting persist.bluetooth.factoryreset to retry later");
                BluetoothProperties.factory_reset(true);
            } catch (RemoteException | TimeoutException e) {
                Log.e(TAG, e.toString() + "\n" + Log.getStackTraceString(new Throwable()));
            }
            return false;
        } finally {
            this.mServiceLock.readLock().unlock();
        }
    }

    public boolean factoryReset() {
        return clearBluetooth();
    }

    public ParcelUuid[] getUuids() {
        List<ParcelUuid> parcels = getUuidsList();
        return (ParcelUuid[]) parcels.toArray(new ParcelUuid[parcels.size()]);
    }

    @SystemApi
    public List<ParcelUuid> getUuidsList() {
        List<ParcelUuid> arrayList = new ArrayList<>();
        if (getState() != 12 || this.mService == null) {
            return arrayList;
        }
        this.mServiceLock.readLock().lock();
        try {
            SynchronousResultReceiver<List<ParcelUuid>> recv = SynchronousResultReceiver.get();
            this.mService.getUuids(this.mAttributionSource, recv);
            return recv.awaitResultNoInterrupt(BluetoothUtils.getSyncTimeout()).getValue(arrayList);
        } catch (RemoteException | TimeoutException e) {
            Log.e(TAG, e.toString() + "\n" + Log.getStackTraceString(new Throwable()));
            return arrayList;
        } finally {
            this.mServiceLock.readLock().unlock();
        }
    }

    public boolean setName(String name) {
        if (getState() != 12) {
            return false;
        }
        try {
            try {
                this.mServiceLock.readLock().lock();
                if (this.mService != null) {
                    SynchronousResultReceiver<Boolean> recv = SynchronousResultReceiver.get();
                    this.mService.setName(name, this.mAttributionSource, recv);
                    return recv.awaitResultNoInterrupt(BluetoothUtils.getSyncTimeout()).getValue(false).booleanValue();
                }
            } catch (RemoteException | TimeoutException e) {
                Log.e(TAG, e.toString() + "\n" + Log.getStackTraceString(new Throwable()));
            }
            return false;
        } finally {
            this.mServiceLock.readLock().unlock();
        }
    }

    public BluetoothClass getBluetoothClass() {
        try {
            if (getState() != 12) {
                return null;
            }
            try {
                this.mServiceLock.readLock().lock();
                if (this.mService != null) {
                    SynchronousResultReceiver<BluetoothClass> recv = SynchronousResultReceiver.get();
                    this.mService.getBluetoothClass(this.mAttributionSource, recv);
                    return recv.awaitResultNoInterrupt(BluetoothUtils.getSyncTimeout()).getValue(null);
                }
            } catch (RemoteException | TimeoutException e) {
                Log.e(TAG, e.toString() + "\n" + Log.getStackTraceString(new Throwable()));
            }
            return null;
        } finally {
            this.mServiceLock.readLock().unlock();
        }
    }

    public boolean setBluetoothClass(BluetoothClass bluetoothClass) {
        if (getState() != 12) {
            return false;
        }
        try {
            try {
                this.mServiceLock.readLock().lock();
                if (this.mService != null) {
                    SynchronousResultReceiver<Boolean> recv = SynchronousResultReceiver.get();
                    this.mService.setBluetoothClass(bluetoothClass, this.mAttributionSource, recv);
                    return recv.awaitResultNoInterrupt(BluetoothUtils.getSyncTimeout()).getValue(false).booleanValue();
                }
            } catch (RemoteException | TimeoutException e) {
                Log.e(TAG, e.toString() + "\n" + Log.getStackTraceString(new Throwable()));
            }
            return false;
        } finally {
            this.mServiceLock.readLock().unlock();
        }
    }

    public int getIoCapability() {
        if (getState() != 12) {
            return 255;
        }
        try {
            try {
                this.mServiceLock.readLock().lock();
                if (this.mService != null) {
                    SynchronousResultReceiver<Integer> recv = SynchronousResultReceiver.get();
                    this.mService.getIoCapability(this.mAttributionSource, recv);
                    return recv.awaitResultNoInterrupt(BluetoothUtils.getSyncTimeout()).getValue(255).intValue();
                }
            } catch (RemoteException | TimeoutException e) {
                Log.e(TAG, e.toString() + "\n" + Log.getStackTraceString(new Throwable()));
            }
            return 255;
        } finally {
            this.mServiceLock.readLock().unlock();
        }
    }

    public boolean setIoCapability(int capability) {
        if (getState() != 12) {
            return false;
        }
        try {
            try {
                this.mServiceLock.readLock().lock();
                if (this.mService != null) {
                    SynchronousResultReceiver<Boolean> recv = SynchronousResultReceiver.get();
                    this.mService.setIoCapability(capability, this.mAttributionSource, recv);
                    return recv.awaitResultNoInterrupt(BluetoothUtils.getSyncTimeout()).getValue(false).booleanValue();
                }
            } catch (RemoteException | TimeoutException e) {
                Log.e(TAG, e.toString() + "\n" + Log.getStackTraceString(new Throwable()));
            }
            return false;
        } finally {
            this.mServiceLock.readLock().unlock();
        }
    }

    public int getLeIoCapability() {
        if (getState() != 12) {
            return 255;
        }
        try {
            try {
                this.mServiceLock.readLock().lock();
                if (this.mService != null) {
                    SynchronousResultReceiver<Integer> recv = SynchronousResultReceiver.get();
                    this.mService.getLeIoCapability(this.mAttributionSource, recv);
                    return recv.awaitResultNoInterrupt(BluetoothUtils.getSyncTimeout()).getValue(255).intValue();
                }
            } catch (RemoteException | TimeoutException e) {
                Log.e(TAG, e.toString() + "\n" + Log.getStackTraceString(new Throwable()));
            }
            return 255;
        } finally {
            this.mServiceLock.readLock().unlock();
        }
    }

    public boolean setLeIoCapability(int capability) {
        if (getState() != 12) {
            return false;
        }
        try {
            try {
                this.mServiceLock.readLock().lock();
                if (this.mService != null) {
                    SynchronousResultReceiver<Boolean> recv = SynchronousResultReceiver.get();
                    this.mService.setLeIoCapability(capability, this.mAttributionSource, recv);
                    return recv.awaitResultNoInterrupt(BluetoothUtils.getSyncTimeout()).getValue(false).booleanValue();
                }
            } catch (RemoteException | TimeoutException e) {
                Log.e(TAG, e.toString() + "\n" + Log.getStackTraceString(new Throwable()));
            }
            return false;
        } finally {
            this.mServiceLock.readLock().unlock();
        }
    }

    public int getScanMode() {
        try {
            if (getState() != 12) {
                return 20;
            }
            try {
                try {
                    this.mServiceLock.readLock().lock();
                    if (this.mService != null) {
                        SynchronousResultReceiver<Integer> recv = SynchronousResultReceiver.get();
                        this.mService.getScanMode(this.mAttributionSource, recv);
                        return recv.awaitResultNoInterrupt(BluetoothUtils.getSyncTimeout()).getValue(20).intValue();
                    }
                } catch (RemoteException e) {
                    Log.e(TAG, e.toString() + "\n" + Log.getStackTraceString(new Throwable()));
                }
            } catch (TimeoutException e2) {
                Log.e(TAG, e2.toString() + "\n" + Log.getStackTraceString(new Throwable()));
            }
            return 20;
        } finally {
            this.mServiceLock.readLock().unlock();
        }
    }

    @SystemApi
    public int setScanMode(int mode) {
        if (getState() != 12) {
            return 1;
        }
        if (mode != 20 && mode != 21 && mode != 23) {
            throw new IllegalArgumentException("Invalid scan mode param value");
        }
        try {
            try {
                this.mServiceLock.readLock().lock();
                if (this.mService != null) {
                    Log.i(TAG, "setScanMode(), mode: " + mode + ", called by: " + ActivityThread.currentPackageName());
                    SynchronousResultReceiver<Integer> recv = SynchronousResultReceiver.get();
                    this.mService.setScanMode(mode, this.mAttributionSource, recv);
                    return recv.awaitResultNoInterrupt(BluetoothUtils.getSyncTimeout()).getValue(Integer.MAX_VALUE).intValue();
                }
            } catch (RemoteException e) {
                Log.e(TAG, e.toString() + "\n" + Log.getStackTraceString(new Throwable()));
            } catch (TimeoutException e2) {
                Log.e(TAG, e2.toString() + "\n" + Log.getStackTraceString(new Throwable()));
            }
            return Integer.MAX_VALUE;
        } finally {
            this.mServiceLock.readLock().unlock();
        }
    }

    public Duration getDiscoverableTimeout() {
        Duration durationOfSeconds = null;
        try {
            if (getState() != 12) {
                return null;
            }
            try {
                this.mServiceLock.readLock().lock();
                if (this.mService != null) {
                    SynchronousResultReceiver<Long> recv = SynchronousResultReceiver.get();
                    this.mService.getDiscoverableTimeout(this.mAttributionSource, recv);
                    long timeout = recv.awaitResultNoInterrupt(BluetoothUtils.getSyncTimeout()).getValue(-1L).longValue();
                    if (timeout != -1) {
                        durationOfSeconds = Duration.ofSeconds(timeout);
                    }
                    return durationOfSeconds;
                }
            } catch (RemoteException e) {
                Log.e(TAG, e.toString() + "\n" + Log.getStackTraceString(new Throwable()));
            } catch (TimeoutException e2) {
                Log.e(TAG, e2.toString() + "\n" + Log.getStackTraceString(new Throwable()));
            }
            return null;
        } finally {
            this.mServiceLock.readLock().unlock();
        }
    }

    @SystemApi
    public int setDiscoverableTimeout(Duration timeout) {
        if (getState() != 12) {
            return 1;
        }
        if (timeout.toSeconds() > 2147483647L) {
            throw new IllegalArgumentException("Timeout in seconds must be less or equal to 2147483647");
        }
        try {
            try {
                try {
                    this.mServiceLock.readLock().lock();
                    if (this.mService != null) {
                        SynchronousResultReceiver<Integer> recv = SynchronousResultReceiver.get();
                        this.mService.setDiscoverableTimeout(timeout.toSeconds(), this.mAttributionSource, recv);
                        return recv.awaitResultNoInterrupt(BluetoothUtils.getSyncTimeout()).getValue(Integer.MAX_VALUE).intValue();
                    }
                } catch (RemoteException e) {
                    Log.e(TAG, e.toString() + "\n" + Log.getStackTraceString(new Throwable()));
                }
            } catch (TimeoutException e2) {
                Log.e(TAG, e2.toString() + "\n" + Log.getStackTraceString(new Throwable()));
            }
            return Integer.MAX_VALUE;
        } finally {
            this.mServiceLock.readLock().unlock();
        }
    }

    @SystemApi
    public long getDiscoveryEndMillis() {
        try {
            try {
                this.mServiceLock.readLock().lock();
                if (this.mService != null) {
                    SynchronousResultReceiver<Long> recv = SynchronousResultReceiver.get();
                    this.mService.getDiscoveryEndMillis(this.mAttributionSource, recv);
                    return recv.awaitResultNoInterrupt(BluetoothUtils.getSyncTimeout()).getValue(-1L).longValue();
                }
            } catch (RemoteException | TimeoutException e) {
                Log.e(TAG, e.toString() + "\n" + Log.getStackTraceString(new Throwable()));
            }
            return -1L;
        } finally {
            this.mServiceLock.readLock().unlock();
        }
    }

    public boolean startDiscovery() {
        Log.d(TAG, "startDiscovery(): called by: " + ActivityThread.currentPackageName());
        try {
            if (getState() != 12) {
                return false;
            }
            try {
                this.mServiceLock.readLock().lock();
                if (this.mService != null) {
                    SynchronousResultReceiver<Boolean> recv = SynchronousResultReceiver.get();
                    this.mService.startDiscovery(this.mAttributionSource, recv);
                    return recv.awaitResultNoInterrupt(BluetoothUtils.getSyncTimeout()).getValue(false).booleanValue();
                }
            } catch (RemoteException | TimeoutException e) {
                Log.e(TAG, e.toString() + "\n" + Log.getStackTraceString(new Throwable()));
            }
            return false;
        } finally {
            this.mServiceLock.readLock().unlock();
        }
    }

    public boolean cancelDiscovery() {
        Log.d(TAG, "cancelDiscovery(): called by: " + ActivityThread.currentPackageName());
        try {
            if (getState() != 12) {
                return false;
            }
            try {
                this.mServiceLock.readLock().lock();
                if (this.mService != null) {
                    SynchronousResultReceiver<Boolean> recv = SynchronousResultReceiver.get();
                    this.mService.cancelDiscovery(this.mAttributionSource, recv);
                    return recv.awaitResultNoInterrupt(BluetoothUtils.getSyncTimeout()).getValue(false).booleanValue();
                }
            } catch (RemoteException | TimeoutException e) {
                Log.e(TAG, e.toString() + "\n" + Log.getStackTraceString(new Throwable()));
            }
            return false;
        } finally {
            this.mServiceLock.readLock().unlock();
        }
    }

    public boolean isDiscovering() {
        if (getState() != 12) {
            return false;
        }
        try {
            try {
                this.mServiceLock.readLock().lock();
                if (this.mService != null) {
                    SynchronousResultReceiver<Boolean> recv = SynchronousResultReceiver.get();
                    this.mService.isDiscovering(this.mAttributionSource, recv);
                    return recv.awaitResultNoInterrupt(BluetoothUtils.getSyncTimeout()).getValue(false).booleanValue();
                }
            } catch (RemoteException | TimeoutException e) {
                Log.e(TAG, e.toString() + "\n" + Log.getStackTraceString(new Throwable()));
            }
            return false;
        } finally {
            this.mServiceLock.readLock().unlock();
        }
    }

    @SystemApi
    public boolean removeActiveDevice(int profiles) {
        if (profiles != 0 && profiles != 1 && profiles != 2) {
            Log.e(TAG, "Invalid profiles param value in removeActiveDevice");
            throw new IllegalArgumentException("Profiles must be one of BluetoothAdapter.ACTIVE_DEVICE_AUDIO, BluetoothAdapter.ACTIVE_DEVICE_PHONE_CALL, or BluetoothAdapter.ACTIVE_DEVICE_ALL");
        }
        try {
            try {
                this.mServiceLock.readLock().lock();
                if (this.mService != null) {
                    Log.d(TAG, "removeActiveDevice, profiles: " + profiles);
                    SynchronousResultReceiver<Boolean> recv = SynchronousResultReceiver.get();
                    this.mService.removeActiveDevice(profiles, this.mAttributionSource, recv);
                    return recv.awaitResultNoInterrupt(BluetoothUtils.getSyncTimeout()).getValue(false).booleanValue();
                }
            } catch (RemoteException | TimeoutException e) {
                Log.e(TAG, e.toString() + "\n" + Log.getStackTraceString(new Throwable()));
            }
            return false;
        } finally {
            this.mServiceLock.readLock().unlock();
        }
    }

    @SystemApi
    public boolean setActiveDevice(BluetoothDevice device, int profiles) {
        if (device == null) {
            Log.e(TAG, "setActiveDevice: Null device passed as parameter");
            throw new IllegalArgumentException("device cannot be null");
        }
        if (profiles != 0 && profiles != 1 && profiles != 2) {
            Log.e(TAG, "Invalid profiles param value in setActiveDevice");
            throw new IllegalArgumentException("Profiles must be one of BluetoothAdapter.ACTIVE_DEVICE_AUDIO, BluetoothAdapter.ACTIVE_DEVICE_PHONE_CALL, or BluetoothAdapter.ACTIVE_DEVICE_ALL");
        }
        try {
            try {
                this.mServiceLock.readLock().lock();
                if (this.mService != null) {
                    Log.d(TAG, "setActiveDevice, device: " + device + ", profiles: " + profiles);
                    SynchronousResultReceiver<Boolean> recv = SynchronousResultReceiver.get();
                    this.mService.setActiveDevice(device, profiles, this.mAttributionSource, recv);
                    return recv.awaitResultNoInterrupt(BluetoothUtils.getSyncTimeout()).getValue(false).booleanValue();
                }
            } catch (RemoteException | TimeoutException e) {
                Log.e(TAG, e.toString() + "\n" + Log.getStackTraceString(new Throwable()));
            }
            return false;
        } finally {
            this.mServiceLock.readLock().unlock();
        }
    }

    public boolean isBroadcastActive() {
        try {
            try {
                this.mServiceLock.readLock().lock();
                IBluetooth iBluetooth = this.mService;
                if (iBluetooth != null) {
                    return iBluetooth.isBroadcastActive(this.mAttributionSource);
                }
            } catch (RemoteException e) {
                Log.e(TAG, "", e);
            }
            this.mServiceLock.readLock().unlock();
            return false;
        } finally {
            this.mServiceLock.readLock().unlock();
        }
    }

    @SystemApi
    public List<BluetoothDevice> getActiveDevices(int profile) {
        if (profile != 1 && profile != 2 && profile != 21 && profile != 22) {
            Log.e(TAG, "Invalid profile param value in getActiveDevices");
            throw new IllegalArgumentException("Profiles must be one of BluetoothProfile.A2DP, BluetoothProfile.HEARING_AID, orBluetoothProfile.HEARING_AIDBluetoothProfile.LE_AUDIO");
        }
        try {
            try {
                this.mServiceLock.readLock().lock();
                if (this.mService != null) {
                    Log.d(TAG, "getActiveDevices(profile= " + BluetoothProfile.getProfileName(profile) + NavigationBarInflaterView.KEY_CODE_END);
                    SynchronousResultReceiver<List<BluetoothDevice>> recv = SynchronousResultReceiver.get();
                    this.mService.getActiveDevices(profile, this.mAttributionSource, recv);
                    return recv.awaitResultNoInterrupt(BluetoothUtils.getSyncTimeout()).getValue(new ArrayList<>());
                }
            } catch (RemoteException | TimeoutException e) {
                Log.e(TAG, e.toString() + "\n" + Log.getStackTraceString(new Throwable()));
            }
            return new ArrayList();
        } finally {
            this.mServiceLock.readLock().unlock();
        }
    }

    public boolean isMultipleAdvertisementSupported() {
        try {
            if (getState() != 12) {
                return false;
            }
            try {
                this.mServiceLock.readLock().lock();
                if (this.mService != null) {
                    SynchronousResultReceiver<Boolean> recv = SynchronousResultReceiver.get();
                    this.mService.isMultiAdvertisementSupported(recv);
                    return recv.awaitResultNoInterrupt(BluetoothUtils.getSyncTimeout()).getValue(false).booleanValue();
                }
            } catch (RemoteException | TimeoutException e) {
                Log.e(TAG, e.toString() + "\n" + Log.getStackTraceString(new Throwable()));
            }
            return false;
        } finally {
            this.mServiceLock.readLock().unlock();
        }
    }

    @SystemApi
    public boolean isBleScanAlwaysAvailable() {
        try {
            return this.mManagerService.isBleScanAlwaysAvailable();
        } catch (RemoteException e) {
            Log.e(TAG, "remote exception when calling isBleScanAlwaysAvailable", e);
            return false;
        }
    }

    public void disableIsOffloadedFilteringSupportedCache() {
        this.mBluetoothFilteringCache.disableForCurrentProcess();
    }

    public static void invalidateIsOffloadedFilteringSupportedCache() {
        invalidateCache(FILTERING_API);
    }

    public boolean isOffloadedFilteringSupported() {
        if (!getLeAccess()) {
            return false;
        }
        this.mServiceLock.readLock().lock();
        try {
            try {
                IBluetooth iBluetooth = this.mService;
                if (iBluetooth != null) {
                    return this.mBluetoothFilteringCache.query(iBluetooth).booleanValue();
                }
            } catch (RuntimeException e) {
                if (!(e.getCause() instanceof TimeoutException) && !(e.getCause() instanceof RemoteException)) {
                    throw e;
                }
                Log.e(TAG, e.toString() + "\n" + Log.getStackTraceString(new Throwable()));
            }
            return false;
        } finally {
            this.mServiceLock.readLock().unlock();
        }
    }

    public boolean isOffloadedScanBatchingSupported() {
        try {
            if (!getLeAccess()) {
                return false;
            }
            try {
                this.mServiceLock.readLock().lock();
                if (this.mService != null) {
                    SynchronousResultReceiver<Boolean> recv = SynchronousResultReceiver.get();
                    this.mService.isOffloadedScanBatchingSupported(recv);
                    return recv.awaitResultNoInterrupt(BluetoothUtils.getSyncTimeout()).getValue(false).booleanValue();
                }
            } catch (RemoteException | TimeoutException e) {
                Log.e(TAG, e.toString() + "\n" + Log.getStackTraceString(new Throwable()));
            }
            return false;
        } finally {
            this.mServiceLock.readLock().unlock();
        }
    }

    public boolean isLe2MPhySupported() {
        try {
            if (!getLeAccess()) {
                return false;
            }
            try {
                this.mServiceLock.readLock().lock();
                if (this.mService != null) {
                    SynchronousResultReceiver<Boolean> recv = SynchronousResultReceiver.get();
                    this.mService.isLe2MPhySupported(recv);
                    return recv.awaitResultNoInterrupt(BluetoothUtils.getSyncTimeout()).getValue(false).booleanValue();
                }
            } catch (RemoteException | TimeoutException e) {
                Log.e(TAG, e.toString() + "\n" + Log.getStackTraceString(new Throwable()));
            }
            return false;
        } finally {
            this.mServiceLock.readLock().unlock();
        }
    }

    public boolean isLeCodedPhySupported() {
        try {
            if (!getLeAccess()) {
                return false;
            }
            try {
                this.mServiceLock.readLock().lock();
                if (this.mService != null) {
                    SynchronousResultReceiver<Boolean> recv = SynchronousResultReceiver.get();
                    this.mService.isLeCodedPhySupported(recv);
                    return recv.awaitResultNoInterrupt(BluetoothUtils.getSyncTimeout()).getValue(false).booleanValue();
                }
            } catch (RemoteException | TimeoutException e) {
                Log.e(TAG, e.toString() + "\n" + Log.getStackTraceString(new Throwable()));
            }
            return false;
        } finally {
            this.mServiceLock.readLock().unlock();
        }
    }

    public boolean isLeExtendedAdvertisingSupported() {
        try {
            if (!getLeAccess()) {
                return false;
            }
            try {
                this.mServiceLock.readLock().lock();
                if (this.mService != null) {
                    SynchronousResultReceiver<Boolean> recv = SynchronousResultReceiver.get();
                    this.mService.isLeExtendedAdvertisingSupported(recv);
                    return recv.awaitResultNoInterrupt(BluetoothUtils.getSyncTimeout()).getValue(false).booleanValue();
                }
            } catch (RemoteException | TimeoutException e) {
                Log.e(TAG, e.toString() + "\n" + Log.getStackTraceString(new Throwable()));
            }
            return false;
        } finally {
            this.mServiceLock.readLock().unlock();
        }
    }

    public boolean isLePeriodicAdvertisingSupported() {
        try {
            if (!getLeAccess()) {
                return false;
            }
            try {
                this.mServiceLock.readLock().lock();
                if (this.mService != null) {
                    SynchronousResultReceiver<Boolean> recv = SynchronousResultReceiver.get();
                    this.mService.isLePeriodicAdvertisingSupported(recv);
                    return recv.awaitResultNoInterrupt(BluetoothUtils.getSyncTimeout()).getValue(false).booleanValue();
                }
            } catch (RemoteException | TimeoutException e) {
                Log.e(TAG, e.toString() + "\n" + Log.getStackTraceString(new Throwable()));
            }
            return false;
        } finally {
            this.mServiceLock.readLock().unlock();
        }
    }

    public int isLeAudioSupported() {
        if (!getLeAccess()) {
            return 1;
        }
        try {
            try {
                this.mServiceLock.readLock().lock();
                if (this.mService == null) {
                    throw new IllegalStateException("LE state is on, but there is no bluetooth service.");
                }
                SynchronousResultReceiver<Integer> recv = SynchronousResultReceiver.get();
                this.mService.isLeAudioSupported(recv);
                return recv.awaitResultNoInterrupt(BluetoothUtils.getSyncTimeout()).getValue(Integer.MAX_VALUE).intValue();
            } catch (RemoteException e) {
                e.rethrowFromSystemServer();
                return Integer.MAX_VALUE;
            } catch (TimeoutException e2) {
                Log.e(TAG, e2.toString() + "\n" + Log.getStackTraceString(new Throwable()));
                return Integer.MAX_VALUE;
            }
        } finally {
            this.mServiceLock.readLock().unlock();
        }
    }

    public int isLeAudioBroadcastSourceSupported() {
        if (!getLeAccess()) {
            return 1;
        }
        try {
            try {
                this.mServiceLock.readLock().lock();
                if (this.mService == null) {
                    throw new IllegalStateException("LE state is on, but there is no bluetooth service.");
                }
                SynchronousResultReceiver<Integer> recv = SynchronousResultReceiver.get();
                this.mService.isLeAudioBroadcastSourceSupported(recv);
                return recv.awaitResultNoInterrupt(BluetoothUtils.getSyncTimeout()).getValue(Integer.MAX_VALUE).intValue();
            } catch (RemoteException e) {
                e.rethrowFromSystemServer();
                return Integer.MAX_VALUE;
            } catch (TimeoutException e2) {
                Log.e(TAG, e2.toString() + "\n" + Log.getStackTraceString(new Throwable()));
                return Integer.MAX_VALUE;
            }
        } finally {
            this.mServiceLock.readLock().unlock();
        }
    }

    public int isLeAudioBroadcastAssistantSupported() {
        if (!getLeAccess()) {
            return 1;
        }
        try {
            try {
                this.mServiceLock.readLock().lock();
                if (this.mService == null) {
                    throw new IllegalStateException("LE state is on, but there is no bluetooth service.");
                }
                SynchronousResultReceiver<Integer> recv = SynchronousResultReceiver.get();
                this.mService.isLeAudioBroadcastAssistantSupported(recv);
                return recv.awaitResultNoInterrupt(BluetoothUtils.getSyncTimeout()).getValue(Integer.MAX_VALUE).intValue();
            } catch (RemoteException e) {
                e.rethrowFromSystemServer();
                return Integer.MAX_VALUE;
            } catch (TimeoutException e2) {
                Log.e(TAG, e2.toString() + "\n" + Log.getStackTraceString(new Throwable()));
                return Integer.MAX_VALUE;
            }
        } finally {
            this.mServiceLock.readLock().unlock();
        }
    }

    public int getLeMaximumAdvertisingDataLength() {
        try {
            if (!getLeAccess()) {
                return 0;
            }
            try {
                this.mServiceLock.readLock().lock();
                if (this.mService != null) {
                    SynchronousResultReceiver<Integer> recv = SynchronousResultReceiver.get();
                    this.mService.getLeMaximumAdvertisingDataLength(recv);
                    return recv.awaitResultNoInterrupt(BluetoothUtils.getSyncTimeout()).getValue(0).intValue();
                }
            } catch (RemoteException | TimeoutException e) {
                Log.e(TAG, e.toString() + "\n" + Log.getStackTraceString(new Throwable()));
            }
            return 0;
        } finally {
            this.mServiceLock.readLock().unlock();
        }
    }

    public void btCmdGetFunctionCallmap(boolean isdump) {
        Log.d(TAG, "btCmdGetFunctionCallmap: " + isdump);
    }

    private boolean isHearingAidProfileSupported() {
        try {
            return this.mManagerService.isHearingAidProfileSupported();
        } catch (RemoteException e) {
            Log.e(TAG, "remote exception when calling isHearingAidProfileSupported", e);
            return false;
        }
    }

    public int getMaxConnectedAudioDevices() {
        try {
            try {
                this.mServiceLock.readLock().lock();
                if (this.mService != null) {
                    SynchronousResultReceiver<Integer> recv = SynchronousResultReceiver.get();
                    this.mService.getMaxConnectedAudioDevices(this.mAttributionSource, recv);
                    return recv.awaitResultNoInterrupt(BluetoothUtils.getSyncTimeout()).getValue(1).intValue();
                }
            } catch (RemoteException | TimeoutException e) {
                Log.e(TAG, e.toString() + "\n" + Log.getStackTraceString(new Throwable()));
            }
            return -1;
        } finally {
            this.mServiceLock.readLock().unlock();
        }
    }

    public boolean isHardwareTrackingFiltersAvailable() {
        if (!getLeAccess()) {
            return false;
        }
        try {
            IBluetoothGatt iGatt = this.mManagerService.getBluetoothGatt();
            if (iGatt == null) {
                return false;
            }
            SynchronousResultReceiver<Integer> recv = SynchronousResultReceiver.get();
            iGatt.numHwTrackFiltersAvailable(this.mAttributionSource, recv);
            return recv.awaitResultNoInterrupt(BluetoothUtils.getSyncTimeout()).getValue(0).intValue() != 0;
        } catch (RemoteException | TimeoutException e) {
            Log.e(TAG, "", e);
            return false;
        }
    }

    @SystemApi
    public void requestControllerActivityEnergyInfo(Executor executor, OnBluetoothActivityEnergyInfoCallback callback) {
        Objects.requireNonNull(executor, "executor cannot be null");
        Objects.requireNonNull(callback, "callback cannot be null");
        OnBluetoothActivityEnergyInfoProxy proxy = new OnBluetoothActivityEnergyInfoProxy(executor, callback);
        try {
            try {
                this.mServiceLock.readLock().lock();
                IBluetooth iBluetooth = this.mService;
                if (iBluetooth != null) {
                    iBluetooth.requestActivityInfo(proxy, this.mAttributionSource);
                } else {
                    proxy.onError(9);
                }
            } catch (RemoteException e) {
                Log.e(TAG, "getControllerActivityEnergyInfoCallback: " + e);
                proxy.onError(Integer.MAX_VALUE);
            }
        } finally {
            this.mServiceLock.readLock().unlock();
        }
    }

    @SystemApi
    public List<BluetoothDevice> getMostRecentlyConnectedDevices() {
        try {
            if (getState() != 12) {
                return new ArrayList();
            }
            try {
                this.mServiceLock.readLock().lock();
                if (this.mService != null) {
                    SynchronousResultReceiver<List<BluetoothDevice>> recv = SynchronousResultReceiver.get();
                    this.mService.getMostRecentlyConnectedDevices(this.mAttributionSource, recv);
                    return Attributable.setAttributionSource(recv.awaitResultNoInterrupt(BluetoothUtils.getSyncTimeout()).getValue(new ArrayList<>()), this.mAttributionSource);
                }
            } catch (RemoteException | TimeoutException e) {
                Log.e(TAG, e.toString() + "\n" + Log.getStackTraceString(new Throwable()));
            }
            return new ArrayList();
        } finally {
            this.mServiceLock.readLock().unlock();
        }
    }

    public Set<BluetoothDevice> getBondedDevices() {
        try {
            if (getState() != 12) {
                return toDeviceSet(Arrays.asList(new BluetoothDevice[0]));
            }
            try {
                this.mServiceLock.readLock().lock();
                if (this.mService == null) {
                    return toDeviceSet(Arrays.asList(new BluetoothDevice[0]));
                }
                SynchronousResultReceiver<List<BluetoothDevice>> recv = SynchronousResultReceiver.get();
                this.mService.getBondedDevices(this.mAttributionSource, recv);
                return toDeviceSet(Attributable.setAttributionSource(recv.awaitResultNoInterrupt(BluetoothUtils.getSyncTimeout()).getValue(new ArrayList<>()), this.mAttributionSource));
            } catch (RemoteException | TimeoutException e) {
                Log.e(TAG, e.toString() + "\n" + Log.getStackTraceString(new Throwable()));
                this.mServiceLock.readLock().unlock();
                return null;
            }
        } finally {
            this.mServiceLock.readLock().unlock();
        }
    }

    @SystemApi
    public List<Integer> getSupportedProfiles() {
        ArrayList<Integer> supportedProfiles = new ArrayList<>();
        try {
            synchronized (this.mManagerCallback) {
                if (this.mService != null) {
                    SynchronousResultReceiver<Long> recv = SynchronousResultReceiver.get();
                    this.mService.getSupportedProfiles(this.mAttributionSource, recv);
                    long supportedProfilesBitMask = recv.awaitResultNoInterrupt(BluetoothUtils.getSyncTimeout()).getValue(0L).longValue();
                    for (int i = 0; i <= 38; i++) {
                        if (((1 << i) & supportedProfilesBitMask) != 0) {
                            supportedProfiles.add(Integer.valueOf(i));
                        }
                    }
                } else if (isHearingAidProfileSupported()) {
                    supportedProfiles.add(21);
                }
            }
        } catch (RemoteException | TimeoutException e) {
            Log.e(TAG, e.toString() + "\n" + Log.getStackTraceString(new Throwable()));
        }
        return supportedProfiles;
    }

    public void disableGetAdapterConnectionStateCache() {
        this.mBluetoothGetAdapterConnectionStateCache.disableForCurrentProcess();
    }

    public static void invalidateGetAdapterConnectionStateCache() {
        invalidateCache(GET_CONNECTION_API);
    }

    @SystemApi
    public int getConnectionState() {
        if (getState() != 12) {
            return 0;
        }
        this.mServiceLock.readLock().lock();
        try {
            try {
                IBluetooth iBluetooth = this.mService;
                if (iBluetooth != null) {
                    return this.mBluetoothGetAdapterConnectionStateCache.query(iBluetooth).intValue();
                }
            } catch (RuntimeException e) {
                if (!(e.getCause() instanceof TimeoutException) && !(e.getCause() instanceof RemoteException)) {
                    throw e;
                }
                Log.e(TAG, e.toString() + "\n" + Log.getStackTraceString(new Throwable()));
            }
            return 0;
        } finally {
            this.mServiceLock.readLock().unlock();
        }
    }

    public void disableGetProfileConnectionStateCache() {
        this.mGetProfileConnectionStateCache.disableForCurrentProcess();
    }

    public static void invalidateGetProfileConnectionStateCache() {
        invalidateCache(PROFILE_API);
    }

    public int getProfileConnectionState(int profile) {
        if (getState() != 12) {
            return 0;
        }
        this.mServiceLock.readLock().lock();
        try {
            try {
                IBluetooth iBluetooth = this.mService;
                if (iBluetooth != null) {
                    return this.mGetProfileConnectionStateCache.query(new Pair<>(iBluetooth, Integer.valueOf(profile))).intValue();
                }
            } catch (RuntimeException e) {
                if (!(e.getCause() instanceof TimeoutException) && !(e.getCause() instanceof RemoteException)) {
                    throw e;
                }
                Log.e(TAG, e.toString() + "\n" + Log.getStackTraceString(new Throwable()));
            }
            return 0;
        } finally {
            this.mServiceLock.readLock().unlock();
        }
    }

    public BluetoothServerSocket listenUsingRfcommOn(int channel) throws IOException {
        return listenUsingRfcommOn(channel, false, false);
    }

    public BluetoothServerSocket listenUsingRfcommOn(int channel, boolean mitm, boolean min16DigitPin) throws IOException {
        BluetoothServerSocket socket = new BluetoothServerSocket(1, true, true, channel, mitm, min16DigitPin);
        int errno = socket.mSocket.bindListen();
        if (channel == -2) {
            socket.setChannel(socket.mSocket.getPort());
        }
        if (errno == 0) {
            return socket;
        }
        throw new IOException("Error: " + errno);
    }

    public BluetoothServerSocket listenUsingRfcommWithServiceRecord(String name, UUID uuid) throws IOException {
        return createNewRfcommSocketAndRecord(name, uuid, true, true);
    }

    @SystemApi
    public int startRfcommServer(String name, UUID uuid, PendingIntent pendingIntent) {
        if (!pendingIntent.isImmutable()) {
            throw new IllegalArgumentException("The provided PendingIntent is not immutable");
        }
        try {
            SynchronousResultReceiver<Integer> recv = SynchronousResultReceiver.get();
            this.mService.startRfcommListener(name, new ParcelUuid(uuid), pendingIntent, this.mAttributionSource, recv);
            return recv.awaitResultNoInterrupt(BluetoothUtils.getSyncTimeout()).getValue(9).intValue();
        } catch (RemoteException | TimeoutException e) {
            Log.e(TAG, "Failed to transact RFCOMM listener start request", e);
            return 15;
        }
    }

    @SystemApi
    public int stopRfcommServer(UUID uuid) {
        try {
            SynchronousResultReceiver<Integer> recv = SynchronousResultReceiver.get();
            this.mService.stopRfcommListener(new ParcelUuid(uuid), this.mAttributionSource, recv);
            return recv.awaitResultNoInterrupt(BluetoothUtils.getSyncTimeout()).getValue(9).intValue();
        } catch (RemoteException | TimeoutException e) {
            Log.e(TAG, "Failed to transact RFCOMM listener stop request", e);
            return 15;
        }
    }

    @SystemApi
    public BluetoothSocket retrieveConnectedRfcommSocket(UUID uuid) {
        try {
            SynchronousResultReceiver<IncomingRfcommSocketInfo> recv = SynchronousResultReceiver.get();
            this.mService.retrievePendingSocketForServiceRecord(new ParcelUuid(uuid), this.mAttributionSource, recv);
            IncomingRfcommSocketInfo socketInfo = recv.awaitResultNoInterrupt(BluetoothUtils.getSyncTimeout()).getValue(null);
            if (socketInfo == null) {
                return null;
            }
            switch (socketInfo.status) {
                case 0:
                    try {
                        return BluetoothSocket.createSocketFromOpenFd(socketInfo.pfd, socketInfo.bluetoothDevice, new ParcelUuid(uuid));
                    } catch (IOException e) {
                        return null;
                    }
                case 2002:
                    throw new IllegalStateException(String.format("RFCOMM listener for UUID %s was not registered by this app", uuid));
                case 2005:
                    return null;
                default:
                    Log.e(TAG, String.format("Unexpected result: (%d), from the adapter service while retrieving an rfcomm socket", Integer.valueOf(socketInfo.status)));
                    return null;
            }
        } catch (RemoteException | TimeoutException e2) {
            Log.e(TAG, e2.toString() + "\n" + Log.getStackTraceString(new Throwable()));
            return null;
        }
    }

    public BluetoothServerSocket listenUsingInsecureRfcommWithServiceRecord(String name, UUID uuid) throws IOException {
        return createNewRfcommSocketAndRecord(name, uuid, false, false);
    }

    public BluetoothServerSocket listenUsingEncryptedRfcommWithServiceRecord(String name, UUID uuid) throws IOException {
        return createNewRfcommSocketAndRecord(name, uuid, false, true);
    }

    private BluetoothServerSocket createNewRfcommSocketAndRecord(String name, UUID uuid, boolean auth, boolean encrypt) throws IOException {
        BluetoothServerSocket socket = new BluetoothServerSocket(1, auth, encrypt, new ParcelUuid(uuid));
        socket.setServiceName(name);
        int errno = socket.mSocket.bindListen();
        if (errno != 0) {
            throw new IOException("Error: " + errno);
        }
        return socket;
    }

    public BluetoothServerSocket listenUsingInsecureRfcommOn(int port) throws IOException {
        BluetoothServerSocket socket = new BluetoothServerSocket(1, false, false, port);
        int errno = socket.mSocket.bindListen();
        if (port == -2) {
            socket.setChannel(socket.mSocket.getPort());
        }
        if (errno != 0) {
            throw new IOException("Error: " + errno);
        }
        return socket;
    }

    public BluetoothServerSocket listenUsingL2capOn(int port, boolean mitm, boolean min16DigitPin) throws IOException {
        BluetoothServerSocket socket = new BluetoothServerSocket(3, true, true, port, mitm, min16DigitPin);
        int errno = socket.mSocket.bindListen();
        if (port == -2) {
            int assignedChannel = socket.mSocket.getPort();
            Log.d(TAG, "listenUsingL2capOn: set assigned channel to " + assignedChannel);
            socket.setChannel(assignedChannel);
        }
        if (errno == 0) {
            return socket;
        }
        throw new IOException("Error: " + errno);
    }

    public BluetoothServerSocket listenUsingL2capOn(int port) throws IOException {
        return listenUsingL2capOn(port, false, false);
    }

    public BluetoothServerSocket listenUsingInsecureL2capOn(int port) throws IOException {
        Log.d(TAG, "listenUsingInsecureL2capOn: port=" + port);
        BluetoothServerSocket socket = new BluetoothServerSocket(3, false, false, port, false, false);
        int errno = socket.mSocket.bindListen();
        if (port == -2) {
            int assignedChannel = socket.mSocket.getPort();
            Log.d(TAG, "listenUsingInsecureL2capOn: set assigned channel to " + assignedChannel);
            socket.setChannel(assignedChannel);
        }
        if (errno != 0) {
            throw new IOException("Error: " + errno);
        }
        return socket;
    }

    public Pair<byte[], byte[]> readOutOfBandData() {
        return null;
    }

    private void closeBCProfile(BluetoothProfile proxy) throws IllegalAccessException, NoSuchMethodException, ClassNotFoundException, SecurityException, IllegalArgumentException, InvocationTargetException {
        Class<?> bshClass;
        Method bshClose = null;
        try {
            bshClass = Class.forName("android.bluetooth.BluetoothSyncHelper");
        } catch (ClassNotFoundException e) {
            Log.e(TAG, "no BSH: exists");
            bshClass = null;
        }
        if (bshClass != null) {
            Log.d(TAG, "Able to get BSH class handle");
            try {
                bshClose = bshClass.getDeclaredMethod("close", null);
            } catch (NoSuchMethodException e2) {
                Log.e(TAG, "no BSH:isSupported method exists");
            }
            if (bshClose != null) {
                try {
                    bshClose.invoke(proxy, null);
                } catch (IllegalAccessException e3) {
                    Log.e(TAG, "bshClose IllegalAccessException");
                } catch (InvocationTargetException e4) {
                    Log.e(TAG, "bshClose InvocationTargetException");
                }
            }
        }
        Log.d(TAG, "CloseBCProfile returns");
    }

    private boolean getBCProfile(Context context, BluetoothProfile.ServiceListener sl) throws IllegalAccessException, NoSuchMethodException, InstantiationException, ClassNotFoundException, SecurityException, IllegalArgumentException, InvocationTargetException {
        Class<?> bshClass;
        boolean isProfileSupported = false;
        Method bshSupported = null;
        Constructor bshCons = null;
        Object bshObj = null;
        try {
            Class<?> bshClass2 = Class.forName("android.bluetooth.BluetoothSyncHelper");
            bshClass = bshClass2;
        } catch (ClassNotFoundException e) {
            Log.e(TAG, "no BSH: exists");
            bshClass = null;
        }
        if (bshClass != null) {
            Log.d(TAG, "Able to get BSH class handle");
            try {
                bshSupported = bshClass.getDeclaredMethod("isSupported", null);
            } catch (NoSuchMethodException e2) {
                Log.e(TAG, "no BSH:isSupported method exists: gdm");
            }
            try {
                bshCons = bshClass.getDeclaredConstructor(Context.class, BluetoothProfile.ServiceListener.class);
            } catch (NoSuchMethodException ex) {
                Log.e(TAG, "bshCons: NoSuchMethodException: gdm" + ex);
            }
        }
        if (bshClass != null && bshSupported != null && bshCons != null) {
            try {
                isProfileSupported = ((Boolean) bshSupported.invoke(null, null)).booleanValue();
            } catch (IllegalAccessException e3) {
                Log.e(TAG, "BSH:isSupported IllegalAccessException");
            } catch (InvocationTargetException e4) {
                Log.e(TAG, "BSH:isSupported InvocationTargetException");
            }
            if (isProfileSupported) {
                try {
                    bshObj = bshCons.newInstance(context, sl);
                } catch (IllegalAccessException ex2) {
                    Log.e(TAG, "bshCons InstantiationException:" + ex2);
                } catch (InstantiationException ex3) {
                    Log.e(TAG, "bshCons InstantiationException:" + ex3);
                } catch (InvocationTargetException ex4) {
                    Log.e(TAG, "bshCons InvocationTargetException:" + ex4);
                }
            }
        }
        boolean ret = bshObj != null;
        Log.d(TAG, "getBCService returns" + ret);
        return ret;
    }

    public boolean getProfileProxy(Context context, BluetoothProfile.ServiceListener listener, int profile) {
        if (context == null || listener == null) {
            return false;
        }
        if (profile == 1) {
            new BluetoothHeadset(context, listener, this);
            return true;
        }
        if (profile == 2) {
            new BluetoothA2dp(context, listener, this);
            return true;
        }
        if (profile == 11) {
            new BluetoothA2dpSink(context, listener, this);
            return true;
        }
        if (profile == 12) {
            new BluetoothAvrcpController(context, listener, this);
            return true;
        }
        if (profile == 4) {
            new BluetoothHidHost(context, listener, this);
            return true;
        }
        if (profile == 5) {
            new BluetoothPan(context, listener, this);
            return true;
        }
        if (profile == 6) {
            new BluetoothPbap(context, listener, this);
            return true;
        }
        if (profile == 31) {
            new BluetoothDun(context, listener);
            return true;
        }
        if (profile == 3) {
            Log.e(TAG, "getProfileProxy(): BluetoothHealth is deprecated");
            return false;
        }
        if (profile == 9) {
            new BluetoothMap(context, listener, this);
            return true;
        }
        if (profile == 16) {
            new BluetoothHeadsetClient(context, listener, this);
            return true;
        }
        if (profile == 10) {
            new BluetoothSap(context, listener, this);
            return true;
        }
        if (profile == 17) {
            new BluetoothPbapClient(context, listener, this);
            return true;
        }
        if (profile == 18) {
            new BluetoothMapClient(context, listener, this);
            return true;
        }
        if (profile == 19) {
            new BluetoothHidDevice(context, listener, this);
            return true;
        }
        if (profile == 28) {
            new BluetoothHapClient(context, listener);
            return true;
        }
        if (profile == 33) {
            return getBroadcastProfile(context, listener);
        }
        if (profile == 35) {
            return getBCProfile(context, listener);
        }
        if (profile == 21) {
            if (!isHearingAidProfileSupported()) {
                return false;
            }
            new BluetoothHearingAid(context, listener, this);
            return true;
        }
        if (profile == 32) {
            new BluetoothDeviceGroup(context, listener);
            return true;
        }
        if (profile == 34) {
            new BluetoothVcp(context, listener);
            return true;
        }
        if (profile == 22) {
            new BluetoothLeAudio(context, listener, this);
            return true;
        }
        if (profile == 26) {
            new BluetoothLeBroadcast(context, listener);
            return true;
        }
        if (profile == 23) {
            new BluetoothVolumeControl(context, listener, this);
            return true;
        }
        if (profile == 25) {
            new BluetoothCsipSetCoordinator(context, listener, this);
            return true;
        }
        if (profile == 27) {
            new BluetoothLeCallControl(context, listener);
            return true;
        }
        if (profile != 29) {
            return false;
        }
        new BluetoothLeBroadcastAssistant(context, listener);
        return true;
    }

    public void closeProfileProxy(int profile, BluetoothProfile proxy) throws IllegalAccessException, NoSuchMethodException, ClassNotFoundException, SecurityException, IllegalArgumentException, InvocationTargetException {
        if (proxy == null) {
        }
        switch (profile) {
            case 1:
                BluetoothHeadset headset = (BluetoothHeadset) proxy;
                headset.close();
                break;
            case 2:
                BluetoothA2dp a2dp = (BluetoothA2dp) proxy;
                a2dp.close();
                break;
            case 4:
                BluetoothHidHost iDev = (BluetoothHidHost) proxy;
                iDev.close();
                break;
            case 5:
                BluetoothPan pan = (BluetoothPan) proxy;
                pan.close();
                break;
            case 6:
                BluetoothPbap pbap = (BluetoothPbap) proxy;
                pbap.close();
                break;
            case 7:
                BluetoothGatt gatt = (BluetoothGatt) proxy;
                gatt.close();
                break;
            case 8:
                BluetoothGattServer gattServer = (BluetoothGattServer) proxy;
                gattServer.close();
                break;
            case 9:
                BluetoothMap map = (BluetoothMap) proxy;
                map.close();
                break;
            case 10:
                BluetoothSap sap = (BluetoothSap) proxy;
                sap.close();
                break;
            case 11:
                BluetoothA2dpSink a2dpSink = (BluetoothA2dpSink) proxy;
                a2dpSink.close();
                break;
            case 12:
                BluetoothAvrcpController avrcp = (BluetoothAvrcpController) proxy;
                avrcp.close();
                break;
            case 16:
                BluetoothHeadsetClient headsetClient = (BluetoothHeadsetClient) proxy;
                headsetClient.close();
                break;
            case 17:
                BluetoothPbapClient pbapClient = (BluetoothPbapClient) proxy;
                pbapClient.close();
                break;
            case 18:
                BluetoothMapClient mapClient = (BluetoothMapClient) proxy;
                mapClient.close();
                break;
            case 19:
                BluetoothHidDevice hidDevice = (BluetoothHidDevice) proxy;
                hidDevice.close();
                break;
            case 21:
                BluetoothHearingAid hearingAid = (BluetoothHearingAid) proxy;
                hearingAid.close();
                break;
            case 22:
                BluetoothLeAudio leAudio = (BluetoothLeAudio) proxy;
                leAudio.close();
                break;
            case 23:
                BluetoothVolumeControl vcs = (BluetoothVolumeControl) proxy;
                vcs.close();
                break;
            case 25:
                BluetoothCsipSetCoordinator csipSetCoordinator = (BluetoothCsipSetCoordinator) proxy;
                csipSetCoordinator.close();
                break;
            case 26:
                BluetoothLeBroadcast leAudioBroadcast = (BluetoothLeBroadcast) proxy;
                leAudioBroadcast.close();
                break;
            case 27:
                BluetoothLeCallControl tbs = (BluetoothLeCallControl) proxy;
                tbs.close();
                break;
            case 28:
                BluetoothHapClient HapClient = (BluetoothHapClient) proxy;
                HapClient.close();
                break;
            case 29:
                BluetoothLeBroadcastAssistant leAudioBroadcastAssistant = (BluetoothLeBroadcastAssistant) proxy;
                leAudioBroadcastAssistant.close();
                break;
            case 31:
                BluetoothDun dun = (BluetoothDun) proxy;
                dun.close();
                break;
            case 32:
                BluetoothDeviceGroup groupClient = (BluetoothDeviceGroup) proxy;
                groupClient.close();
                break;
            case 33:
                closeBroadcastProfile(proxy);
                break;
            case 34:
                BluetoothVcp vcp = (BluetoothVcp) proxy;
                vcp.close();
                break;
            case 35:
                closeBCProfile(proxy);
                break;
        }
    }

    private boolean getBroadcastProfile(Context context, BluetoothProfile.ServiceListener listener) throws IllegalAccessException, NoSuchMethodException, InstantiationException, ClassNotFoundException, SecurityException, IllegalArgumentException, InvocationTargetException {
        Class<?> broadcastClass = null;
        Constructor bcastConstructor = null;
        Object broadcastObj = null;
        try {
            broadcastClass = Class.forName("android.bluetooth.BluetoothBroadcast");
        } catch (ClassNotFoundException e) {
            Log.e(TAG, "no BluetoothBroadcast: exists");
        }
        if (broadcastClass != null) {
            try {
                bcastConstructor = broadcastClass.getDeclaredConstructor(Context.class, BluetoothProfile.ServiceListener.class);
            } catch (NoSuchMethodException ex) {
                Log.e(TAG, "bcastConstructor: NoSuchMethodException: gdm" + ex);
            }
        }
        if (bcastConstructor != null) {
            try {
                broadcastObj = bcastConstructor.newInstance(context, listener);
            } catch (IllegalAccessException | InstantiationException | InvocationTargetException ex2) {
                ex2.printStackTrace();
            }
        }
        return broadcastObj != null;
    }

    private void closeBroadcastProfile(BluetoothProfile proxy) throws IllegalAccessException, NoSuchMethodException, ClassNotFoundException, SecurityException, IllegalArgumentException, InvocationTargetException {
        Class<?> broadcastClass = null;
        Method broadcastClose = null;
        try {
            broadcastClass = Class.forName("android.bluetooth.BluetootBroadcast");
        } catch (ClassNotFoundException e) {
            Log.e(TAG, "no BluetoothBroadcast: exists");
        }
        if (broadcastClass != null) {
            try {
                broadcastClose = broadcastClass.getDeclaredMethod("close", null);
            } catch (NoSuchMethodException e2) {
                Log.e(TAG, "no Broadcast:close method exists");
            }
            if (broadcastClose != null) {
                try {
                    broadcastClose.invoke(proxy, null);
                } catch (IllegalAccessException | InvocationTargetException ex) {
                    ex.printStackTrace();
                }
            }
        }
    }

    /* renamed from: android.bluetooth.BluetoothAdapter$7, reason: invalid class name */
    class AnonymousClass7 extends IBluetoothManagerCallback.Stub {
        AnonymousClass7() {
        }

        @Override // android.bluetooth.IBluetoothManagerCallback
        public void onBluetoothServiceUp(IBluetooth bluetoothService) {
            Lock l = BluetoothAdapter.this.mServiceLock.writeLock();
            l.lock();
            try {
                BluetoothAdapter.this.mService = bluetoothService;
                l.unlock();
                synchronized (BluetoothAdapter.this.mMetadataListeners) {
                    BluetoothAdapter.this.mMetadataListeners.forEach(new BiConsumer() { // from class: android.bluetooth.BluetoothAdapter$7$$ExternalSyntheticLambda0
                        @Override // java.util.function.BiConsumer
                        public final void accept(Object obj, Object obj2) {
                            this.f$0.m701x59e15a8b((BluetoothDevice) obj, (List) obj2);
                        }
                    });
                }
                synchronized (BluetoothAdapter.this.mBluetoothConnectionCallbackExecutorMap) {
                    if (!BluetoothAdapter.this.mBluetoothConnectionCallbackExecutorMap.isEmpty()) {
                        try {
                            SynchronousResultReceiver recv = SynchronousResultReceiver.get();
                            if (BluetoothAdapter.this.mService != null) {
                                BluetoothAdapter.this.mService.registerBluetoothConnectionCallback(BluetoothAdapter.this.mConnectionCallback, BluetoothAdapter.this.mAttributionSource, recv);
                            }
                            recv.awaitResultNoInterrupt(BluetoothUtils.getSyncTimeout()).getValue(null);
                        } catch (RemoteException | TimeoutException e) {
                            Log.e(BluetoothAdapter.TAG, "onBluetoothServiceUp: Failed to register bluetoothconnection callback", e);
                        }
                    }
                }
            } catch (Throwable th) {
                l.unlock();
                throw th;
            }
        }

        /* renamed from: lambda$onBluetoothServiceUp$0$android-bluetooth-BluetoothAdapter$7, reason: not valid java name */
        /* synthetic */ void m701x59e15a8b(BluetoothDevice device, List pair) {
            try {
                SynchronousResultReceiver recv = SynchronousResultReceiver.get();
                BluetoothAdapter.this.mService.registerMetadataListener(BluetoothAdapter.this.mBluetoothMetadataListener, device, BluetoothAdapter.this.mAttributionSource, recv);
                recv.awaitResultNoInterrupt(BluetoothUtils.getSyncTimeout()).getValue(null);
            } catch (RemoteException | TimeoutException e) {
                Log.e(BluetoothAdapter.TAG, "Failed to register metadata listener", e);
                Log.e(BluetoothAdapter.TAG, e.toString() + "\n" + Log.getStackTraceString(new Throwable()));
            }
        }

        @Override // android.bluetooth.IBluetoothManagerCallback
        public void onBluetoothServiceDown() {
            Lock l = BluetoothAdapter.this.mServiceLock.writeLock();
            l.lock();
            try {
                BluetoothAdapter.this.mService = null;
                if (BluetoothAdapter.this.mLeScanClients != null) {
                    BluetoothAdapter.this.mLeScanClients.clear();
                }
                if (BluetoothAdapter.this.mBluetoothLeAdvertiser != null) {
                    BluetoothAdapter.this.mBluetoothLeAdvertiser.cleanup();
                }
                if (BluetoothAdapter.this.mBluetoothLeScanner != null) {
                    BluetoothAdapter.this.mBluetoothLeScanner.cleanup();
                }
            } finally {
                l.unlock();
            }
        }

        @Override // android.bluetooth.IBluetoothManagerCallback
        public void onBrEdrDown() {
        }
    }

    @SystemApi
    public boolean enableNoAutoConnect() {
        Log.d(TAG, "enableNoAutoConnect(): called by: " + ActivityThread.currentPackageName());
        if (isEnabled()) {
            Log.d(TAG, "enableNoAutoConnect(): BT already enabled!");
            return true;
        }
        try {
            return this.mManagerService.enableNoAutoConnect(this.mAttributionSource);
        } catch (RemoteException e) {
            Log.e(TAG, "", e);
            return false;
        }
    }

    public class WrappedOobDataCallback extends IBluetoothOobDataCallback.Stub {
        private final OobDataCallback mCallback;
        private final Executor mExecutor;

        WrappedOobDataCallback(OobDataCallback callback, Executor executor) {
            Objects.requireNonNull(callback);
            Objects.requireNonNull(executor);
            this.mCallback = callback;
            this.mExecutor = executor;
        }

        @Override // android.bluetooth.IBluetoothOobDataCallback
        public void onOobData(final int transport, final OobData oobData) {
            this.mExecutor.execute(new Runnable() { // from class: android.bluetooth.BluetoothAdapter.WrappedOobDataCallback.1
                @Override // java.lang.Runnable
                public void run() {
                    WrappedOobDataCallback.this.mCallback.onOobData(transport, oobData);
                }
            });
        }

        @Override // android.bluetooth.IBluetoothOobDataCallback
        public void onError(final int errorCode) {
            this.mExecutor.execute(new Runnable() { // from class: android.bluetooth.BluetoothAdapter.WrappedOobDataCallback.2
                @Override // java.lang.Runnable
                public void run() {
                    WrappedOobDataCallback.this.mCallback.onError(errorCode);
                }
            });
        }
    }

    @SystemApi
    public void generateLocalOobData(int transport, Executor executor, OobDataCallback callback) {
        if (transport != 1 && transport != 2) {
            throw new IllegalArgumentException("Invalid transport '" + transport + "'!");
        }
        Objects.requireNonNull(callback);
        if (!isEnabled()) {
            Log.w(TAG, "generateLocalOobData(): Adapter isn't enabled!");
            callback.onError(1);
            return;
        }
        try {
            SynchronousResultReceiver recv = SynchronousResultReceiver.get();
            this.mService.generateLocalOobData(transport, new WrappedOobDataCallback(callback, executor), this.mAttributionSource, recv);
            recv.awaitResultNoInterrupt(BluetoothUtils.getSyncTimeout()).getValue(null);
        } catch (RemoteException | TimeoutException e) {
            Log.e(TAG, e.toString() + "\n" + Log.getStackTraceString(new Throwable()));
        }
    }

    public boolean changeApplicationBluetoothState(boolean on, BluetoothStateChangeCallback callback) {
        return false;
    }

    public class StateChangeCallbackWrapper extends IBluetoothStateChangeCallback.Stub {
        private BluetoothStateChangeCallback mCallback;

        StateChangeCallbackWrapper(BluetoothStateChangeCallback callback) {
            this.mCallback = callback;
        }

        @Override // android.bluetooth.IBluetoothStateChangeCallback
        public void onBluetoothStateChange(boolean on) {
            this.mCallback.onBluetoothStateChange(on);
        }
    }

    public void unregisterAdapter() {
        try {
            IBluetoothManager iBluetoothManager = this.mManagerService;
            if (iBluetoothManager != null) {
                iBluetoothManager.unregisterAdapter(this.mManagerCallback);
            }
        } catch (RemoteException e) {
            Log.e(TAG, "", e);
        }
    }

    private Set<BluetoothDevice> toDeviceSet(List<BluetoothDevice> devices) {
        Set<BluetoothDevice> deviceSet = new HashSet<>(devices);
        return Collections.unmodifiableSet(deviceSet);
    }

    protected void finalize() throws Throwable {
        try {
            removeServiceStateCallback(this.mManagerCallback);
        } finally {
            super.finalize();
        }
    }

    public static boolean checkBluetoothAddress(String address) {
        if (address == null || address.length() != 17) {
            return false;
        }
        for (int i = 0; i < 17; i++) {
            char c = address.charAt(i);
            switch (i % 3) {
                case 0:
                case 1:
                    if ((c < '0' || c > '9') && (c < 'A' || c > 'F')) {
                        return false;
                    }
                    break;
                    break;
                case 2:
                    if (c != ':') {
                        return false;
                    }
                    break;
            }
        }
        return true;
    }

    public static boolean isAddressRandomStatic(String address) {
        Objects.requireNonNull(address);
        return checkBluetoothAddress(address) && (Integer.parseInt(address.split(":")[0], 16) & 192) == 192;
    }

    public IBluetoothManager getBluetoothManager() {
        return this.mManagerService;
    }

    public AttributionSource getAttributionSource() {
        return this.mAttributionSource;
    }

    IBluetooth getBluetoothService() {
        IBluetooth iBluetooth;
        synchronized (sServiceLock) {
            if (sProxyServiceStateCallbacks.isEmpty()) {
                throw new IllegalStateException("Anonymous service access requires at least one lifecycle in process");
            }
            iBluetooth = sService;
        }
        return iBluetooth;
    }

    IBluetooth getBluetoothService(IBluetoothManagerCallback cb) {
        IBluetooth iBluetooth;
        Objects.requireNonNull(cb);
        synchronized (sServiceLock) {
            sProxyServiceStateCallbacks.put(cb, null);
            registerOrUnregisterAdapterLocked();
            iBluetooth = sService;
        }
        return iBluetooth;
    }

    void removeServiceStateCallback(IBluetoothManagerCallback cb) {
        Objects.requireNonNull(cb);
        synchronized (sServiceLock) {
            sProxyServiceStateCallbacks.remove(cb);
            registerOrUnregisterAdapterLocked();
        }
    }

    private void registerOrUnregisterAdapterLocked() {
        boolean isRegistered = sServiceRegistered;
        boolean wantRegistered = !sProxyServiceStateCallbacks.isEmpty();
        if (isRegistered != wantRegistered) {
            if (wantRegistered) {
                try {
                    sService = this.mManagerService.registerAdapter(sManagerCallback);
                } catch (RemoteException e) {
                    throw e.rethrowFromSystemServer();
                }
            } else {
                try {
                    this.mManagerService.unregisterAdapter(sManagerCallback);
                    sService = null;
                } catch (RemoteException e2) {
                    throw e2.rethrowFromSystemServer();
                }
            }
            sServiceRegistered = wantRegistered;
        }
    }

    public boolean registerServiceLifecycleCallback(ServiceLifecycleCallback callback) {
        return getBluetoothService(callback.mRemote) != null;
    }

    public void unregisterServiceLifecycleCallback(ServiceLifecycleCallback callback) {
        removeServiceStateCallback(callback.mRemote);
    }

    @Deprecated
    public boolean startLeScan(LeScanCallback callback) {
        return startLeScan(null, callback);
    }

    @Deprecated
    public boolean startLeScan(final UUID[] serviceUuids, final LeScanCallback callback) {
        Log.d(TAG, "startLeScan(): " + Arrays.toString(serviceUuids));
        Log.d(TAG, "startLeScan(): called by: " + ActivityThread.currentPackageName());
        if (callback == null) {
            Log.e(TAG, "startLeScan: null callback");
            return false;
        }
        BluetoothLeScanner scanner = getBluetoothLeScanner();
        if (scanner == null) {
            Log.e(TAG, "startLeScan: cannot get BluetoothLeScanner");
            return false;
        }
        synchronized (this.mLeScanClients) {
            if (this.mLeScanClients.containsKey(callback)) {
                Log.e(TAG, "LE Scan has already started");
                return false;
            }
            try {
                IBluetoothGatt iGatt = this.mManagerService.getBluetoothGatt();
                if (iGatt == null) {
                    return false;
                }
                ScanCallback scanCallback = new ScanCallback() { // from class: android.bluetooth.BluetoothAdapter.8
                    @Override // android.bluetooth.le.ScanCallback
                    public void onScanResult(int callbackType, ScanResult result) {
                        if (callbackType != 1) {
                            Log.e(BluetoothAdapter.TAG, "LE Scan has already started");
                            return;
                        }
                        ScanRecord scanRecord = result.getScanRecord();
                        if (scanRecord == null) {
                            return;
                        }
                        if (serviceUuids != null) {
                            List<ParcelUuid> uuids = new ArrayList<>();
                            for (UUID uuid : serviceUuids) {
                                uuids.add(new ParcelUuid(uuid));
                            }
                            List<ParcelUuid> scanServiceUuids = scanRecord.getServiceUuids();
                            if (scanServiceUuids == null || !scanServiceUuids.containsAll(uuids)) {
                                Log.d(BluetoothAdapter.TAG, "uuids does not match");
                                return;
                            }
                        }
                        callback.onLeScan(result.getDevice(), result.getRssi(), scanRecord.getBytes());
                    }
                };
                ScanSettings settings = new ScanSettings.Builder().setCallbackType(1).setScanMode(2).build();
                List<ScanFilter> filters = new ArrayList<>();
                if (serviceUuids != null && serviceUuids.length > 0) {
                    ScanFilter filter = new ScanFilter.Builder().setServiceUuid(new ParcelUuid(serviceUuids[0])).build();
                    filters.add(filter);
                }
                scanner.startScan(filters, settings, scanCallback);
                this.mLeScanClients.put(callback, scanCallback);
                return true;
            } catch (RemoteException e) {
                Log.e(TAG, "", e);
                return false;
            }
        }
    }

    @Deprecated
    public void stopLeScan(LeScanCallback callback) {
        Log.d(TAG, "stopLeScan()");
        Log.d(TAG, "stopLeScan(): called by: " + ActivityThread.currentPackageName());
        BluetoothLeScanner scanner = getBluetoothLeScanner();
        if (scanner == null) {
            return;
        }
        synchronized (this.mLeScanClients) {
            ScanCallback scanCallback = this.mLeScanClients.remove(callback);
            if (scanCallback == null) {
                Log.d(TAG, "scan not started yet");
            } else {
                scanner.stopScan(scanCallback);
            }
        }
    }

    public BluetoothServerSocket listenUsingL2capChannel() throws IOException {
        BluetoothServerSocket socket = new BluetoothServerSocket(4, true, true, -2, false, false);
        int errno = socket.mSocket.bindListen();
        if (errno != 0) {
            throw new IOException("Error: " + errno);
        }
        int assignedPsm = socket.mSocket.getPort();
        if (assignedPsm == 0) {
            throw new IOException("Error: Unable to assign PSM value");
        }
        Log.d(TAG, "listenUsingL2capChannel: set assigned PSM to " + assignedPsm);
        socket.setChannel(assignedPsm);
        return socket;
    }

    public BluetoothServerSocket listenUsingInsecureL2capChannel() throws IOException {
        BluetoothServerSocket socket = new BluetoothServerSocket(4, false, false, -2, false, false);
        int errno = socket.mSocket.bindListen();
        if (errno != 0) {
            throw new IOException("Error: " + errno);
        }
        int assignedPsm = socket.mSocket.getPort();
        if (assignedPsm == 0) {
            throw new IOException("Error: Unable to assign PSM value");
        }
        Log.d(TAG, "listenUsingInsecureL2capChannel: set assigned PSM to " + assignedPsm);
        socket.setChannel(assignedPsm);
        return socket;
    }

    @SystemApi
    public boolean addOnMetadataChangedListener(BluetoothDevice device, Executor executor, final OnMetadataChangedListener listener) {
        boolean ret;
        Map<BluetoothDevice, List<Pair<OnMetadataChangedListener, Executor>>> map;
        Log.d(TAG, "addOnMetadataChangedListener()");
        IBluetooth service = this.mService;
        if (service == null) {
            Log.e(TAG, "Bluetooth is not enabled. Cannot register metadata listener");
            return false;
        }
        if (listener == null) {
            throw new NullPointerException("listener is null");
        }
        if (device == null) {
            throw new NullPointerException("device is null");
        }
        if (executor == null) {
            throw new NullPointerException("executor is null");
        }
        synchronized (this.mMetadataListeners) {
            List<Pair<OnMetadataChangedListener, Executor>> listenerList = this.mMetadataListeners.get(device);
            if (listenerList == null) {
                listenerList = new ArrayList();
                this.mMetadataListeners.put(device, listenerList);
            } else if (listenerList.stream().anyMatch(new Predicate() { // from class: android.bluetooth.BluetoothAdapter$$ExternalSyntheticLambda0
                @Override // java.util.function.Predicate
                public final boolean test(Object obj) {
                    return ((BluetoothAdapter.OnMetadataChangedListener) ((Pair) obj).first).equals(listener);
                }
            })) {
                throw new IllegalArgumentException("listener was already regestered for the device");
            }
            Pair<OnMetadataChangedListener, Executor> listenerPair = new Pair<>(listener, executor);
            listenerList.add(listenerPair);
            ret = false;
            try {
                try {
                    SynchronousResultReceiver<Boolean> recv = SynchronousResultReceiver.get();
                    service.registerMetadataListener(this.mBluetoothMetadataListener, device, this.mAttributionSource, recv);
                    ret = recv.awaitResultNoInterrupt(BluetoothUtils.getSyncTimeout()).getValue(false).booleanValue();
                } catch (RemoteException | TimeoutException e) {
                    Log.e(TAG, e.toString() + "\n" + Log.getStackTraceString(new Throwable()));
                    if (0 == 0) {
                        listenerList.remove(listenerPair);
                        if (listenerList.isEmpty()) {
                            map = this.mMetadataListeners;
                        }
                    }
                }
                if (!ret) {
                    listenerList.remove(listenerPair);
                    if (listenerList.isEmpty()) {
                        map = this.mMetadataListeners;
                        map.remove(device);
                    }
                }
            } catch (Throwable th) {
                if (0 == 0) {
                    listenerList.remove(listenerPair);
                    if (listenerList.isEmpty()) {
                        this.mMetadataListeners.remove(device);
                    }
                }
                throw th;
            }
        }
        return ret;
    }

    @SystemApi
    public boolean removeOnMetadataChangedListener(BluetoothDevice device, final OnMetadataChangedListener listener) {
        Log.d(TAG, "removeOnMetadataChangedListener()");
        if (device == null) {
            throw new NullPointerException("device is null");
        }
        if (listener == null) {
            throw new NullPointerException("listener is null");
        }
        synchronized (this.mMetadataListeners) {
            if (!this.mMetadataListeners.containsKey(device)) {
                throw new IllegalArgumentException("device was not registered");
            }
            this.mMetadataListeners.get(device).removeIf(new Predicate() { // from class: android.bluetooth.BluetoothAdapter$$ExternalSyntheticLambda1
                @Override // java.util.function.Predicate
                public final boolean test(Object obj) {
                    return ((BluetoothAdapter.OnMetadataChangedListener) ((Pair) obj).first).equals(listener);
                }
            });
            if (!this.mMetadataListeners.get(device).isEmpty()) {
                return true;
            }
            this.mMetadataListeners.remove(device);
            IBluetooth service = this.mService;
            if (service == null) {
                return true;
            }
            try {
                SynchronousResultReceiver<Boolean> recv = SynchronousResultReceiver.get();
                service.unregisterMetadataListener(device, this.mAttributionSource, recv);
                return recv.awaitResultNoInterrupt(BluetoothUtils.getSyncTimeout()).getValue(false).booleanValue();
            } catch (RemoteException | TimeoutException e) {
                Log.e(TAG, e.toString() + "\n" + Log.getStackTraceString(new Throwable()));
                return false;
            }
        }
    }

    /* renamed from: android.bluetooth.BluetoothAdapter$9, reason: invalid class name */
    class AnonymousClass9 extends IBluetoothConnectionCallback.Stub {
        AnonymousClass9() {
        }

        @Override // android.bluetooth.IBluetoothConnectionCallback
        public void onDeviceConnected(final BluetoothDevice device) {
            Attributable.setAttributionSource(device, BluetoothAdapter.this.mAttributionSource);
            for (Map.Entry<BluetoothConnectionCallback, Executor> callbackExecutorEntry : BluetoothAdapter.this.mBluetoothConnectionCallbackExecutorMap.entrySet()) {
                final BluetoothConnectionCallback callback = callbackExecutorEntry.getKey();
                Executor executor = callbackExecutorEntry.getValue();
                executor.execute(new Runnable() { // from class: android.bluetooth.BluetoothAdapter$9$$ExternalSyntheticLambda1
                    @Override // java.lang.Runnable
                    public final void run() {
                        callback.onDeviceConnected(device);
                    }
                });
            }
        }

        @Override // android.bluetooth.IBluetoothConnectionCallback
        public void onDeviceDisconnected(final BluetoothDevice device, final int hciReason) {
            Attributable.setAttributionSource(device, BluetoothAdapter.this.mAttributionSource);
            for (Map.Entry<BluetoothConnectionCallback, Executor> callbackExecutorEntry : BluetoothAdapter.this.mBluetoothConnectionCallbackExecutorMap.entrySet()) {
                final BluetoothConnectionCallback callback = callbackExecutorEntry.getKey();
                Executor executor = callbackExecutorEntry.getValue();
                executor.execute(new Runnable() { // from class: android.bluetooth.BluetoothAdapter$9$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        callback.onDeviceDisconnected(device, hciReason);
                    }
                });
            }
        }
    }

    @SystemApi
    public boolean registerBluetoothConnectionCallback(Executor executor, BluetoothConnectionCallback callback) {
        ReentrantReadWriteLock.ReadLock lock;
        Log.d(TAG, "registerBluetoothConnectionCallback()");
        if (callback == null || executor == null) {
            return false;
        }
        synchronized (this.mBluetoothConnectionCallbackExecutorMap) {
            try {
                if (this.mBluetoothConnectionCallbackExecutorMap.isEmpty()) {
                    try {
                        this.mServiceLock.readLock().lock();
                        if (this.mService != null) {
                            SynchronousResultReceiver<Boolean> recv = SynchronousResultReceiver.get();
                            this.mService.registerBluetoothConnectionCallback(this.mConnectionCallback, this.mAttributionSource, recv);
                            if (!recv.awaitResultNoInterrupt(BluetoothUtils.getSyncTimeout()).getValue(false).booleanValue()) {
                                return false;
                            }
                        }
                        lock = this.mServiceLock.readLock();
                    } catch (RemoteException | TimeoutException e) {
                        Log.e(TAG, e.toString() + "\n" + Log.getStackTraceString(new Throwable()));
                        this.mBluetoothConnectionCallbackExecutorMap.remove(callback);
                        lock = this.mServiceLock.readLock();
                    }
                    lock.unlock();
                }
                if (this.mBluetoothConnectionCallbackExecutorMap.containsKey(callback)) {
                    throw new IllegalArgumentException("This callback has already been registered");
                }
                this.mBluetoothConnectionCallbackExecutorMap.put(callback, executor);
                return true;
            } finally {
                this.mServiceLock.readLock().unlock();
            }
        }
    }

    @SystemApi
    public boolean unregisterBluetoothConnectionCallback(BluetoothConnectionCallback callback) {
        Log.d(TAG, "unregisterBluetoothConnectionCallback()");
        if (callback == null) {
            return false;
        }
        synchronized (this.mBluetoothConnectionCallbackExecutorMap) {
            if (this.mBluetoothConnectionCallbackExecutorMap.remove(callback) != null) {
                return false;
            }
            try {
                if (!this.mBluetoothConnectionCallbackExecutorMap.isEmpty()) {
                    return true;
                }
                try {
                    this.mServiceLock.readLock().lock();
                    if (this.mService != null) {
                        SynchronousResultReceiver<Boolean> recv = SynchronousResultReceiver.get();
                        this.mService.unregisterBluetoothConnectionCallback(this.mConnectionCallback, this.mAttributionSource, recv);
                        return recv.awaitResultNoInterrupt(BluetoothUtils.getSyncTimeout()).getValue(false).booleanValue();
                    }
                } catch (RemoteException | TimeoutException e) {
                    Log.e(TAG, e.toString() + "\n" + Log.getStackTraceString(new Throwable()));
                }
                return false;
            } finally {
                this.mServiceLock.readLock().unlock();
            }
        }
    }

    @SystemApi
    public static abstract class BluetoothConnectionCallback {

        @Retention(RetentionPolicy.SOURCE)
        public @interface DisconnectReason {
        }

        public void onDeviceConnected(BluetoothDevice device) {
        }

        public void onDeviceDisconnected(BluetoothDevice device, int reason) {
        }

        public static String disconnectReasonToString(int reason) {
            switch (reason) {
                case 1100:
                    return "Local request";
                case 1101:
                    return "Remote request";
                case 1102:
                    return "Local error";
                case 1103:
                    return "Remote error";
                case 1104:
                    return "Timeout";
                case 1105:
                    return "Security";
                case 1106:
                    return "System policy";
                case 1107:
                    return "Resource constrained";
                case 1108:
                    return "Connection already exists";
                case 1109:
                    return "Bad parameters";
                case Integer.MAX_VALUE:
                    return "Reason unknown";
                default:
                    return "Unrecognized disconnect reason: " + reason;
            }
        }
    }

    public static int priorityToConnectionPolicy(int priority) {
        switch (priority) {
            case -1:
                return -1;
            case 0:
                return 0;
            case 100:
                return 100;
            case 1000:
                return 100;
            default:
                Log.e(TAG, "setPriority: Invalid priority: " + priority);
                return -1;
        }
    }

    public static int connectionPolicyToPriority(int connectionPolicy) {
        switch (connectionPolicy) {
            case -1:
                break;
            case 0:
                break;
            case 100:
                break;
        }
        return -1;
    }

    private static boolean checkOplusPermission(String permission, int pid, int uid) throws IllegalAccessException, NoSuchMethodException, InstantiationException, ClassNotFoundException, SecurityException, IllegalArgumentException, InvocationTargetException {
        if (permission == null) {
            return true;
        }
        try {
            Class<?> serviceManager = Class.forName("android.os.ServiceManager");
            Method getService = serviceManager.getDeclaredMethod("getService", String.class);
            getService.setAccessible(true);
            Object serviceManagerObject = serviceManager.newInstance();
            IBinder permisisonBinder = (IBinder) getService.invoke(serviceManagerObject, "security_permission");
            Class<?> stub = Class.forName("android.os.ISecurityPermissionService$Stub");
            Method asInterface = stub.getDeclaredMethod("asInterface", IBinder.class);
            asInterface.setAccessible(true);
            Class<?> permissionController = Class.forName("android.os.ISecurityPermissionService");
            Method checkPermission = permissionController.getDeclaredMethod("checkOplusPermission", String.class, Integer.TYPE, Integer.TYPE);
            checkPermission.setAccessible(true);
            Object permissionControllerObject = asInterface.invoke(null, permisisonBinder);
            Boolean ret = (Boolean) checkPermission.invoke(permissionControllerObject, permission, Integer.valueOf(pid), Integer.valueOf(uid));
            if (ret != null) {
                try {
                } catch (Exception e) {
                    ex = e;
                    Log.e(TAG, "Exception in checkPermission: ", ex);
                    return true;
                }
                try {
                    Log.d(TAG, "checkPermission: " + permission + ", pid=" + pid + ", uid=" + uid + ", ret=" + ret);
                    return ret.booleanValue();
                } catch (Exception e2) {
                    ex = e2;
                    Log.e(TAG, "Exception in checkPermission: ", ex);
                    return true;
                }
            }
            return true;
        } catch (Exception e3) {
            ex = e3;
        }
    }
}

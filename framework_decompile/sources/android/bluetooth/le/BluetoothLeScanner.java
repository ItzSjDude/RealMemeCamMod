package android.bluetooth.le;

import android.annotation.SystemApi;
import android.app.PendingIntent;
import android.bluetooth.Attributable;
import android.bluetooth.BluetoothAdapter;
import android.bluetooth.IBluetoothGatt;
import android.bluetooth.IBluetoothManager;
import android.bluetooth.le.IScannerCallback;
import android.bluetooth.le.ScanFilter;
import android.bluetooth.le.ScanSettings;
import android.content.AttributionSource;
import android.os.Handler;
import android.os.Looper;
import android.os.RemoteException;
import android.os.WorkSource;
import android.util.Log;
import com.android.modules.utils.SynchronousResultReceiver;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.TimeoutException;

/* loaded from: classes.dex */
public final class BluetoothLeScanner {
    private static final boolean DBG = true;
    public static final String EXTRA_CALLBACK_TYPE = "android.bluetooth.le.extra.CALLBACK_TYPE";
    public static final String EXTRA_ERROR_CODE = "android.bluetooth.le.extra.ERROR_CODE";
    public static final String EXTRA_LIST_SCAN_RESULT = "android.bluetooth.le.extra.LIST_SCAN_RESULT";
    private static final String TAG = "BluetoothLeScanner";
    private static final boolean VDBG = false;
    private final AttributionSource mAttributionSource;
    private final BluetoothAdapter mBluetoothAdapter;
    private final IBluetoothManager mBluetoothManager;
    private final Handler mHandler;
    private final Map<ScanCallback, BleScanCallbackWrapper> mLeScanClients;

    public BluetoothLeScanner(BluetoothAdapter bluetoothAdapter) {
        BluetoothAdapter bluetoothAdapter2 = (BluetoothAdapter) Objects.requireNonNull(bluetoothAdapter);
        this.mBluetoothAdapter = bluetoothAdapter2;
        this.mBluetoothManager = bluetoothAdapter2.getBluetoothManager();
        this.mAttributionSource = bluetoothAdapter2.getAttributionSource();
        this.mHandler = new Handler(Looper.getMainLooper());
        this.mLeScanClients = new HashMap();
    }

    public void startScan(ScanCallback callback) throws Exception {
        startScan((List<ScanFilter>) null, new ScanSettings.Builder().build(), callback);
    }

    public void startScan(List<ScanFilter> filters, ScanSettings settings, ScanCallback callback) throws Exception {
        startScan(filters, settings, null, callback, null);
    }

    public int startScan(List<ScanFilter> filters, ScanSettings settings, PendingIntent callbackIntent) {
        return startScan(filters, settings != null ? settings : new ScanSettings.Builder().build(), null, null, callbackIntent);
    }

    @SystemApi
    public void startScanFromSource(WorkSource workSource, ScanCallback callback) throws Exception {
        startScanFromSource(null, new ScanSettings.Builder().build(), workSource, callback);
    }

    @SystemApi
    public void startScanFromSource(List<ScanFilter> filters, ScanSettings settings, WorkSource workSource, ScanCallback callback) throws Exception {
        startScan(filters, settings, workSource, callback, null);
    }

    private int startScan(List<ScanFilter> filters, ScanSettings settings, WorkSource workSource, ScanCallback callback, PendingIntent callbackIntent) throws Exception {
        IBluetoothGatt gatt;
        List<ScanFilter> filters2;
        BluetoothLeUtils.checkAdapterStateOn(this.mBluetoothAdapter);
        if (callback == null && callbackIntent == null) {
            throw new IllegalArgumentException("callback is null");
        }
        if (settings == null) {
            throw new IllegalArgumentException("settings is null");
        }
        synchronized (this.mLeScanClients) {
            try {
                if (callback != null) {
                    try {
                        if (this.mLeScanClients.containsKey(callback)) {
                            return postCallbackErrorOrReturn(callback, 1);
                        }
                    } catch (Throwable th) {
                        e = th;
                        throw e;
                    }
                }
                try {
                    IBluetoothGatt gatt2 = this.mBluetoothManager.getBluetoothGatt();
                    gatt = gatt2;
                } catch (RemoteException e) {
                    gatt = null;
                }
                if (gatt == null) {
                    return postCallbackErrorOrReturn(callback, 3);
                }
                if (settings.getCallbackType() == 8 && (filters == null || filters.isEmpty())) {
                    ScanFilter filter = new ScanFilter.Builder().build();
                    filters2 = Arrays.asList(filter);
                } else {
                    filters2 = filters;
                }
                if (!isSettingsConfigAllowedForScan(settings)) {
                    return postCallbackErrorOrReturn(callback, 4);
                }
                if (!isHardwareResourcesAvailableForScan(settings)) {
                    return postCallbackErrorOrReturn(callback, 5);
                }
                if (!isSettingsAndFilterComboAllowed(settings, filters2)) {
                    return postCallbackErrorOrReturn(callback, 4);
                }
                if (!isRoutingAllowedForScan(settings)) {
                    return postCallbackErrorOrReturn(callback, 4);
                }
                if (callback != null) {
                    BleScanCallbackWrapper wrapper = new BleScanCallbackWrapper(gatt, filters2, settings, workSource, callback);
                    wrapper.startRegistration();
                } else {
                    try {
                        SynchronousResultReceiver recv = SynchronousResultReceiver.get();
                        gatt.startScanForIntent(callbackIntent, settings, filters2, this.mAttributionSource, recv);
                        recv.awaitResultNoInterrupt(BluetoothLeUtils.getSyncTimeout()).getValue(null);
                    } catch (RemoteException | TimeoutException e2) {
                        return 3;
                    }
                }
                return 0;
            } catch (Throwable th2) {
                e = th2;
            }
        }
    }

    public void stopScan(ScanCallback callback) {
        BluetoothLeUtils.checkAdapterStateOn(this.mBluetoothAdapter);
        synchronized (this.mLeScanClients) {
            BleScanCallbackWrapper wrapper = this.mLeScanClients.remove(callback);
            if (wrapper == null) {
                Log.d(TAG, "could not find callback wrapper");
            } else {
                wrapper.stopLeScan();
            }
        }
    }

    public void stopScan(PendingIntent callbackIntent) {
        BluetoothLeUtils.checkAdapterStateOn(this.mBluetoothAdapter);
        try {
            IBluetoothGatt gatt = this.mBluetoothManager.getBluetoothGatt();
            SynchronousResultReceiver recv = SynchronousResultReceiver.get();
            gatt.stopScanForIntent(callbackIntent, this.mAttributionSource, recv);
            recv.awaitResultNoInterrupt(BluetoothLeUtils.getSyncTimeout()).getValue(null);
        } catch (RemoteException | TimeoutException e) {
        }
    }

    public void flushPendingScanResults(ScanCallback callback) {
        BluetoothLeUtils.checkAdapterStateOn(this.mBluetoothAdapter);
        if (callback == null) {
            throw new IllegalArgumentException("callback cannot be null!");
        }
        synchronized (this.mLeScanClients) {
            BleScanCallbackWrapper wrapper = this.mLeScanClients.get(callback);
            if (wrapper == null) {
                return;
            }
            wrapper.flushPendingBatchResults();
        }
    }

    @SystemApi
    @Deprecated
    public void startTruncatedScan(List<TruncatedFilter> truncatedFilters, ScanSettings settings, ScanCallback callback) throws Exception {
        int filterSize = truncatedFilters.size();
        List<ScanFilter> scanFilters = new ArrayList<>(filterSize);
        for (TruncatedFilter filter : truncatedFilters) {
            scanFilters.add(filter.getFilter());
        }
        startScan(scanFilters, settings, null, callback, null);
    }

    public void cleanup() {
        this.mLeScanClients.clear();
    }

    private class BleScanCallbackWrapper extends IScannerCallback.Stub {
        private static final int REGISTRATION_CALLBACK_TIMEOUT_MILLIS = 2000;
        private IBluetoothGatt mBluetoothGatt;
        private final List<ScanFilter> mFilters;
        private final ScanCallback mScanCallback;
        private int mScannerId = 0;
        private ScanSettings mSettings;
        private final WorkSource mWorkSource;

        public BleScanCallbackWrapper(IBluetoothGatt bluetoothGatt, List<ScanFilter> filters, ScanSettings settings, WorkSource workSource, ScanCallback scanCallback) {
            this.mBluetoothGatt = bluetoothGatt;
            this.mFilters = filters;
            this.mSettings = settings;
            this.mWorkSource = workSource;
            this.mScanCallback = scanCallback;
        }

        public void startRegistration() {
            synchronized (this) {
                int i = this.mScannerId;
                if (i == -1 || i == -2) {
                    return;
                }
                try {
                    SynchronousResultReceiver recv = SynchronousResultReceiver.get();
                    this.mBluetoothGatt.registerScanner(this, this.mWorkSource, BluetoothLeScanner.this.mAttributionSource, recv);
                    recv.awaitResultNoInterrupt(BluetoothLeUtils.getSyncTimeout()).getValue(null);
                    wait(2000L);
                } catch (RemoteException | InterruptedException | TimeoutException e) {
                    Log.e(BluetoothLeScanner.TAG, "application registeration exception", e);
                    BluetoothLeScanner.this.postCallbackError(this.mScanCallback, 3);
                }
                int i2 = this.mScannerId;
                if (i2 > 0) {
                    BluetoothLeScanner.this.mLeScanClients.put(this.mScanCallback, this);
                } else {
                    if (i2 == 0) {
                        this.mScannerId = -1;
                    }
                    if (this.mScannerId == -2) {
                    } else {
                        BluetoothLeScanner.this.postCallbackError(this.mScanCallback, 2);
                    }
                }
            }
        }

        public void stopLeScan() {
            synchronized (this) {
                if (this.mScannerId <= 0) {
                    Log.e(BluetoothLeScanner.TAG, "Error state, mLeHandle: " + this.mScannerId);
                    return;
                }
                try {
                    SynchronousResultReceiver recv = SynchronousResultReceiver.get();
                    this.mBluetoothGatt.stopScan(this.mScannerId, BluetoothLeScanner.this.mAttributionSource, recv);
                    recv.awaitResultNoInterrupt(BluetoothLeUtils.getSyncTimeout()).getValue(null);
                    SynchronousResultReceiver recv2 = SynchronousResultReceiver.get();
                    this.mBluetoothGatt.unregisterScanner(this.mScannerId, BluetoothLeScanner.this.mAttributionSource, recv2);
                    recv2.awaitResultNoInterrupt(BluetoothLeUtils.getSyncTimeout()).getValue(null);
                } catch (RemoteException | TimeoutException e) {
                    Log.e(BluetoothLeScanner.TAG, "Failed to stop scan and unregister", e);
                }
                this.mScannerId = -1;
            }
        }

        void flushPendingBatchResults() {
            synchronized (this) {
                if (this.mScannerId <= 0) {
                    Log.e(BluetoothLeScanner.TAG, "Error state, mLeHandle: " + this.mScannerId);
                    return;
                }
                try {
                    SynchronousResultReceiver recv = SynchronousResultReceiver.get();
                    this.mBluetoothGatt.flushPendingBatchResults(this.mScannerId, BluetoothLeScanner.this.mAttributionSource, recv);
                    recv.awaitResultNoInterrupt(BluetoothLeUtils.getSyncTimeout()).getValue(null);
                } catch (RemoteException | TimeoutException e) {
                    Log.e(BluetoothLeScanner.TAG, "Failed to get pending scan results", e);
                }
            }
        }

        @Override // android.bluetooth.le.IScannerCallback
        public void onScannerRegistered(int status, int scannerId) {
            Log.d(BluetoothLeScanner.TAG, "onScannerRegistered() - status=" + status + " scannerId=" + scannerId + " mScannerId=" + this.mScannerId);
            synchronized (this) {
                if (status == 0) {
                    try {
                        SynchronousResultReceiver recv = SynchronousResultReceiver.get();
                        if (this.mScannerId == -1) {
                            this.mBluetoothGatt.unregisterScanner(scannerId, BluetoothLeScanner.this.mAttributionSource, recv);
                        } else {
                            this.mScannerId = scannerId;
                            this.mBluetoothGatt.startScan(scannerId, this.mSettings, this.mFilters, BluetoothLeScanner.this.mAttributionSource, recv);
                        }
                        recv.awaitResultNoInterrupt(BluetoothLeUtils.getSyncTimeout()).getValue(null);
                    } catch (RemoteException | TimeoutException e) {
                        Log.e(BluetoothLeScanner.TAG, "fail to start le scan: " + e);
                        this.mScannerId = -1;
                    }
                } else if (status == 6) {
                    this.mScannerId = -2;
                } else {
                    this.mScannerId = -1;
                }
                notifyAll();
            }
        }

        @Override // android.bluetooth.le.IScannerCallback
        public void onScanResult(final ScanResult scanResult) {
            Attributable.setAttributionSource(scanResult, BluetoothLeScanner.this.mAttributionSource);
            if (Log.isLoggable(BluetoothLeScanner.TAG, 3)) {
                Log.d(BluetoothLeScanner.TAG, "onScanResult() - mScannerId=" + this.mScannerId);
            }
            synchronized (this) {
                if (this.mScannerId <= 0) {
                    if (Log.isLoggable(BluetoothLeScanner.TAG, 3)) {
                        Log.d(BluetoothLeScanner.TAG, "Ignoring result as scan stopped.");
                    }
                } else {
                    Handler handler = new Handler(Looper.getMainLooper());
                    handler.post(new Runnable() { // from class: android.bluetooth.le.BluetoothLeScanner.BleScanCallbackWrapper.1
                        @Override // java.lang.Runnable
                        public void run() {
                            if (Log.isLoggable(BluetoothLeScanner.TAG, 3)) {
                                Log.d(BluetoothLeScanner.TAG, "onScanResult() - handler run");
                            }
                            BleScanCallbackWrapper.this.mScanCallback.onScanResult(1, scanResult);
                        }
                    });
                }
            }
        }

        @Override // android.bluetooth.le.IScannerCallback
        public void onBatchScanResults(final List<ScanResult> results) {
            Attributable.setAttributionSource(results, BluetoothLeScanner.this.mAttributionSource);
            Handler handler = new Handler(Looper.getMainLooper());
            handler.post(new Runnable() { // from class: android.bluetooth.le.BluetoothLeScanner.BleScanCallbackWrapper.2
                @Override // java.lang.Runnable
                public void run() {
                    BleScanCallbackWrapper.this.mScanCallback.onBatchScanResults(results);
                }
            });
        }

        @Override // android.bluetooth.le.IScannerCallback
        public void onFoundOrLost(final boolean onFound, final ScanResult scanResult) {
            Attributable.setAttributionSource(scanResult, BluetoothLeScanner.this.mAttributionSource);
            synchronized (this) {
                if (this.mScannerId <= 0) {
                    return;
                }
                Handler handler = new Handler(Looper.getMainLooper());
                handler.post(new Runnable() { // from class: android.bluetooth.le.BluetoothLeScanner.BleScanCallbackWrapper.3
                    @Override // java.lang.Runnable
                    public void run() {
                        if (onFound) {
                            BleScanCallbackWrapper.this.mScanCallback.onScanResult(2, scanResult);
                        } else {
                            BleScanCallbackWrapper.this.mScanCallback.onScanResult(4, scanResult);
                        }
                    }
                });
            }
        }

        @Override // android.bluetooth.le.IScannerCallback
        public void onScanManagerErrorCallback(int errorCode) {
            synchronized (this) {
                if (this.mScannerId <= 0) {
                    return;
                }
                BluetoothLeScanner.this.postCallbackError(this.mScanCallback, errorCode);
            }
        }
    }

    private int postCallbackErrorOrReturn(ScanCallback callback, int errorCode) {
        if (callback == null) {
            return errorCode;
        }
        postCallbackError(callback, errorCode);
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void postCallbackError(final ScanCallback callback, final int errorCode) {
        this.mHandler.post(new Runnable() { // from class: android.bluetooth.le.BluetoothLeScanner.1
            @Override // java.lang.Runnable
            public void run() {
                callback.onScanFailed(errorCode);
            }
        });
    }

    private boolean isSettingsConfigAllowedForScan(ScanSettings settings) {
        if (this.mBluetoothAdapter.isOffloadedFilteringSupported()) {
            return true;
        }
        int callbackType = settings.getCallbackType();
        return callbackType == 1 && settings.getReportDelayMillis() == 0;
    }

    private boolean isSettingsAndFilterComboAllowed(ScanSettings settings, List<ScanFilter> filterList) {
        int callbackType = settings.getCallbackType();
        if ((callbackType & 6) == 0) {
            return true;
        }
        if (filterList == null) {
            return false;
        }
        for (ScanFilter filter : filterList) {
            if (filter.isAllFieldsEmpty()) {
                return false;
            }
        }
        return true;
    }

    private boolean isHardwareResourcesAvailableForScan(ScanSettings settings) {
        int callbackType = settings.getCallbackType();
        if ((callbackType & 2) == 0 && (callbackType & 4) == 0) {
            return true;
        }
        return this.mBluetoothAdapter.isOffloadedFilteringSupported() && this.mBluetoothAdapter.isHardwareTrackingFiltersAvailable();
    }

    private boolean isRoutingAllowedForScan(ScanSettings settings) {
        int callbackType = settings.getCallbackType();
        if (callbackType == 8 && settings.getScanMode() == -1) {
            return false;
        }
        return true;
    }
}

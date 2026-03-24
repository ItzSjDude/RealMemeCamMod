package android.bluetooth;

import android.app.PendingIntent;
import android.bluetooth.IBluetoothGattCallback;
import android.bluetooth.IBluetoothGattServerCallback;
import android.bluetooth.le.AdvertiseData;
import android.bluetooth.le.AdvertisingSetParameters;
import android.bluetooth.le.IAdvertisingSetCallback;
import android.bluetooth.le.IPeriodicAdvertisingCallback;
import android.bluetooth.le.IScannerCallback;
import android.bluetooth.le.PeriodicAdvertisingParameters;
import android.bluetooth.le.ScanFilter;
import android.bluetooth.le.ScanResult;
import android.bluetooth.le.ScanSettings;
import android.content.AttributionSource;
import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.ParcelUuid;
import android.os.RemoteException;
import android.os.WorkSource;
import com.android.modules.utils.SynchronousResultReceiver;
import java.util.List;

/* loaded from: classes.dex */
public interface IBluetoothGatt extends IInterface {
    void addService(int i, BluetoothGattService bluetoothGattService, AttributionSource attributionSource, SynchronousResultReceiver synchronousResultReceiver) throws RemoteException;

    void beginReliableWrite(int i, String str, AttributionSource attributionSource, SynchronousResultReceiver synchronousResultReceiver) throws RemoteException;

    void clearServices(int i, AttributionSource attributionSource, SynchronousResultReceiver synchronousResultReceiver) throws RemoteException;

    void clientConnect(int i, String str, boolean z, int i2, boolean z2, int i3, AttributionSource attributionSource, SynchronousResultReceiver synchronousResultReceiver) throws RemoteException;

    void clientDisconnect(int i, String str, AttributionSource attributionSource, SynchronousResultReceiver synchronousResultReceiver) throws RemoteException;

    void clientReadPhy(int i, String str, AttributionSource attributionSource, SynchronousResultReceiver synchronousResultReceiver) throws RemoteException;

    void clientSetPreferredPhy(int i, String str, int i2, int i3, int i4, AttributionSource attributionSource, SynchronousResultReceiver synchronousResultReceiver) throws RemoteException;

    void configureMTU(int i, String str, int i2, AttributionSource attributionSource, SynchronousResultReceiver synchronousResultReceiver) throws RemoteException;

    void connectionParameterUpdate(int i, String str, int i2, AttributionSource attributionSource, SynchronousResultReceiver synchronousResultReceiver) throws RemoteException;

    void disconnectAll(AttributionSource attributionSource, SynchronousResultReceiver synchronousResultReceiver) throws RemoteException;

    void discoverServiceByUuid(int i, String str, ParcelUuid parcelUuid, AttributionSource attributionSource, SynchronousResultReceiver synchronousResultReceiver) throws RemoteException;

    void discoverServices(int i, String str, AttributionSource attributionSource, SynchronousResultReceiver synchronousResultReceiver) throws RemoteException;

    void enableAdvertisingSet(int i, boolean z, int i2, int i3, AttributionSource attributionSource, SynchronousResultReceiver synchronousResultReceiver) throws RemoteException;

    void endReliableWrite(int i, String str, boolean z, AttributionSource attributionSource, SynchronousResultReceiver synchronousResultReceiver) throws RemoteException;

    void flushPendingBatchResults(int i, AttributionSource attributionSource, SynchronousResultReceiver synchronousResultReceiver) throws RemoteException;

    void getDevicesMatchingConnectionStates(int[] iArr, AttributionSource attributionSource, SynchronousResultReceiver synchronousResultReceiver) throws RemoteException;

    void getOwnAddress(int i, AttributionSource attributionSource, SynchronousResultReceiver synchronousResultReceiver) throws RemoteException;

    void leConnectionUpdate(int i, String str, int i2, int i3, int i4, int i5, int i6, int i7, AttributionSource attributionSource, SynchronousResultReceiver synchronousResultReceiver) throws RemoteException;

    void leSubrateRequest(int i, String str, int i2, int i3, int i4, int i5, int i6, AttributionSource attributionSource) throws RemoteException;

    void numHwTrackFiltersAvailable(AttributionSource attributionSource, SynchronousResultReceiver synchronousResultReceiver) throws RemoteException;

    void readCharacteristic(int i, String str, int i2, int i3, AttributionSource attributionSource, SynchronousResultReceiver synchronousResultReceiver) throws RemoteException;

    void readDescriptor(int i, String str, int i2, int i3, AttributionSource attributionSource, SynchronousResultReceiver synchronousResultReceiver) throws RemoteException;

    void readRemoteRssi(int i, String str, AttributionSource attributionSource, SynchronousResultReceiver synchronousResultReceiver) throws RemoteException;

    void readUsingCharacteristicUuid(int i, String str, ParcelUuid parcelUuid, int i2, int i3, int i4, AttributionSource attributionSource, SynchronousResultReceiver synchronousResultReceiver) throws RemoteException;

    void refreshDevice(int i, String str, AttributionSource attributionSource, SynchronousResultReceiver synchronousResultReceiver) throws RemoteException;

    void registerClient(ParcelUuid parcelUuid, IBluetoothGattCallback iBluetoothGattCallback, boolean z, AttributionSource attributionSource, SynchronousResultReceiver synchronousResultReceiver) throws RemoteException;

    void registerForNotification(int i, String str, int i2, boolean z, AttributionSource attributionSource, SynchronousResultReceiver synchronousResultReceiver) throws RemoteException;

    void registerScanner(IScannerCallback iScannerCallback, WorkSource workSource, AttributionSource attributionSource, SynchronousResultReceiver synchronousResultReceiver) throws RemoteException;

    void registerServer(ParcelUuid parcelUuid, IBluetoothGattServerCallback iBluetoothGattServerCallback, boolean z, AttributionSource attributionSource, SynchronousResultReceiver synchronousResultReceiver) throws RemoteException;

    void registerSync(ScanResult scanResult, int i, int i2, IPeriodicAdvertisingCallback iPeriodicAdvertisingCallback, AttributionSource attributionSource, SynchronousResultReceiver synchronousResultReceiver) throws RemoteException;

    void removeService(int i, int i2, AttributionSource attributionSource, SynchronousResultReceiver synchronousResultReceiver) throws RemoteException;

    void sendNotification(int i, String str, int i2, boolean z, byte[] bArr, AttributionSource attributionSource, SynchronousResultReceiver synchronousResultReceiver) throws RemoteException;

    void sendResponse(int i, String str, int i2, int i3, int i4, byte[] bArr, AttributionSource attributionSource, SynchronousResultReceiver synchronousResultReceiver) throws RemoteException;

    void serverConnect(int i, String str, boolean z, int i2, AttributionSource attributionSource, SynchronousResultReceiver synchronousResultReceiver) throws RemoteException;

    void serverDisconnect(int i, String str, AttributionSource attributionSource, SynchronousResultReceiver synchronousResultReceiver) throws RemoteException;

    void serverReadPhy(int i, String str, AttributionSource attributionSource, SynchronousResultReceiver synchronousResultReceiver) throws RemoteException;

    void serverSetPreferredPhy(int i, String str, int i2, int i3, int i4, AttributionSource attributionSource, SynchronousResultReceiver synchronousResultReceiver) throws RemoteException;

    void setAdvertisingData(int i, AdvertiseData advertiseData, AttributionSource attributionSource, SynchronousResultReceiver synchronousResultReceiver) throws RemoteException;

    void setAdvertisingParameters(int i, AdvertisingSetParameters advertisingSetParameters, AttributionSource attributionSource, SynchronousResultReceiver synchronousResultReceiver) throws RemoteException;

    void setPeriodicAdvertisingData(int i, AdvertiseData advertiseData, AttributionSource attributionSource, SynchronousResultReceiver synchronousResultReceiver) throws RemoteException;

    void setPeriodicAdvertisingEnable(int i, boolean z, AttributionSource attributionSource, SynchronousResultReceiver synchronousResultReceiver) throws RemoteException;

    void setPeriodicAdvertisingParameters(int i, PeriodicAdvertisingParameters periodicAdvertisingParameters, AttributionSource attributionSource, SynchronousResultReceiver synchronousResultReceiver) throws RemoteException;

    void setScanResponseData(int i, AdvertiseData advertiseData, AttributionSource attributionSource, SynchronousResultReceiver synchronousResultReceiver) throws RemoteException;

    void startAdvertisingSet(AdvertisingSetParameters advertisingSetParameters, AdvertiseData advertiseData, AdvertiseData advertiseData2, PeriodicAdvertisingParameters periodicAdvertisingParameters, AdvertiseData advertiseData3, int i, int i2, IAdvertisingSetCallback iAdvertisingSetCallback, AttributionSource attributionSource, SynchronousResultReceiver synchronousResultReceiver) throws RemoteException;

    void startScan(int i, ScanSettings scanSettings, List<ScanFilter> list, AttributionSource attributionSource, SynchronousResultReceiver synchronousResultReceiver) throws RemoteException;

    void startScanForIntent(PendingIntent pendingIntent, ScanSettings scanSettings, List<ScanFilter> list, AttributionSource attributionSource, SynchronousResultReceiver synchronousResultReceiver) throws RemoteException;

    void stopAdvertisingSet(IAdvertisingSetCallback iAdvertisingSetCallback, AttributionSource attributionSource, SynchronousResultReceiver synchronousResultReceiver) throws RemoteException;

    void stopScan(int i, AttributionSource attributionSource, SynchronousResultReceiver synchronousResultReceiver) throws RemoteException;

    void stopScanForIntent(PendingIntent pendingIntent, AttributionSource attributionSource, SynchronousResultReceiver synchronousResultReceiver) throws RemoteException;

    void subrateModeRequest(int i, String str, int i2, AttributionSource attributionSource) throws RemoteException;

    void transferSetInfo(BluetoothDevice bluetoothDevice, int i, int i2, IPeriodicAdvertisingCallback iPeriodicAdvertisingCallback, AttributionSource attributionSource, SynchronousResultReceiver synchronousResultReceiver) throws RemoteException;

    void transferSync(BluetoothDevice bluetoothDevice, int i, int i2, AttributionSource attributionSource, SynchronousResultReceiver synchronousResultReceiver) throws RemoteException;

    void unregAll(AttributionSource attributionSource, SynchronousResultReceiver synchronousResultReceiver) throws RemoteException;

    void unregisterClient(int i, AttributionSource attributionSource, SynchronousResultReceiver synchronousResultReceiver) throws RemoteException;

    void unregisterScanner(int i, AttributionSource attributionSource, SynchronousResultReceiver synchronousResultReceiver) throws RemoteException;

    void unregisterServer(int i, AttributionSource attributionSource, SynchronousResultReceiver synchronousResultReceiver) throws RemoteException;

    void unregisterSync(IPeriodicAdvertisingCallback iPeriodicAdvertisingCallback, AttributionSource attributionSource, SynchronousResultReceiver synchronousResultReceiver) throws RemoteException;

    void writeCharacteristic(int i, String str, int i2, int i3, int i4, byte[] bArr, AttributionSource attributionSource, SynchronousResultReceiver synchronousResultReceiver) throws RemoteException;

    void writeDescriptor(int i, String str, int i2, int i3, byte[] bArr, AttributionSource attributionSource, SynchronousResultReceiver synchronousResultReceiver) throws RemoteException;

    public static class Default implements IBluetoothGatt {
        @Override // android.bluetooth.IBluetoothGatt
        public void getDevicesMatchingConnectionStates(int[] states, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetoothGatt
        public void registerScanner(IScannerCallback callback, WorkSource workSource, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetoothGatt
        public void unregisterScanner(int scannerId, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetoothGatt
        public void startScan(int scannerId, ScanSettings settings, List<ScanFilter> filters, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetoothGatt
        public void startScanForIntent(PendingIntent intent, ScanSettings settings, List<ScanFilter> filters, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetoothGatt
        public void stopScanForIntent(PendingIntent intent, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetoothGatt
        public void stopScan(int scannerId, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetoothGatt
        public void flushPendingBatchResults(int scannerId, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetoothGatt
        public void startAdvertisingSet(AdvertisingSetParameters parameters, AdvertiseData advertiseData, AdvertiseData scanResponse, PeriodicAdvertisingParameters periodicParameters, AdvertiseData periodicData, int duration, int maxExtAdvEvents, IAdvertisingSetCallback callback, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetoothGatt
        public void stopAdvertisingSet(IAdvertisingSetCallback callback, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetoothGatt
        public void getOwnAddress(int advertiserId, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetoothGatt
        public void enableAdvertisingSet(int advertiserId, boolean enable, int duration, int maxExtAdvEvents, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetoothGatt
        public void setAdvertisingData(int advertiserId, AdvertiseData data, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetoothGatt
        public void setScanResponseData(int advertiserId, AdvertiseData data, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetoothGatt
        public void setAdvertisingParameters(int advertiserId, AdvertisingSetParameters parameters, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetoothGatt
        public void setPeriodicAdvertisingParameters(int advertiserId, PeriodicAdvertisingParameters parameters, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetoothGatt
        public void setPeriodicAdvertisingData(int advertiserId, AdvertiseData data, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetoothGatt
        public void setPeriodicAdvertisingEnable(int advertiserId, boolean enable, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetoothGatt
        public void registerSync(ScanResult scanResult, int skip, int timeout, IPeriodicAdvertisingCallback callback, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetoothGatt
        public void unregisterSync(IPeriodicAdvertisingCallback callback, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetoothGatt
        public void transferSync(BluetoothDevice bda, int serviceData, int syncHandle, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetoothGatt
        public void transferSetInfo(BluetoothDevice bda, int serviceData, int advertisingHandle, IPeriodicAdvertisingCallback callback, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetoothGatt
        public void registerClient(ParcelUuid appId, IBluetoothGattCallback callback, boolean eatt_support, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetoothGatt
        public void unregisterClient(int clientIf, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetoothGatt
        public void clientConnect(int clientIf, String address, boolean isDirect, int transport, boolean opportunistic, int phy, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetoothGatt
        public void clientDisconnect(int clientIf, String address, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetoothGatt
        public void clientSetPreferredPhy(int clientIf, String address, int txPhy, int rxPhy, int phyOptions, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetoothGatt
        public void clientReadPhy(int clientIf, String addres, AttributionSource attributionSources, SynchronousResultReceiver receiver) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetoothGatt
        public void refreshDevice(int clientIf, String address, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetoothGatt
        public void discoverServices(int clientIf, String address, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetoothGatt
        public void discoverServiceByUuid(int clientIf, String address, ParcelUuid uuid, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetoothGatt
        public void readCharacteristic(int clientIf, String address, int handle, int authReq, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetoothGatt
        public void readUsingCharacteristicUuid(int clientIf, String address, ParcelUuid uuid, int startHandle, int endHandle, int authReq, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetoothGatt
        public void writeCharacteristic(int clientIf, String address, int handle, int writeType, int authReq, byte[] value, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetoothGatt
        public void readDescriptor(int clientIf, String address, int handle, int authReq, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetoothGatt
        public void writeDescriptor(int clientIf, String address, int handle, int authReq, byte[] value, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetoothGatt
        public void registerForNotification(int clientIf, String address, int handle, boolean enable, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetoothGatt
        public void beginReliableWrite(int clientIf, String address, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetoothGatt
        public void endReliableWrite(int clientIf, String address, boolean execute, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetoothGatt
        public void readRemoteRssi(int clientIf, String address, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetoothGatt
        public void configureMTU(int clientIf, String address, int mtu, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetoothGatt
        public void connectionParameterUpdate(int clientIf, String address, int connectionPriority, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetoothGatt
        public void leConnectionUpdate(int clientIf, String address, int minInterval, int maxInterval, int peripheralLatency, int supervisionTimeout, int minConnectionEventLen, int maxConnectionEventLen, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetoothGatt
        public void registerServer(ParcelUuid appId, IBluetoothGattServerCallback callback, boolean eatt_support, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetoothGatt
        public void unregisterServer(int serverIf, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetoothGatt
        public void serverConnect(int serverIf, String address, boolean isDirect, int transport, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetoothGatt
        public void serverDisconnect(int serverIf, String address, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetoothGatt
        public void serverSetPreferredPhy(int clientIf, String address, int txPhy, int rxPhy, int phyOptions, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetoothGatt
        public void serverReadPhy(int clientIf, String address, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetoothGatt
        public void addService(int serverIf, BluetoothGattService service, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetoothGatt
        public void removeService(int serverIf, int handle, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetoothGatt
        public void clearServices(int serverIf, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetoothGatt
        public void sendResponse(int serverIf, String address, int requestId, int status, int offset, byte[] value, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetoothGatt
        public void sendNotification(int serverIf, String address, int handle, boolean confirm, byte[] value, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetoothGatt
        public void disconnectAll(AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetoothGatt
        public void unregAll(AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetoothGatt
        public void numHwTrackFiltersAvailable(AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetoothGatt
        public void leSubrateRequest(int clientIf, String address, int subrateMin, int subrateMax, int maxLatency, int contNumber, int supervisionTimeout, AttributionSource attributionSource) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetoothGatt
        public void subrateModeRequest(int clientIf, String address, int subrateMode, AttributionSource attributionSource) throws RemoteException {
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }
    }

    public static abstract class Stub extends Binder implements IBluetoothGatt {
        public static final String DESCRIPTOR = "android.bluetooth.IBluetoothGatt";
        static final int TRANSACTION_addService = 50;
        static final int TRANSACTION_beginReliableWrite = 38;
        static final int TRANSACTION_clearServices = 52;
        static final int TRANSACTION_clientConnect = 25;
        static final int TRANSACTION_clientDisconnect = 26;
        static final int TRANSACTION_clientReadPhy = 28;
        static final int TRANSACTION_clientSetPreferredPhy = 27;
        static final int TRANSACTION_configureMTU = 41;
        static final int TRANSACTION_connectionParameterUpdate = 42;
        static final int TRANSACTION_disconnectAll = 55;
        static final int TRANSACTION_discoverServiceByUuid = 31;
        static final int TRANSACTION_discoverServices = 30;
        static final int TRANSACTION_enableAdvertisingSet = 12;
        static final int TRANSACTION_endReliableWrite = 39;
        static final int TRANSACTION_flushPendingBatchResults = 8;
        static final int TRANSACTION_getDevicesMatchingConnectionStates = 1;
        static final int TRANSACTION_getOwnAddress = 11;
        static final int TRANSACTION_leConnectionUpdate = 43;
        static final int TRANSACTION_leSubrateRequest = 58;
        static final int TRANSACTION_numHwTrackFiltersAvailable = 57;
        static final int TRANSACTION_readCharacteristic = 32;
        static final int TRANSACTION_readDescriptor = 35;
        static final int TRANSACTION_readRemoteRssi = 40;
        static final int TRANSACTION_readUsingCharacteristicUuid = 33;
        static final int TRANSACTION_refreshDevice = 29;
        static final int TRANSACTION_registerClient = 23;
        static final int TRANSACTION_registerForNotification = 37;
        static final int TRANSACTION_registerScanner = 2;
        static final int TRANSACTION_registerServer = 44;
        static final int TRANSACTION_registerSync = 19;
        static final int TRANSACTION_removeService = 51;
        static final int TRANSACTION_sendNotification = 54;
        static final int TRANSACTION_sendResponse = 53;
        static final int TRANSACTION_serverConnect = 46;
        static final int TRANSACTION_serverDisconnect = 47;
        static final int TRANSACTION_serverReadPhy = 49;
        static final int TRANSACTION_serverSetPreferredPhy = 48;
        static final int TRANSACTION_setAdvertisingData = 13;
        static final int TRANSACTION_setAdvertisingParameters = 15;
        static final int TRANSACTION_setPeriodicAdvertisingData = 17;
        static final int TRANSACTION_setPeriodicAdvertisingEnable = 18;
        static final int TRANSACTION_setPeriodicAdvertisingParameters = 16;
        static final int TRANSACTION_setScanResponseData = 14;
        static final int TRANSACTION_startAdvertisingSet = 9;
        static final int TRANSACTION_startScan = 4;
        static final int TRANSACTION_startScanForIntent = 5;
        static final int TRANSACTION_stopAdvertisingSet = 10;
        static final int TRANSACTION_stopScan = 7;
        static final int TRANSACTION_stopScanForIntent = 6;
        static final int TRANSACTION_subrateModeRequest = 59;
        static final int TRANSACTION_transferSetInfo = 22;
        static final int TRANSACTION_transferSync = 21;
        static final int TRANSACTION_unregAll = 56;
        static final int TRANSACTION_unregisterClient = 24;
        static final int TRANSACTION_unregisterScanner = 3;
        static final int TRANSACTION_unregisterServer = 45;
        static final int TRANSACTION_unregisterSync = 20;
        static final int TRANSACTION_writeCharacteristic = 34;
        static final int TRANSACTION_writeDescriptor = 36;

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IBluetoothGatt asInterface(IBinder obj) {
            if (obj == null) {
                return null;
            }
            IInterface iin = obj.queryLocalInterface(DESCRIPTOR);
            if (iin != null && (iin instanceof IBluetoothGatt)) {
                return (IBluetoothGatt) iin;
            }
            return new Proxy(obj);
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        public static String getDefaultTransactionName(int transactionCode) {
            switch (transactionCode) {
                case 1:
                    return "getDevicesMatchingConnectionStates";
                case 2:
                    return "registerScanner";
                case 3:
                    return "unregisterScanner";
                case 4:
                    return "startScan";
                case 5:
                    return "startScanForIntent";
                case 6:
                    return "stopScanForIntent";
                case 7:
                    return "stopScan";
                case 8:
                    return "flushPendingBatchResults";
                case 9:
                    return "startAdvertisingSet";
                case 10:
                    return "stopAdvertisingSet";
                case 11:
                    return "getOwnAddress";
                case 12:
                    return "enableAdvertisingSet";
                case 13:
                    return "setAdvertisingData";
                case 14:
                    return "setScanResponseData";
                case 15:
                    return "setAdvertisingParameters";
                case 16:
                    return "setPeriodicAdvertisingParameters";
                case 17:
                    return "setPeriodicAdvertisingData";
                case 18:
                    return "setPeriodicAdvertisingEnable";
                case 19:
                    return "registerSync";
                case 20:
                    return "unregisterSync";
                case 21:
                    return "transferSync";
                case 22:
                    return "transferSetInfo";
                case 23:
                    return "registerClient";
                case 24:
                    return "unregisterClient";
                case 25:
                    return "clientConnect";
                case 26:
                    return "clientDisconnect";
                case 27:
                    return "clientSetPreferredPhy";
                case 28:
                    return "clientReadPhy";
                case 29:
                    return "refreshDevice";
                case 30:
                    return "discoverServices";
                case 31:
                    return "discoverServiceByUuid";
                case 32:
                    return "readCharacteristic";
                case 33:
                    return "readUsingCharacteristicUuid";
                case 34:
                    return "writeCharacteristic";
                case 35:
                    return "readDescriptor";
                case 36:
                    return "writeDescriptor";
                case 37:
                    return "registerForNotification";
                case 38:
                    return "beginReliableWrite";
                case 39:
                    return "endReliableWrite";
                case 40:
                    return "readRemoteRssi";
                case 41:
                    return "configureMTU";
                case 42:
                    return "connectionParameterUpdate";
                case 43:
                    return "leConnectionUpdate";
                case 44:
                    return "registerServer";
                case 45:
                    return "unregisterServer";
                case 46:
                    return "serverConnect";
                case 47:
                    return "serverDisconnect";
                case 48:
                    return "serverSetPreferredPhy";
                case 49:
                    return "serverReadPhy";
                case 50:
                    return "addService";
                case 51:
                    return "removeService";
                case 52:
                    return "clearServices";
                case 53:
                    return "sendResponse";
                case 54:
                    return "sendNotification";
                case 55:
                    return "disconnectAll";
                case 56:
                    return "unregAll";
                case 57:
                    return "numHwTrackFiltersAvailable";
                case 58:
                    return "leSubrateRequest";
                case 59:
                    return "subrateModeRequest";
                default:
                    return null;
            }
        }

        @Override // android.os.Binder
        public String getTransactionName(int transactionCode) {
            return getDefaultTransactionName(transactionCode);
        }

        @Override // android.os.Binder
        public boolean onTransact(int code, Parcel data, Parcel reply, int flags) throws RemoteException {
            if (code >= 1 && code <= 16777215) {
                data.enforceInterface(DESCRIPTOR);
            }
            switch (code) {
                case IBinder.INTERFACE_TRANSACTION /* 1598968902 */:
                    reply.writeString(DESCRIPTOR);
                    return true;
                default:
                    switch (code) {
                        case 1:
                            int[] _arg0 = data.createIntArray();
                            AttributionSource _arg1 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            SynchronousResultReceiver _arg2 = (SynchronousResultReceiver) data.readTypedObject(SynchronousResultReceiver.CREATOR);
                            data.enforceNoDataAvail();
                            getDevicesMatchingConnectionStates(_arg0, _arg1, _arg2);
                            return true;
                        case 2:
                            IScannerCallback _arg02 = IScannerCallback.Stub.asInterface(data.readStrongBinder());
                            WorkSource _arg12 = (WorkSource) data.readTypedObject(WorkSource.CREATOR);
                            AttributionSource _arg22 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            SynchronousResultReceiver _arg3 = (SynchronousResultReceiver) data.readTypedObject(SynchronousResultReceiver.CREATOR);
                            data.enforceNoDataAvail();
                            registerScanner(_arg02, _arg12, _arg22, _arg3);
                            return true;
                        case 3:
                            int _arg03 = data.readInt();
                            AttributionSource _arg13 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            SynchronousResultReceiver _arg23 = (SynchronousResultReceiver) data.readTypedObject(SynchronousResultReceiver.CREATOR);
                            data.enforceNoDataAvail();
                            unregisterScanner(_arg03, _arg13, _arg23);
                            return true;
                        case 4:
                            int _arg04 = data.readInt();
                            ScanSettings _arg14 = (ScanSettings) data.readTypedObject(ScanSettings.CREATOR);
                            List<ScanFilter> _arg24 = data.createTypedArrayList(ScanFilter.CREATOR);
                            AttributionSource _arg32 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            SynchronousResultReceiver _arg4 = (SynchronousResultReceiver) data.readTypedObject(SynchronousResultReceiver.CREATOR);
                            data.enforceNoDataAvail();
                            startScan(_arg04, _arg14, _arg24, _arg32, _arg4);
                            return true;
                        case 5:
                            PendingIntent _arg05 = (PendingIntent) data.readTypedObject(PendingIntent.CREATOR);
                            ScanSettings _arg15 = (ScanSettings) data.readTypedObject(ScanSettings.CREATOR);
                            List<ScanFilter> _arg25 = data.createTypedArrayList(ScanFilter.CREATOR);
                            AttributionSource _arg33 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            SynchronousResultReceiver _arg42 = (SynchronousResultReceiver) data.readTypedObject(SynchronousResultReceiver.CREATOR);
                            data.enforceNoDataAvail();
                            startScanForIntent(_arg05, _arg15, _arg25, _arg33, _arg42);
                            return true;
                        case 6:
                            PendingIntent _arg06 = (PendingIntent) data.readTypedObject(PendingIntent.CREATOR);
                            AttributionSource _arg16 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            SynchronousResultReceiver _arg26 = (SynchronousResultReceiver) data.readTypedObject(SynchronousResultReceiver.CREATOR);
                            data.enforceNoDataAvail();
                            stopScanForIntent(_arg06, _arg16, _arg26);
                            return true;
                        case 7:
                            int _arg07 = data.readInt();
                            AttributionSource _arg17 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            SynchronousResultReceiver _arg27 = (SynchronousResultReceiver) data.readTypedObject(SynchronousResultReceiver.CREATOR);
                            data.enforceNoDataAvail();
                            stopScan(_arg07, _arg17, _arg27);
                            return true;
                        case 8:
                            int _arg08 = data.readInt();
                            AttributionSource _arg18 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            SynchronousResultReceiver _arg28 = (SynchronousResultReceiver) data.readTypedObject(SynchronousResultReceiver.CREATOR);
                            data.enforceNoDataAvail();
                            flushPendingBatchResults(_arg08, _arg18, _arg28);
                            return true;
                        case 9:
                            AdvertisingSetParameters _arg09 = (AdvertisingSetParameters) data.readTypedObject(AdvertisingSetParameters.CREATOR);
                            AdvertiseData _arg19 = (AdvertiseData) data.readTypedObject(AdvertiseData.CREATOR);
                            AdvertiseData _arg29 = (AdvertiseData) data.readTypedObject(AdvertiseData.CREATOR);
                            PeriodicAdvertisingParameters _arg34 = (PeriodicAdvertisingParameters) data.readTypedObject(PeriodicAdvertisingParameters.CREATOR);
                            AdvertiseData _arg43 = (AdvertiseData) data.readTypedObject(AdvertiseData.CREATOR);
                            int _arg5 = data.readInt();
                            int _arg6 = data.readInt();
                            IAdvertisingSetCallback _arg7 = IAdvertisingSetCallback.Stub.asInterface(data.readStrongBinder());
                            AttributionSource _arg8 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            SynchronousResultReceiver _arg9 = (SynchronousResultReceiver) data.readTypedObject(SynchronousResultReceiver.CREATOR);
                            data.enforceNoDataAvail();
                            startAdvertisingSet(_arg09, _arg19, _arg29, _arg34, _arg43, _arg5, _arg6, _arg7, _arg8, _arg9);
                            return true;
                        case 10:
                            IAdvertisingSetCallback _arg010 = IAdvertisingSetCallback.Stub.asInterface(data.readStrongBinder());
                            AttributionSource _arg110 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            SynchronousResultReceiver _arg210 = (SynchronousResultReceiver) data.readTypedObject(SynchronousResultReceiver.CREATOR);
                            data.enforceNoDataAvail();
                            stopAdvertisingSet(_arg010, _arg110, _arg210);
                            return true;
                        case 11:
                            int _arg011 = data.readInt();
                            AttributionSource _arg111 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            SynchronousResultReceiver _arg211 = (SynchronousResultReceiver) data.readTypedObject(SynchronousResultReceiver.CREATOR);
                            data.enforceNoDataAvail();
                            getOwnAddress(_arg011, _arg111, _arg211);
                            return true;
                        case 12:
                            int _arg012 = data.readInt();
                            boolean _arg112 = data.readBoolean();
                            int _arg212 = data.readInt();
                            int _arg35 = data.readInt();
                            AttributionSource _arg44 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            SynchronousResultReceiver _arg52 = (SynchronousResultReceiver) data.readTypedObject(SynchronousResultReceiver.CREATOR);
                            data.enforceNoDataAvail();
                            enableAdvertisingSet(_arg012, _arg112, _arg212, _arg35, _arg44, _arg52);
                            return true;
                        case 13:
                            int _arg013 = data.readInt();
                            AdvertiseData _arg113 = (AdvertiseData) data.readTypedObject(AdvertiseData.CREATOR);
                            AttributionSource _arg213 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            SynchronousResultReceiver _arg36 = (SynchronousResultReceiver) data.readTypedObject(SynchronousResultReceiver.CREATOR);
                            data.enforceNoDataAvail();
                            setAdvertisingData(_arg013, _arg113, _arg213, _arg36);
                            return true;
                        case 14:
                            int _arg014 = data.readInt();
                            AdvertiseData _arg114 = (AdvertiseData) data.readTypedObject(AdvertiseData.CREATOR);
                            AttributionSource _arg214 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            SynchronousResultReceiver _arg37 = (SynchronousResultReceiver) data.readTypedObject(SynchronousResultReceiver.CREATOR);
                            data.enforceNoDataAvail();
                            setScanResponseData(_arg014, _arg114, _arg214, _arg37);
                            return true;
                        case 15:
                            int _arg015 = data.readInt();
                            AdvertisingSetParameters _arg115 = (AdvertisingSetParameters) data.readTypedObject(AdvertisingSetParameters.CREATOR);
                            AttributionSource _arg215 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            SynchronousResultReceiver _arg38 = (SynchronousResultReceiver) data.readTypedObject(SynchronousResultReceiver.CREATOR);
                            data.enforceNoDataAvail();
                            setAdvertisingParameters(_arg015, _arg115, _arg215, _arg38);
                            return true;
                        case 16:
                            int _arg016 = data.readInt();
                            PeriodicAdvertisingParameters _arg116 = (PeriodicAdvertisingParameters) data.readTypedObject(PeriodicAdvertisingParameters.CREATOR);
                            AttributionSource _arg216 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            SynchronousResultReceiver _arg39 = (SynchronousResultReceiver) data.readTypedObject(SynchronousResultReceiver.CREATOR);
                            data.enforceNoDataAvail();
                            setPeriodicAdvertisingParameters(_arg016, _arg116, _arg216, _arg39);
                            return true;
                        case 17:
                            int _arg017 = data.readInt();
                            AdvertiseData _arg117 = (AdvertiseData) data.readTypedObject(AdvertiseData.CREATOR);
                            AttributionSource _arg217 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            SynchronousResultReceiver _arg310 = (SynchronousResultReceiver) data.readTypedObject(SynchronousResultReceiver.CREATOR);
                            data.enforceNoDataAvail();
                            setPeriodicAdvertisingData(_arg017, _arg117, _arg217, _arg310);
                            return true;
                        case 18:
                            int _arg018 = data.readInt();
                            boolean _arg118 = data.readBoolean();
                            AttributionSource _arg218 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            SynchronousResultReceiver _arg311 = (SynchronousResultReceiver) data.readTypedObject(SynchronousResultReceiver.CREATOR);
                            data.enforceNoDataAvail();
                            setPeriodicAdvertisingEnable(_arg018, _arg118, _arg218, _arg311);
                            return true;
                        case 19:
                            ScanResult _arg019 = (ScanResult) data.readTypedObject(ScanResult.CREATOR);
                            int _arg119 = data.readInt();
                            int _arg219 = data.readInt();
                            IPeriodicAdvertisingCallback _arg312 = IPeriodicAdvertisingCallback.Stub.asInterface(data.readStrongBinder());
                            AttributionSource _arg45 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            SynchronousResultReceiver _arg53 = (SynchronousResultReceiver) data.readTypedObject(SynchronousResultReceiver.CREATOR);
                            data.enforceNoDataAvail();
                            registerSync(_arg019, _arg119, _arg219, _arg312, _arg45, _arg53);
                            return true;
                        case 20:
                            IPeriodicAdvertisingCallback _arg020 = IPeriodicAdvertisingCallback.Stub.asInterface(data.readStrongBinder());
                            AttributionSource _arg120 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            SynchronousResultReceiver _arg220 = (SynchronousResultReceiver) data.readTypedObject(SynchronousResultReceiver.CREATOR);
                            data.enforceNoDataAvail();
                            unregisterSync(_arg020, _arg120, _arg220);
                            return true;
                        case 21:
                            BluetoothDevice _arg021 = (BluetoothDevice) data.readTypedObject(BluetoothDevice.CREATOR);
                            int _arg121 = data.readInt();
                            int _arg221 = data.readInt();
                            AttributionSource _arg313 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            SynchronousResultReceiver _arg46 = (SynchronousResultReceiver) data.readTypedObject(SynchronousResultReceiver.CREATOR);
                            data.enforceNoDataAvail();
                            transferSync(_arg021, _arg121, _arg221, _arg313, _arg46);
                            return true;
                        case 22:
                            BluetoothDevice _arg022 = (BluetoothDevice) data.readTypedObject(BluetoothDevice.CREATOR);
                            int _arg122 = data.readInt();
                            int _arg222 = data.readInt();
                            IPeriodicAdvertisingCallback _arg314 = IPeriodicAdvertisingCallback.Stub.asInterface(data.readStrongBinder());
                            AttributionSource _arg47 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            SynchronousResultReceiver _arg54 = (SynchronousResultReceiver) data.readTypedObject(SynchronousResultReceiver.CREATOR);
                            data.enforceNoDataAvail();
                            transferSetInfo(_arg022, _arg122, _arg222, _arg314, _arg47, _arg54);
                            return true;
                        case 23:
                            ParcelUuid _arg023 = (ParcelUuid) data.readTypedObject(ParcelUuid.CREATOR);
                            IBluetoothGattCallback _arg123 = IBluetoothGattCallback.Stub.asInterface(data.readStrongBinder());
                            boolean _arg223 = data.readBoolean();
                            AttributionSource _arg315 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            SynchronousResultReceiver _arg48 = (SynchronousResultReceiver) data.readTypedObject(SynchronousResultReceiver.CREATOR);
                            data.enforceNoDataAvail();
                            registerClient(_arg023, _arg123, _arg223, _arg315, _arg48);
                            return true;
                        case 24:
                            int _arg024 = data.readInt();
                            AttributionSource _arg124 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            SynchronousResultReceiver _arg224 = (SynchronousResultReceiver) data.readTypedObject(SynchronousResultReceiver.CREATOR);
                            data.enforceNoDataAvail();
                            unregisterClient(_arg024, _arg124, _arg224);
                            return true;
                        case 25:
                            int _arg025 = data.readInt();
                            String _arg125 = data.readString();
                            boolean _arg225 = data.readBoolean();
                            int _arg316 = data.readInt();
                            boolean _arg49 = data.readBoolean();
                            int _arg55 = data.readInt();
                            AttributionSource _arg62 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            SynchronousResultReceiver _arg72 = (SynchronousResultReceiver) data.readTypedObject(SynchronousResultReceiver.CREATOR);
                            data.enforceNoDataAvail();
                            clientConnect(_arg025, _arg125, _arg225, _arg316, _arg49, _arg55, _arg62, _arg72);
                            return true;
                        case 26:
                            int _arg026 = data.readInt();
                            String _arg126 = data.readString();
                            AttributionSource _arg226 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            SynchronousResultReceiver _arg317 = (SynchronousResultReceiver) data.readTypedObject(SynchronousResultReceiver.CREATOR);
                            data.enforceNoDataAvail();
                            clientDisconnect(_arg026, _arg126, _arg226, _arg317);
                            return true;
                        case 27:
                            int _arg027 = data.readInt();
                            String _arg127 = data.readString();
                            int _arg227 = data.readInt();
                            int _arg318 = data.readInt();
                            int _arg410 = data.readInt();
                            AttributionSource _arg56 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            SynchronousResultReceiver _arg63 = (SynchronousResultReceiver) data.readTypedObject(SynchronousResultReceiver.CREATOR);
                            data.enforceNoDataAvail();
                            clientSetPreferredPhy(_arg027, _arg127, _arg227, _arg318, _arg410, _arg56, _arg63);
                            return true;
                        case 28:
                            int _arg028 = data.readInt();
                            String _arg128 = data.readString();
                            AttributionSource _arg228 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            SynchronousResultReceiver _arg319 = (SynchronousResultReceiver) data.readTypedObject(SynchronousResultReceiver.CREATOR);
                            data.enforceNoDataAvail();
                            clientReadPhy(_arg028, _arg128, _arg228, _arg319);
                            return true;
                        case 29:
                            int _arg029 = data.readInt();
                            String _arg129 = data.readString();
                            AttributionSource _arg229 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            SynchronousResultReceiver _arg320 = (SynchronousResultReceiver) data.readTypedObject(SynchronousResultReceiver.CREATOR);
                            data.enforceNoDataAvail();
                            refreshDevice(_arg029, _arg129, _arg229, _arg320);
                            return true;
                        case 30:
                            int _arg030 = data.readInt();
                            String _arg130 = data.readString();
                            AttributionSource _arg230 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            SynchronousResultReceiver _arg321 = (SynchronousResultReceiver) data.readTypedObject(SynchronousResultReceiver.CREATOR);
                            data.enforceNoDataAvail();
                            discoverServices(_arg030, _arg130, _arg230, _arg321);
                            return true;
                        case 31:
                            int _arg031 = data.readInt();
                            String _arg131 = data.readString();
                            ParcelUuid _arg231 = (ParcelUuid) data.readTypedObject(ParcelUuid.CREATOR);
                            AttributionSource _arg322 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            SynchronousResultReceiver _arg411 = (SynchronousResultReceiver) data.readTypedObject(SynchronousResultReceiver.CREATOR);
                            data.enforceNoDataAvail();
                            discoverServiceByUuid(_arg031, _arg131, _arg231, _arg322, _arg411);
                            return true;
                        case 32:
                            int _arg032 = data.readInt();
                            String _arg132 = data.readString();
                            int _arg232 = data.readInt();
                            int _arg323 = data.readInt();
                            AttributionSource _arg412 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            SynchronousResultReceiver _arg57 = (SynchronousResultReceiver) data.readTypedObject(SynchronousResultReceiver.CREATOR);
                            data.enforceNoDataAvail();
                            readCharacteristic(_arg032, _arg132, _arg232, _arg323, _arg412, _arg57);
                            return true;
                        case 33:
                            int _arg033 = data.readInt();
                            String _arg133 = data.readString();
                            ParcelUuid _arg233 = (ParcelUuid) data.readTypedObject(ParcelUuid.CREATOR);
                            int _arg324 = data.readInt();
                            int _arg413 = data.readInt();
                            int _arg58 = data.readInt();
                            AttributionSource _arg64 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            SynchronousResultReceiver _arg73 = (SynchronousResultReceiver) data.readTypedObject(SynchronousResultReceiver.CREATOR);
                            data.enforceNoDataAvail();
                            readUsingCharacteristicUuid(_arg033, _arg133, _arg233, _arg324, _arg413, _arg58, _arg64, _arg73);
                            return true;
                        case 34:
                            int _arg034 = data.readInt();
                            String _arg134 = data.readString();
                            int _arg234 = data.readInt();
                            int _arg325 = data.readInt();
                            int _arg414 = data.readInt();
                            byte[] _arg59 = data.createByteArray();
                            AttributionSource _arg65 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            SynchronousResultReceiver _arg74 = (SynchronousResultReceiver) data.readTypedObject(SynchronousResultReceiver.CREATOR);
                            data.enforceNoDataAvail();
                            writeCharacteristic(_arg034, _arg134, _arg234, _arg325, _arg414, _arg59, _arg65, _arg74);
                            return true;
                        case 35:
                            int _arg035 = data.readInt();
                            String _arg135 = data.readString();
                            int _arg235 = data.readInt();
                            int _arg326 = data.readInt();
                            AttributionSource _arg415 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            SynchronousResultReceiver _arg510 = (SynchronousResultReceiver) data.readTypedObject(SynchronousResultReceiver.CREATOR);
                            data.enforceNoDataAvail();
                            readDescriptor(_arg035, _arg135, _arg235, _arg326, _arg415, _arg510);
                            return true;
                        case 36:
                            int _arg036 = data.readInt();
                            String _arg136 = data.readString();
                            int _arg236 = data.readInt();
                            int _arg327 = data.readInt();
                            byte[] _arg416 = data.createByteArray();
                            AttributionSource _arg511 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            SynchronousResultReceiver _arg66 = (SynchronousResultReceiver) data.readTypedObject(SynchronousResultReceiver.CREATOR);
                            data.enforceNoDataAvail();
                            writeDescriptor(_arg036, _arg136, _arg236, _arg327, _arg416, _arg511, _arg66);
                            return true;
                        case 37:
                            int _arg037 = data.readInt();
                            String _arg137 = data.readString();
                            int _arg237 = data.readInt();
                            boolean _arg328 = data.readBoolean();
                            AttributionSource _arg417 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            SynchronousResultReceiver _arg512 = (SynchronousResultReceiver) data.readTypedObject(SynchronousResultReceiver.CREATOR);
                            data.enforceNoDataAvail();
                            registerForNotification(_arg037, _arg137, _arg237, _arg328, _arg417, _arg512);
                            return true;
                        case 38:
                            int _arg038 = data.readInt();
                            String _arg138 = data.readString();
                            AttributionSource _arg238 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            SynchronousResultReceiver _arg329 = (SynchronousResultReceiver) data.readTypedObject(SynchronousResultReceiver.CREATOR);
                            data.enforceNoDataAvail();
                            beginReliableWrite(_arg038, _arg138, _arg238, _arg329);
                            return true;
                        case 39:
                            int _arg039 = data.readInt();
                            String _arg139 = data.readString();
                            boolean _arg239 = data.readBoolean();
                            AttributionSource _arg330 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            SynchronousResultReceiver _arg418 = (SynchronousResultReceiver) data.readTypedObject(SynchronousResultReceiver.CREATOR);
                            data.enforceNoDataAvail();
                            endReliableWrite(_arg039, _arg139, _arg239, _arg330, _arg418);
                            return true;
                        case 40:
                            int _arg040 = data.readInt();
                            String _arg140 = data.readString();
                            AttributionSource _arg240 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            SynchronousResultReceiver _arg331 = (SynchronousResultReceiver) data.readTypedObject(SynchronousResultReceiver.CREATOR);
                            data.enforceNoDataAvail();
                            readRemoteRssi(_arg040, _arg140, _arg240, _arg331);
                            return true;
                        case 41:
                            int _arg041 = data.readInt();
                            String _arg141 = data.readString();
                            int _arg241 = data.readInt();
                            AttributionSource _arg332 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            SynchronousResultReceiver _arg419 = (SynchronousResultReceiver) data.readTypedObject(SynchronousResultReceiver.CREATOR);
                            data.enforceNoDataAvail();
                            configureMTU(_arg041, _arg141, _arg241, _arg332, _arg419);
                            return true;
                        case 42:
                            int _arg042 = data.readInt();
                            String _arg142 = data.readString();
                            int _arg242 = data.readInt();
                            AttributionSource _arg333 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            SynchronousResultReceiver _arg420 = (SynchronousResultReceiver) data.readTypedObject(SynchronousResultReceiver.CREATOR);
                            data.enforceNoDataAvail();
                            connectionParameterUpdate(_arg042, _arg142, _arg242, _arg333, _arg420);
                            return true;
                        case 43:
                            int _arg043 = data.readInt();
                            String _arg143 = data.readString();
                            int _arg243 = data.readInt();
                            int _arg334 = data.readInt();
                            int _arg421 = data.readInt();
                            int _arg513 = data.readInt();
                            int _arg67 = data.readInt();
                            int _arg75 = data.readInt();
                            AttributionSource _arg82 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            SynchronousResultReceiver _arg92 = (SynchronousResultReceiver) data.readTypedObject(SynchronousResultReceiver.CREATOR);
                            data.enforceNoDataAvail();
                            leConnectionUpdate(_arg043, _arg143, _arg243, _arg334, _arg421, _arg513, _arg67, _arg75, _arg82, _arg92);
                            return true;
                        case 44:
                            ParcelUuid _arg044 = (ParcelUuid) data.readTypedObject(ParcelUuid.CREATOR);
                            IBluetoothGattServerCallback _arg144 = IBluetoothGattServerCallback.Stub.asInterface(data.readStrongBinder());
                            boolean _arg244 = data.readBoolean();
                            AttributionSource _arg335 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            SynchronousResultReceiver _arg422 = (SynchronousResultReceiver) data.readTypedObject(SynchronousResultReceiver.CREATOR);
                            data.enforceNoDataAvail();
                            registerServer(_arg044, _arg144, _arg244, _arg335, _arg422);
                            return true;
                        case 45:
                            int _arg045 = data.readInt();
                            AttributionSource _arg145 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            SynchronousResultReceiver _arg245 = (SynchronousResultReceiver) data.readTypedObject(SynchronousResultReceiver.CREATOR);
                            data.enforceNoDataAvail();
                            unregisterServer(_arg045, _arg145, _arg245);
                            return true;
                        case 46:
                            int _arg046 = data.readInt();
                            String _arg146 = data.readString();
                            boolean _arg246 = data.readBoolean();
                            int _arg336 = data.readInt();
                            AttributionSource _arg423 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            SynchronousResultReceiver _arg514 = (SynchronousResultReceiver) data.readTypedObject(SynchronousResultReceiver.CREATOR);
                            data.enforceNoDataAvail();
                            serverConnect(_arg046, _arg146, _arg246, _arg336, _arg423, _arg514);
                            return true;
                        case 47:
                            int _arg047 = data.readInt();
                            String _arg147 = data.readString();
                            AttributionSource _arg247 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            SynchronousResultReceiver _arg337 = (SynchronousResultReceiver) data.readTypedObject(SynchronousResultReceiver.CREATOR);
                            data.enforceNoDataAvail();
                            serverDisconnect(_arg047, _arg147, _arg247, _arg337);
                            return true;
                        case 48:
                            int _arg048 = data.readInt();
                            String _arg148 = data.readString();
                            int _arg248 = data.readInt();
                            int _arg338 = data.readInt();
                            int _arg424 = data.readInt();
                            AttributionSource _arg515 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            SynchronousResultReceiver _arg68 = (SynchronousResultReceiver) data.readTypedObject(SynchronousResultReceiver.CREATOR);
                            data.enforceNoDataAvail();
                            serverSetPreferredPhy(_arg048, _arg148, _arg248, _arg338, _arg424, _arg515, _arg68);
                            return true;
                        case 49:
                            int _arg049 = data.readInt();
                            String _arg149 = data.readString();
                            AttributionSource _arg249 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            SynchronousResultReceiver _arg339 = (SynchronousResultReceiver) data.readTypedObject(SynchronousResultReceiver.CREATOR);
                            data.enforceNoDataAvail();
                            serverReadPhy(_arg049, _arg149, _arg249, _arg339);
                            return true;
                        case 50:
                            int _arg050 = data.readInt();
                            BluetoothGattService _arg150 = (BluetoothGattService) data.readTypedObject(BluetoothGattService.CREATOR);
                            AttributionSource _arg250 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            SynchronousResultReceiver _arg340 = (SynchronousResultReceiver) data.readTypedObject(SynchronousResultReceiver.CREATOR);
                            data.enforceNoDataAvail();
                            addService(_arg050, _arg150, _arg250, _arg340);
                            return true;
                        case 51:
                            int _arg051 = data.readInt();
                            int _arg151 = data.readInt();
                            AttributionSource _arg251 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            SynchronousResultReceiver _arg341 = (SynchronousResultReceiver) data.readTypedObject(SynchronousResultReceiver.CREATOR);
                            data.enforceNoDataAvail();
                            removeService(_arg051, _arg151, _arg251, _arg341);
                            return true;
                        case 52:
                            int _arg052 = data.readInt();
                            AttributionSource _arg152 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            SynchronousResultReceiver _arg252 = (SynchronousResultReceiver) data.readTypedObject(SynchronousResultReceiver.CREATOR);
                            data.enforceNoDataAvail();
                            clearServices(_arg052, _arg152, _arg252);
                            return true;
                        case 53:
                            int _arg053 = data.readInt();
                            String _arg153 = data.readString();
                            int _arg253 = data.readInt();
                            int _arg342 = data.readInt();
                            int _arg425 = data.readInt();
                            byte[] _arg516 = data.createByteArray();
                            AttributionSource _arg69 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            SynchronousResultReceiver _arg76 = (SynchronousResultReceiver) data.readTypedObject(SynchronousResultReceiver.CREATOR);
                            data.enforceNoDataAvail();
                            sendResponse(_arg053, _arg153, _arg253, _arg342, _arg425, _arg516, _arg69, _arg76);
                            return true;
                        case 54:
                            int _arg054 = data.readInt();
                            String _arg154 = data.readString();
                            int _arg254 = data.readInt();
                            boolean _arg343 = data.readBoolean();
                            byte[] _arg426 = data.createByteArray();
                            AttributionSource _arg517 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            SynchronousResultReceiver _arg610 = (SynchronousResultReceiver) data.readTypedObject(SynchronousResultReceiver.CREATOR);
                            data.enforceNoDataAvail();
                            sendNotification(_arg054, _arg154, _arg254, _arg343, _arg426, _arg517, _arg610);
                            return true;
                        case 55:
                            AttributionSource _arg055 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            SynchronousResultReceiver _arg155 = (SynchronousResultReceiver) data.readTypedObject(SynchronousResultReceiver.CREATOR);
                            data.enforceNoDataAvail();
                            disconnectAll(_arg055, _arg155);
                            return true;
                        case 56:
                            AttributionSource _arg056 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            SynchronousResultReceiver _arg156 = (SynchronousResultReceiver) data.readTypedObject(SynchronousResultReceiver.CREATOR);
                            data.enforceNoDataAvail();
                            unregAll(_arg056, _arg156);
                            return true;
                        case 57:
                            AttributionSource _arg057 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            SynchronousResultReceiver _arg157 = (SynchronousResultReceiver) data.readTypedObject(SynchronousResultReceiver.CREATOR);
                            data.enforceNoDataAvail();
                            numHwTrackFiltersAvailable(_arg057, _arg157);
                            return true;
                        case 58:
                            int _arg058 = data.readInt();
                            String _arg158 = data.readString();
                            int _arg255 = data.readInt();
                            int _arg344 = data.readInt();
                            int _arg427 = data.readInt();
                            int _arg518 = data.readInt();
                            int _arg611 = data.readInt();
                            AttributionSource _arg77 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            data.enforceNoDataAvail();
                            leSubrateRequest(_arg058, _arg158, _arg255, _arg344, _arg427, _arg518, _arg611, _arg77);
                            return true;
                        case 59:
                            int _arg059 = data.readInt();
                            String _arg159 = data.readString();
                            int _arg256 = data.readInt();
                            AttributionSource _arg345 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            data.enforceNoDataAvail();
                            subrateModeRequest(_arg059, _arg159, _arg256, _arg345);
                            return true;
                        default:
                            return super.onTransact(code, data, reply, flags);
                    }
            }
        }

        private static class Proxy implements IBluetoothGatt {
            private IBinder mRemote;

            Proxy(IBinder remote) {
                this.mRemote = remote;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            public String getInterfaceDescriptor() {
                return Stub.DESCRIPTOR;
            }

            @Override // android.bluetooth.IBluetoothGatt
            public void getDevicesMatchingConnectionStates(int[] states, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeIntArray(states);
                    _data.writeTypedObject(attributionSource, 0);
                    _data.writeTypedObject(receiver, 0);
                    this.mRemote.transact(1, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetoothGatt
            public void registerScanner(IScannerCallback callback, WorkSource workSource, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeStrongInterface(callback);
                    _data.writeTypedObject(workSource, 0);
                    _data.writeTypedObject(attributionSource, 0);
                    _data.writeTypedObject(receiver, 0);
                    this.mRemote.transact(2, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetoothGatt
            public void unregisterScanner(int scannerId, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(scannerId);
                    _data.writeTypedObject(attributionSource, 0);
                    _data.writeTypedObject(receiver, 0);
                    this.mRemote.transact(3, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetoothGatt
            public void startScan(int scannerId, ScanSettings settings, List<ScanFilter> filters, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(scannerId);
                    _data.writeTypedObject(settings, 0);
                    _data.writeTypedList(filters);
                    _data.writeTypedObject(attributionSource, 0);
                    _data.writeTypedObject(receiver, 0);
                    this.mRemote.transact(4, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetoothGatt
            public void startScanForIntent(PendingIntent intent, ScanSettings settings, List<ScanFilter> filters, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeTypedObject(intent, 0);
                    _data.writeTypedObject(settings, 0);
                    _data.writeTypedList(filters);
                    _data.writeTypedObject(attributionSource, 0);
                    _data.writeTypedObject(receiver, 0);
                    this.mRemote.transact(5, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetoothGatt
            public void stopScanForIntent(PendingIntent intent, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeTypedObject(intent, 0);
                    _data.writeTypedObject(attributionSource, 0);
                    _data.writeTypedObject(receiver, 0);
                    this.mRemote.transact(6, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetoothGatt
            public void stopScan(int scannerId, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(scannerId);
                    _data.writeTypedObject(attributionSource, 0);
                    _data.writeTypedObject(receiver, 0);
                    this.mRemote.transact(7, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetoothGatt
            public void flushPendingBatchResults(int scannerId, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(scannerId);
                    _data.writeTypedObject(attributionSource, 0);
                    _data.writeTypedObject(receiver, 0);
                    this.mRemote.transact(8, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetoothGatt
            public void startAdvertisingSet(AdvertisingSetParameters parameters, AdvertiseData advertiseData, AdvertiseData scanResponse, PeriodicAdvertisingParameters periodicParameters, AdvertiseData periodicData, int duration, int maxExtAdvEvents, IAdvertisingSetCallback callback, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeTypedObject(parameters, 0);
                    _data.writeTypedObject(advertiseData, 0);
                    _data.writeTypedObject(scanResponse, 0);
                    _data.writeTypedObject(periodicParameters, 0);
                    _data.writeTypedObject(periodicData, 0);
                    _data.writeInt(duration);
                    _data.writeInt(maxExtAdvEvents);
                    _data.writeStrongInterface(callback);
                    _data.writeTypedObject(attributionSource, 0);
                    _data.writeTypedObject(receiver, 0);
                    this.mRemote.transact(9, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetoothGatt
            public void stopAdvertisingSet(IAdvertisingSetCallback callback, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeStrongInterface(callback);
                    _data.writeTypedObject(attributionSource, 0);
                    _data.writeTypedObject(receiver, 0);
                    this.mRemote.transact(10, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetoothGatt
            public void getOwnAddress(int advertiserId, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(advertiserId);
                    _data.writeTypedObject(attributionSource, 0);
                    _data.writeTypedObject(receiver, 0);
                    this.mRemote.transact(11, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetoothGatt
            public void enableAdvertisingSet(int advertiserId, boolean enable, int duration, int maxExtAdvEvents, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(advertiserId);
                    _data.writeBoolean(enable);
                    _data.writeInt(duration);
                    _data.writeInt(maxExtAdvEvents);
                    _data.writeTypedObject(attributionSource, 0);
                    _data.writeTypedObject(receiver, 0);
                    this.mRemote.transact(12, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetoothGatt
            public void setAdvertisingData(int advertiserId, AdvertiseData data, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(advertiserId);
                    _data.writeTypedObject(data, 0);
                    _data.writeTypedObject(attributionSource, 0);
                    _data.writeTypedObject(receiver, 0);
                    this.mRemote.transact(13, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetoothGatt
            public void setScanResponseData(int advertiserId, AdvertiseData data, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(advertiserId);
                    _data.writeTypedObject(data, 0);
                    _data.writeTypedObject(attributionSource, 0);
                    _data.writeTypedObject(receiver, 0);
                    this.mRemote.transact(14, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetoothGatt
            public void setAdvertisingParameters(int advertiserId, AdvertisingSetParameters parameters, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(advertiserId);
                    _data.writeTypedObject(parameters, 0);
                    _data.writeTypedObject(attributionSource, 0);
                    _data.writeTypedObject(receiver, 0);
                    this.mRemote.transact(15, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetoothGatt
            public void setPeriodicAdvertisingParameters(int advertiserId, PeriodicAdvertisingParameters parameters, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(advertiserId);
                    _data.writeTypedObject(parameters, 0);
                    _data.writeTypedObject(attributionSource, 0);
                    _data.writeTypedObject(receiver, 0);
                    this.mRemote.transact(16, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetoothGatt
            public void setPeriodicAdvertisingData(int advertiserId, AdvertiseData data, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(advertiserId);
                    _data.writeTypedObject(data, 0);
                    _data.writeTypedObject(attributionSource, 0);
                    _data.writeTypedObject(receiver, 0);
                    this.mRemote.transact(17, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetoothGatt
            public void setPeriodicAdvertisingEnable(int advertiserId, boolean enable, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(advertiserId);
                    _data.writeBoolean(enable);
                    _data.writeTypedObject(attributionSource, 0);
                    _data.writeTypedObject(receiver, 0);
                    this.mRemote.transact(18, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetoothGatt
            public void registerSync(ScanResult scanResult, int skip, int timeout, IPeriodicAdvertisingCallback callback, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeTypedObject(scanResult, 0);
                    _data.writeInt(skip);
                    _data.writeInt(timeout);
                    _data.writeStrongInterface(callback);
                    _data.writeTypedObject(attributionSource, 0);
                    _data.writeTypedObject(receiver, 0);
                    this.mRemote.transact(19, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetoothGatt
            public void unregisterSync(IPeriodicAdvertisingCallback callback, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeStrongInterface(callback);
                    _data.writeTypedObject(attributionSource, 0);
                    _data.writeTypedObject(receiver, 0);
                    this.mRemote.transact(20, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetoothGatt
            public void transferSync(BluetoothDevice bda, int serviceData, int syncHandle, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeTypedObject(bda, 0);
                    _data.writeInt(serviceData);
                    _data.writeInt(syncHandle);
                    _data.writeTypedObject(attributionSource, 0);
                    _data.writeTypedObject(receiver, 0);
                    this.mRemote.transact(21, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetoothGatt
            public void transferSetInfo(BluetoothDevice bda, int serviceData, int advertisingHandle, IPeriodicAdvertisingCallback callback, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeTypedObject(bda, 0);
                    _data.writeInt(serviceData);
                    _data.writeInt(advertisingHandle);
                    _data.writeStrongInterface(callback);
                    _data.writeTypedObject(attributionSource, 0);
                    _data.writeTypedObject(receiver, 0);
                    this.mRemote.transact(22, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetoothGatt
            public void registerClient(ParcelUuid appId, IBluetoothGattCallback callback, boolean eatt_support, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeTypedObject(appId, 0);
                    _data.writeStrongInterface(callback);
                    _data.writeBoolean(eatt_support);
                    _data.writeTypedObject(attributionSource, 0);
                    _data.writeTypedObject(receiver, 0);
                    this.mRemote.transact(23, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetoothGatt
            public void unregisterClient(int clientIf, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(clientIf);
                    _data.writeTypedObject(attributionSource, 0);
                    _data.writeTypedObject(receiver, 0);
                    this.mRemote.transact(24, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetoothGatt
            public void clientConnect(int clientIf, String address, boolean isDirect, int transport, boolean opportunistic, int phy, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(clientIf);
                    _data.writeString(address);
                    _data.writeBoolean(isDirect);
                    _data.writeInt(transport);
                    _data.writeBoolean(opportunistic);
                    _data.writeInt(phy);
                    _data.writeTypedObject(attributionSource, 0);
                    _data.writeTypedObject(receiver, 0);
                    this.mRemote.transact(25, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetoothGatt
            public void clientDisconnect(int clientIf, String address, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(clientIf);
                    _data.writeString(address);
                    _data.writeTypedObject(attributionSource, 0);
                    _data.writeTypedObject(receiver, 0);
                    this.mRemote.transact(26, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetoothGatt
            public void clientSetPreferredPhy(int clientIf, String address, int txPhy, int rxPhy, int phyOptions, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(clientIf);
                    _data.writeString(address);
                    _data.writeInt(txPhy);
                    _data.writeInt(rxPhy);
                    _data.writeInt(phyOptions);
                    _data.writeTypedObject(attributionSource, 0);
                    _data.writeTypedObject(receiver, 0);
                    this.mRemote.transact(27, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetoothGatt
            public void clientReadPhy(int clientIf, String addres, AttributionSource attributionSources, SynchronousResultReceiver receiver) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(clientIf);
                    _data.writeString(addres);
                    _data.writeTypedObject(attributionSources, 0);
                    _data.writeTypedObject(receiver, 0);
                    this.mRemote.transact(28, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetoothGatt
            public void refreshDevice(int clientIf, String address, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(clientIf);
                    _data.writeString(address);
                    _data.writeTypedObject(attributionSource, 0);
                    _data.writeTypedObject(receiver, 0);
                    this.mRemote.transact(29, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetoothGatt
            public void discoverServices(int clientIf, String address, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(clientIf);
                    _data.writeString(address);
                    _data.writeTypedObject(attributionSource, 0);
                    _data.writeTypedObject(receiver, 0);
                    this.mRemote.transact(30, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetoothGatt
            public void discoverServiceByUuid(int clientIf, String address, ParcelUuid uuid, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(clientIf);
                    _data.writeString(address);
                    _data.writeTypedObject(uuid, 0);
                    _data.writeTypedObject(attributionSource, 0);
                    _data.writeTypedObject(receiver, 0);
                    this.mRemote.transact(31, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetoothGatt
            public void readCharacteristic(int clientIf, String address, int handle, int authReq, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(clientIf);
                    _data.writeString(address);
                    _data.writeInt(handle);
                    _data.writeInt(authReq);
                    _data.writeTypedObject(attributionSource, 0);
                    _data.writeTypedObject(receiver, 0);
                    this.mRemote.transact(32, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetoothGatt
            public void readUsingCharacteristicUuid(int clientIf, String address, ParcelUuid uuid, int startHandle, int endHandle, int authReq, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(clientIf);
                    _data.writeString(address);
                    _data.writeTypedObject(uuid, 0);
                    _data.writeInt(startHandle);
                    _data.writeInt(endHandle);
                    _data.writeInt(authReq);
                    _data.writeTypedObject(attributionSource, 0);
                    _data.writeTypedObject(receiver, 0);
                    this.mRemote.transact(33, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetoothGatt
            public void writeCharacteristic(int clientIf, String address, int handle, int writeType, int authReq, byte[] value, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(clientIf);
                    _data.writeString(address);
                    _data.writeInt(handle);
                    _data.writeInt(writeType);
                    _data.writeInt(authReq);
                    _data.writeByteArray(value);
                    _data.writeTypedObject(attributionSource, 0);
                    _data.writeTypedObject(receiver, 0);
                    this.mRemote.transact(34, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetoothGatt
            public void readDescriptor(int clientIf, String address, int handle, int authReq, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(clientIf);
                    _data.writeString(address);
                    _data.writeInt(handle);
                    _data.writeInt(authReq);
                    _data.writeTypedObject(attributionSource, 0);
                    _data.writeTypedObject(receiver, 0);
                    this.mRemote.transact(35, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetoothGatt
            public void writeDescriptor(int clientIf, String address, int handle, int authReq, byte[] value, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(clientIf);
                    _data.writeString(address);
                    _data.writeInt(handle);
                    _data.writeInt(authReq);
                    _data.writeByteArray(value);
                    _data.writeTypedObject(attributionSource, 0);
                    _data.writeTypedObject(receiver, 0);
                    this.mRemote.transact(36, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetoothGatt
            public void registerForNotification(int clientIf, String address, int handle, boolean enable, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(clientIf);
                    _data.writeString(address);
                    _data.writeInt(handle);
                    _data.writeBoolean(enable);
                    _data.writeTypedObject(attributionSource, 0);
                    _data.writeTypedObject(receiver, 0);
                    this.mRemote.transact(37, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetoothGatt
            public void beginReliableWrite(int clientIf, String address, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(clientIf);
                    _data.writeString(address);
                    _data.writeTypedObject(attributionSource, 0);
                    _data.writeTypedObject(receiver, 0);
                    this.mRemote.transact(38, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetoothGatt
            public void endReliableWrite(int clientIf, String address, boolean execute, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(clientIf);
                    _data.writeString(address);
                    _data.writeBoolean(execute);
                    _data.writeTypedObject(attributionSource, 0);
                    _data.writeTypedObject(receiver, 0);
                    this.mRemote.transact(39, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetoothGatt
            public void readRemoteRssi(int clientIf, String address, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(clientIf);
                    _data.writeString(address);
                    _data.writeTypedObject(attributionSource, 0);
                    _data.writeTypedObject(receiver, 0);
                    this.mRemote.transact(40, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetoothGatt
            public void configureMTU(int clientIf, String address, int mtu, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(clientIf);
                    _data.writeString(address);
                    _data.writeInt(mtu);
                    _data.writeTypedObject(attributionSource, 0);
                    _data.writeTypedObject(receiver, 0);
                    this.mRemote.transact(41, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetoothGatt
            public void connectionParameterUpdate(int clientIf, String address, int connectionPriority, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(clientIf);
                    _data.writeString(address);
                    _data.writeInt(connectionPriority);
                    _data.writeTypedObject(attributionSource, 0);
                    _data.writeTypedObject(receiver, 0);
                    this.mRemote.transact(42, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetoothGatt
            public void leConnectionUpdate(int clientIf, String address, int minInterval, int maxInterval, int peripheralLatency, int supervisionTimeout, int minConnectionEventLen, int maxConnectionEventLen, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(clientIf);
                    _data.writeString(address);
                    _data.writeInt(minInterval);
                    _data.writeInt(maxInterval);
                    _data.writeInt(peripheralLatency);
                    _data.writeInt(supervisionTimeout);
                    _data.writeInt(minConnectionEventLen);
                    _data.writeInt(maxConnectionEventLen);
                    _data.writeTypedObject(attributionSource, 0);
                    _data.writeTypedObject(receiver, 0);
                    this.mRemote.transact(43, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetoothGatt
            public void registerServer(ParcelUuid appId, IBluetoothGattServerCallback callback, boolean eatt_support, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeTypedObject(appId, 0);
                    _data.writeStrongInterface(callback);
                    _data.writeBoolean(eatt_support);
                    _data.writeTypedObject(attributionSource, 0);
                    _data.writeTypedObject(receiver, 0);
                    this.mRemote.transact(44, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetoothGatt
            public void unregisterServer(int serverIf, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(serverIf);
                    _data.writeTypedObject(attributionSource, 0);
                    _data.writeTypedObject(receiver, 0);
                    this.mRemote.transact(45, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetoothGatt
            public void serverConnect(int serverIf, String address, boolean isDirect, int transport, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(serverIf);
                    _data.writeString(address);
                    _data.writeBoolean(isDirect);
                    _data.writeInt(transport);
                    _data.writeTypedObject(attributionSource, 0);
                    _data.writeTypedObject(receiver, 0);
                    this.mRemote.transact(46, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetoothGatt
            public void serverDisconnect(int serverIf, String address, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(serverIf);
                    _data.writeString(address);
                    _data.writeTypedObject(attributionSource, 0);
                    _data.writeTypedObject(receiver, 0);
                    this.mRemote.transact(47, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetoothGatt
            public void serverSetPreferredPhy(int clientIf, String address, int txPhy, int rxPhy, int phyOptions, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(clientIf);
                    _data.writeString(address);
                    _data.writeInt(txPhy);
                    _data.writeInt(rxPhy);
                    _data.writeInt(phyOptions);
                    _data.writeTypedObject(attributionSource, 0);
                    _data.writeTypedObject(receiver, 0);
                    this.mRemote.transact(48, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetoothGatt
            public void serverReadPhy(int clientIf, String address, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(clientIf);
                    _data.writeString(address);
                    _data.writeTypedObject(attributionSource, 0);
                    _data.writeTypedObject(receiver, 0);
                    this.mRemote.transact(49, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetoothGatt
            public void addService(int serverIf, BluetoothGattService service, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(serverIf);
                    _data.writeTypedObject(service, 0);
                    _data.writeTypedObject(attributionSource, 0);
                    _data.writeTypedObject(receiver, 0);
                    this.mRemote.transact(50, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetoothGatt
            public void removeService(int serverIf, int handle, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(serverIf);
                    _data.writeInt(handle);
                    _data.writeTypedObject(attributionSource, 0);
                    _data.writeTypedObject(receiver, 0);
                    this.mRemote.transact(51, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetoothGatt
            public void clearServices(int serverIf, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(serverIf);
                    _data.writeTypedObject(attributionSource, 0);
                    _data.writeTypedObject(receiver, 0);
                    this.mRemote.transact(52, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetoothGatt
            public void sendResponse(int serverIf, String address, int requestId, int status, int offset, byte[] value, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(serverIf);
                    _data.writeString(address);
                    _data.writeInt(requestId);
                    _data.writeInt(status);
                    _data.writeInt(offset);
                    _data.writeByteArray(value);
                    _data.writeTypedObject(attributionSource, 0);
                    _data.writeTypedObject(receiver, 0);
                    this.mRemote.transact(53, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetoothGatt
            public void sendNotification(int serverIf, String address, int handle, boolean confirm, byte[] value, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(serverIf);
                    _data.writeString(address);
                    _data.writeInt(handle);
                    _data.writeBoolean(confirm);
                    _data.writeByteArray(value);
                    _data.writeTypedObject(attributionSource, 0);
                    _data.writeTypedObject(receiver, 0);
                    this.mRemote.transact(54, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetoothGatt
            public void disconnectAll(AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeTypedObject(attributionSource, 0);
                    _data.writeTypedObject(receiver, 0);
                    this.mRemote.transact(55, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetoothGatt
            public void unregAll(AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeTypedObject(attributionSource, 0);
                    _data.writeTypedObject(receiver, 0);
                    this.mRemote.transact(56, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetoothGatt
            public void numHwTrackFiltersAvailable(AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeTypedObject(attributionSource, 0);
                    _data.writeTypedObject(receiver, 0);
                    this.mRemote.transact(57, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetoothGatt
            public void leSubrateRequest(int clientIf, String address, int subrateMin, int subrateMax, int maxLatency, int contNumber, int supervisionTimeout, AttributionSource attributionSource) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(clientIf);
                    _data.writeString(address);
                    _data.writeInt(subrateMin);
                    _data.writeInt(subrateMax);
                    _data.writeInt(maxLatency);
                    _data.writeInt(contNumber);
                    _data.writeInt(supervisionTimeout);
                    _data.writeTypedObject(attributionSource, 0);
                    this.mRemote.transact(58, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetoothGatt
            public void subrateModeRequest(int clientIf, String address, int subrateMode, AttributionSource attributionSource) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(clientIf);
                    _data.writeString(address);
                    _data.writeInt(subrateMode);
                    _data.writeTypedObject(attributionSource, 0);
                    this.mRemote.transact(59, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }
        }

        @Override // android.os.Binder
        public int getMaxTransactionId() {
            return 58;
        }
    }
}

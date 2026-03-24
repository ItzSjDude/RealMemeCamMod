package android.bluetooth;

import android.app.PendingIntent;
import android.bluetooth.IBluetoothActivityEnergyInfoListener;
import android.bluetooth.IBluetoothCallback;
import android.bluetooth.IBluetoothConnectionCallback;
import android.bluetooth.IBluetoothMetadataListener;
import android.bluetooth.IBluetoothOobDataCallback;
import android.bluetooth.IBluetoothSocketManager;
import android.content.AttributionSource;
import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.ParcelUuid;
import android.os.RemoteException;
import com.android.modules.utils.SynchronousResultReceiver;

/* loaded from: classes.dex */
public interface IBluetooth extends IInterface {
    void allowLowLatencyAudio(boolean z, BluetoothDevice bluetoothDevice, SynchronousResultReceiver synchronousResultReceiver) throws RemoteException;

    void canBondWithoutDialog(BluetoothDevice bluetoothDevice, AttributionSource attributionSource, SynchronousResultReceiver synchronousResultReceiver) throws RemoteException;

    void cancelBondProcess(BluetoothDevice bluetoothDevice, AttributionSource attributionSource, SynchronousResultReceiver synchronousResultReceiver) throws RemoteException;

    void cancelDiscovery(AttributionSource attributionSource, SynchronousResultReceiver synchronousResultReceiver) throws RemoteException;

    void connectAllEnabledProfiles(BluetoothDevice bluetoothDevice, AttributionSource attributionSource, SynchronousResultReceiver synchronousResultReceiver) throws RemoteException;

    void createBond(BluetoothDevice bluetoothDevice, int i, OobData oobData, OobData oobData2, AttributionSource attributionSource, SynchronousResultReceiver synchronousResultReceiver) throws RemoteException;

    void disable(AttributionSource attributionSource, SynchronousResultReceiver synchronousResultReceiver) throws RemoteException;

    void disconnectAllEnabledProfiles(BluetoothDevice bluetoothDevice, AttributionSource attributionSource, SynchronousResultReceiver synchronousResultReceiver) throws RemoteException;

    void enable(boolean z, AttributionSource attributionSource, SynchronousResultReceiver synchronousResultReceiver) throws RemoteException;

    void factoryReset(AttributionSource attributionSource, SynchronousResultReceiver synchronousResultReceiver) throws RemoteException;

    boolean fetchRemoteUuids(BluetoothDevice bluetoothDevice) throws RemoteException;

    void fetchRemoteUuidsWithAttribution(BluetoothDevice bluetoothDevice, int i, AttributionSource attributionSource, SynchronousResultReceiver synchronousResultReceiver) throws RemoteException;

    void generateLocalOobData(int i, IBluetoothOobDataCallback iBluetoothOobDataCallback, AttributionSource attributionSource, SynchronousResultReceiver synchronousResultReceiver) throws RemoteException;

    void getActiveDevices(int i, AttributionSource attributionSource, SynchronousResultReceiver synchronousResultReceiver) throws RemoteException;

    void getAdapterConnectionState(SynchronousResultReceiver synchronousResultReceiver) throws RemoteException;

    String getAddress() throws RemoteException;

    void getAddressWithAttribution(AttributionSource attributionSource, SynchronousResultReceiver synchronousResultReceiver) throws RemoteException;

    void getBatteryLevel(BluetoothDevice bluetoothDevice, AttributionSource attributionSource, SynchronousResultReceiver synchronousResultReceiver) throws RemoteException;

    void getBluetoothClass(AttributionSource attributionSource, SynchronousResultReceiver synchronousResultReceiver) throws RemoteException;

    void getBondState(BluetoothDevice bluetoothDevice, AttributionSource attributionSource, SynchronousResultReceiver synchronousResultReceiver) throws RemoteException;

    void getBondedDevices(AttributionSource attributionSource, SynchronousResultReceiver synchronousResultReceiver) throws RemoteException;

    int getConnectionState(BluetoothDevice bluetoothDevice) throws RemoteException;

    void getConnectionStateWithAttribution(BluetoothDevice bluetoothDevice, AttributionSource attributionSource, SynchronousResultReceiver synchronousResultReceiver) throws RemoteException;

    int getDeviceType(BluetoothDevice bluetoothDevice, AttributionSource attributionSource) throws RemoteException;

    void getDiscoverableTimeout(AttributionSource attributionSource, SynchronousResultReceiver synchronousResultReceiver) throws RemoteException;

    void getDiscoveryEndMillis(AttributionSource attributionSource, SynchronousResultReceiver synchronousResultReceiver) throws RemoteException;

    void getIdentityAddress(String str, SynchronousResultReceiver synchronousResultReceiver) throws RemoteException;

    void getIoCapability(AttributionSource attributionSource, SynchronousResultReceiver synchronousResultReceiver) throws RemoteException;

    void getLeIoCapability(AttributionSource attributionSource, SynchronousResultReceiver synchronousResultReceiver) throws RemoteException;

    void getLeMaximumAdvertisingDataLength(SynchronousResultReceiver synchronousResultReceiver) throws RemoteException;

    void getMaxConnectedAudioDevices(AttributionSource attributionSource, SynchronousResultReceiver synchronousResultReceiver) throws RemoteException;

    void getMessageAccessPermission(BluetoothDevice bluetoothDevice, AttributionSource attributionSource, SynchronousResultReceiver synchronousResultReceiver) throws RemoteException;

    void getMetadata(BluetoothDevice bluetoothDevice, int i, AttributionSource attributionSource, SynchronousResultReceiver synchronousResultReceiver) throws RemoteException;

    void getMostRecentlyConnectedDevices(AttributionSource attributionSource, SynchronousResultReceiver synchronousResultReceiver) throws RemoteException;

    void getName(AttributionSource attributionSource, SynchronousResultReceiver synchronousResultReceiver) throws RemoteException;

    void getNameLengthForAdvertise(AttributionSource attributionSource, SynchronousResultReceiver synchronousResultReceiver) throws RemoteException;

    void getPhonebookAccessPermission(BluetoothDevice bluetoothDevice, AttributionSource attributionSource, SynchronousResultReceiver synchronousResultReceiver) throws RemoteException;

    void getProfileConnectionState(int i, SynchronousResultReceiver synchronousResultReceiver) throws RemoteException;

    String getRemoteAlias(BluetoothDevice bluetoothDevice) throws RemoteException;

    void getRemoteAliasWithAttribution(BluetoothDevice bluetoothDevice, AttributionSource attributionSource, SynchronousResultReceiver synchronousResultReceiver) throws RemoteException;

    void getRemoteClass(BluetoothDevice bluetoothDevice, AttributionSource attributionSource, SynchronousResultReceiver synchronousResultReceiver) throws RemoteException;

    void getRemoteName(BluetoothDevice bluetoothDevice, AttributionSource attributionSource, SynchronousResultReceiver synchronousResultReceiver) throws RemoteException;

    void getRemoteType(BluetoothDevice bluetoothDevice, AttributionSource attributionSource, SynchronousResultReceiver synchronousResultReceiver) throws RemoteException;

    void getRemoteUuids(BluetoothDevice bluetoothDevice, AttributionSource attributionSource, SynchronousResultReceiver synchronousResultReceiver) throws RemoteException;

    void getScanMode(AttributionSource attributionSource, SynchronousResultReceiver synchronousResultReceiver) throws RemoteException;

    void getSilenceMode(BluetoothDevice bluetoothDevice, AttributionSource attributionSource, SynchronousResultReceiver synchronousResultReceiver) throws RemoteException;

    void getSimAccessPermission(BluetoothDevice bluetoothDevice, AttributionSource attributionSource, SynchronousResultReceiver synchronousResultReceiver) throws RemoteException;

    IBluetoothSocketManager getSocketManager() throws RemoteException;

    int getSocketOpt(int i, int i2, int i3, byte[] bArr) throws RemoteException;

    void getState(SynchronousResultReceiver synchronousResultReceiver) throws RemoteException;

    void getSupportedProfiles(AttributionSource attributionSource, SynchronousResultReceiver synchronousResultReceiver) throws RemoteException;

    String getTwsPlusPeerAddress(BluetoothDevice bluetoothDevice, AttributionSource attributionSource) throws RemoteException;

    void getUuids(AttributionSource attributionSource, SynchronousResultReceiver synchronousResultReceiver) throws RemoteException;

    void isActivityAndEnergyReportingSupported(SynchronousResultReceiver synchronousResultReceiver) throws RemoteException;

    void isBondingInitiatedLocally(BluetoothDevice bluetoothDevice, AttributionSource attributionSource, SynchronousResultReceiver synchronousResultReceiver) throws RemoteException;

    boolean isBroadcastActive(AttributionSource attributionSource) throws RemoteException;

    void isDiscovering(AttributionSource attributionSource, SynchronousResultReceiver synchronousResultReceiver) throws RemoteException;

    void isLe2MPhySupported(SynchronousResultReceiver synchronousResultReceiver) throws RemoteException;

    void isLeAudioBroadcastAssistantSupported(SynchronousResultReceiver synchronousResultReceiver) throws RemoteException;

    void isLeAudioBroadcastSourceSupported(SynchronousResultReceiver synchronousResultReceiver) throws RemoteException;

    void isLeAudioSupported(SynchronousResultReceiver synchronousResultReceiver) throws RemoteException;

    void isLeCodedPhySupported(SynchronousResultReceiver synchronousResultReceiver) throws RemoteException;

    void isLeExtendedAdvertisingSupported(SynchronousResultReceiver synchronousResultReceiver) throws RemoteException;

    void isLePeriodicAdvertisingSupported(SynchronousResultReceiver synchronousResultReceiver) throws RemoteException;

    void isMultiAdvertisementSupported(SynchronousResultReceiver synchronousResultReceiver) throws RemoteException;

    void isOffloadedFilteringSupported(SynchronousResultReceiver synchronousResultReceiver) throws RemoteException;

    void isOffloadedScanBatchingSupported(SynchronousResultReceiver synchronousResultReceiver) throws RemoteException;

    boolean isTwsPlusDevice(BluetoothDevice bluetoothDevice, AttributionSource attributionSource) throws RemoteException;

    void onBrEdrDown(AttributionSource attributionSource, SynchronousResultReceiver synchronousResultReceiver) throws RemoteException;

    void onLeServiceUp(AttributionSource attributionSource, SynchronousResultReceiver synchronousResultReceiver) throws RemoteException;

    void registerBluetoothConnectionCallback(IBluetoothConnectionCallback iBluetoothConnectionCallback, AttributionSource attributionSource, SynchronousResultReceiver synchronousResultReceiver) throws RemoteException;

    void registerCallback(IBluetoothCallback iBluetoothCallback, AttributionSource attributionSource, SynchronousResultReceiver synchronousResultReceiver) throws RemoteException;

    void registerMetadataListener(IBluetoothMetadataListener iBluetoothMetadataListener, BluetoothDevice bluetoothDevice, AttributionSource attributionSource, SynchronousResultReceiver synchronousResultReceiver) throws RemoteException;

    void removeActiveDevice(int i, AttributionSource attributionSource, SynchronousResultReceiver synchronousResultReceiver) throws RemoteException;

    void removeBond(BluetoothDevice bluetoothDevice, AttributionSource attributionSource, SynchronousResultReceiver synchronousResultReceiver) throws RemoteException;

    void reportActivityInfo(AttributionSource attributionSource, SynchronousResultReceiver synchronousResultReceiver) throws RemoteException;

    void requestActivityInfo(IBluetoothActivityEnergyInfoListener iBluetoothActivityEnergyInfoListener, AttributionSource attributionSource) throws RemoteException;

    void retrievePendingSocketForServiceRecord(ParcelUuid parcelUuid, AttributionSource attributionSource, SynchronousResultReceiver synchronousResultReceiver) throws RemoteException;

    void sdpSearch(BluetoothDevice bluetoothDevice, ParcelUuid parcelUuid, AttributionSource attributionSource, SynchronousResultReceiver synchronousResultReceiver) throws RemoteException;

    void setActiveDevice(BluetoothDevice bluetoothDevice, int i, AttributionSource attributionSource, SynchronousResultReceiver synchronousResultReceiver) throws RemoteException;

    void setBluetoothClass(BluetoothClass bluetoothClass, AttributionSource attributionSource, SynchronousResultReceiver synchronousResultReceiver) throws RemoteException;

    void setBondingInitiatedLocally(BluetoothDevice bluetoothDevice, boolean z, AttributionSource attributionSource) throws RemoteException;

    void setDiscoverableTimeout(long j, AttributionSource attributionSource, SynchronousResultReceiver synchronousResultReceiver) throws RemoteException;

    void setForegroundUserId(int i, AttributionSource attributionSource) throws RemoteException;

    void setIoCapability(int i, AttributionSource attributionSource, SynchronousResultReceiver synchronousResultReceiver) throws RemoteException;

    void setLeIoCapability(int i, AttributionSource attributionSource, SynchronousResultReceiver synchronousResultReceiver) throws RemoteException;

    void setMessageAccessPermission(BluetoothDevice bluetoothDevice, int i, AttributionSource attributionSource, SynchronousResultReceiver synchronousResultReceiver) throws RemoteException;

    void setMetadata(BluetoothDevice bluetoothDevice, int i, byte[] bArr, AttributionSource attributionSource, SynchronousResultReceiver synchronousResultReceiver) throws RemoteException;

    void setName(String str, AttributionSource attributionSource, SynchronousResultReceiver synchronousResultReceiver) throws RemoteException;

    void setPairingConfirmation(BluetoothDevice bluetoothDevice, boolean z, AttributionSource attributionSource, SynchronousResultReceiver synchronousResultReceiver) throws RemoteException;

    void setPasskey(BluetoothDevice bluetoothDevice, boolean z, int i, byte[] bArr, AttributionSource attributionSource, SynchronousResultReceiver synchronousResultReceiver) throws RemoteException;

    void setPhonebookAccessPermission(BluetoothDevice bluetoothDevice, int i, AttributionSource attributionSource, SynchronousResultReceiver synchronousResultReceiver) throws RemoteException;

    void setPin(BluetoothDevice bluetoothDevice, boolean z, int i, byte[] bArr, AttributionSource attributionSource, SynchronousResultReceiver synchronousResultReceiver) throws RemoteException;

    void setRemoteAlias(BluetoothDevice bluetoothDevice, String str, AttributionSource attributionSource, SynchronousResultReceiver synchronousResultReceiver) throws RemoteException;

    void setScanMode(int i, AttributionSource attributionSource, SynchronousResultReceiver synchronousResultReceiver) throws RemoteException;

    void setSilenceMode(BluetoothDevice bluetoothDevice, boolean z, AttributionSource attributionSource, SynchronousResultReceiver synchronousResultReceiver) throws RemoteException;

    void setSimAccessPermission(BluetoothDevice bluetoothDevice, int i, AttributionSource attributionSource, SynchronousResultReceiver synchronousResultReceiver) throws RemoteException;

    int setSocketOpt(int i, int i2, int i3, byte[] bArr, int i4) throws RemoteException;

    void startDiscovery(AttributionSource attributionSource, SynchronousResultReceiver synchronousResultReceiver) throws RemoteException;

    void startRfcommListener(String str, ParcelUuid parcelUuid, PendingIntent pendingIntent, AttributionSource attributionSource, SynchronousResultReceiver synchronousResultReceiver) throws RemoteException;

    void stopRfcommListener(ParcelUuid parcelUuid, AttributionSource attributionSource, SynchronousResultReceiver synchronousResultReceiver) throws RemoteException;

    void unregisterBluetoothConnectionCallback(IBluetoothConnectionCallback iBluetoothConnectionCallback, AttributionSource attributionSource, SynchronousResultReceiver synchronousResultReceiver) throws RemoteException;

    void unregisterCallback(IBluetoothCallback iBluetoothCallback, AttributionSource attributionSource, SynchronousResultReceiver synchronousResultReceiver) throws RemoteException;

    void unregisterMetadataListener(BluetoothDevice bluetoothDevice, AttributionSource attributionSource, SynchronousResultReceiver synchronousResultReceiver) throws RemoteException;

    void updateQuietModeStatus(boolean z, AttributionSource attributionSource) throws RemoteException;

    public static class Default implements IBluetooth {
        @Override // android.bluetooth.IBluetooth
        public void getState(SynchronousResultReceiver receiver) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetooth
        public void enable(boolean quietMode, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetooth
        public void disable(AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetooth
        public String getAddress() throws RemoteException {
            return null;
        }

        @Override // android.bluetooth.IBluetooth
        public void getAddressWithAttribution(AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetooth
        public void getUuids(AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetooth
        public void setName(String name, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetooth
        public void getIdentityAddress(String address, SynchronousResultReceiver receiver) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetooth
        public void getName(AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetooth
        public void getNameLengthForAdvertise(AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetooth
        public void getBluetoothClass(AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetooth
        public void setBluetoothClass(BluetoothClass bluetoothClass, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetooth
        public void getIoCapability(AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetooth
        public void setIoCapability(int capability, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetooth
        public void getLeIoCapability(AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetooth
        public void setLeIoCapability(int capability, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetooth
        public void getScanMode(AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetooth
        public void setScanMode(int mode, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetooth
        public void getDiscoverableTimeout(AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetooth
        public void setDiscoverableTimeout(long timeout, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetooth
        public void startDiscovery(AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetooth
        public void cancelDiscovery(AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetooth
        public void isDiscovering(AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetooth
        public void getDiscoveryEndMillis(AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetooth
        public void getAdapterConnectionState(SynchronousResultReceiver receiver) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetooth
        public void getProfileConnectionState(int profile, SynchronousResultReceiver receiver) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetooth
        public void getBondedDevices(AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetooth
        public void createBond(BluetoothDevice device, int transport, OobData p192Data, OobData p256Data, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetooth
        public void cancelBondProcess(BluetoothDevice device, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetooth
        public void removeBond(BluetoothDevice device, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetooth
        public void getBondState(BluetoothDevice device, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetooth
        public void isBondingInitiatedLocally(BluetoothDevice device, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetooth
        public void getSupportedProfiles(AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetooth
        public int getConnectionState(BluetoothDevice device) throws RemoteException {
            return 0;
        }

        @Override // android.bluetooth.IBluetooth
        public void getConnectionStateWithAttribution(BluetoothDevice device, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetooth
        public void getRemoteName(BluetoothDevice device, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetooth
        public void getRemoteType(BluetoothDevice device, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetooth
        public String getRemoteAlias(BluetoothDevice device) throws RemoteException {
            return null;
        }

        @Override // android.bluetooth.IBluetooth
        public void getRemoteAliasWithAttribution(BluetoothDevice device, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetooth
        public void setRemoteAlias(BluetoothDevice device, String name, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetooth
        public void getRemoteClass(BluetoothDevice device, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetooth
        public void getRemoteUuids(BluetoothDevice device, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetooth
        public boolean fetchRemoteUuids(BluetoothDevice device) throws RemoteException {
            return false;
        }

        @Override // android.bluetooth.IBluetooth
        public void fetchRemoteUuidsWithAttribution(BluetoothDevice device, int transport, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetooth
        public void sdpSearch(BluetoothDevice device, ParcelUuid uuid, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetooth
        public void getBatteryLevel(BluetoothDevice device, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetooth
        public void getMaxConnectedAudioDevices(AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetooth
        public void setPin(BluetoothDevice device, boolean accept, int len, byte[] pinCode, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetooth
        public void setPasskey(BluetoothDevice device, boolean accept, int len, byte[] passkey, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetooth
        public void setPairingConfirmation(BluetoothDevice device, boolean accept, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetooth
        public void getPhonebookAccessPermission(BluetoothDevice device, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetooth
        public void setSilenceMode(BluetoothDevice device, boolean silence, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetooth
        public void getSilenceMode(BluetoothDevice device, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetooth
        public void setPhonebookAccessPermission(BluetoothDevice device, int value, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetooth
        public void getMessageAccessPermission(BluetoothDevice device, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetooth
        public void setMessageAccessPermission(BluetoothDevice device, int value, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetooth
        public void getSimAccessPermission(BluetoothDevice device, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetooth
        public void setSimAccessPermission(BluetoothDevice device, int value, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetooth
        public void registerCallback(IBluetoothCallback callback, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetooth
        public void unregisterCallback(IBluetoothCallback callback, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetooth
        public IBluetoothSocketManager getSocketManager() throws RemoteException {
            return null;
        }

        @Override // android.bluetooth.IBluetooth
        public void factoryReset(AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetooth
        public void isMultiAdvertisementSupported(SynchronousResultReceiver receiver) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetooth
        public void isOffloadedFilteringSupported(SynchronousResultReceiver receiver) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetooth
        public void isOffloadedScanBatchingSupported(SynchronousResultReceiver receiver) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetooth
        public void isActivityAndEnergyReportingSupported(SynchronousResultReceiver receiver) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetooth
        public void isLe2MPhySupported(SynchronousResultReceiver receiver) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetooth
        public void isLeCodedPhySupported(SynchronousResultReceiver receiver) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetooth
        public void isLeExtendedAdvertisingSupported(SynchronousResultReceiver receiver) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetooth
        public void isLePeriodicAdvertisingSupported(SynchronousResultReceiver receiver) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetooth
        public void isLeAudioSupported(SynchronousResultReceiver receiver) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetooth
        public void isLeAudioBroadcastSourceSupported(SynchronousResultReceiver receiver) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetooth
        public void isLeAudioBroadcastAssistantSupported(SynchronousResultReceiver receiver) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetooth
        public void getLeMaximumAdvertisingDataLength(SynchronousResultReceiver receiver) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetooth
        public void reportActivityInfo(AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetooth
        public void registerMetadataListener(IBluetoothMetadataListener listener, BluetoothDevice device, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetooth
        public void unregisterMetadataListener(BluetoothDevice device, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetooth
        public void setMetadata(BluetoothDevice device, int key, byte[] value, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetooth
        public void getMetadata(BluetoothDevice device, int key, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetooth
        public void requestActivityInfo(IBluetoothActivityEnergyInfoListener listener, AttributionSource attributionSource) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetooth
        public void onLeServiceUp(AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetooth
        public void onBrEdrDown(AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetooth
        public void connectAllEnabledProfiles(BluetoothDevice device, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetooth
        public void disconnectAllEnabledProfiles(BluetoothDevice device, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetooth
        public void setActiveDevice(BluetoothDevice device, int profiles, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetooth
        public void getActiveDevices(int profile, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetooth
        public void getMostRecentlyConnectedDevices(AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetooth
        public void removeActiveDevice(int profiles, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetooth
        public void registerBluetoothConnectionCallback(IBluetoothConnectionCallback callback, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetooth
        public void unregisterBluetoothConnectionCallback(IBluetoothConnectionCallback callback, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetooth
        public void canBondWithoutDialog(BluetoothDevice device, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetooth
        public void generateLocalOobData(int transport, IBluetoothOobDataCallback callback, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetooth
        public void allowLowLatencyAudio(boolean allowed, BluetoothDevice device, SynchronousResultReceiver receiver) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetooth
        public void setBondingInitiatedLocally(BluetoothDevice devicei, boolean localInitiated, AttributionSource attributionSource) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetooth
        public int getDeviceType(BluetoothDevice device, AttributionSource attributionSource) throws RemoteException {
            return 0;
        }

        @Override // android.bluetooth.IBluetooth
        public boolean isTwsPlusDevice(BluetoothDevice device, AttributionSource attributionSource) throws RemoteException {
            return false;
        }

        @Override // android.bluetooth.IBluetooth
        public String getTwsPlusPeerAddress(BluetoothDevice device, AttributionSource attributionSource) throws RemoteException {
            return null;
        }

        @Override // android.bluetooth.IBluetooth
        public void updateQuietModeStatus(boolean quietMode, AttributionSource attributionSource) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetooth
        public int setSocketOpt(int type, int port, int optionName, byte[] optionVal, int optionLen) throws RemoteException {
            return 0;
        }

        @Override // android.bluetooth.IBluetooth
        public int getSocketOpt(int type, int port, int optionName, byte[] optionVal) throws RemoteException {
            return 0;
        }

        @Override // android.bluetooth.IBluetooth
        public boolean isBroadcastActive(AttributionSource attributionSource) throws RemoteException {
            return false;
        }

        @Override // android.bluetooth.IBluetooth
        public void startRfcommListener(String name, ParcelUuid uuid, PendingIntent intent, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetooth
        public void stopRfcommListener(ParcelUuid uuid, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetooth
        public void retrievePendingSocketForServiceRecord(ParcelUuid uuid, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetooth
        public void setForegroundUserId(int userId, AttributionSource attributionSource) throws RemoteException {
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }
    }

    public static abstract class Stub extends Binder implements IBluetooth {
        public static final String DESCRIPTOR = "android.bluetooth.IBluetooth";
        static final int TRANSACTION_allowLowLatencyAudio = 93;
        static final int TRANSACTION_canBondWithoutDialog = 91;
        static final int TRANSACTION_cancelBondProcess = 29;
        static final int TRANSACTION_cancelDiscovery = 22;
        static final int TRANSACTION_connectAllEnabledProfiles = 83;
        static final int TRANSACTION_createBond = 28;
        static final int TRANSACTION_disable = 3;
        static final int TRANSACTION_disconnectAllEnabledProfiles = 84;
        static final int TRANSACTION_enable = 2;
        static final int TRANSACTION_factoryReset = 62;
        static final int TRANSACTION_fetchRemoteUuids = 43;
        static final int TRANSACTION_fetchRemoteUuidsWithAttribution = 44;
        static final int TRANSACTION_generateLocalOobData = 92;
        static final int TRANSACTION_getActiveDevices = 86;
        static final int TRANSACTION_getAdapterConnectionState = 25;
        static final int TRANSACTION_getAddress = 4;
        static final int TRANSACTION_getAddressWithAttribution = 5;
        static final int TRANSACTION_getBatteryLevel = 46;
        static final int TRANSACTION_getBluetoothClass = 11;
        static final int TRANSACTION_getBondState = 31;
        static final int TRANSACTION_getBondedDevices = 27;
        static final int TRANSACTION_getConnectionState = 34;
        static final int TRANSACTION_getConnectionStateWithAttribution = 35;
        static final int TRANSACTION_getDeviceType = 95;
        static final int TRANSACTION_getDiscoverableTimeout = 19;
        static final int TRANSACTION_getDiscoveryEndMillis = 24;
        static final int TRANSACTION_getIdentityAddress = 8;
        static final int TRANSACTION_getIoCapability = 13;
        static final int TRANSACTION_getLeIoCapability = 15;
        static final int TRANSACTION_getLeMaximumAdvertisingDataLength = 74;
        static final int TRANSACTION_getMaxConnectedAudioDevices = 47;
        static final int TRANSACTION_getMessageAccessPermission = 55;
        static final int TRANSACTION_getMetadata = 79;
        static final int TRANSACTION_getMostRecentlyConnectedDevices = 87;
        static final int TRANSACTION_getName = 9;
        static final int TRANSACTION_getNameLengthForAdvertise = 10;
        static final int TRANSACTION_getPhonebookAccessPermission = 51;
        static final int TRANSACTION_getProfileConnectionState = 26;
        static final int TRANSACTION_getRemoteAlias = 38;
        static final int TRANSACTION_getRemoteAliasWithAttribution = 39;
        static final int TRANSACTION_getRemoteClass = 41;
        static final int TRANSACTION_getRemoteName = 36;
        static final int TRANSACTION_getRemoteType = 37;
        static final int TRANSACTION_getRemoteUuids = 42;
        static final int TRANSACTION_getScanMode = 17;
        static final int TRANSACTION_getSilenceMode = 53;
        static final int TRANSACTION_getSimAccessPermission = 57;
        static final int TRANSACTION_getSocketManager = 61;
        static final int TRANSACTION_getSocketOpt = 100;
        static final int TRANSACTION_getState = 1;
        static final int TRANSACTION_getSupportedProfiles = 33;
        static final int TRANSACTION_getTwsPlusPeerAddress = 97;
        static final int TRANSACTION_getUuids = 6;
        static final int TRANSACTION_isActivityAndEnergyReportingSupported = 66;
        static final int TRANSACTION_isBondingInitiatedLocally = 32;
        static final int TRANSACTION_isBroadcastActive = 101;
        static final int TRANSACTION_isDiscovering = 23;
        static final int TRANSACTION_isLe2MPhySupported = 67;
        static final int TRANSACTION_isLeAudioBroadcastAssistantSupported = 73;
        static final int TRANSACTION_isLeAudioBroadcastSourceSupported = 72;
        static final int TRANSACTION_isLeAudioSupported = 71;
        static final int TRANSACTION_isLeCodedPhySupported = 68;
        static final int TRANSACTION_isLeExtendedAdvertisingSupported = 69;
        static final int TRANSACTION_isLePeriodicAdvertisingSupported = 70;
        static final int TRANSACTION_isMultiAdvertisementSupported = 63;
        static final int TRANSACTION_isOffloadedFilteringSupported = 64;
        static final int TRANSACTION_isOffloadedScanBatchingSupported = 65;
        static final int TRANSACTION_isTwsPlusDevice = 96;
        static final int TRANSACTION_onBrEdrDown = 82;
        static final int TRANSACTION_onLeServiceUp = 81;
        static final int TRANSACTION_registerBluetoothConnectionCallback = 89;
        static final int TRANSACTION_registerCallback = 59;
        static final int TRANSACTION_registerMetadataListener = 76;
        static final int TRANSACTION_removeActiveDevice = 88;
        static final int TRANSACTION_removeBond = 30;
        static final int TRANSACTION_reportActivityInfo = 75;
        static final int TRANSACTION_requestActivityInfo = 80;
        static final int TRANSACTION_retrievePendingSocketForServiceRecord = 104;
        static final int TRANSACTION_sdpSearch = 45;
        static final int TRANSACTION_setActiveDevice = 85;
        static final int TRANSACTION_setBluetoothClass = 12;
        static final int TRANSACTION_setBondingInitiatedLocally = 94;
        static final int TRANSACTION_setDiscoverableTimeout = 20;
        static final int TRANSACTION_setForegroundUserId = 105;
        static final int TRANSACTION_setIoCapability = 14;
        static final int TRANSACTION_setLeIoCapability = 16;
        static final int TRANSACTION_setMessageAccessPermission = 56;
        static final int TRANSACTION_setMetadata = 78;
        static final int TRANSACTION_setName = 7;
        static final int TRANSACTION_setPairingConfirmation = 50;
        static final int TRANSACTION_setPasskey = 49;
        static final int TRANSACTION_setPhonebookAccessPermission = 54;
        static final int TRANSACTION_setPin = 48;
        static final int TRANSACTION_setRemoteAlias = 40;
        static final int TRANSACTION_setScanMode = 18;
        static final int TRANSACTION_setSilenceMode = 52;
        static final int TRANSACTION_setSimAccessPermission = 58;
        static final int TRANSACTION_setSocketOpt = 99;
        static final int TRANSACTION_startDiscovery = 21;
        static final int TRANSACTION_startRfcommListener = 102;
        static final int TRANSACTION_stopRfcommListener = 103;
        static final int TRANSACTION_unregisterBluetoothConnectionCallback = 90;
        static final int TRANSACTION_unregisterCallback = 60;
        static final int TRANSACTION_unregisterMetadataListener = 77;
        static final int TRANSACTION_updateQuietModeStatus = 98;

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IBluetooth asInterface(IBinder obj) {
            if (obj == null) {
                return null;
            }
            IInterface iin = obj.queryLocalInterface(DESCRIPTOR);
            if (iin != null && (iin instanceof IBluetooth)) {
                return (IBluetooth) iin;
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
                    return "getState";
                case 2:
                    return "enable";
                case 3:
                    return "disable";
                case 4:
                    return "getAddress";
                case 5:
                    return "getAddressWithAttribution";
                case 6:
                    return "getUuids";
                case 7:
                    return "setName";
                case 8:
                    return "getIdentityAddress";
                case 9:
                    return "getName";
                case 10:
                    return "getNameLengthForAdvertise";
                case 11:
                    return "getBluetoothClass";
                case 12:
                    return "setBluetoothClass";
                case 13:
                    return "getIoCapability";
                case 14:
                    return "setIoCapability";
                case 15:
                    return "getLeIoCapability";
                case 16:
                    return "setLeIoCapability";
                case 17:
                    return "getScanMode";
                case 18:
                    return "setScanMode";
                case 19:
                    return "getDiscoverableTimeout";
                case 20:
                    return "setDiscoverableTimeout";
                case 21:
                    return "startDiscovery";
                case 22:
                    return "cancelDiscovery";
                case 23:
                    return "isDiscovering";
                case 24:
                    return "getDiscoveryEndMillis";
                case 25:
                    return "getAdapterConnectionState";
                case 26:
                    return "getProfileConnectionState";
                case 27:
                    return "getBondedDevices";
                case 28:
                    return "createBond";
                case 29:
                    return "cancelBondProcess";
                case 30:
                    return "removeBond";
                case 31:
                    return "getBondState";
                case 32:
                    return "isBondingInitiatedLocally";
                case 33:
                    return "getSupportedProfiles";
                case 34:
                    return "getConnectionState";
                case 35:
                    return "getConnectionStateWithAttribution";
                case 36:
                    return "getRemoteName";
                case 37:
                    return "getRemoteType";
                case 38:
                    return "getRemoteAlias";
                case 39:
                    return "getRemoteAliasWithAttribution";
                case 40:
                    return "setRemoteAlias";
                case 41:
                    return "getRemoteClass";
                case 42:
                    return "getRemoteUuids";
                case 43:
                    return "fetchRemoteUuids";
                case 44:
                    return "fetchRemoteUuidsWithAttribution";
                case 45:
                    return "sdpSearch";
                case 46:
                    return "getBatteryLevel";
                case 47:
                    return "getMaxConnectedAudioDevices";
                case 48:
                    return "setPin";
                case 49:
                    return "setPasskey";
                case 50:
                    return "setPairingConfirmation";
                case 51:
                    return "getPhonebookAccessPermission";
                case 52:
                    return "setSilenceMode";
                case 53:
                    return "getSilenceMode";
                case 54:
                    return "setPhonebookAccessPermission";
                case 55:
                    return "getMessageAccessPermission";
                case 56:
                    return "setMessageAccessPermission";
                case 57:
                    return "getSimAccessPermission";
                case 58:
                    return "setSimAccessPermission";
                case 59:
                    return "registerCallback";
                case 60:
                    return "unregisterCallback";
                case 61:
                    return "getSocketManager";
                case 62:
                    return "factoryReset";
                case 63:
                    return "isMultiAdvertisementSupported";
                case 64:
                    return "isOffloadedFilteringSupported";
                case 65:
                    return "isOffloadedScanBatchingSupported";
                case 66:
                    return "isActivityAndEnergyReportingSupported";
                case 67:
                    return "isLe2MPhySupported";
                case 68:
                    return "isLeCodedPhySupported";
                case 69:
                    return "isLeExtendedAdvertisingSupported";
                case 70:
                    return "isLePeriodicAdvertisingSupported";
                case 71:
                    return "isLeAudioSupported";
                case 72:
                    return "isLeAudioBroadcastSourceSupported";
                case 73:
                    return "isLeAudioBroadcastAssistantSupported";
                case 74:
                    return "getLeMaximumAdvertisingDataLength";
                case 75:
                    return "reportActivityInfo";
                case 76:
                    return "registerMetadataListener";
                case 77:
                    return "unregisterMetadataListener";
                case 78:
                    return "setMetadata";
                case 79:
                    return "getMetadata";
                case 80:
                    return "requestActivityInfo";
                case 81:
                    return "onLeServiceUp";
                case 82:
                    return "onBrEdrDown";
                case 83:
                    return "connectAllEnabledProfiles";
                case 84:
                    return "disconnectAllEnabledProfiles";
                case 85:
                    return "setActiveDevice";
                case 86:
                    return "getActiveDevices";
                case 87:
                    return "getMostRecentlyConnectedDevices";
                case 88:
                    return "removeActiveDevice";
                case 89:
                    return "registerBluetoothConnectionCallback";
                case 90:
                    return "unregisterBluetoothConnectionCallback";
                case 91:
                    return "canBondWithoutDialog";
                case 92:
                    return "generateLocalOobData";
                case 93:
                    return "allowLowLatencyAudio";
                case 94:
                    return "setBondingInitiatedLocally";
                case 95:
                    return "getDeviceType";
                case 96:
                    return "isTwsPlusDevice";
                case 97:
                    return "getTwsPlusPeerAddress";
                case 98:
                    return "updateQuietModeStatus";
                case 99:
                    return "setSocketOpt";
                case 100:
                    return "getSocketOpt";
                case 101:
                    return "isBroadcastActive";
                case 102:
                    return "startRfcommListener";
                case 103:
                    return "stopRfcommListener";
                case 104:
                    return "retrievePendingSocketForServiceRecord";
                case 105:
                    return "setForegroundUserId";
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
            byte[] _arg3;
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
                            SynchronousResultReceiver _arg0 = (SynchronousResultReceiver) data.readTypedObject(SynchronousResultReceiver.CREATOR);
                            data.enforceNoDataAvail();
                            getState(_arg0);
                            return true;
                        case 2:
                            boolean _arg02 = data.readBoolean();
                            AttributionSource _arg1 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            SynchronousResultReceiver _arg2 = (SynchronousResultReceiver) data.readTypedObject(SynchronousResultReceiver.CREATOR);
                            data.enforceNoDataAvail();
                            enable(_arg02, _arg1, _arg2);
                            return true;
                        case 3:
                            AttributionSource _arg03 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            SynchronousResultReceiver _arg12 = (SynchronousResultReceiver) data.readTypedObject(SynchronousResultReceiver.CREATOR);
                            data.enforceNoDataAvail();
                            disable(_arg03, _arg12);
                            return true;
                        case 4:
                            String _result = getAddress();
                            reply.writeNoException();
                            reply.writeString(_result);
                            return true;
                        case 5:
                            AttributionSource _arg04 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            SynchronousResultReceiver _arg13 = (SynchronousResultReceiver) data.readTypedObject(SynchronousResultReceiver.CREATOR);
                            data.enforceNoDataAvail();
                            getAddressWithAttribution(_arg04, _arg13);
                            return true;
                        case 6:
                            AttributionSource _arg05 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            SynchronousResultReceiver _arg14 = (SynchronousResultReceiver) data.readTypedObject(SynchronousResultReceiver.CREATOR);
                            data.enforceNoDataAvail();
                            getUuids(_arg05, _arg14);
                            return true;
                        case 7:
                            String _arg06 = data.readString();
                            AttributionSource _arg15 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            SynchronousResultReceiver _arg22 = (SynchronousResultReceiver) data.readTypedObject(SynchronousResultReceiver.CREATOR);
                            data.enforceNoDataAvail();
                            setName(_arg06, _arg15, _arg22);
                            return true;
                        case 8:
                            String _arg07 = data.readString();
                            SynchronousResultReceiver _arg16 = (SynchronousResultReceiver) data.readTypedObject(SynchronousResultReceiver.CREATOR);
                            data.enforceNoDataAvail();
                            getIdentityAddress(_arg07, _arg16);
                            return true;
                        case 9:
                            AttributionSource _arg08 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            SynchronousResultReceiver _arg17 = (SynchronousResultReceiver) data.readTypedObject(SynchronousResultReceiver.CREATOR);
                            data.enforceNoDataAvail();
                            getName(_arg08, _arg17);
                            return true;
                        case 10:
                            AttributionSource _arg09 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            SynchronousResultReceiver _arg18 = (SynchronousResultReceiver) data.readTypedObject(SynchronousResultReceiver.CREATOR);
                            data.enforceNoDataAvail();
                            getNameLengthForAdvertise(_arg09, _arg18);
                            return true;
                        case 11:
                            AttributionSource _arg010 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            SynchronousResultReceiver _arg19 = (SynchronousResultReceiver) data.readTypedObject(SynchronousResultReceiver.CREATOR);
                            data.enforceNoDataAvail();
                            getBluetoothClass(_arg010, _arg19);
                            return true;
                        case 12:
                            BluetoothClass _arg011 = (BluetoothClass) data.readTypedObject(BluetoothClass.CREATOR);
                            AttributionSource _arg110 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            SynchronousResultReceiver _arg23 = (SynchronousResultReceiver) data.readTypedObject(SynchronousResultReceiver.CREATOR);
                            data.enforceNoDataAvail();
                            setBluetoothClass(_arg011, _arg110, _arg23);
                            return true;
                        case 13:
                            AttributionSource _arg012 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            SynchronousResultReceiver _arg111 = (SynchronousResultReceiver) data.readTypedObject(SynchronousResultReceiver.CREATOR);
                            data.enforceNoDataAvail();
                            getIoCapability(_arg012, _arg111);
                            return true;
                        case 14:
                            int _arg013 = data.readInt();
                            AttributionSource _arg112 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            SynchronousResultReceiver _arg24 = (SynchronousResultReceiver) data.readTypedObject(SynchronousResultReceiver.CREATOR);
                            data.enforceNoDataAvail();
                            setIoCapability(_arg013, _arg112, _arg24);
                            return true;
                        case 15:
                            AttributionSource _arg014 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            SynchronousResultReceiver _arg113 = (SynchronousResultReceiver) data.readTypedObject(SynchronousResultReceiver.CREATOR);
                            data.enforceNoDataAvail();
                            getLeIoCapability(_arg014, _arg113);
                            return true;
                        case 16:
                            int _arg015 = data.readInt();
                            AttributionSource _arg114 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            SynchronousResultReceiver _arg25 = (SynchronousResultReceiver) data.readTypedObject(SynchronousResultReceiver.CREATOR);
                            data.enforceNoDataAvail();
                            setLeIoCapability(_arg015, _arg114, _arg25);
                            return true;
                        case 17:
                            AttributionSource _arg016 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            SynchronousResultReceiver _arg115 = (SynchronousResultReceiver) data.readTypedObject(SynchronousResultReceiver.CREATOR);
                            data.enforceNoDataAvail();
                            getScanMode(_arg016, _arg115);
                            return true;
                        case 18:
                            int _arg017 = data.readInt();
                            AttributionSource _arg116 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            SynchronousResultReceiver _arg26 = (SynchronousResultReceiver) data.readTypedObject(SynchronousResultReceiver.CREATOR);
                            data.enforceNoDataAvail();
                            setScanMode(_arg017, _arg116, _arg26);
                            return true;
                        case 19:
                            AttributionSource _arg018 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            SynchronousResultReceiver _arg117 = (SynchronousResultReceiver) data.readTypedObject(SynchronousResultReceiver.CREATOR);
                            data.enforceNoDataAvail();
                            getDiscoverableTimeout(_arg018, _arg117);
                            return true;
                        case 20:
                            long _arg019 = data.readLong();
                            AttributionSource _arg118 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            SynchronousResultReceiver _arg27 = (SynchronousResultReceiver) data.readTypedObject(SynchronousResultReceiver.CREATOR);
                            data.enforceNoDataAvail();
                            setDiscoverableTimeout(_arg019, _arg118, _arg27);
                            return true;
                        case 21:
                            AttributionSource _arg020 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            SynchronousResultReceiver _arg119 = (SynchronousResultReceiver) data.readTypedObject(SynchronousResultReceiver.CREATOR);
                            data.enforceNoDataAvail();
                            startDiscovery(_arg020, _arg119);
                            return true;
                        case 22:
                            AttributionSource _arg021 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            SynchronousResultReceiver _arg120 = (SynchronousResultReceiver) data.readTypedObject(SynchronousResultReceiver.CREATOR);
                            data.enforceNoDataAvail();
                            cancelDiscovery(_arg021, _arg120);
                            return true;
                        case 23:
                            AttributionSource _arg022 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            SynchronousResultReceiver _arg121 = (SynchronousResultReceiver) data.readTypedObject(SynchronousResultReceiver.CREATOR);
                            data.enforceNoDataAvail();
                            isDiscovering(_arg022, _arg121);
                            return true;
                        case 24:
                            AttributionSource _arg023 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            SynchronousResultReceiver _arg122 = (SynchronousResultReceiver) data.readTypedObject(SynchronousResultReceiver.CREATOR);
                            data.enforceNoDataAvail();
                            getDiscoveryEndMillis(_arg023, _arg122);
                            return true;
                        case 25:
                            SynchronousResultReceiver _arg024 = (SynchronousResultReceiver) data.readTypedObject(SynchronousResultReceiver.CREATOR);
                            data.enforceNoDataAvail();
                            getAdapterConnectionState(_arg024);
                            return true;
                        case 26:
                            int _arg025 = data.readInt();
                            SynchronousResultReceiver _arg123 = (SynchronousResultReceiver) data.readTypedObject(SynchronousResultReceiver.CREATOR);
                            data.enforceNoDataAvail();
                            getProfileConnectionState(_arg025, _arg123);
                            return true;
                        case 27:
                            AttributionSource _arg026 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            SynchronousResultReceiver _arg124 = (SynchronousResultReceiver) data.readTypedObject(SynchronousResultReceiver.CREATOR);
                            data.enforceNoDataAvail();
                            getBondedDevices(_arg026, _arg124);
                            return true;
                        case 28:
                            BluetoothDevice _arg027 = (BluetoothDevice) data.readTypedObject(BluetoothDevice.CREATOR);
                            int _arg125 = data.readInt();
                            OobData _arg28 = (OobData) data.readTypedObject(OobData.CREATOR);
                            OobData _arg32 = (OobData) data.readTypedObject(OobData.CREATOR);
                            AttributionSource _arg4 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            SynchronousResultReceiver _arg5 = (SynchronousResultReceiver) data.readTypedObject(SynchronousResultReceiver.CREATOR);
                            data.enforceNoDataAvail();
                            createBond(_arg027, _arg125, _arg28, _arg32, _arg4, _arg5);
                            return true;
                        case 29:
                            BluetoothDevice _arg028 = (BluetoothDevice) data.readTypedObject(BluetoothDevice.CREATOR);
                            AttributionSource _arg126 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            SynchronousResultReceiver _arg29 = (SynchronousResultReceiver) data.readTypedObject(SynchronousResultReceiver.CREATOR);
                            data.enforceNoDataAvail();
                            cancelBondProcess(_arg028, _arg126, _arg29);
                            return true;
                        case 30:
                            BluetoothDevice _arg029 = (BluetoothDevice) data.readTypedObject(BluetoothDevice.CREATOR);
                            AttributionSource _arg127 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            SynchronousResultReceiver _arg210 = (SynchronousResultReceiver) data.readTypedObject(SynchronousResultReceiver.CREATOR);
                            data.enforceNoDataAvail();
                            removeBond(_arg029, _arg127, _arg210);
                            return true;
                        case 31:
                            BluetoothDevice _arg030 = (BluetoothDevice) data.readTypedObject(BluetoothDevice.CREATOR);
                            AttributionSource _arg128 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            SynchronousResultReceiver _arg211 = (SynchronousResultReceiver) data.readTypedObject(SynchronousResultReceiver.CREATOR);
                            data.enforceNoDataAvail();
                            getBondState(_arg030, _arg128, _arg211);
                            return true;
                        case 32:
                            BluetoothDevice _arg031 = (BluetoothDevice) data.readTypedObject(BluetoothDevice.CREATOR);
                            AttributionSource _arg129 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            SynchronousResultReceiver _arg212 = (SynchronousResultReceiver) data.readTypedObject(SynchronousResultReceiver.CREATOR);
                            data.enforceNoDataAvail();
                            isBondingInitiatedLocally(_arg031, _arg129, _arg212);
                            return true;
                        case 33:
                            AttributionSource _arg032 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            SynchronousResultReceiver _arg130 = (SynchronousResultReceiver) data.readTypedObject(SynchronousResultReceiver.CREATOR);
                            data.enforceNoDataAvail();
                            getSupportedProfiles(_arg032, _arg130);
                            return true;
                        case 34:
                            BluetoothDevice _arg033 = (BluetoothDevice) data.readTypedObject(BluetoothDevice.CREATOR);
                            data.enforceNoDataAvail();
                            int _result2 = getConnectionState(_arg033);
                            reply.writeNoException();
                            reply.writeInt(_result2);
                            return true;
                        case 35:
                            BluetoothDevice _arg034 = (BluetoothDevice) data.readTypedObject(BluetoothDevice.CREATOR);
                            AttributionSource _arg131 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            SynchronousResultReceiver _arg213 = (SynchronousResultReceiver) data.readTypedObject(SynchronousResultReceiver.CREATOR);
                            data.enforceNoDataAvail();
                            getConnectionStateWithAttribution(_arg034, _arg131, _arg213);
                            return true;
                        case 36:
                            BluetoothDevice _arg035 = (BluetoothDevice) data.readTypedObject(BluetoothDevice.CREATOR);
                            AttributionSource _arg132 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            SynchronousResultReceiver _arg214 = (SynchronousResultReceiver) data.readTypedObject(SynchronousResultReceiver.CREATOR);
                            data.enforceNoDataAvail();
                            getRemoteName(_arg035, _arg132, _arg214);
                            return true;
                        case 37:
                            BluetoothDevice _arg036 = (BluetoothDevice) data.readTypedObject(BluetoothDevice.CREATOR);
                            AttributionSource _arg133 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            SynchronousResultReceiver _arg215 = (SynchronousResultReceiver) data.readTypedObject(SynchronousResultReceiver.CREATOR);
                            data.enforceNoDataAvail();
                            getRemoteType(_arg036, _arg133, _arg215);
                            return true;
                        case 38:
                            BluetoothDevice _arg037 = (BluetoothDevice) data.readTypedObject(BluetoothDevice.CREATOR);
                            data.enforceNoDataAvail();
                            String _result3 = getRemoteAlias(_arg037);
                            reply.writeNoException();
                            reply.writeString(_result3);
                            return true;
                        case 39:
                            BluetoothDevice _arg038 = (BluetoothDevice) data.readTypedObject(BluetoothDevice.CREATOR);
                            AttributionSource _arg134 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            SynchronousResultReceiver _arg216 = (SynchronousResultReceiver) data.readTypedObject(SynchronousResultReceiver.CREATOR);
                            data.enforceNoDataAvail();
                            getRemoteAliasWithAttribution(_arg038, _arg134, _arg216);
                            return true;
                        case 40:
                            BluetoothDevice _arg039 = (BluetoothDevice) data.readTypedObject(BluetoothDevice.CREATOR);
                            String _arg135 = data.readString();
                            AttributionSource _arg217 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            SynchronousResultReceiver _arg33 = (SynchronousResultReceiver) data.readTypedObject(SynchronousResultReceiver.CREATOR);
                            data.enforceNoDataAvail();
                            setRemoteAlias(_arg039, _arg135, _arg217, _arg33);
                            return true;
                        case 41:
                            BluetoothDevice _arg040 = (BluetoothDevice) data.readTypedObject(BluetoothDevice.CREATOR);
                            AttributionSource _arg136 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            SynchronousResultReceiver _arg218 = (SynchronousResultReceiver) data.readTypedObject(SynchronousResultReceiver.CREATOR);
                            data.enforceNoDataAvail();
                            getRemoteClass(_arg040, _arg136, _arg218);
                            return true;
                        case 42:
                            BluetoothDevice _arg041 = (BluetoothDevice) data.readTypedObject(BluetoothDevice.CREATOR);
                            AttributionSource _arg137 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            SynchronousResultReceiver _arg219 = (SynchronousResultReceiver) data.readTypedObject(SynchronousResultReceiver.CREATOR);
                            data.enforceNoDataAvail();
                            getRemoteUuids(_arg041, _arg137, _arg219);
                            return true;
                        case 43:
                            BluetoothDevice _arg042 = (BluetoothDevice) data.readTypedObject(BluetoothDevice.CREATOR);
                            data.enforceNoDataAvail();
                            boolean _result4 = fetchRemoteUuids(_arg042);
                            reply.writeNoException();
                            reply.writeBoolean(_result4);
                            return true;
                        case 44:
                            BluetoothDevice _arg043 = (BluetoothDevice) data.readTypedObject(BluetoothDevice.CREATOR);
                            int _arg138 = data.readInt();
                            AttributionSource _arg220 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            SynchronousResultReceiver _arg34 = (SynchronousResultReceiver) data.readTypedObject(SynchronousResultReceiver.CREATOR);
                            data.enforceNoDataAvail();
                            fetchRemoteUuidsWithAttribution(_arg043, _arg138, _arg220, _arg34);
                            return true;
                        case 45:
                            BluetoothDevice _arg044 = (BluetoothDevice) data.readTypedObject(BluetoothDevice.CREATOR);
                            ParcelUuid _arg139 = (ParcelUuid) data.readTypedObject(ParcelUuid.CREATOR);
                            AttributionSource _arg221 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            SynchronousResultReceiver _arg35 = (SynchronousResultReceiver) data.readTypedObject(SynchronousResultReceiver.CREATOR);
                            data.enforceNoDataAvail();
                            sdpSearch(_arg044, _arg139, _arg221, _arg35);
                            return true;
                        case 46:
                            BluetoothDevice _arg045 = (BluetoothDevice) data.readTypedObject(BluetoothDevice.CREATOR);
                            AttributionSource _arg140 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            SynchronousResultReceiver _arg222 = (SynchronousResultReceiver) data.readTypedObject(SynchronousResultReceiver.CREATOR);
                            data.enforceNoDataAvail();
                            getBatteryLevel(_arg045, _arg140, _arg222);
                            return true;
                        case 47:
                            AttributionSource _arg046 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            SynchronousResultReceiver _arg141 = (SynchronousResultReceiver) data.readTypedObject(SynchronousResultReceiver.CREATOR);
                            data.enforceNoDataAvail();
                            getMaxConnectedAudioDevices(_arg046, _arg141);
                            return true;
                        case 48:
                            BluetoothDevice _arg047 = (BluetoothDevice) data.readTypedObject(BluetoothDevice.CREATOR);
                            boolean _arg142 = data.readBoolean();
                            int _arg223 = data.readInt();
                            byte[] _arg36 = data.createByteArray();
                            AttributionSource _arg42 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            SynchronousResultReceiver _arg52 = (SynchronousResultReceiver) data.readTypedObject(SynchronousResultReceiver.CREATOR);
                            data.enforceNoDataAvail();
                            setPin(_arg047, _arg142, _arg223, _arg36, _arg42, _arg52);
                            return true;
                        case 49:
                            BluetoothDevice _arg048 = (BluetoothDevice) data.readTypedObject(BluetoothDevice.CREATOR);
                            boolean _arg143 = data.readBoolean();
                            int _arg224 = data.readInt();
                            byte[] _arg37 = data.createByteArray();
                            AttributionSource _arg43 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            SynchronousResultReceiver _arg53 = (SynchronousResultReceiver) data.readTypedObject(SynchronousResultReceiver.CREATOR);
                            data.enforceNoDataAvail();
                            setPasskey(_arg048, _arg143, _arg224, _arg37, _arg43, _arg53);
                            return true;
                        case 50:
                            BluetoothDevice _arg049 = (BluetoothDevice) data.readTypedObject(BluetoothDevice.CREATOR);
                            boolean _arg144 = data.readBoolean();
                            AttributionSource _arg225 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            SynchronousResultReceiver _arg38 = (SynchronousResultReceiver) data.readTypedObject(SynchronousResultReceiver.CREATOR);
                            data.enforceNoDataAvail();
                            setPairingConfirmation(_arg049, _arg144, _arg225, _arg38);
                            return true;
                        case 51:
                            BluetoothDevice _arg050 = (BluetoothDevice) data.readTypedObject(BluetoothDevice.CREATOR);
                            AttributionSource _arg145 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            SynchronousResultReceiver _arg226 = (SynchronousResultReceiver) data.readTypedObject(SynchronousResultReceiver.CREATOR);
                            data.enforceNoDataAvail();
                            getPhonebookAccessPermission(_arg050, _arg145, _arg226);
                            return true;
                        case 52:
                            BluetoothDevice _arg051 = (BluetoothDevice) data.readTypedObject(BluetoothDevice.CREATOR);
                            boolean _arg146 = data.readBoolean();
                            AttributionSource _arg227 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            SynchronousResultReceiver _arg39 = (SynchronousResultReceiver) data.readTypedObject(SynchronousResultReceiver.CREATOR);
                            data.enforceNoDataAvail();
                            setSilenceMode(_arg051, _arg146, _arg227, _arg39);
                            return true;
                        case 53:
                            BluetoothDevice _arg052 = (BluetoothDevice) data.readTypedObject(BluetoothDevice.CREATOR);
                            AttributionSource _arg147 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            SynchronousResultReceiver _arg228 = (SynchronousResultReceiver) data.readTypedObject(SynchronousResultReceiver.CREATOR);
                            data.enforceNoDataAvail();
                            getSilenceMode(_arg052, _arg147, _arg228);
                            return true;
                        case 54:
                            BluetoothDevice _arg053 = (BluetoothDevice) data.readTypedObject(BluetoothDevice.CREATOR);
                            int _arg148 = data.readInt();
                            AttributionSource _arg229 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            SynchronousResultReceiver _arg310 = (SynchronousResultReceiver) data.readTypedObject(SynchronousResultReceiver.CREATOR);
                            data.enforceNoDataAvail();
                            setPhonebookAccessPermission(_arg053, _arg148, _arg229, _arg310);
                            return true;
                        case 55:
                            BluetoothDevice _arg054 = (BluetoothDevice) data.readTypedObject(BluetoothDevice.CREATOR);
                            AttributionSource _arg149 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            SynchronousResultReceiver _arg230 = (SynchronousResultReceiver) data.readTypedObject(SynchronousResultReceiver.CREATOR);
                            data.enforceNoDataAvail();
                            getMessageAccessPermission(_arg054, _arg149, _arg230);
                            return true;
                        case 56:
                            BluetoothDevice _arg055 = (BluetoothDevice) data.readTypedObject(BluetoothDevice.CREATOR);
                            int _arg150 = data.readInt();
                            AttributionSource _arg231 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            SynchronousResultReceiver _arg311 = (SynchronousResultReceiver) data.readTypedObject(SynchronousResultReceiver.CREATOR);
                            data.enforceNoDataAvail();
                            setMessageAccessPermission(_arg055, _arg150, _arg231, _arg311);
                            return true;
                        case 57:
                            BluetoothDevice _arg056 = (BluetoothDevice) data.readTypedObject(BluetoothDevice.CREATOR);
                            AttributionSource _arg151 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            SynchronousResultReceiver _arg232 = (SynchronousResultReceiver) data.readTypedObject(SynchronousResultReceiver.CREATOR);
                            data.enforceNoDataAvail();
                            getSimAccessPermission(_arg056, _arg151, _arg232);
                            return true;
                        case 58:
                            BluetoothDevice _arg057 = (BluetoothDevice) data.readTypedObject(BluetoothDevice.CREATOR);
                            int _arg152 = data.readInt();
                            AttributionSource _arg233 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            SynchronousResultReceiver _arg312 = (SynchronousResultReceiver) data.readTypedObject(SynchronousResultReceiver.CREATOR);
                            data.enforceNoDataAvail();
                            setSimAccessPermission(_arg057, _arg152, _arg233, _arg312);
                            return true;
                        case 59:
                            IBluetoothCallback _arg058 = IBluetoothCallback.Stub.asInterface(data.readStrongBinder());
                            AttributionSource _arg153 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            SynchronousResultReceiver _arg234 = (SynchronousResultReceiver) data.readTypedObject(SynchronousResultReceiver.CREATOR);
                            data.enforceNoDataAvail();
                            registerCallback(_arg058, _arg153, _arg234);
                            return true;
                        case 60:
                            IBluetoothCallback _arg059 = IBluetoothCallback.Stub.asInterface(data.readStrongBinder());
                            AttributionSource _arg154 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            SynchronousResultReceiver _arg235 = (SynchronousResultReceiver) data.readTypedObject(SynchronousResultReceiver.CREATOR);
                            data.enforceNoDataAvail();
                            unregisterCallback(_arg059, _arg154, _arg235);
                            return true;
                        case 61:
                            IBluetoothSocketManager _result5 = getSocketManager();
                            reply.writeNoException();
                            reply.writeStrongInterface(_result5);
                            return true;
                        case 62:
                            AttributionSource _arg060 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            SynchronousResultReceiver _arg155 = (SynchronousResultReceiver) data.readTypedObject(SynchronousResultReceiver.CREATOR);
                            data.enforceNoDataAvail();
                            factoryReset(_arg060, _arg155);
                            return true;
                        case 63:
                            SynchronousResultReceiver _arg061 = (SynchronousResultReceiver) data.readTypedObject(SynchronousResultReceiver.CREATOR);
                            data.enforceNoDataAvail();
                            isMultiAdvertisementSupported(_arg061);
                            return true;
                        case 64:
                            SynchronousResultReceiver _arg062 = (SynchronousResultReceiver) data.readTypedObject(SynchronousResultReceiver.CREATOR);
                            data.enforceNoDataAvail();
                            isOffloadedFilteringSupported(_arg062);
                            return true;
                        case 65:
                            SynchronousResultReceiver _arg063 = (SynchronousResultReceiver) data.readTypedObject(SynchronousResultReceiver.CREATOR);
                            data.enforceNoDataAvail();
                            isOffloadedScanBatchingSupported(_arg063);
                            return true;
                        case 66:
                            SynchronousResultReceiver _arg064 = (SynchronousResultReceiver) data.readTypedObject(SynchronousResultReceiver.CREATOR);
                            data.enforceNoDataAvail();
                            isActivityAndEnergyReportingSupported(_arg064);
                            return true;
                        case 67:
                            SynchronousResultReceiver _arg065 = (SynchronousResultReceiver) data.readTypedObject(SynchronousResultReceiver.CREATOR);
                            data.enforceNoDataAvail();
                            isLe2MPhySupported(_arg065);
                            return true;
                        case 68:
                            SynchronousResultReceiver _arg066 = (SynchronousResultReceiver) data.readTypedObject(SynchronousResultReceiver.CREATOR);
                            data.enforceNoDataAvail();
                            isLeCodedPhySupported(_arg066);
                            return true;
                        case 69:
                            SynchronousResultReceiver _arg067 = (SynchronousResultReceiver) data.readTypedObject(SynchronousResultReceiver.CREATOR);
                            data.enforceNoDataAvail();
                            isLeExtendedAdvertisingSupported(_arg067);
                            return true;
                        case 70:
                            SynchronousResultReceiver _arg068 = (SynchronousResultReceiver) data.readTypedObject(SynchronousResultReceiver.CREATOR);
                            data.enforceNoDataAvail();
                            isLePeriodicAdvertisingSupported(_arg068);
                            return true;
                        case 71:
                            SynchronousResultReceiver _arg069 = (SynchronousResultReceiver) data.readTypedObject(SynchronousResultReceiver.CREATOR);
                            data.enforceNoDataAvail();
                            isLeAudioSupported(_arg069);
                            return true;
                        case 72:
                            SynchronousResultReceiver _arg070 = (SynchronousResultReceiver) data.readTypedObject(SynchronousResultReceiver.CREATOR);
                            data.enforceNoDataAvail();
                            isLeAudioBroadcastSourceSupported(_arg070);
                            return true;
                        case 73:
                            SynchronousResultReceiver _arg071 = (SynchronousResultReceiver) data.readTypedObject(SynchronousResultReceiver.CREATOR);
                            data.enforceNoDataAvail();
                            isLeAudioBroadcastAssistantSupported(_arg071);
                            return true;
                        case 74:
                            SynchronousResultReceiver _arg072 = (SynchronousResultReceiver) data.readTypedObject(SynchronousResultReceiver.CREATOR);
                            data.enforceNoDataAvail();
                            getLeMaximumAdvertisingDataLength(_arg072);
                            return true;
                        case 75:
                            AttributionSource _arg073 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            SynchronousResultReceiver _arg156 = (SynchronousResultReceiver) data.readTypedObject(SynchronousResultReceiver.CREATOR);
                            data.enforceNoDataAvail();
                            reportActivityInfo(_arg073, _arg156);
                            return true;
                        case 76:
                            IBluetoothMetadataListener _arg074 = IBluetoothMetadataListener.Stub.asInterface(data.readStrongBinder());
                            BluetoothDevice _arg157 = (BluetoothDevice) data.readTypedObject(BluetoothDevice.CREATOR);
                            AttributionSource _arg236 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            SynchronousResultReceiver _arg313 = (SynchronousResultReceiver) data.readTypedObject(SynchronousResultReceiver.CREATOR);
                            data.enforceNoDataAvail();
                            registerMetadataListener(_arg074, _arg157, _arg236, _arg313);
                            return true;
                        case 77:
                            BluetoothDevice _arg075 = (BluetoothDevice) data.readTypedObject(BluetoothDevice.CREATOR);
                            AttributionSource _arg158 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            SynchronousResultReceiver _arg237 = (SynchronousResultReceiver) data.readTypedObject(SynchronousResultReceiver.CREATOR);
                            data.enforceNoDataAvail();
                            unregisterMetadataListener(_arg075, _arg158, _arg237);
                            return true;
                        case 78:
                            BluetoothDevice _arg076 = (BluetoothDevice) data.readTypedObject(BluetoothDevice.CREATOR);
                            int _arg159 = data.readInt();
                            byte[] _arg238 = data.createByteArray();
                            AttributionSource _arg314 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            SynchronousResultReceiver _arg44 = (SynchronousResultReceiver) data.readTypedObject(SynchronousResultReceiver.CREATOR);
                            data.enforceNoDataAvail();
                            setMetadata(_arg076, _arg159, _arg238, _arg314, _arg44);
                            return true;
                        case 79:
                            BluetoothDevice _arg077 = (BluetoothDevice) data.readTypedObject(BluetoothDevice.CREATOR);
                            int _arg160 = data.readInt();
                            AttributionSource _arg239 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            SynchronousResultReceiver _arg315 = (SynchronousResultReceiver) data.readTypedObject(SynchronousResultReceiver.CREATOR);
                            data.enforceNoDataAvail();
                            getMetadata(_arg077, _arg160, _arg239, _arg315);
                            return true;
                        case 80:
                            IBluetoothActivityEnergyInfoListener _arg078 = IBluetoothActivityEnergyInfoListener.Stub.asInterface(data.readStrongBinder());
                            AttributionSource _arg161 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            data.enforceNoDataAvail();
                            requestActivityInfo(_arg078, _arg161);
                            return true;
                        case 81:
                            AttributionSource _arg079 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            SynchronousResultReceiver _arg162 = (SynchronousResultReceiver) data.readTypedObject(SynchronousResultReceiver.CREATOR);
                            data.enforceNoDataAvail();
                            onLeServiceUp(_arg079, _arg162);
                            return true;
                        case 82:
                            AttributionSource _arg080 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            SynchronousResultReceiver _arg163 = (SynchronousResultReceiver) data.readTypedObject(SynchronousResultReceiver.CREATOR);
                            data.enforceNoDataAvail();
                            onBrEdrDown(_arg080, _arg163);
                            return true;
                        case 83:
                            BluetoothDevice _arg081 = (BluetoothDevice) data.readTypedObject(BluetoothDevice.CREATOR);
                            AttributionSource _arg164 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            SynchronousResultReceiver _arg240 = (SynchronousResultReceiver) data.readTypedObject(SynchronousResultReceiver.CREATOR);
                            data.enforceNoDataAvail();
                            connectAllEnabledProfiles(_arg081, _arg164, _arg240);
                            return true;
                        case 84:
                            BluetoothDevice _arg082 = (BluetoothDevice) data.readTypedObject(BluetoothDevice.CREATOR);
                            AttributionSource _arg165 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            SynchronousResultReceiver _arg241 = (SynchronousResultReceiver) data.readTypedObject(SynchronousResultReceiver.CREATOR);
                            data.enforceNoDataAvail();
                            disconnectAllEnabledProfiles(_arg082, _arg165, _arg241);
                            return true;
                        case 85:
                            BluetoothDevice _arg083 = (BluetoothDevice) data.readTypedObject(BluetoothDevice.CREATOR);
                            int _arg166 = data.readInt();
                            AttributionSource _arg242 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            SynchronousResultReceiver _arg316 = (SynchronousResultReceiver) data.readTypedObject(SynchronousResultReceiver.CREATOR);
                            data.enforceNoDataAvail();
                            setActiveDevice(_arg083, _arg166, _arg242, _arg316);
                            return true;
                        case 86:
                            int _arg084 = data.readInt();
                            AttributionSource _arg167 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            SynchronousResultReceiver _arg243 = (SynchronousResultReceiver) data.readTypedObject(SynchronousResultReceiver.CREATOR);
                            data.enforceNoDataAvail();
                            getActiveDevices(_arg084, _arg167, _arg243);
                            return true;
                        case 87:
                            AttributionSource _arg085 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            SynchronousResultReceiver _arg168 = (SynchronousResultReceiver) data.readTypedObject(SynchronousResultReceiver.CREATOR);
                            data.enforceNoDataAvail();
                            getMostRecentlyConnectedDevices(_arg085, _arg168);
                            return true;
                        case 88:
                            int _arg086 = data.readInt();
                            AttributionSource _arg169 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            SynchronousResultReceiver _arg244 = (SynchronousResultReceiver) data.readTypedObject(SynchronousResultReceiver.CREATOR);
                            data.enforceNoDataAvail();
                            removeActiveDevice(_arg086, _arg169, _arg244);
                            return true;
                        case 89:
                            IBluetoothConnectionCallback _arg087 = IBluetoothConnectionCallback.Stub.asInterface(data.readStrongBinder());
                            AttributionSource _arg170 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            SynchronousResultReceiver _arg245 = (SynchronousResultReceiver) data.readTypedObject(SynchronousResultReceiver.CREATOR);
                            data.enforceNoDataAvail();
                            registerBluetoothConnectionCallback(_arg087, _arg170, _arg245);
                            return true;
                        case 90:
                            IBluetoothConnectionCallback _arg088 = IBluetoothConnectionCallback.Stub.asInterface(data.readStrongBinder());
                            AttributionSource _arg171 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            SynchronousResultReceiver _arg246 = (SynchronousResultReceiver) data.readTypedObject(SynchronousResultReceiver.CREATOR);
                            data.enforceNoDataAvail();
                            unregisterBluetoothConnectionCallback(_arg088, _arg171, _arg246);
                            return true;
                        case 91:
                            BluetoothDevice _arg089 = (BluetoothDevice) data.readTypedObject(BluetoothDevice.CREATOR);
                            AttributionSource _arg172 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            SynchronousResultReceiver _arg247 = (SynchronousResultReceiver) data.readTypedObject(SynchronousResultReceiver.CREATOR);
                            data.enforceNoDataAvail();
                            canBondWithoutDialog(_arg089, _arg172, _arg247);
                            return true;
                        case 92:
                            int _arg090 = data.readInt();
                            IBluetoothOobDataCallback _arg173 = IBluetoothOobDataCallback.Stub.asInterface(data.readStrongBinder());
                            AttributionSource _arg248 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            SynchronousResultReceiver _arg317 = (SynchronousResultReceiver) data.readTypedObject(SynchronousResultReceiver.CREATOR);
                            data.enforceNoDataAvail();
                            generateLocalOobData(_arg090, _arg173, _arg248, _arg317);
                            return true;
                        case 93:
                            boolean _arg091 = data.readBoolean();
                            BluetoothDevice _arg174 = (BluetoothDevice) data.readTypedObject(BluetoothDevice.CREATOR);
                            SynchronousResultReceiver _arg249 = (SynchronousResultReceiver) data.readTypedObject(SynchronousResultReceiver.CREATOR);
                            data.enforceNoDataAvail();
                            allowLowLatencyAudio(_arg091, _arg174, _arg249);
                            return true;
                        case 94:
                            BluetoothDevice _arg092 = (BluetoothDevice) data.readTypedObject(BluetoothDevice.CREATOR);
                            boolean _arg175 = data.readBoolean();
                            AttributionSource _arg250 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            data.enforceNoDataAvail();
                            setBondingInitiatedLocally(_arg092, _arg175, _arg250);
                            reply.writeNoException();
                            return true;
                        case 95:
                            BluetoothDevice _arg093 = (BluetoothDevice) data.readTypedObject(BluetoothDevice.CREATOR);
                            AttributionSource _arg176 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            data.enforceNoDataAvail();
                            int _result6 = getDeviceType(_arg093, _arg176);
                            reply.writeNoException();
                            reply.writeInt(_result6);
                            return true;
                        case 96:
                            BluetoothDevice _arg094 = (BluetoothDevice) data.readTypedObject(BluetoothDevice.CREATOR);
                            AttributionSource _arg177 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            data.enforceNoDataAvail();
                            boolean _result7 = isTwsPlusDevice(_arg094, _arg177);
                            reply.writeNoException();
                            reply.writeBoolean(_result7);
                            return true;
                        case 97:
                            BluetoothDevice _arg095 = (BluetoothDevice) data.readTypedObject(BluetoothDevice.CREATOR);
                            AttributionSource _arg178 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            data.enforceNoDataAvail();
                            String _result8 = getTwsPlusPeerAddress(_arg095, _arg178);
                            reply.writeNoException();
                            reply.writeString(_result8);
                            return true;
                        case 98:
                            boolean _arg096 = data.readBoolean();
                            AttributionSource _arg179 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            data.enforceNoDataAvail();
                            updateQuietModeStatus(_arg096, _arg179);
                            reply.writeNoException();
                            return true;
                        case 99:
                            int _arg097 = data.readInt();
                            int _arg180 = data.readInt();
                            int _arg251 = data.readInt();
                            byte[] _arg318 = data.createByteArray();
                            int _arg45 = data.readInt();
                            data.enforceNoDataAvail();
                            int _result9 = setSocketOpt(_arg097, _arg180, _arg251, _arg318, _arg45);
                            reply.writeNoException();
                            reply.writeInt(_result9);
                            return true;
                        case 100:
                            int _arg098 = data.readInt();
                            int _arg181 = data.readInt();
                            int _arg252 = data.readInt();
                            int _arg3_length = data.readInt();
                            if (_arg3_length < 0) {
                                _arg3 = null;
                            } else {
                                _arg3 = new byte[_arg3_length];
                            }
                            data.enforceNoDataAvail();
                            int _result10 = getSocketOpt(_arg098, _arg181, _arg252, _arg3);
                            reply.writeNoException();
                            reply.writeInt(_result10);
                            reply.writeByteArray(_arg3);
                            return true;
                        case 101:
                            AttributionSource _arg099 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            data.enforceNoDataAvail();
                            boolean _result11 = isBroadcastActive(_arg099);
                            reply.writeNoException();
                            reply.writeBoolean(_result11);
                            return true;
                        case 102:
                            String _arg0100 = data.readString();
                            ParcelUuid _arg182 = (ParcelUuid) data.readTypedObject(ParcelUuid.CREATOR);
                            PendingIntent _arg253 = (PendingIntent) data.readTypedObject(PendingIntent.CREATOR);
                            AttributionSource _arg319 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            SynchronousResultReceiver _arg46 = (SynchronousResultReceiver) data.readTypedObject(SynchronousResultReceiver.CREATOR);
                            data.enforceNoDataAvail();
                            startRfcommListener(_arg0100, _arg182, _arg253, _arg319, _arg46);
                            return true;
                        case 103:
                            ParcelUuid _arg0101 = (ParcelUuid) data.readTypedObject(ParcelUuid.CREATOR);
                            AttributionSource _arg183 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            SynchronousResultReceiver _arg254 = (SynchronousResultReceiver) data.readTypedObject(SynchronousResultReceiver.CREATOR);
                            data.enforceNoDataAvail();
                            stopRfcommListener(_arg0101, _arg183, _arg254);
                            return true;
                        case 104:
                            ParcelUuid _arg0102 = (ParcelUuid) data.readTypedObject(ParcelUuid.CREATOR);
                            AttributionSource _arg184 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            SynchronousResultReceiver _arg255 = (SynchronousResultReceiver) data.readTypedObject(SynchronousResultReceiver.CREATOR);
                            data.enforceNoDataAvail();
                            retrievePendingSocketForServiceRecord(_arg0102, _arg184, _arg255);
                            return true;
                        case 105:
                            int _arg0103 = data.readInt();
                            AttributionSource _arg185 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            data.enforceNoDataAvail();
                            setForegroundUserId(_arg0103, _arg185);
                            return true;
                        default:
                            return super.onTransact(code, data, reply, flags);
                    }
            }
        }

        private static class Proxy implements IBluetooth {
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

            @Override // android.bluetooth.IBluetooth
            public void getState(SynchronousResultReceiver receiver) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeTypedObject(receiver, 0);
                    this.mRemote.transact(1, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetooth
            public void enable(boolean quietMode, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeBoolean(quietMode);
                    _data.writeTypedObject(attributionSource, 0);
                    _data.writeTypedObject(receiver, 0);
                    this.mRemote.transact(2, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetooth
            public void disable(AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeTypedObject(attributionSource, 0);
                    _data.writeTypedObject(receiver, 0);
                    this.mRemote.transact(3, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetooth
            public String getAddress() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(4, _data, _reply, 0);
                    _reply.readException();
                    String _result = _reply.readString();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetooth
            public void getAddressWithAttribution(AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeTypedObject(attributionSource, 0);
                    _data.writeTypedObject(receiver, 0);
                    this.mRemote.transact(5, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetooth
            public void getUuids(AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeTypedObject(attributionSource, 0);
                    _data.writeTypedObject(receiver, 0);
                    this.mRemote.transact(6, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetooth
            public void setName(String name, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(name);
                    _data.writeTypedObject(attributionSource, 0);
                    _data.writeTypedObject(receiver, 0);
                    this.mRemote.transact(7, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetooth
            public void getIdentityAddress(String address, SynchronousResultReceiver receiver) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(address);
                    _data.writeTypedObject(receiver, 0);
                    this.mRemote.transact(8, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetooth
            public void getName(AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeTypedObject(attributionSource, 0);
                    _data.writeTypedObject(receiver, 0);
                    this.mRemote.transact(9, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetooth
            public void getNameLengthForAdvertise(AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeTypedObject(attributionSource, 0);
                    _data.writeTypedObject(receiver, 0);
                    this.mRemote.transact(10, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetooth
            public void getBluetoothClass(AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeTypedObject(attributionSource, 0);
                    _data.writeTypedObject(receiver, 0);
                    this.mRemote.transact(11, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetooth
            public void setBluetoothClass(BluetoothClass bluetoothClass, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeTypedObject(bluetoothClass, 0);
                    _data.writeTypedObject(attributionSource, 0);
                    _data.writeTypedObject(receiver, 0);
                    this.mRemote.transact(12, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetooth
            public void getIoCapability(AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeTypedObject(attributionSource, 0);
                    _data.writeTypedObject(receiver, 0);
                    this.mRemote.transact(13, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetooth
            public void setIoCapability(int capability, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(capability);
                    _data.writeTypedObject(attributionSource, 0);
                    _data.writeTypedObject(receiver, 0);
                    this.mRemote.transact(14, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetooth
            public void getLeIoCapability(AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeTypedObject(attributionSource, 0);
                    _data.writeTypedObject(receiver, 0);
                    this.mRemote.transact(15, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetooth
            public void setLeIoCapability(int capability, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(capability);
                    _data.writeTypedObject(attributionSource, 0);
                    _data.writeTypedObject(receiver, 0);
                    this.mRemote.transact(16, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetooth
            public void getScanMode(AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeTypedObject(attributionSource, 0);
                    _data.writeTypedObject(receiver, 0);
                    this.mRemote.transact(17, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetooth
            public void setScanMode(int mode, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(mode);
                    _data.writeTypedObject(attributionSource, 0);
                    _data.writeTypedObject(receiver, 0);
                    this.mRemote.transact(18, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetooth
            public void getDiscoverableTimeout(AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeTypedObject(attributionSource, 0);
                    _data.writeTypedObject(receiver, 0);
                    this.mRemote.transact(19, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetooth
            public void setDiscoverableTimeout(long timeout, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeLong(timeout);
                    _data.writeTypedObject(attributionSource, 0);
                    _data.writeTypedObject(receiver, 0);
                    this.mRemote.transact(20, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetooth
            public void startDiscovery(AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeTypedObject(attributionSource, 0);
                    _data.writeTypedObject(receiver, 0);
                    this.mRemote.transact(21, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetooth
            public void cancelDiscovery(AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeTypedObject(attributionSource, 0);
                    _data.writeTypedObject(receiver, 0);
                    this.mRemote.transact(22, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetooth
            public void isDiscovering(AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeTypedObject(attributionSource, 0);
                    _data.writeTypedObject(receiver, 0);
                    this.mRemote.transact(23, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetooth
            public void getDiscoveryEndMillis(AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeTypedObject(attributionSource, 0);
                    _data.writeTypedObject(receiver, 0);
                    this.mRemote.transact(24, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetooth
            public void getAdapterConnectionState(SynchronousResultReceiver receiver) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeTypedObject(receiver, 0);
                    this.mRemote.transact(25, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetooth
            public void getProfileConnectionState(int profile, SynchronousResultReceiver receiver) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(profile);
                    _data.writeTypedObject(receiver, 0);
                    this.mRemote.transact(26, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetooth
            public void getBondedDevices(AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeTypedObject(attributionSource, 0);
                    _data.writeTypedObject(receiver, 0);
                    this.mRemote.transact(27, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetooth
            public void createBond(BluetoothDevice device, int transport, OobData p192Data, OobData p256Data, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeTypedObject(device, 0);
                    _data.writeInt(transport);
                    _data.writeTypedObject(p192Data, 0);
                    _data.writeTypedObject(p256Data, 0);
                    _data.writeTypedObject(attributionSource, 0);
                    _data.writeTypedObject(receiver, 0);
                    this.mRemote.transact(28, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetooth
            public void cancelBondProcess(BluetoothDevice device, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeTypedObject(device, 0);
                    _data.writeTypedObject(attributionSource, 0);
                    _data.writeTypedObject(receiver, 0);
                    this.mRemote.transact(29, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetooth
            public void removeBond(BluetoothDevice device, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeTypedObject(device, 0);
                    _data.writeTypedObject(attributionSource, 0);
                    _data.writeTypedObject(receiver, 0);
                    this.mRemote.transact(30, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetooth
            public void getBondState(BluetoothDevice device, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeTypedObject(device, 0);
                    _data.writeTypedObject(attributionSource, 0);
                    _data.writeTypedObject(receiver, 0);
                    this.mRemote.transact(31, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetooth
            public void isBondingInitiatedLocally(BluetoothDevice device, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeTypedObject(device, 0);
                    _data.writeTypedObject(attributionSource, 0);
                    _data.writeTypedObject(receiver, 0);
                    this.mRemote.transact(32, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetooth
            public void getSupportedProfiles(AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeTypedObject(attributionSource, 0);
                    _data.writeTypedObject(receiver, 0);
                    this.mRemote.transact(33, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetooth
            public int getConnectionState(BluetoothDevice device) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeTypedObject(device, 0);
                    this.mRemote.transact(34, _data, _reply, 0);
                    _reply.readException();
                    int _result = _reply.readInt();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetooth
            public void getConnectionStateWithAttribution(BluetoothDevice device, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeTypedObject(device, 0);
                    _data.writeTypedObject(attributionSource, 0);
                    _data.writeTypedObject(receiver, 0);
                    this.mRemote.transact(35, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetooth
            public void getRemoteName(BluetoothDevice device, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeTypedObject(device, 0);
                    _data.writeTypedObject(attributionSource, 0);
                    _data.writeTypedObject(receiver, 0);
                    this.mRemote.transact(36, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetooth
            public void getRemoteType(BluetoothDevice device, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeTypedObject(device, 0);
                    _data.writeTypedObject(attributionSource, 0);
                    _data.writeTypedObject(receiver, 0);
                    this.mRemote.transact(37, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetooth
            public String getRemoteAlias(BluetoothDevice device) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeTypedObject(device, 0);
                    this.mRemote.transact(38, _data, _reply, 0);
                    _reply.readException();
                    String _result = _reply.readString();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetooth
            public void getRemoteAliasWithAttribution(BluetoothDevice device, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeTypedObject(device, 0);
                    _data.writeTypedObject(attributionSource, 0);
                    _data.writeTypedObject(receiver, 0);
                    this.mRemote.transact(39, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetooth
            public void setRemoteAlias(BluetoothDevice device, String name, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeTypedObject(device, 0);
                    _data.writeString(name);
                    _data.writeTypedObject(attributionSource, 0);
                    _data.writeTypedObject(receiver, 0);
                    this.mRemote.transact(40, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetooth
            public void getRemoteClass(BluetoothDevice device, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeTypedObject(device, 0);
                    _data.writeTypedObject(attributionSource, 0);
                    _data.writeTypedObject(receiver, 0);
                    this.mRemote.transact(41, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetooth
            public void getRemoteUuids(BluetoothDevice device, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeTypedObject(device, 0);
                    _data.writeTypedObject(attributionSource, 0);
                    _data.writeTypedObject(receiver, 0);
                    this.mRemote.transact(42, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetooth
            public boolean fetchRemoteUuids(BluetoothDevice device) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeTypedObject(device, 0);
                    this.mRemote.transact(43, _data, _reply, 0);
                    _reply.readException();
                    boolean _result = _reply.readBoolean();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetooth
            public void fetchRemoteUuidsWithAttribution(BluetoothDevice device, int transport, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeTypedObject(device, 0);
                    _data.writeInt(transport);
                    _data.writeTypedObject(attributionSource, 0);
                    _data.writeTypedObject(receiver, 0);
                    this.mRemote.transact(44, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetooth
            public void sdpSearch(BluetoothDevice device, ParcelUuid uuid, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeTypedObject(device, 0);
                    _data.writeTypedObject(uuid, 0);
                    _data.writeTypedObject(attributionSource, 0);
                    _data.writeTypedObject(receiver, 0);
                    this.mRemote.transact(45, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetooth
            public void getBatteryLevel(BluetoothDevice device, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeTypedObject(device, 0);
                    _data.writeTypedObject(attributionSource, 0);
                    _data.writeTypedObject(receiver, 0);
                    this.mRemote.transact(46, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetooth
            public void getMaxConnectedAudioDevices(AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeTypedObject(attributionSource, 0);
                    _data.writeTypedObject(receiver, 0);
                    this.mRemote.transact(47, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetooth
            public void setPin(BluetoothDevice device, boolean accept, int len, byte[] pinCode, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeTypedObject(device, 0);
                    _data.writeBoolean(accept);
                    _data.writeInt(len);
                    _data.writeByteArray(pinCode);
                    _data.writeTypedObject(attributionSource, 0);
                    _data.writeTypedObject(receiver, 0);
                    this.mRemote.transact(48, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetooth
            public void setPasskey(BluetoothDevice device, boolean accept, int len, byte[] passkey, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeTypedObject(device, 0);
                    _data.writeBoolean(accept);
                    _data.writeInt(len);
                    _data.writeByteArray(passkey);
                    _data.writeTypedObject(attributionSource, 0);
                    _data.writeTypedObject(receiver, 0);
                    this.mRemote.transact(49, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetooth
            public void setPairingConfirmation(BluetoothDevice device, boolean accept, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeTypedObject(device, 0);
                    _data.writeBoolean(accept);
                    _data.writeTypedObject(attributionSource, 0);
                    _data.writeTypedObject(receiver, 0);
                    this.mRemote.transact(50, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetooth
            public void getPhonebookAccessPermission(BluetoothDevice device, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeTypedObject(device, 0);
                    _data.writeTypedObject(attributionSource, 0);
                    _data.writeTypedObject(receiver, 0);
                    this.mRemote.transact(51, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetooth
            public void setSilenceMode(BluetoothDevice device, boolean silence, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeTypedObject(device, 0);
                    _data.writeBoolean(silence);
                    _data.writeTypedObject(attributionSource, 0);
                    _data.writeTypedObject(receiver, 0);
                    this.mRemote.transact(52, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetooth
            public void getSilenceMode(BluetoothDevice device, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeTypedObject(device, 0);
                    _data.writeTypedObject(attributionSource, 0);
                    _data.writeTypedObject(receiver, 0);
                    this.mRemote.transact(53, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetooth
            public void setPhonebookAccessPermission(BluetoothDevice device, int value, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeTypedObject(device, 0);
                    _data.writeInt(value);
                    _data.writeTypedObject(attributionSource, 0);
                    _data.writeTypedObject(receiver, 0);
                    this.mRemote.transact(54, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetooth
            public void getMessageAccessPermission(BluetoothDevice device, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeTypedObject(device, 0);
                    _data.writeTypedObject(attributionSource, 0);
                    _data.writeTypedObject(receiver, 0);
                    this.mRemote.transact(55, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetooth
            public void setMessageAccessPermission(BluetoothDevice device, int value, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeTypedObject(device, 0);
                    _data.writeInt(value);
                    _data.writeTypedObject(attributionSource, 0);
                    _data.writeTypedObject(receiver, 0);
                    this.mRemote.transact(56, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetooth
            public void getSimAccessPermission(BluetoothDevice device, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeTypedObject(device, 0);
                    _data.writeTypedObject(attributionSource, 0);
                    _data.writeTypedObject(receiver, 0);
                    this.mRemote.transact(57, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetooth
            public void setSimAccessPermission(BluetoothDevice device, int value, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeTypedObject(device, 0);
                    _data.writeInt(value);
                    _data.writeTypedObject(attributionSource, 0);
                    _data.writeTypedObject(receiver, 0);
                    this.mRemote.transact(58, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetooth
            public void registerCallback(IBluetoothCallback callback, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeStrongInterface(callback);
                    _data.writeTypedObject(attributionSource, 0);
                    _data.writeTypedObject(receiver, 0);
                    this.mRemote.transact(59, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetooth
            public void unregisterCallback(IBluetoothCallback callback, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeStrongInterface(callback);
                    _data.writeTypedObject(attributionSource, 0);
                    _data.writeTypedObject(receiver, 0);
                    this.mRemote.transact(60, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetooth
            public IBluetoothSocketManager getSocketManager() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(61, _data, _reply, 0);
                    _reply.readException();
                    IBluetoothSocketManager _result = IBluetoothSocketManager.Stub.asInterface(_reply.readStrongBinder());
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetooth
            public void factoryReset(AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeTypedObject(attributionSource, 0);
                    _data.writeTypedObject(receiver, 0);
                    this.mRemote.transact(62, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetooth
            public void isMultiAdvertisementSupported(SynchronousResultReceiver receiver) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeTypedObject(receiver, 0);
                    this.mRemote.transact(63, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetooth
            public void isOffloadedFilteringSupported(SynchronousResultReceiver receiver) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeTypedObject(receiver, 0);
                    this.mRemote.transact(64, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetooth
            public void isOffloadedScanBatchingSupported(SynchronousResultReceiver receiver) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeTypedObject(receiver, 0);
                    this.mRemote.transact(65, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetooth
            public void isActivityAndEnergyReportingSupported(SynchronousResultReceiver receiver) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeTypedObject(receiver, 0);
                    this.mRemote.transact(66, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetooth
            public void isLe2MPhySupported(SynchronousResultReceiver receiver) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeTypedObject(receiver, 0);
                    this.mRemote.transact(67, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetooth
            public void isLeCodedPhySupported(SynchronousResultReceiver receiver) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeTypedObject(receiver, 0);
                    this.mRemote.transact(68, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetooth
            public void isLeExtendedAdvertisingSupported(SynchronousResultReceiver receiver) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeTypedObject(receiver, 0);
                    this.mRemote.transact(69, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetooth
            public void isLePeriodicAdvertisingSupported(SynchronousResultReceiver receiver) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeTypedObject(receiver, 0);
                    this.mRemote.transact(70, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetooth
            public void isLeAudioSupported(SynchronousResultReceiver receiver) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeTypedObject(receiver, 0);
                    this.mRemote.transact(71, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetooth
            public void isLeAudioBroadcastSourceSupported(SynchronousResultReceiver receiver) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeTypedObject(receiver, 0);
                    this.mRemote.transact(72, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetooth
            public void isLeAudioBroadcastAssistantSupported(SynchronousResultReceiver receiver) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeTypedObject(receiver, 0);
                    this.mRemote.transact(73, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetooth
            public void getLeMaximumAdvertisingDataLength(SynchronousResultReceiver receiver) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeTypedObject(receiver, 0);
                    this.mRemote.transact(74, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetooth
            public void reportActivityInfo(AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeTypedObject(attributionSource, 0);
                    _data.writeTypedObject(receiver, 0);
                    this.mRemote.transact(75, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetooth
            public void registerMetadataListener(IBluetoothMetadataListener listener, BluetoothDevice device, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeStrongInterface(listener);
                    _data.writeTypedObject(device, 0);
                    _data.writeTypedObject(attributionSource, 0);
                    _data.writeTypedObject(receiver, 0);
                    this.mRemote.transact(76, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetooth
            public void unregisterMetadataListener(BluetoothDevice device, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeTypedObject(device, 0);
                    _data.writeTypedObject(attributionSource, 0);
                    _data.writeTypedObject(receiver, 0);
                    this.mRemote.transact(77, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetooth
            public void setMetadata(BluetoothDevice device, int key, byte[] value, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeTypedObject(device, 0);
                    _data.writeInt(key);
                    _data.writeByteArray(value);
                    _data.writeTypedObject(attributionSource, 0);
                    _data.writeTypedObject(receiver, 0);
                    this.mRemote.transact(78, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetooth
            public void getMetadata(BluetoothDevice device, int key, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeTypedObject(device, 0);
                    _data.writeInt(key);
                    _data.writeTypedObject(attributionSource, 0);
                    _data.writeTypedObject(receiver, 0);
                    this.mRemote.transact(79, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetooth
            public void requestActivityInfo(IBluetoothActivityEnergyInfoListener listener, AttributionSource attributionSource) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeStrongInterface(listener);
                    _data.writeTypedObject(attributionSource, 0);
                    this.mRemote.transact(80, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetooth
            public void onLeServiceUp(AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeTypedObject(attributionSource, 0);
                    _data.writeTypedObject(receiver, 0);
                    this.mRemote.transact(81, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetooth
            public void onBrEdrDown(AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeTypedObject(attributionSource, 0);
                    _data.writeTypedObject(receiver, 0);
                    this.mRemote.transact(82, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetooth
            public void connectAllEnabledProfiles(BluetoothDevice device, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeTypedObject(device, 0);
                    _data.writeTypedObject(attributionSource, 0);
                    _data.writeTypedObject(receiver, 0);
                    this.mRemote.transact(83, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetooth
            public void disconnectAllEnabledProfiles(BluetoothDevice device, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeTypedObject(device, 0);
                    _data.writeTypedObject(attributionSource, 0);
                    _data.writeTypedObject(receiver, 0);
                    this.mRemote.transact(84, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetooth
            public void setActiveDevice(BluetoothDevice device, int profiles, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeTypedObject(device, 0);
                    _data.writeInt(profiles);
                    _data.writeTypedObject(attributionSource, 0);
                    _data.writeTypedObject(receiver, 0);
                    this.mRemote.transact(85, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetooth
            public void getActiveDevices(int profile, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(profile);
                    _data.writeTypedObject(attributionSource, 0);
                    _data.writeTypedObject(receiver, 0);
                    this.mRemote.transact(86, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetooth
            public void getMostRecentlyConnectedDevices(AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeTypedObject(attributionSource, 0);
                    _data.writeTypedObject(receiver, 0);
                    this.mRemote.transact(87, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetooth
            public void removeActiveDevice(int profiles, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(profiles);
                    _data.writeTypedObject(attributionSource, 0);
                    _data.writeTypedObject(receiver, 0);
                    this.mRemote.transact(88, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetooth
            public void registerBluetoothConnectionCallback(IBluetoothConnectionCallback callback, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeStrongInterface(callback);
                    _data.writeTypedObject(attributionSource, 0);
                    _data.writeTypedObject(receiver, 0);
                    this.mRemote.transact(89, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetooth
            public void unregisterBluetoothConnectionCallback(IBluetoothConnectionCallback callback, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeStrongInterface(callback);
                    _data.writeTypedObject(attributionSource, 0);
                    _data.writeTypedObject(receiver, 0);
                    this.mRemote.transact(90, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetooth
            public void canBondWithoutDialog(BluetoothDevice device, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeTypedObject(device, 0);
                    _data.writeTypedObject(attributionSource, 0);
                    _data.writeTypedObject(receiver, 0);
                    this.mRemote.transact(91, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetooth
            public void generateLocalOobData(int transport, IBluetoothOobDataCallback callback, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(transport);
                    _data.writeStrongInterface(callback);
                    _data.writeTypedObject(attributionSource, 0);
                    _data.writeTypedObject(receiver, 0);
                    this.mRemote.transact(92, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetooth
            public void allowLowLatencyAudio(boolean allowed, BluetoothDevice device, SynchronousResultReceiver receiver) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeBoolean(allowed);
                    _data.writeTypedObject(device, 0);
                    _data.writeTypedObject(receiver, 0);
                    this.mRemote.transact(93, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetooth
            public void setBondingInitiatedLocally(BluetoothDevice devicei, boolean localInitiated, AttributionSource attributionSource) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeTypedObject(devicei, 0);
                    _data.writeBoolean(localInitiated);
                    _data.writeTypedObject(attributionSource, 0);
                    this.mRemote.transact(94, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetooth
            public int getDeviceType(BluetoothDevice device, AttributionSource attributionSource) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeTypedObject(device, 0);
                    _data.writeTypedObject(attributionSource, 0);
                    this.mRemote.transact(95, _data, _reply, 0);
                    _reply.readException();
                    int _result = _reply.readInt();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetooth
            public boolean isTwsPlusDevice(BluetoothDevice device, AttributionSource attributionSource) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeTypedObject(device, 0);
                    _data.writeTypedObject(attributionSource, 0);
                    this.mRemote.transact(96, _data, _reply, 0);
                    _reply.readException();
                    boolean _result = _reply.readBoolean();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetooth
            public String getTwsPlusPeerAddress(BluetoothDevice device, AttributionSource attributionSource) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeTypedObject(device, 0);
                    _data.writeTypedObject(attributionSource, 0);
                    this.mRemote.transact(97, _data, _reply, 0);
                    _reply.readException();
                    String _result = _reply.readString();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetooth
            public void updateQuietModeStatus(boolean quietMode, AttributionSource attributionSource) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeBoolean(quietMode);
                    _data.writeTypedObject(attributionSource, 0);
                    this.mRemote.transact(98, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetooth
            public int setSocketOpt(int type, int port, int optionName, byte[] optionVal, int optionLen) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(type);
                    _data.writeInt(port);
                    _data.writeInt(optionName);
                    _data.writeByteArray(optionVal);
                    _data.writeInt(optionLen);
                    this.mRemote.transact(99, _data, _reply, 0);
                    _reply.readException();
                    int _result = _reply.readInt();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetooth
            public int getSocketOpt(int type, int port, int optionName, byte[] optionVal) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(type);
                    _data.writeInt(port);
                    _data.writeInt(optionName);
                    if (optionVal == null) {
                        _data.writeInt(-1);
                    } else {
                        _data.writeInt(optionVal.length);
                    }
                    this.mRemote.transact(100, _data, _reply, 0);
                    _reply.readException();
                    int _result = _reply.readInt();
                    _reply.readByteArray(optionVal);
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetooth
            public boolean isBroadcastActive(AttributionSource attributionSource) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeTypedObject(attributionSource, 0);
                    this.mRemote.transact(101, _data, _reply, 0);
                    _reply.readException();
                    boolean _result = _reply.readBoolean();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetooth
            public void startRfcommListener(String name, ParcelUuid uuid, PendingIntent intent, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(name);
                    _data.writeTypedObject(uuid, 0);
                    _data.writeTypedObject(intent, 0);
                    _data.writeTypedObject(attributionSource, 0);
                    _data.writeTypedObject(receiver, 0);
                    this.mRemote.transact(102, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetooth
            public void stopRfcommListener(ParcelUuid uuid, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeTypedObject(uuid, 0);
                    _data.writeTypedObject(attributionSource, 0);
                    _data.writeTypedObject(receiver, 0);
                    this.mRemote.transact(103, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetooth
            public void retrievePendingSocketForServiceRecord(ParcelUuid uuid, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeTypedObject(uuid, 0);
                    _data.writeTypedObject(attributionSource, 0);
                    _data.writeTypedObject(receiver, 0);
                    this.mRemote.transact(104, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetooth
            public void setForegroundUserId(int userId, AttributionSource attributionSource) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(userId);
                    _data.writeTypedObject(attributionSource, 0);
                    this.mRemote.transact(105, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }
        }

        @Override // android.os.Binder
        public int getMaxTransactionId() {
            return 104;
        }
    }
}

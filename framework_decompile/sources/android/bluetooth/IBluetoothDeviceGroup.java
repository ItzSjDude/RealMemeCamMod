package android.bluetooth;

import android.bluetooth.IBluetoothGroupCallback;
import android.content.AttributionSource;
import android.media.MediaMetrics;
import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.ParcelUuid;
import android.os.RemoteException;
import java.util.List;

/* loaded from: classes.dex */
public interface IBluetoothDeviceGroup extends IInterface {
    public static final String DESCRIPTOR = "android.bluetooth.IBluetoothDeviceGroup";

    void connect(int i, BluetoothDevice bluetoothDevice, AttributionSource attributionSource) throws RemoteException;

    void disconnect(int i, BluetoothDevice bluetoothDevice, AttributionSource attributionSource) throws RemoteException;

    DeviceGroup getDeviceGroup(int i, boolean z, AttributionSource attributionSource) throws RemoteException;

    List<DeviceGroup> getDiscoveredGroups(boolean z, AttributionSource attributionSource) throws RemoteException;

    void getExclusiveAccessStatus(int i, int i2, List<BluetoothDevice> list, AttributionSource attributionSource) throws RemoteException;

    int getRemoteDeviceGroupId(BluetoothDevice bluetoothDevice, ParcelUuid parcelUuid, boolean z, AttributionSource attributionSource) throws RemoteException;

    boolean isGroupDiscoveryInProgress(int i, AttributionSource attributionSource) throws RemoteException;

    void registerGroupClientApp(ParcelUuid parcelUuid, IBluetoothGroupCallback iBluetoothGroupCallback, AttributionSource attributionSource) throws RemoteException;

    void setExclusiveAccess(int i, int i2, List<BluetoothDevice> list, int i3, AttributionSource attributionSource) throws RemoteException;

    void startGroupDiscovery(int i, int i2, AttributionSource attributionSource) throws RemoteException;

    void stopGroupDiscovery(int i, int i2, AttributionSource attributionSource) throws RemoteException;

    void unregisterGroupClientApp(int i, AttributionSource attributionSource) throws RemoteException;

    public static class Default implements IBluetoothDeviceGroup {
        @Override // android.bluetooth.IBluetoothDeviceGroup
        public void connect(int appId, BluetoothDevice device, AttributionSource attributionSource) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetoothDeviceGroup
        public void disconnect(int appId, BluetoothDevice device, AttributionSource attributionSource) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetoothDeviceGroup
        public void registerGroupClientApp(ParcelUuid uuid, IBluetoothGroupCallback callback, AttributionSource attributionSource) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetoothDeviceGroup
        public void unregisterGroupClientApp(int appId, AttributionSource attributionSource) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetoothDeviceGroup
        public void startGroupDiscovery(int appId, int groupId, AttributionSource attributionSource) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetoothDeviceGroup
        public void stopGroupDiscovery(int appId, int groupId, AttributionSource attributionSource) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetoothDeviceGroup
        public List<DeviceGroup> getDiscoveredGroups(boolean mPublicAddr, AttributionSource attributionSource) throws RemoteException {
            return null;
        }

        @Override // android.bluetooth.IBluetoothDeviceGroup
        public DeviceGroup getDeviceGroup(int groupId, boolean mPublicAddr, AttributionSource attributionSource) throws RemoteException {
            return null;
        }

        @Override // android.bluetooth.IBluetoothDeviceGroup
        public int getRemoteDeviceGroupId(BluetoothDevice device, ParcelUuid uuid, boolean mPublicAddr, AttributionSource attributionSource) throws RemoteException {
            return 0;
        }

        @Override // android.bluetooth.IBluetoothDeviceGroup
        public boolean isGroupDiscoveryInProgress(int groupId, AttributionSource attributionSource) throws RemoteException {
            return false;
        }

        @Override // android.bluetooth.IBluetoothDeviceGroup
        public void setExclusiveAccess(int appId, int groupId, List<BluetoothDevice> devices, int value, AttributionSource attributionSource) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetoothDeviceGroup
        public void getExclusiveAccessStatus(int appId, int groupId, List<BluetoothDevice> devices, AttributionSource attributionSource) throws RemoteException {
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }
    }

    public static abstract class Stub extends Binder implements IBluetoothDeviceGroup {
        static final int TRANSACTION_connect = 1;
        static final int TRANSACTION_disconnect = 2;
        static final int TRANSACTION_getDeviceGroup = 8;
        static final int TRANSACTION_getDiscoveredGroups = 7;
        static final int TRANSACTION_getExclusiveAccessStatus = 12;
        static final int TRANSACTION_getRemoteDeviceGroupId = 9;
        static final int TRANSACTION_isGroupDiscoveryInProgress = 10;
        static final int TRANSACTION_registerGroupClientApp = 3;
        static final int TRANSACTION_setExclusiveAccess = 11;
        static final int TRANSACTION_startGroupDiscovery = 5;
        static final int TRANSACTION_stopGroupDiscovery = 6;
        static final int TRANSACTION_unregisterGroupClientApp = 4;

        public Stub() {
            attachInterface(this, IBluetoothDeviceGroup.DESCRIPTOR);
        }

        public static IBluetoothDeviceGroup asInterface(IBinder obj) {
            if (obj == null) {
                return null;
            }
            IInterface iin = obj.queryLocalInterface(IBluetoothDeviceGroup.DESCRIPTOR);
            if (iin != null && (iin instanceof IBluetoothDeviceGroup)) {
                return (IBluetoothDeviceGroup) iin;
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
                    return MediaMetrics.Value.CONNECT;
                case 2:
                    return MediaMetrics.Value.DISCONNECT;
                case 3:
                    return "registerGroupClientApp";
                case 4:
                    return "unregisterGroupClientApp";
                case 5:
                    return "startGroupDiscovery";
                case 6:
                    return "stopGroupDiscovery";
                case 7:
                    return "getDiscoveredGroups";
                case 8:
                    return "getDeviceGroup";
                case 9:
                    return "getRemoteDeviceGroupId";
                case 10:
                    return "isGroupDiscoveryInProgress";
                case 11:
                    return "setExclusiveAccess";
                case 12:
                    return "getExclusiveAccessStatus";
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
                data.enforceInterface(IBluetoothDeviceGroup.DESCRIPTOR);
            }
            switch (code) {
                case IBinder.INTERFACE_TRANSACTION /* 1598968902 */:
                    reply.writeString(IBluetoothDeviceGroup.DESCRIPTOR);
                    return true;
                default:
                    switch (code) {
                        case 1:
                            int _arg0 = data.readInt();
                            BluetoothDevice _arg1 = (BluetoothDevice) data.readTypedObject(BluetoothDevice.CREATOR);
                            AttributionSource _arg2 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            data.enforceNoDataAvail();
                            connect(_arg0, _arg1, _arg2);
                            reply.writeNoException();
                            return true;
                        case 2:
                            int _arg02 = data.readInt();
                            BluetoothDevice _arg12 = (BluetoothDevice) data.readTypedObject(BluetoothDevice.CREATOR);
                            AttributionSource _arg22 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            data.enforceNoDataAvail();
                            disconnect(_arg02, _arg12, _arg22);
                            reply.writeNoException();
                            return true;
                        case 3:
                            ParcelUuid _arg03 = (ParcelUuid) data.readTypedObject(ParcelUuid.CREATOR);
                            IBluetoothGroupCallback _arg13 = IBluetoothGroupCallback.Stub.asInterface(data.readStrongBinder());
                            AttributionSource _arg23 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            data.enforceNoDataAvail();
                            registerGroupClientApp(_arg03, _arg13, _arg23);
                            reply.writeNoException();
                            return true;
                        case 4:
                            int _arg04 = data.readInt();
                            AttributionSource _arg14 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            data.enforceNoDataAvail();
                            unregisterGroupClientApp(_arg04, _arg14);
                            reply.writeNoException();
                            return true;
                        case 5:
                            int _arg05 = data.readInt();
                            int _arg15 = data.readInt();
                            AttributionSource _arg24 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            data.enforceNoDataAvail();
                            startGroupDiscovery(_arg05, _arg15, _arg24);
                            reply.writeNoException();
                            return true;
                        case 6:
                            int _arg06 = data.readInt();
                            int _arg16 = data.readInt();
                            AttributionSource _arg25 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            data.enforceNoDataAvail();
                            stopGroupDiscovery(_arg06, _arg16, _arg25);
                            reply.writeNoException();
                            return true;
                        case 7:
                            boolean _arg07 = data.readBoolean();
                            AttributionSource _arg17 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            data.enforceNoDataAvail();
                            List<DeviceGroup> _result = getDiscoveredGroups(_arg07, _arg17);
                            reply.writeNoException();
                            reply.writeTypedList(_result);
                            return true;
                        case 8:
                            int _arg08 = data.readInt();
                            boolean _arg18 = data.readBoolean();
                            AttributionSource _arg26 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            data.enforceNoDataAvail();
                            DeviceGroup _result2 = getDeviceGroup(_arg08, _arg18, _arg26);
                            reply.writeNoException();
                            reply.writeTypedObject(_result2, 1);
                            return true;
                        case 9:
                            BluetoothDevice _arg09 = (BluetoothDevice) data.readTypedObject(BluetoothDevice.CREATOR);
                            ParcelUuid _arg19 = (ParcelUuid) data.readTypedObject(ParcelUuid.CREATOR);
                            boolean _arg27 = data.readBoolean();
                            AttributionSource _arg3 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            data.enforceNoDataAvail();
                            int _result3 = getRemoteDeviceGroupId(_arg09, _arg19, _arg27, _arg3);
                            reply.writeNoException();
                            reply.writeInt(_result3);
                            return true;
                        case 10:
                            int _arg010 = data.readInt();
                            AttributionSource _arg110 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            data.enforceNoDataAvail();
                            boolean _result4 = isGroupDiscoveryInProgress(_arg010, _arg110);
                            reply.writeNoException();
                            reply.writeBoolean(_result4);
                            return true;
                        case 11:
                            int _arg011 = data.readInt();
                            int _arg111 = data.readInt();
                            List<BluetoothDevice> _arg28 = data.createTypedArrayList(BluetoothDevice.CREATOR);
                            int _arg32 = data.readInt();
                            AttributionSource _arg4 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            data.enforceNoDataAvail();
                            setExclusiveAccess(_arg011, _arg111, _arg28, _arg32, _arg4);
                            reply.writeNoException();
                            return true;
                        case 12:
                            int _arg012 = data.readInt();
                            int _arg112 = data.readInt();
                            List<BluetoothDevice> _arg29 = data.createTypedArrayList(BluetoothDevice.CREATOR);
                            AttributionSource _arg33 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            data.enforceNoDataAvail();
                            getExclusiveAccessStatus(_arg012, _arg112, _arg29, _arg33);
                            reply.writeNoException();
                            return true;
                        default:
                            return super.onTransact(code, data, reply, flags);
                    }
            }
        }

        private static class Proxy implements IBluetoothDeviceGroup {
            private IBinder mRemote;

            Proxy(IBinder remote) {
                this.mRemote = remote;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            public String getInterfaceDescriptor() {
                return IBluetoothDeviceGroup.DESCRIPTOR;
            }

            @Override // android.bluetooth.IBluetoothDeviceGroup
            public void connect(int appId, BluetoothDevice device, AttributionSource attributionSource) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IBluetoothDeviceGroup.DESCRIPTOR);
                    _data.writeInt(appId);
                    _data.writeTypedObject(device, 0);
                    _data.writeTypedObject(attributionSource, 0);
                    this.mRemote.transact(1, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetoothDeviceGroup
            public void disconnect(int appId, BluetoothDevice device, AttributionSource attributionSource) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IBluetoothDeviceGroup.DESCRIPTOR);
                    _data.writeInt(appId);
                    _data.writeTypedObject(device, 0);
                    _data.writeTypedObject(attributionSource, 0);
                    this.mRemote.transact(2, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetoothDeviceGroup
            public void registerGroupClientApp(ParcelUuid uuid, IBluetoothGroupCallback callback, AttributionSource attributionSource) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IBluetoothDeviceGroup.DESCRIPTOR);
                    _data.writeTypedObject(uuid, 0);
                    _data.writeStrongInterface(callback);
                    _data.writeTypedObject(attributionSource, 0);
                    this.mRemote.transact(3, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetoothDeviceGroup
            public void unregisterGroupClientApp(int appId, AttributionSource attributionSource) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IBluetoothDeviceGroup.DESCRIPTOR);
                    _data.writeInt(appId);
                    _data.writeTypedObject(attributionSource, 0);
                    this.mRemote.transact(4, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetoothDeviceGroup
            public void startGroupDiscovery(int appId, int groupId, AttributionSource attributionSource) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IBluetoothDeviceGroup.DESCRIPTOR);
                    _data.writeInt(appId);
                    _data.writeInt(groupId);
                    _data.writeTypedObject(attributionSource, 0);
                    this.mRemote.transact(5, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetoothDeviceGroup
            public void stopGroupDiscovery(int appId, int groupId, AttributionSource attributionSource) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IBluetoothDeviceGroup.DESCRIPTOR);
                    _data.writeInt(appId);
                    _data.writeInt(groupId);
                    _data.writeTypedObject(attributionSource, 0);
                    this.mRemote.transact(6, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetoothDeviceGroup
            public List<DeviceGroup> getDiscoveredGroups(boolean mPublicAddr, AttributionSource attributionSource) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IBluetoothDeviceGroup.DESCRIPTOR);
                    _data.writeBoolean(mPublicAddr);
                    _data.writeTypedObject(attributionSource, 0);
                    this.mRemote.transact(7, _data, _reply, 0);
                    _reply.readException();
                    List<DeviceGroup> _result = _reply.createTypedArrayList(DeviceGroup.CREATOR);
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetoothDeviceGroup
            public DeviceGroup getDeviceGroup(int groupId, boolean mPublicAddr, AttributionSource attributionSource) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IBluetoothDeviceGroup.DESCRIPTOR);
                    _data.writeInt(groupId);
                    _data.writeBoolean(mPublicAddr);
                    _data.writeTypedObject(attributionSource, 0);
                    this.mRemote.transact(8, _data, _reply, 0);
                    _reply.readException();
                    DeviceGroup _result = (DeviceGroup) _reply.readTypedObject(DeviceGroup.CREATOR);
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetoothDeviceGroup
            public int getRemoteDeviceGroupId(BluetoothDevice device, ParcelUuid uuid, boolean mPublicAddr, AttributionSource attributionSource) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IBluetoothDeviceGroup.DESCRIPTOR);
                    _data.writeTypedObject(device, 0);
                    _data.writeTypedObject(uuid, 0);
                    _data.writeBoolean(mPublicAddr);
                    _data.writeTypedObject(attributionSource, 0);
                    this.mRemote.transact(9, _data, _reply, 0);
                    _reply.readException();
                    int _result = _reply.readInt();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetoothDeviceGroup
            public boolean isGroupDiscoveryInProgress(int groupId, AttributionSource attributionSource) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IBluetoothDeviceGroup.DESCRIPTOR);
                    _data.writeInt(groupId);
                    _data.writeTypedObject(attributionSource, 0);
                    this.mRemote.transact(10, _data, _reply, 0);
                    _reply.readException();
                    boolean _result = _reply.readBoolean();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetoothDeviceGroup
            public void setExclusiveAccess(int appId, int groupId, List<BluetoothDevice> devices, int value, AttributionSource attributionSource) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IBluetoothDeviceGroup.DESCRIPTOR);
                    _data.writeInt(appId);
                    _data.writeInt(groupId);
                    _data.writeTypedList(devices);
                    _data.writeInt(value);
                    _data.writeTypedObject(attributionSource, 0);
                    this.mRemote.transact(11, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetoothDeviceGroup
            public void getExclusiveAccessStatus(int appId, int groupId, List<BluetoothDevice> devices, AttributionSource attributionSource) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IBluetoothDeviceGroup.DESCRIPTOR);
                    _data.writeInt(appId);
                    _data.writeInt(groupId);
                    _data.writeTypedList(devices);
                    _data.writeTypedObject(attributionSource, 0);
                    this.mRemote.transact(12, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }
        }

        @Override // android.os.Binder
        public int getMaxTransactionId() {
            return 11;
        }
    }
}

package android.bluetooth;

import android.bluetooth.IBluetoothLeBroadcastAssistantCallback;
import android.bluetooth.le.ScanFilter;
import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import java.util.List;

/* loaded from: classes.dex */
public interface IBluetoothLeBroadcastAssistant extends IInterface {
    public static final String DESCRIPTOR = "android.bluetooth.IBluetoothLeBroadcastAssistant";

    void addSource(BluetoothDevice bluetoothDevice, BluetoothLeBroadcastMetadata bluetoothLeBroadcastMetadata, boolean z) throws RemoteException;

    List<BluetoothLeBroadcastReceiveState> getAllSources(BluetoothDevice bluetoothDevice) throws RemoteException;

    List<BluetoothDevice> getConnectedDevices() throws RemoteException;

    int getConnectionPolicy(BluetoothDevice bluetoothDevice) throws RemoteException;

    int getConnectionState(BluetoothDevice bluetoothDevice) throws RemoteException;

    List<BluetoothDevice> getDevicesMatchingConnectionStates(int[] iArr) throws RemoteException;

    int getMaximumSourceCapacity(BluetoothDevice bluetoothDevice) throws RemoteException;

    boolean isSearchInProgress() throws RemoteException;

    void modifySource(BluetoothDevice bluetoothDevice, int i, BluetoothLeBroadcastMetadata bluetoothLeBroadcastMetadata) throws RemoteException;

    void registerCallback(IBluetoothLeBroadcastAssistantCallback iBluetoothLeBroadcastAssistantCallback) throws RemoteException;

    void removeSource(BluetoothDevice bluetoothDevice, int i) throws RemoteException;

    boolean setConnectionPolicy(BluetoothDevice bluetoothDevice, int i) throws RemoteException;

    void startSearchingForSources(List<ScanFilter> list) throws RemoteException;

    void stopSearchingForSources() throws RemoteException;

    void unregisterCallback(IBluetoothLeBroadcastAssistantCallback iBluetoothLeBroadcastAssistantCallback) throws RemoteException;

    public static class Default implements IBluetoothLeBroadcastAssistant {
        @Override // android.bluetooth.IBluetoothLeBroadcastAssistant
        public int getConnectionState(BluetoothDevice sink) throws RemoteException {
            return 0;
        }

        @Override // android.bluetooth.IBluetoothLeBroadcastAssistant
        public List<BluetoothDevice> getDevicesMatchingConnectionStates(int[] states) throws RemoteException {
            return null;
        }

        @Override // android.bluetooth.IBluetoothLeBroadcastAssistant
        public List<BluetoothDevice> getConnectedDevices() throws RemoteException {
            return null;
        }

        @Override // android.bluetooth.IBluetoothLeBroadcastAssistant
        public boolean setConnectionPolicy(BluetoothDevice device, int connectionPolicy) throws RemoteException {
            return false;
        }

        @Override // android.bluetooth.IBluetoothLeBroadcastAssistant
        public int getConnectionPolicy(BluetoothDevice device) throws RemoteException {
            return 0;
        }

        @Override // android.bluetooth.IBluetoothLeBroadcastAssistant
        public void registerCallback(IBluetoothLeBroadcastAssistantCallback cb) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetoothLeBroadcastAssistant
        public void unregisterCallback(IBluetoothLeBroadcastAssistantCallback cb) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetoothLeBroadcastAssistant
        public void startSearchingForSources(List<ScanFilter> filters) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetoothLeBroadcastAssistant
        public void stopSearchingForSources() throws RemoteException {
        }

        @Override // android.bluetooth.IBluetoothLeBroadcastAssistant
        public boolean isSearchInProgress() throws RemoteException {
            return false;
        }

        @Override // android.bluetooth.IBluetoothLeBroadcastAssistant
        public void addSource(BluetoothDevice sink, BluetoothLeBroadcastMetadata sourceMetadata, boolean isGroupOp) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetoothLeBroadcastAssistant
        public void modifySource(BluetoothDevice sink, int sourceId, BluetoothLeBroadcastMetadata updatedMetadata) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetoothLeBroadcastAssistant
        public void removeSource(BluetoothDevice sink, int sourceId) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetoothLeBroadcastAssistant
        public List<BluetoothLeBroadcastReceiveState> getAllSources(BluetoothDevice sink) throws RemoteException {
            return null;
        }

        @Override // android.bluetooth.IBluetoothLeBroadcastAssistant
        public int getMaximumSourceCapacity(BluetoothDevice sink) throws RemoteException {
            return 0;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }
    }

    public static abstract class Stub extends Binder implements IBluetoothLeBroadcastAssistant {
        static final int TRANSACTION_addSource = 11;
        static final int TRANSACTION_getAllSources = 14;
        static final int TRANSACTION_getConnectedDevices = 3;
        static final int TRANSACTION_getConnectionPolicy = 5;
        static final int TRANSACTION_getConnectionState = 1;
        static final int TRANSACTION_getDevicesMatchingConnectionStates = 2;
        static final int TRANSACTION_getMaximumSourceCapacity = 15;
        static final int TRANSACTION_isSearchInProgress = 10;
        static final int TRANSACTION_modifySource = 12;
        static final int TRANSACTION_registerCallback = 6;
        static final int TRANSACTION_removeSource = 13;
        static final int TRANSACTION_setConnectionPolicy = 4;
        static final int TRANSACTION_startSearchingForSources = 8;
        static final int TRANSACTION_stopSearchingForSources = 9;
        static final int TRANSACTION_unregisterCallback = 7;

        public Stub() {
            attachInterface(this, IBluetoothLeBroadcastAssistant.DESCRIPTOR);
        }

        public static IBluetoothLeBroadcastAssistant asInterface(IBinder obj) {
            if (obj == null) {
                return null;
            }
            IInterface iin = obj.queryLocalInterface(IBluetoothLeBroadcastAssistant.DESCRIPTOR);
            if (iin != null && (iin instanceof IBluetoothLeBroadcastAssistant)) {
                return (IBluetoothLeBroadcastAssistant) iin;
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
                    return "getConnectionState";
                case 2:
                    return "getDevicesMatchingConnectionStates";
                case 3:
                    return "getConnectedDevices";
                case 4:
                    return "setConnectionPolicy";
                case 5:
                    return "getConnectionPolicy";
                case 6:
                    return "registerCallback";
                case 7:
                    return "unregisterCallback";
                case 8:
                    return "startSearchingForSources";
                case 9:
                    return "stopSearchingForSources";
                case 10:
                    return "isSearchInProgress";
                case 11:
                    return "addSource";
                case 12:
                    return "modifySource";
                case 13:
                    return "removeSource";
                case 14:
                    return "getAllSources";
                case 15:
                    return "getMaximumSourceCapacity";
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
                data.enforceInterface(IBluetoothLeBroadcastAssistant.DESCRIPTOR);
            }
            switch (code) {
                case IBinder.INTERFACE_TRANSACTION /* 1598968902 */:
                    reply.writeString(IBluetoothLeBroadcastAssistant.DESCRIPTOR);
                    return true;
                default:
                    switch (code) {
                        case 1:
                            BluetoothDevice _arg0 = (BluetoothDevice) data.readTypedObject(BluetoothDevice.CREATOR);
                            data.enforceNoDataAvail();
                            int _result = getConnectionState(_arg0);
                            reply.writeNoException();
                            reply.writeInt(_result);
                            return true;
                        case 2:
                            int[] _arg02 = data.createIntArray();
                            data.enforceNoDataAvail();
                            List<BluetoothDevice> _result2 = getDevicesMatchingConnectionStates(_arg02);
                            reply.writeNoException();
                            reply.writeTypedList(_result2);
                            return true;
                        case 3:
                            List<BluetoothDevice> _result3 = getConnectedDevices();
                            reply.writeNoException();
                            reply.writeTypedList(_result3);
                            return true;
                        case 4:
                            BluetoothDevice _arg03 = (BluetoothDevice) data.readTypedObject(BluetoothDevice.CREATOR);
                            int _arg1 = data.readInt();
                            data.enforceNoDataAvail();
                            boolean _result4 = setConnectionPolicy(_arg03, _arg1);
                            reply.writeNoException();
                            reply.writeBoolean(_result4);
                            return true;
                        case 5:
                            BluetoothDevice _arg04 = (BluetoothDevice) data.readTypedObject(BluetoothDevice.CREATOR);
                            data.enforceNoDataAvail();
                            int _result5 = getConnectionPolicy(_arg04);
                            reply.writeNoException();
                            reply.writeInt(_result5);
                            return true;
                        case 6:
                            IBluetoothLeBroadcastAssistantCallback _arg05 = IBluetoothLeBroadcastAssistantCallback.Stub.asInterface(data.readStrongBinder());
                            data.enforceNoDataAvail();
                            registerCallback(_arg05);
                            reply.writeNoException();
                            return true;
                        case 7:
                            IBluetoothLeBroadcastAssistantCallback _arg06 = IBluetoothLeBroadcastAssistantCallback.Stub.asInterface(data.readStrongBinder());
                            data.enforceNoDataAvail();
                            unregisterCallback(_arg06);
                            reply.writeNoException();
                            return true;
                        case 8:
                            List<ScanFilter> _arg07 = data.createTypedArrayList(ScanFilter.CREATOR);
                            data.enforceNoDataAvail();
                            startSearchingForSources(_arg07);
                            reply.writeNoException();
                            return true;
                        case 9:
                            stopSearchingForSources();
                            reply.writeNoException();
                            return true;
                        case 10:
                            boolean _result6 = isSearchInProgress();
                            reply.writeNoException();
                            reply.writeBoolean(_result6);
                            return true;
                        case 11:
                            BluetoothDevice _arg08 = (BluetoothDevice) data.readTypedObject(BluetoothDevice.CREATOR);
                            BluetoothLeBroadcastMetadata _arg12 = (BluetoothLeBroadcastMetadata) data.readTypedObject(BluetoothLeBroadcastMetadata.CREATOR);
                            boolean _arg2 = data.readBoolean();
                            data.enforceNoDataAvail();
                            addSource(_arg08, _arg12, _arg2);
                            reply.writeNoException();
                            return true;
                        case 12:
                            BluetoothDevice _arg09 = (BluetoothDevice) data.readTypedObject(BluetoothDevice.CREATOR);
                            int _arg13 = data.readInt();
                            BluetoothLeBroadcastMetadata _arg22 = (BluetoothLeBroadcastMetadata) data.readTypedObject(BluetoothLeBroadcastMetadata.CREATOR);
                            data.enforceNoDataAvail();
                            modifySource(_arg09, _arg13, _arg22);
                            reply.writeNoException();
                            return true;
                        case 13:
                            BluetoothDevice _arg010 = (BluetoothDevice) data.readTypedObject(BluetoothDevice.CREATOR);
                            int _arg14 = data.readInt();
                            data.enforceNoDataAvail();
                            removeSource(_arg010, _arg14);
                            reply.writeNoException();
                            return true;
                        case 14:
                            BluetoothDevice _arg011 = (BluetoothDevice) data.readTypedObject(BluetoothDevice.CREATOR);
                            data.enforceNoDataAvail();
                            List<BluetoothLeBroadcastReceiveState> _result7 = getAllSources(_arg011);
                            reply.writeNoException();
                            reply.writeTypedList(_result7);
                            return true;
                        case 15:
                            BluetoothDevice _arg012 = (BluetoothDevice) data.readTypedObject(BluetoothDevice.CREATOR);
                            data.enforceNoDataAvail();
                            int _result8 = getMaximumSourceCapacity(_arg012);
                            reply.writeNoException();
                            reply.writeInt(_result8);
                            return true;
                        default:
                            return super.onTransact(code, data, reply, flags);
                    }
            }
        }

        private static class Proxy implements IBluetoothLeBroadcastAssistant {
            private IBinder mRemote;

            Proxy(IBinder remote) {
                this.mRemote = remote;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            public String getInterfaceDescriptor() {
                return IBluetoothLeBroadcastAssistant.DESCRIPTOR;
            }

            @Override // android.bluetooth.IBluetoothLeBroadcastAssistant
            public int getConnectionState(BluetoothDevice sink) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IBluetoothLeBroadcastAssistant.DESCRIPTOR);
                    _data.writeTypedObject(sink, 0);
                    this.mRemote.transact(1, _data, _reply, 0);
                    _reply.readException();
                    int _result = _reply.readInt();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetoothLeBroadcastAssistant
            public List<BluetoothDevice> getDevicesMatchingConnectionStates(int[] states) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IBluetoothLeBroadcastAssistant.DESCRIPTOR);
                    _data.writeIntArray(states);
                    this.mRemote.transact(2, _data, _reply, 0);
                    _reply.readException();
                    List<BluetoothDevice> _result = _reply.createTypedArrayList(BluetoothDevice.CREATOR);
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetoothLeBroadcastAssistant
            public List<BluetoothDevice> getConnectedDevices() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IBluetoothLeBroadcastAssistant.DESCRIPTOR);
                    this.mRemote.transact(3, _data, _reply, 0);
                    _reply.readException();
                    List<BluetoothDevice> _result = _reply.createTypedArrayList(BluetoothDevice.CREATOR);
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetoothLeBroadcastAssistant
            public boolean setConnectionPolicy(BluetoothDevice device, int connectionPolicy) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IBluetoothLeBroadcastAssistant.DESCRIPTOR);
                    _data.writeTypedObject(device, 0);
                    _data.writeInt(connectionPolicy);
                    this.mRemote.transact(4, _data, _reply, 0);
                    _reply.readException();
                    boolean _result = _reply.readBoolean();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetoothLeBroadcastAssistant
            public int getConnectionPolicy(BluetoothDevice device) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IBluetoothLeBroadcastAssistant.DESCRIPTOR);
                    _data.writeTypedObject(device, 0);
                    this.mRemote.transact(5, _data, _reply, 0);
                    _reply.readException();
                    int _result = _reply.readInt();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetoothLeBroadcastAssistant
            public void registerCallback(IBluetoothLeBroadcastAssistantCallback cb) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IBluetoothLeBroadcastAssistant.DESCRIPTOR);
                    _data.writeStrongInterface(cb);
                    this.mRemote.transact(6, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetoothLeBroadcastAssistant
            public void unregisterCallback(IBluetoothLeBroadcastAssistantCallback cb) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IBluetoothLeBroadcastAssistant.DESCRIPTOR);
                    _data.writeStrongInterface(cb);
                    this.mRemote.transact(7, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetoothLeBroadcastAssistant
            public void startSearchingForSources(List<ScanFilter> filters) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IBluetoothLeBroadcastAssistant.DESCRIPTOR);
                    _data.writeTypedList(filters);
                    this.mRemote.transact(8, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetoothLeBroadcastAssistant
            public void stopSearchingForSources() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IBluetoothLeBroadcastAssistant.DESCRIPTOR);
                    this.mRemote.transact(9, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetoothLeBroadcastAssistant
            public boolean isSearchInProgress() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IBluetoothLeBroadcastAssistant.DESCRIPTOR);
                    this.mRemote.transact(10, _data, _reply, 0);
                    _reply.readException();
                    boolean _result = _reply.readBoolean();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetoothLeBroadcastAssistant
            public void addSource(BluetoothDevice sink, BluetoothLeBroadcastMetadata sourceMetadata, boolean isGroupOp) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IBluetoothLeBroadcastAssistant.DESCRIPTOR);
                    _data.writeTypedObject(sink, 0);
                    _data.writeTypedObject(sourceMetadata, 0);
                    _data.writeBoolean(isGroupOp);
                    this.mRemote.transact(11, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetoothLeBroadcastAssistant
            public void modifySource(BluetoothDevice sink, int sourceId, BluetoothLeBroadcastMetadata updatedMetadata) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IBluetoothLeBroadcastAssistant.DESCRIPTOR);
                    _data.writeTypedObject(sink, 0);
                    _data.writeInt(sourceId);
                    _data.writeTypedObject(updatedMetadata, 0);
                    this.mRemote.transact(12, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetoothLeBroadcastAssistant
            public void removeSource(BluetoothDevice sink, int sourceId) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IBluetoothLeBroadcastAssistant.DESCRIPTOR);
                    _data.writeTypedObject(sink, 0);
                    _data.writeInt(sourceId);
                    this.mRemote.transact(13, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetoothLeBroadcastAssistant
            public List<BluetoothLeBroadcastReceiveState> getAllSources(BluetoothDevice sink) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IBluetoothLeBroadcastAssistant.DESCRIPTOR);
                    _data.writeTypedObject(sink, 0);
                    this.mRemote.transact(14, _data, _reply, 0);
                    _reply.readException();
                    List<BluetoothLeBroadcastReceiveState> _result = _reply.createTypedArrayList(BluetoothLeBroadcastReceiveState.CREATOR);
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetoothLeBroadcastAssistant
            public int getMaximumSourceCapacity(BluetoothDevice sink) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IBluetoothLeBroadcastAssistant.DESCRIPTOR);
                    _data.writeTypedObject(sink, 0);
                    this.mRemote.transact(15, _data, _reply, 0);
                    _reply.readException();
                    int _result = _reply.readInt();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }
        }

        @Override // android.os.Binder
        public int getMaxTransactionId() {
            return 14;
        }
    }
}

package android.bluetooth;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes.dex */
public interface IBluetoothLeBroadcastAssistantCallback extends IInterface {
    public static final String DESCRIPTOR = "android.bluetooth.IBluetoothLeBroadcastAssistantCallback";

    void onReceiveStateChanged(BluetoothDevice bluetoothDevice, int i, BluetoothLeBroadcastReceiveState bluetoothLeBroadcastReceiveState) throws RemoteException;

    void onSearchStartFailed(int i) throws RemoteException;

    void onSearchStarted(int i) throws RemoteException;

    void onSearchStopFailed(int i) throws RemoteException;

    void onSearchStopped(int i) throws RemoteException;

    void onSourceAddFailed(BluetoothDevice bluetoothDevice, BluetoothLeBroadcastMetadata bluetoothLeBroadcastMetadata, int i) throws RemoteException;

    void onSourceAdded(BluetoothDevice bluetoothDevice, int i, int i2) throws RemoteException;

    void onSourceFound(BluetoothLeBroadcastMetadata bluetoothLeBroadcastMetadata) throws RemoteException;

    void onSourceModified(BluetoothDevice bluetoothDevice, int i, int i2) throws RemoteException;

    void onSourceModifyFailed(BluetoothDevice bluetoothDevice, int i, int i2) throws RemoteException;

    void onSourceRemoveFailed(BluetoothDevice bluetoothDevice, int i, int i2) throws RemoteException;

    void onSourceRemoved(BluetoothDevice bluetoothDevice, int i, int i2) throws RemoteException;

    public static class Default implements IBluetoothLeBroadcastAssistantCallback {
        @Override // android.bluetooth.IBluetoothLeBroadcastAssistantCallback
        public void onSearchStarted(int reason) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetoothLeBroadcastAssistantCallback
        public void onSearchStartFailed(int reason) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetoothLeBroadcastAssistantCallback
        public void onSearchStopped(int reason) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetoothLeBroadcastAssistantCallback
        public void onSearchStopFailed(int reason) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetoothLeBroadcastAssistantCallback
        public void onSourceFound(BluetoothLeBroadcastMetadata source) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetoothLeBroadcastAssistantCallback
        public void onSourceAdded(BluetoothDevice sink, int sourceId, int reason) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetoothLeBroadcastAssistantCallback
        public void onSourceAddFailed(BluetoothDevice sink, BluetoothLeBroadcastMetadata source, int reason) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetoothLeBroadcastAssistantCallback
        public void onSourceModified(BluetoothDevice sink, int sourceId, int reason) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetoothLeBroadcastAssistantCallback
        public void onSourceModifyFailed(BluetoothDevice sink, int sourceId, int reason) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetoothLeBroadcastAssistantCallback
        public void onSourceRemoved(BluetoothDevice sink, int sourceId, int reason) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetoothLeBroadcastAssistantCallback
        public void onSourceRemoveFailed(BluetoothDevice sink, int sourceId, int reason) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetoothLeBroadcastAssistantCallback
        public void onReceiveStateChanged(BluetoothDevice sink, int sourceId, BluetoothLeBroadcastReceiveState state) throws RemoteException {
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }
    }

    public static abstract class Stub extends Binder implements IBluetoothLeBroadcastAssistantCallback {
        static final int TRANSACTION_onReceiveStateChanged = 12;
        static final int TRANSACTION_onSearchStartFailed = 2;
        static final int TRANSACTION_onSearchStarted = 1;
        static final int TRANSACTION_onSearchStopFailed = 4;
        static final int TRANSACTION_onSearchStopped = 3;
        static final int TRANSACTION_onSourceAddFailed = 7;
        static final int TRANSACTION_onSourceAdded = 6;
        static final int TRANSACTION_onSourceFound = 5;
        static final int TRANSACTION_onSourceModified = 8;
        static final int TRANSACTION_onSourceModifyFailed = 9;
        static final int TRANSACTION_onSourceRemoveFailed = 11;
        static final int TRANSACTION_onSourceRemoved = 10;

        public Stub() {
            attachInterface(this, IBluetoothLeBroadcastAssistantCallback.DESCRIPTOR);
        }

        public static IBluetoothLeBroadcastAssistantCallback asInterface(IBinder obj) {
            if (obj == null) {
                return null;
            }
            IInterface iin = obj.queryLocalInterface(IBluetoothLeBroadcastAssistantCallback.DESCRIPTOR);
            if (iin != null && (iin instanceof IBluetoothLeBroadcastAssistantCallback)) {
                return (IBluetoothLeBroadcastAssistantCallback) iin;
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
                    return "onSearchStarted";
                case 2:
                    return "onSearchStartFailed";
                case 3:
                    return "onSearchStopped";
                case 4:
                    return "onSearchStopFailed";
                case 5:
                    return "onSourceFound";
                case 6:
                    return "onSourceAdded";
                case 7:
                    return "onSourceAddFailed";
                case 8:
                    return "onSourceModified";
                case 9:
                    return "onSourceModifyFailed";
                case 10:
                    return "onSourceRemoved";
                case 11:
                    return "onSourceRemoveFailed";
                case 12:
                    return "onReceiveStateChanged";
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
                data.enforceInterface(IBluetoothLeBroadcastAssistantCallback.DESCRIPTOR);
            }
            switch (code) {
                case IBinder.INTERFACE_TRANSACTION /* 1598968902 */:
                    reply.writeString(IBluetoothLeBroadcastAssistantCallback.DESCRIPTOR);
                    return true;
                default:
                    switch (code) {
                        case 1:
                            int _arg0 = data.readInt();
                            data.enforceNoDataAvail();
                            onSearchStarted(_arg0);
                            reply.writeNoException();
                            return true;
                        case 2:
                            int _arg02 = data.readInt();
                            data.enforceNoDataAvail();
                            onSearchStartFailed(_arg02);
                            reply.writeNoException();
                            return true;
                        case 3:
                            int _arg03 = data.readInt();
                            data.enforceNoDataAvail();
                            onSearchStopped(_arg03);
                            reply.writeNoException();
                            return true;
                        case 4:
                            int _arg04 = data.readInt();
                            data.enforceNoDataAvail();
                            onSearchStopFailed(_arg04);
                            reply.writeNoException();
                            return true;
                        case 5:
                            BluetoothLeBroadcastMetadata _arg05 = (BluetoothLeBroadcastMetadata) data.readTypedObject(BluetoothLeBroadcastMetadata.CREATOR);
                            data.enforceNoDataAvail();
                            onSourceFound(_arg05);
                            reply.writeNoException();
                            return true;
                        case 6:
                            BluetoothDevice _arg06 = (BluetoothDevice) data.readTypedObject(BluetoothDevice.CREATOR);
                            int _arg1 = data.readInt();
                            int _arg2 = data.readInt();
                            data.enforceNoDataAvail();
                            onSourceAdded(_arg06, _arg1, _arg2);
                            reply.writeNoException();
                            return true;
                        case 7:
                            BluetoothDevice _arg07 = (BluetoothDevice) data.readTypedObject(BluetoothDevice.CREATOR);
                            BluetoothLeBroadcastMetadata _arg12 = (BluetoothLeBroadcastMetadata) data.readTypedObject(BluetoothLeBroadcastMetadata.CREATOR);
                            int _arg22 = data.readInt();
                            data.enforceNoDataAvail();
                            onSourceAddFailed(_arg07, _arg12, _arg22);
                            reply.writeNoException();
                            return true;
                        case 8:
                            BluetoothDevice _arg08 = (BluetoothDevice) data.readTypedObject(BluetoothDevice.CREATOR);
                            int _arg13 = data.readInt();
                            int _arg23 = data.readInt();
                            data.enforceNoDataAvail();
                            onSourceModified(_arg08, _arg13, _arg23);
                            reply.writeNoException();
                            return true;
                        case 9:
                            BluetoothDevice _arg09 = (BluetoothDevice) data.readTypedObject(BluetoothDevice.CREATOR);
                            int _arg14 = data.readInt();
                            int _arg24 = data.readInt();
                            data.enforceNoDataAvail();
                            onSourceModifyFailed(_arg09, _arg14, _arg24);
                            reply.writeNoException();
                            return true;
                        case 10:
                            BluetoothDevice _arg010 = (BluetoothDevice) data.readTypedObject(BluetoothDevice.CREATOR);
                            int _arg15 = data.readInt();
                            int _arg25 = data.readInt();
                            data.enforceNoDataAvail();
                            onSourceRemoved(_arg010, _arg15, _arg25);
                            reply.writeNoException();
                            return true;
                        case 11:
                            BluetoothDevice _arg011 = (BluetoothDevice) data.readTypedObject(BluetoothDevice.CREATOR);
                            int _arg16 = data.readInt();
                            int _arg26 = data.readInt();
                            data.enforceNoDataAvail();
                            onSourceRemoveFailed(_arg011, _arg16, _arg26);
                            reply.writeNoException();
                            return true;
                        case 12:
                            BluetoothDevice _arg012 = (BluetoothDevice) data.readTypedObject(BluetoothDevice.CREATOR);
                            int _arg17 = data.readInt();
                            BluetoothLeBroadcastReceiveState _arg27 = (BluetoothLeBroadcastReceiveState) data.readTypedObject(BluetoothLeBroadcastReceiveState.CREATOR);
                            data.enforceNoDataAvail();
                            onReceiveStateChanged(_arg012, _arg17, _arg27);
                            reply.writeNoException();
                            return true;
                        default:
                            return super.onTransact(code, data, reply, flags);
                    }
            }
        }

        private static class Proxy implements IBluetoothLeBroadcastAssistantCallback {
            private IBinder mRemote;

            Proxy(IBinder remote) {
                this.mRemote = remote;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            public String getInterfaceDescriptor() {
                return IBluetoothLeBroadcastAssistantCallback.DESCRIPTOR;
            }

            @Override // android.bluetooth.IBluetoothLeBroadcastAssistantCallback
            public void onSearchStarted(int reason) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IBluetoothLeBroadcastAssistantCallback.DESCRIPTOR);
                    _data.writeInt(reason);
                    this.mRemote.transact(1, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetoothLeBroadcastAssistantCallback
            public void onSearchStartFailed(int reason) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IBluetoothLeBroadcastAssistantCallback.DESCRIPTOR);
                    _data.writeInt(reason);
                    this.mRemote.transact(2, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetoothLeBroadcastAssistantCallback
            public void onSearchStopped(int reason) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IBluetoothLeBroadcastAssistantCallback.DESCRIPTOR);
                    _data.writeInt(reason);
                    this.mRemote.transact(3, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetoothLeBroadcastAssistantCallback
            public void onSearchStopFailed(int reason) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IBluetoothLeBroadcastAssistantCallback.DESCRIPTOR);
                    _data.writeInt(reason);
                    this.mRemote.transact(4, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetoothLeBroadcastAssistantCallback
            public void onSourceFound(BluetoothLeBroadcastMetadata source) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IBluetoothLeBroadcastAssistantCallback.DESCRIPTOR);
                    _data.writeTypedObject(source, 0);
                    this.mRemote.transact(5, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetoothLeBroadcastAssistantCallback
            public void onSourceAdded(BluetoothDevice sink, int sourceId, int reason) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IBluetoothLeBroadcastAssistantCallback.DESCRIPTOR);
                    _data.writeTypedObject(sink, 0);
                    _data.writeInt(sourceId);
                    _data.writeInt(reason);
                    this.mRemote.transact(6, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetoothLeBroadcastAssistantCallback
            public void onSourceAddFailed(BluetoothDevice sink, BluetoothLeBroadcastMetadata source, int reason) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IBluetoothLeBroadcastAssistantCallback.DESCRIPTOR);
                    _data.writeTypedObject(sink, 0);
                    _data.writeTypedObject(source, 0);
                    _data.writeInt(reason);
                    this.mRemote.transact(7, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetoothLeBroadcastAssistantCallback
            public void onSourceModified(BluetoothDevice sink, int sourceId, int reason) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IBluetoothLeBroadcastAssistantCallback.DESCRIPTOR);
                    _data.writeTypedObject(sink, 0);
                    _data.writeInt(sourceId);
                    _data.writeInt(reason);
                    this.mRemote.transact(8, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetoothLeBroadcastAssistantCallback
            public void onSourceModifyFailed(BluetoothDevice sink, int sourceId, int reason) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IBluetoothLeBroadcastAssistantCallback.DESCRIPTOR);
                    _data.writeTypedObject(sink, 0);
                    _data.writeInt(sourceId);
                    _data.writeInt(reason);
                    this.mRemote.transact(9, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetoothLeBroadcastAssistantCallback
            public void onSourceRemoved(BluetoothDevice sink, int sourceId, int reason) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IBluetoothLeBroadcastAssistantCallback.DESCRIPTOR);
                    _data.writeTypedObject(sink, 0);
                    _data.writeInt(sourceId);
                    _data.writeInt(reason);
                    this.mRemote.transact(10, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetoothLeBroadcastAssistantCallback
            public void onSourceRemoveFailed(BluetoothDevice sink, int sourceId, int reason) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IBluetoothLeBroadcastAssistantCallback.DESCRIPTOR);
                    _data.writeTypedObject(sink, 0);
                    _data.writeInt(sourceId);
                    _data.writeInt(reason);
                    this.mRemote.transact(11, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetoothLeBroadcastAssistantCallback
            public void onReceiveStateChanged(BluetoothDevice sink, int sourceId, BluetoothLeBroadcastReceiveState state) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IBluetoothLeBroadcastAssistantCallback.DESCRIPTOR);
                    _data.writeTypedObject(sink, 0);
                    _data.writeInt(sourceId);
                    _data.writeTypedObject(state, 0);
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

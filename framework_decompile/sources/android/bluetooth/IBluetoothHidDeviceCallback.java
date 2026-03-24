package android.bluetooth;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes.dex */
public interface IBluetoothHidDeviceCallback extends IInterface {
    void onAppStatusChanged(BluetoothDevice bluetoothDevice, boolean z) throws RemoteException;

    void onConnectionStateChanged(BluetoothDevice bluetoothDevice, int i) throws RemoteException;

    void onGetReport(BluetoothDevice bluetoothDevice, byte b, byte b2, int i) throws RemoteException;

    void onInterruptData(BluetoothDevice bluetoothDevice, byte b, byte[] bArr) throws RemoteException;

    void onSetProtocol(BluetoothDevice bluetoothDevice, byte b) throws RemoteException;

    void onSetReport(BluetoothDevice bluetoothDevice, byte b, byte b2, byte[] bArr) throws RemoteException;

    void onVirtualCableUnplug(BluetoothDevice bluetoothDevice) throws RemoteException;

    public static class Default implements IBluetoothHidDeviceCallback {
        @Override // android.bluetooth.IBluetoothHidDeviceCallback
        public void onAppStatusChanged(BluetoothDevice device, boolean registered) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetoothHidDeviceCallback
        public void onConnectionStateChanged(BluetoothDevice device, int state) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetoothHidDeviceCallback
        public void onGetReport(BluetoothDevice device, byte type, byte id, int bufferSize) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetoothHidDeviceCallback
        public void onSetReport(BluetoothDevice device, byte type, byte id, byte[] data) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetoothHidDeviceCallback
        public void onSetProtocol(BluetoothDevice device, byte protocol) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetoothHidDeviceCallback
        public void onInterruptData(BluetoothDevice device, byte reportId, byte[] data) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetoothHidDeviceCallback
        public void onVirtualCableUnplug(BluetoothDevice device) throws RemoteException {
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }
    }

    public static abstract class Stub extends Binder implements IBluetoothHidDeviceCallback {
        public static final String DESCRIPTOR = "android.bluetooth.IBluetoothHidDeviceCallback";
        static final int TRANSACTION_onAppStatusChanged = 1;
        static final int TRANSACTION_onConnectionStateChanged = 2;
        static final int TRANSACTION_onGetReport = 3;
        static final int TRANSACTION_onInterruptData = 6;
        static final int TRANSACTION_onSetProtocol = 5;
        static final int TRANSACTION_onSetReport = 4;
        static final int TRANSACTION_onVirtualCableUnplug = 7;

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IBluetoothHidDeviceCallback asInterface(IBinder obj) {
            if (obj == null) {
                return null;
            }
            IInterface iin = obj.queryLocalInterface(DESCRIPTOR);
            if (iin != null && (iin instanceof IBluetoothHidDeviceCallback)) {
                return (IBluetoothHidDeviceCallback) iin;
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
                    return "onAppStatusChanged";
                case 2:
                    return "onConnectionStateChanged";
                case 3:
                    return "onGetReport";
                case 4:
                    return "onSetReport";
                case 5:
                    return "onSetProtocol";
                case 6:
                    return "onInterruptData";
                case 7:
                    return "onVirtualCableUnplug";
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
                            BluetoothDevice _arg0 = (BluetoothDevice) data.readTypedObject(BluetoothDevice.CREATOR);
                            boolean _arg1 = data.readBoolean();
                            data.enforceNoDataAvail();
                            onAppStatusChanged(_arg0, _arg1);
                            reply.writeNoException();
                            return true;
                        case 2:
                            BluetoothDevice _arg02 = (BluetoothDevice) data.readTypedObject(BluetoothDevice.CREATOR);
                            int _arg12 = data.readInt();
                            data.enforceNoDataAvail();
                            onConnectionStateChanged(_arg02, _arg12);
                            reply.writeNoException();
                            return true;
                        case 3:
                            BluetoothDevice _arg03 = (BluetoothDevice) data.readTypedObject(BluetoothDevice.CREATOR);
                            byte _arg13 = data.readByte();
                            byte _arg2 = data.readByte();
                            int _arg3 = data.readInt();
                            data.enforceNoDataAvail();
                            onGetReport(_arg03, _arg13, _arg2, _arg3);
                            reply.writeNoException();
                            return true;
                        case 4:
                            BluetoothDevice _arg04 = (BluetoothDevice) data.readTypedObject(BluetoothDevice.CREATOR);
                            byte _arg14 = data.readByte();
                            byte _arg22 = data.readByte();
                            byte[] _arg32 = data.createByteArray();
                            data.enforceNoDataAvail();
                            onSetReport(_arg04, _arg14, _arg22, _arg32);
                            reply.writeNoException();
                            return true;
                        case 5:
                            BluetoothDevice _arg05 = (BluetoothDevice) data.readTypedObject(BluetoothDevice.CREATOR);
                            byte _arg15 = data.readByte();
                            data.enforceNoDataAvail();
                            onSetProtocol(_arg05, _arg15);
                            reply.writeNoException();
                            return true;
                        case 6:
                            BluetoothDevice _arg06 = (BluetoothDevice) data.readTypedObject(BluetoothDevice.CREATOR);
                            byte _arg16 = data.readByte();
                            byte[] _arg23 = data.createByteArray();
                            data.enforceNoDataAvail();
                            onInterruptData(_arg06, _arg16, _arg23);
                            reply.writeNoException();
                            return true;
                        case 7:
                            BluetoothDevice _arg07 = (BluetoothDevice) data.readTypedObject(BluetoothDevice.CREATOR);
                            data.enforceNoDataAvail();
                            onVirtualCableUnplug(_arg07);
                            reply.writeNoException();
                            return true;
                        default:
                            return super.onTransact(code, data, reply, flags);
                    }
            }
        }

        private static class Proxy implements IBluetoothHidDeviceCallback {
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

            @Override // android.bluetooth.IBluetoothHidDeviceCallback
            public void onAppStatusChanged(BluetoothDevice device, boolean registered) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeTypedObject(device, 0);
                    _data.writeBoolean(registered);
                    this.mRemote.transact(1, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetoothHidDeviceCallback
            public void onConnectionStateChanged(BluetoothDevice device, int state) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeTypedObject(device, 0);
                    _data.writeInt(state);
                    this.mRemote.transact(2, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetoothHidDeviceCallback
            public void onGetReport(BluetoothDevice device, byte type, byte id, int bufferSize) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeTypedObject(device, 0);
                    _data.writeByte(type);
                    _data.writeByte(id);
                    _data.writeInt(bufferSize);
                    this.mRemote.transact(3, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetoothHidDeviceCallback
            public void onSetReport(BluetoothDevice device, byte type, byte id, byte[] data) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeTypedObject(device, 0);
                    _data.writeByte(type);
                    _data.writeByte(id);
                    _data.writeByteArray(data);
                    this.mRemote.transact(4, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetoothHidDeviceCallback
            public void onSetProtocol(BluetoothDevice device, byte protocol) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeTypedObject(device, 0);
                    _data.writeByte(protocol);
                    this.mRemote.transact(5, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetoothHidDeviceCallback
            public void onInterruptData(BluetoothDevice device, byte reportId, byte[] data) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeTypedObject(device, 0);
                    _data.writeByte(reportId);
                    _data.writeByteArray(data);
                    this.mRemote.transact(6, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetoothHidDeviceCallback
            public void onVirtualCableUnplug(BluetoothDevice device) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeTypedObject(device, 0);
                    this.mRemote.transact(7, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }
        }

        @Override // android.os.Binder
        public int getMaxTransactionId() {
            return 6;
        }
    }
}

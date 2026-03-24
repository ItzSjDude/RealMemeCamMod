package android.bluetooth;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import java.util.List;

/* loaded from: classes.dex */
public interface IBluetoothGattCallback extends IInterface {
    void onCharacteristicRead(String str, int i, int i2, byte[] bArr) throws RemoteException;

    void onCharacteristicWrite(String str, int i, int i2, byte[] bArr) throws RemoteException;

    void onClientConnectionState(int i, int i2, boolean z, String str) throws RemoteException;

    void onClientRegistered(int i, int i2) throws RemoteException;

    void onConfigureMTU(String str, int i, int i2) throws RemoteException;

    void onConnectionUpdated(String str, int i, int i2, int i3, int i4) throws RemoteException;

    void onDescriptorRead(String str, int i, int i2, byte[] bArr) throws RemoteException;

    void onDescriptorWrite(String str, int i, int i2, byte[] bArr) throws RemoteException;

    void onExecuteWrite(String str, int i) throws RemoteException;

    void onNotify(String str, int i, byte[] bArr) throws RemoteException;

    void onPhyRead(String str, int i, int i2, int i3) throws RemoteException;

    void onPhyUpdate(String str, int i, int i2, int i3) throws RemoteException;

    void onReadRemoteRssi(String str, int i, int i2) throws RemoteException;

    void onSearchComplete(String str, List<BluetoothGattService> list, int i) throws RemoteException;

    void onServiceChanged(String str) throws RemoteException;

    void onSubrateChange(String str, int i, int i2, int i3, int i4, int i5) throws RemoteException;

    public static class Default implements IBluetoothGattCallback {
        @Override // android.bluetooth.IBluetoothGattCallback
        public void onClientRegistered(int status, int clientIf) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetoothGattCallback
        public void onClientConnectionState(int status, int clientIf, boolean connected, String address) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetoothGattCallback
        public void onPhyUpdate(String address, int txPhy, int rxPhy, int status) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetoothGattCallback
        public void onPhyRead(String address, int txPhy, int rxPhy, int status) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetoothGattCallback
        public void onSearchComplete(String address, List<BluetoothGattService> services, int status) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetoothGattCallback
        public void onCharacteristicRead(String address, int status, int handle, byte[] value) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetoothGattCallback
        public void onCharacteristicWrite(String address, int status, int handle, byte[] value) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetoothGattCallback
        public void onExecuteWrite(String address, int status) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetoothGattCallback
        public void onDescriptorRead(String address, int status, int handle, byte[] value) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetoothGattCallback
        public void onDescriptorWrite(String address, int status, int handle, byte[] value) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetoothGattCallback
        public void onNotify(String address, int handle, byte[] value) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetoothGattCallback
        public void onReadRemoteRssi(String address, int rssi, int status) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetoothGattCallback
        public void onConfigureMTU(String address, int mtu, int status) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetoothGattCallback
        public void onConnectionUpdated(String address, int interval, int latency, int timeout, int status) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetoothGattCallback
        public void onServiceChanged(String address) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetoothGattCallback
        public void onSubrateChange(String address, int subrateFactor, int latency, int contNum, int timeout, int status) throws RemoteException {
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }
    }

    public static abstract class Stub extends Binder implements IBluetoothGattCallback {
        public static final String DESCRIPTOR = "android.bluetooth.IBluetoothGattCallback";
        static final int TRANSACTION_onCharacteristicRead = 6;
        static final int TRANSACTION_onCharacteristicWrite = 7;
        static final int TRANSACTION_onClientConnectionState = 2;
        static final int TRANSACTION_onClientRegistered = 1;
        static final int TRANSACTION_onConfigureMTU = 13;
        static final int TRANSACTION_onConnectionUpdated = 14;
        static final int TRANSACTION_onDescriptorRead = 9;
        static final int TRANSACTION_onDescriptorWrite = 10;
        static final int TRANSACTION_onExecuteWrite = 8;
        static final int TRANSACTION_onNotify = 11;
        static final int TRANSACTION_onPhyRead = 4;
        static final int TRANSACTION_onPhyUpdate = 3;
        static final int TRANSACTION_onReadRemoteRssi = 12;
        static final int TRANSACTION_onSearchComplete = 5;
        static final int TRANSACTION_onServiceChanged = 15;
        static final int TRANSACTION_onSubrateChange = 16;

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IBluetoothGattCallback asInterface(IBinder obj) {
            if (obj == null) {
                return null;
            }
            IInterface iin = obj.queryLocalInterface(DESCRIPTOR);
            if (iin != null && (iin instanceof IBluetoothGattCallback)) {
                return (IBluetoothGattCallback) iin;
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
                    return "onClientRegistered";
                case 2:
                    return "onClientConnectionState";
                case 3:
                    return "onPhyUpdate";
                case 4:
                    return "onPhyRead";
                case 5:
                    return "onSearchComplete";
                case 6:
                    return "onCharacteristicRead";
                case 7:
                    return "onCharacteristicWrite";
                case 8:
                    return "onExecuteWrite";
                case 9:
                    return "onDescriptorRead";
                case 10:
                    return "onDescriptorWrite";
                case 11:
                    return "onNotify";
                case 12:
                    return "onReadRemoteRssi";
                case 13:
                    return "onConfigureMTU";
                case 14:
                    return "onConnectionUpdated";
                case 15:
                    return "onServiceChanged";
                case 16:
                    return "onSubrateChange";
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
                            int _arg0 = data.readInt();
                            int _arg1 = data.readInt();
                            data.enforceNoDataAvail();
                            onClientRegistered(_arg0, _arg1);
                            return true;
                        case 2:
                            int _arg02 = data.readInt();
                            int _arg12 = data.readInt();
                            boolean _arg2 = data.readBoolean();
                            String _arg3 = data.readString();
                            data.enforceNoDataAvail();
                            onClientConnectionState(_arg02, _arg12, _arg2, _arg3);
                            return true;
                        case 3:
                            String _arg03 = data.readString();
                            int _arg13 = data.readInt();
                            int _arg22 = data.readInt();
                            int _arg32 = data.readInt();
                            data.enforceNoDataAvail();
                            onPhyUpdate(_arg03, _arg13, _arg22, _arg32);
                            return true;
                        case 4:
                            String _arg04 = data.readString();
                            int _arg14 = data.readInt();
                            int _arg23 = data.readInt();
                            int _arg33 = data.readInt();
                            data.enforceNoDataAvail();
                            onPhyRead(_arg04, _arg14, _arg23, _arg33);
                            return true;
                        case 5:
                            String _arg05 = data.readString();
                            List<BluetoothGattService> _arg15 = data.createTypedArrayList(BluetoothGattService.CREATOR);
                            int _arg24 = data.readInt();
                            data.enforceNoDataAvail();
                            onSearchComplete(_arg05, _arg15, _arg24);
                            return true;
                        case 6:
                            String _arg06 = data.readString();
                            int _arg16 = data.readInt();
                            int _arg25 = data.readInt();
                            byte[] _arg34 = data.createByteArray();
                            data.enforceNoDataAvail();
                            onCharacteristicRead(_arg06, _arg16, _arg25, _arg34);
                            return true;
                        case 7:
                            String _arg07 = data.readString();
                            int _arg17 = data.readInt();
                            int _arg26 = data.readInt();
                            byte[] _arg35 = data.createByteArray();
                            data.enforceNoDataAvail();
                            onCharacteristicWrite(_arg07, _arg17, _arg26, _arg35);
                            return true;
                        case 8:
                            String _arg08 = data.readString();
                            int _arg18 = data.readInt();
                            data.enforceNoDataAvail();
                            onExecuteWrite(_arg08, _arg18);
                            return true;
                        case 9:
                            String _arg09 = data.readString();
                            int _arg19 = data.readInt();
                            int _arg27 = data.readInt();
                            byte[] _arg36 = data.createByteArray();
                            data.enforceNoDataAvail();
                            onDescriptorRead(_arg09, _arg19, _arg27, _arg36);
                            return true;
                        case 10:
                            String _arg010 = data.readString();
                            int _arg110 = data.readInt();
                            int _arg28 = data.readInt();
                            byte[] _arg37 = data.createByteArray();
                            data.enforceNoDataAvail();
                            onDescriptorWrite(_arg010, _arg110, _arg28, _arg37);
                            return true;
                        case 11:
                            String _arg011 = data.readString();
                            int _arg111 = data.readInt();
                            byte[] _arg29 = data.createByteArray();
                            data.enforceNoDataAvail();
                            onNotify(_arg011, _arg111, _arg29);
                            return true;
                        case 12:
                            String _arg012 = data.readString();
                            int _arg112 = data.readInt();
                            int _arg210 = data.readInt();
                            data.enforceNoDataAvail();
                            onReadRemoteRssi(_arg012, _arg112, _arg210);
                            return true;
                        case 13:
                            String _arg013 = data.readString();
                            int _arg113 = data.readInt();
                            int _arg211 = data.readInt();
                            data.enforceNoDataAvail();
                            onConfigureMTU(_arg013, _arg113, _arg211);
                            return true;
                        case 14:
                            String _arg014 = data.readString();
                            int _arg114 = data.readInt();
                            int _arg212 = data.readInt();
                            int _arg38 = data.readInt();
                            int _arg4 = data.readInt();
                            data.enforceNoDataAvail();
                            onConnectionUpdated(_arg014, _arg114, _arg212, _arg38, _arg4);
                            return true;
                        case 15:
                            String _arg015 = data.readString();
                            data.enforceNoDataAvail();
                            onServiceChanged(_arg015);
                            return true;
                        case 16:
                            String _arg016 = data.readString();
                            int _arg115 = data.readInt();
                            int _arg213 = data.readInt();
                            int _arg39 = data.readInt();
                            int _arg42 = data.readInt();
                            int _arg5 = data.readInt();
                            data.enforceNoDataAvail();
                            onSubrateChange(_arg016, _arg115, _arg213, _arg39, _arg42, _arg5);
                            return true;
                        default:
                            return super.onTransact(code, data, reply, flags);
                    }
            }
        }

        private static class Proxy implements IBluetoothGattCallback {
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

            @Override // android.bluetooth.IBluetoothGattCallback
            public void onClientRegistered(int status, int clientIf) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(status);
                    _data.writeInt(clientIf);
                    this.mRemote.transact(1, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetoothGattCallback
            public void onClientConnectionState(int status, int clientIf, boolean connected, String address) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(status);
                    _data.writeInt(clientIf);
                    _data.writeBoolean(connected);
                    _data.writeString(address);
                    this.mRemote.transact(2, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetoothGattCallback
            public void onPhyUpdate(String address, int txPhy, int rxPhy, int status) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(address);
                    _data.writeInt(txPhy);
                    _data.writeInt(rxPhy);
                    _data.writeInt(status);
                    this.mRemote.transact(3, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetoothGattCallback
            public void onPhyRead(String address, int txPhy, int rxPhy, int status) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(address);
                    _data.writeInt(txPhy);
                    _data.writeInt(rxPhy);
                    _data.writeInt(status);
                    this.mRemote.transact(4, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetoothGattCallback
            public void onSearchComplete(String address, List<BluetoothGattService> services, int status) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(address);
                    _data.writeTypedList(services);
                    _data.writeInt(status);
                    this.mRemote.transact(5, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetoothGattCallback
            public void onCharacteristicRead(String address, int status, int handle, byte[] value) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(address);
                    _data.writeInt(status);
                    _data.writeInt(handle);
                    _data.writeByteArray(value);
                    this.mRemote.transact(6, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetoothGattCallback
            public void onCharacteristicWrite(String address, int status, int handle, byte[] value) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(address);
                    _data.writeInt(status);
                    _data.writeInt(handle);
                    _data.writeByteArray(value);
                    this.mRemote.transact(7, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetoothGattCallback
            public void onExecuteWrite(String address, int status) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(address);
                    _data.writeInt(status);
                    this.mRemote.transact(8, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetoothGattCallback
            public void onDescriptorRead(String address, int status, int handle, byte[] value) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(address);
                    _data.writeInt(status);
                    _data.writeInt(handle);
                    _data.writeByteArray(value);
                    this.mRemote.transact(9, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetoothGattCallback
            public void onDescriptorWrite(String address, int status, int handle, byte[] value) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(address);
                    _data.writeInt(status);
                    _data.writeInt(handle);
                    _data.writeByteArray(value);
                    this.mRemote.transact(10, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetoothGattCallback
            public void onNotify(String address, int handle, byte[] value) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(address);
                    _data.writeInt(handle);
                    _data.writeByteArray(value);
                    this.mRemote.transact(11, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetoothGattCallback
            public void onReadRemoteRssi(String address, int rssi, int status) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(address);
                    _data.writeInt(rssi);
                    _data.writeInt(status);
                    this.mRemote.transact(12, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetoothGattCallback
            public void onConfigureMTU(String address, int mtu, int status) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(address);
                    _data.writeInt(mtu);
                    _data.writeInt(status);
                    this.mRemote.transact(13, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetoothGattCallback
            public void onConnectionUpdated(String address, int interval, int latency, int timeout, int status) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(address);
                    _data.writeInt(interval);
                    _data.writeInt(latency);
                    _data.writeInt(timeout);
                    _data.writeInt(status);
                    this.mRemote.transact(14, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetoothGattCallback
            public void onServiceChanged(String address) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(address);
                    this.mRemote.transact(15, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetoothGattCallback
            public void onSubrateChange(String address, int subrateFactor, int latency, int contNum, int timeout, int status) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(address);
                    _data.writeInt(subrateFactor);
                    _data.writeInt(latency);
                    _data.writeInt(contNum);
                    _data.writeInt(timeout);
                    _data.writeInt(status);
                    this.mRemote.transact(16, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }
        }

        @Override // android.os.Binder
        public int getMaxTransactionId() {
            return 15;
        }
    }
}

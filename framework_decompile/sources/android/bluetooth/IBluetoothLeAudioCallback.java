package android.bluetooth;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes.dex */
public interface IBluetoothLeAudioCallback extends IInterface {
    public static final String DESCRIPTOR = "android.bluetooth.IBluetoothLeAudioCallback";

    void onCodecConfigChanged(int i, BluetoothLeAudioCodecStatus bluetoothLeAudioCodecStatus) throws RemoteException;

    void onGroupNodeAdded(BluetoothDevice bluetoothDevice, int i) throws RemoteException;

    void onGroupNodeRemoved(BluetoothDevice bluetoothDevice, int i) throws RemoteException;

    void onGroupStatusChanged(int i, int i2) throws RemoteException;

    public static class Default implements IBluetoothLeAudioCallback {
        @Override // android.bluetooth.IBluetoothLeAudioCallback
        public void onCodecConfigChanged(int groupId, BluetoothLeAudioCodecStatus status) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetoothLeAudioCallback
        public void onGroupNodeAdded(BluetoothDevice device, int groupId) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetoothLeAudioCallback
        public void onGroupNodeRemoved(BluetoothDevice device, int groupId) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetoothLeAudioCallback
        public void onGroupStatusChanged(int groupId, int groupStatus) throws RemoteException {
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }
    }

    public static abstract class Stub extends Binder implements IBluetoothLeAudioCallback {
        static final int TRANSACTION_onCodecConfigChanged = 1;
        static final int TRANSACTION_onGroupNodeAdded = 2;
        static final int TRANSACTION_onGroupNodeRemoved = 3;
        static final int TRANSACTION_onGroupStatusChanged = 4;

        public Stub() {
            attachInterface(this, IBluetoothLeAudioCallback.DESCRIPTOR);
        }

        public static IBluetoothLeAudioCallback asInterface(IBinder obj) {
            if (obj == null) {
                return null;
            }
            IInterface iin = obj.queryLocalInterface(IBluetoothLeAudioCallback.DESCRIPTOR);
            if (iin != null && (iin instanceof IBluetoothLeAudioCallback)) {
                return (IBluetoothLeAudioCallback) iin;
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
                    return "onCodecConfigChanged";
                case 2:
                    return "onGroupNodeAdded";
                case 3:
                    return "onGroupNodeRemoved";
                case 4:
                    return "onGroupStatusChanged";
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
                data.enforceInterface(IBluetoothLeAudioCallback.DESCRIPTOR);
            }
            switch (code) {
                case IBinder.INTERFACE_TRANSACTION /* 1598968902 */:
                    reply.writeString(IBluetoothLeAudioCallback.DESCRIPTOR);
                    return true;
                default:
                    switch (code) {
                        case 1:
                            int _arg0 = data.readInt();
                            BluetoothLeAudioCodecStatus _arg1 = (BluetoothLeAudioCodecStatus) data.readTypedObject(BluetoothLeAudioCodecStatus.CREATOR);
                            data.enforceNoDataAvail();
                            onCodecConfigChanged(_arg0, _arg1);
                            return true;
                        case 2:
                            BluetoothDevice _arg02 = (BluetoothDevice) data.readTypedObject(BluetoothDevice.CREATOR);
                            int _arg12 = data.readInt();
                            data.enforceNoDataAvail();
                            onGroupNodeAdded(_arg02, _arg12);
                            return true;
                        case 3:
                            BluetoothDevice _arg03 = (BluetoothDevice) data.readTypedObject(BluetoothDevice.CREATOR);
                            int _arg13 = data.readInt();
                            data.enforceNoDataAvail();
                            onGroupNodeRemoved(_arg03, _arg13);
                            return true;
                        case 4:
                            int _arg04 = data.readInt();
                            int _arg14 = data.readInt();
                            data.enforceNoDataAvail();
                            onGroupStatusChanged(_arg04, _arg14);
                            return true;
                        default:
                            return super.onTransact(code, data, reply, flags);
                    }
            }
        }

        private static class Proxy implements IBluetoothLeAudioCallback {
            private IBinder mRemote;

            Proxy(IBinder remote) {
                this.mRemote = remote;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            public String getInterfaceDescriptor() {
                return IBluetoothLeAudioCallback.DESCRIPTOR;
            }

            @Override // android.bluetooth.IBluetoothLeAudioCallback
            public void onCodecConfigChanged(int groupId, BluetoothLeAudioCodecStatus status) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IBluetoothLeAudioCallback.DESCRIPTOR);
                    _data.writeInt(groupId);
                    _data.writeTypedObject(status, 0);
                    this.mRemote.transact(1, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetoothLeAudioCallback
            public void onGroupNodeAdded(BluetoothDevice device, int groupId) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IBluetoothLeAudioCallback.DESCRIPTOR);
                    _data.writeTypedObject(device, 0);
                    _data.writeInt(groupId);
                    this.mRemote.transact(2, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetoothLeAudioCallback
            public void onGroupNodeRemoved(BluetoothDevice device, int groupId) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IBluetoothLeAudioCallback.DESCRIPTOR);
                    _data.writeTypedObject(device, 0);
                    _data.writeInt(groupId);
                    this.mRemote.transact(3, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetoothLeAudioCallback
            public void onGroupStatusChanged(int groupId, int groupStatus) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IBluetoothLeAudioCallback.DESCRIPTOR);
                    _data.writeInt(groupId);
                    _data.writeInt(groupStatus);
                    this.mRemote.transact(4, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }
        }

        @Override // android.os.Binder
        public int getMaxTransactionId() {
            return 3;
        }
    }
}

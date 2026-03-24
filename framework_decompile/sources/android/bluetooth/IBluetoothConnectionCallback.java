package android.bluetooth;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes.dex */
public interface IBluetoothConnectionCallback extends IInterface {
    public static final String DESCRIPTOR = "android.bluetooth.IBluetoothConnectionCallback";

    void onDeviceConnected(BluetoothDevice bluetoothDevice) throws RemoteException;

    void onDeviceDisconnected(BluetoothDevice bluetoothDevice, int i) throws RemoteException;

    public static class Default implements IBluetoothConnectionCallback {
        @Override // android.bluetooth.IBluetoothConnectionCallback
        public void onDeviceConnected(BluetoothDevice device) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetoothConnectionCallback
        public void onDeviceDisconnected(BluetoothDevice device, int hciReason) throws RemoteException {
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }
    }

    public static abstract class Stub extends Binder implements IBluetoothConnectionCallback {
        static final int TRANSACTION_onDeviceConnected = 1;
        static final int TRANSACTION_onDeviceDisconnected = 2;

        public Stub() {
            attachInterface(this, IBluetoothConnectionCallback.DESCRIPTOR);
        }

        public static IBluetoothConnectionCallback asInterface(IBinder obj) {
            if (obj == null) {
                return null;
            }
            IInterface iin = obj.queryLocalInterface(IBluetoothConnectionCallback.DESCRIPTOR);
            if (iin != null && (iin instanceof IBluetoothConnectionCallback)) {
                return (IBluetoothConnectionCallback) iin;
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
                    return "onDeviceConnected";
                case 2:
                    return "onDeviceDisconnected";
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
                data.enforceInterface(IBluetoothConnectionCallback.DESCRIPTOR);
            }
            switch (code) {
                case IBinder.INTERFACE_TRANSACTION /* 1598968902 */:
                    reply.writeString(IBluetoothConnectionCallback.DESCRIPTOR);
                    return true;
                default:
                    switch (code) {
                        case 1:
                            BluetoothDevice _arg0 = (BluetoothDevice) data.readTypedObject(BluetoothDevice.CREATOR);
                            data.enforceNoDataAvail();
                            onDeviceConnected(_arg0);
                            return true;
                        case 2:
                            BluetoothDevice _arg02 = (BluetoothDevice) data.readTypedObject(BluetoothDevice.CREATOR);
                            int _arg1 = data.readInt();
                            data.enforceNoDataAvail();
                            onDeviceDisconnected(_arg02, _arg1);
                            return true;
                        default:
                            return super.onTransact(code, data, reply, flags);
                    }
            }
        }

        private static class Proxy implements IBluetoothConnectionCallback {
            private IBinder mRemote;

            Proxy(IBinder remote) {
                this.mRemote = remote;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            public String getInterfaceDescriptor() {
                return IBluetoothConnectionCallback.DESCRIPTOR;
            }

            @Override // android.bluetooth.IBluetoothConnectionCallback
            public void onDeviceConnected(BluetoothDevice device) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IBluetoothConnectionCallback.DESCRIPTOR);
                    _data.writeTypedObject(device, 0);
                    this.mRemote.transact(1, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetoothConnectionCallback
            public void onDeviceDisconnected(BluetoothDevice device, int hciReason) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IBluetoothConnectionCallback.DESCRIPTOR);
                    _data.writeTypedObject(device, 0);
                    _data.writeInt(hciReason);
                    this.mRemote.transact(2, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }
        }

        @Override // android.os.Binder
        public int getMaxTransactionId() {
            return 1;
        }
    }
}

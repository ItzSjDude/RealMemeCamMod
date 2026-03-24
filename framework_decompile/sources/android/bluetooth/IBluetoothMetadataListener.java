package android.bluetooth;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes.dex */
public interface IBluetoothMetadataListener extends IInterface {
    public static final String DESCRIPTOR = "android.bluetooth.IBluetoothMetadataListener";

    void onMetadataChanged(BluetoothDevice bluetoothDevice, int i, byte[] bArr) throws RemoteException;

    public static class Default implements IBluetoothMetadataListener {
        @Override // android.bluetooth.IBluetoothMetadataListener
        public void onMetadataChanged(BluetoothDevice devices, int key, byte[] value) throws RemoteException {
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }
    }

    public static abstract class Stub extends Binder implements IBluetoothMetadataListener {
        static final int TRANSACTION_onMetadataChanged = 1;

        public Stub() {
            attachInterface(this, IBluetoothMetadataListener.DESCRIPTOR);
        }

        public static IBluetoothMetadataListener asInterface(IBinder obj) {
            if (obj == null) {
                return null;
            }
            IInterface iin = obj.queryLocalInterface(IBluetoothMetadataListener.DESCRIPTOR);
            if (iin != null && (iin instanceof IBluetoothMetadataListener)) {
                return (IBluetoothMetadataListener) iin;
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
                    return "onMetadataChanged";
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
                data.enforceInterface(IBluetoothMetadataListener.DESCRIPTOR);
            }
            switch (code) {
                case IBinder.INTERFACE_TRANSACTION /* 1598968902 */:
                    reply.writeString(IBluetoothMetadataListener.DESCRIPTOR);
                    return true;
                default:
                    switch (code) {
                        case 1:
                            BluetoothDevice _arg0 = (BluetoothDevice) data.readTypedObject(BluetoothDevice.CREATOR);
                            int _arg1 = data.readInt();
                            byte[] _arg2 = data.createByteArray();
                            data.enforceNoDataAvail();
                            onMetadataChanged(_arg0, _arg1, _arg2);
                            return true;
                        default:
                            return super.onTransact(code, data, reply, flags);
                    }
            }
        }

        private static class Proxy implements IBluetoothMetadataListener {
            private IBinder mRemote;

            Proxy(IBinder remote) {
                this.mRemote = remote;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            public String getInterfaceDescriptor() {
                return IBluetoothMetadataListener.DESCRIPTOR;
            }

            @Override // android.bluetooth.IBluetoothMetadataListener
            public void onMetadataChanged(BluetoothDevice devices, int key, byte[] value) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IBluetoothMetadataListener.DESCRIPTOR);
                    _data.writeTypedObject(devices, 0);
                    _data.writeInt(key);
                    _data.writeByteArray(value);
                    this.mRemote.transact(1, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }
        }

        @Override // android.os.Binder
        public int getMaxTransactionId() {
            return 0;
        }
    }
}

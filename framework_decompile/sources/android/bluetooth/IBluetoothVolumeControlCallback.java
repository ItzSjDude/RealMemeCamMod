package android.bluetooth;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes.dex */
public interface IBluetoothVolumeControlCallback extends IInterface {
    public static final String DESCRIPTOR = "android.bluetooth.IBluetoothVolumeControlCallback";

    void onVolumeOffsetChanged(BluetoothDevice bluetoothDevice, int i) throws RemoteException;

    public static class Default implements IBluetoothVolumeControlCallback {
        @Override // android.bluetooth.IBluetoothVolumeControlCallback
        public void onVolumeOffsetChanged(BluetoothDevice device, int volumeOffset) throws RemoteException {
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }
    }

    public static abstract class Stub extends Binder implements IBluetoothVolumeControlCallback {
        static final int TRANSACTION_onVolumeOffsetChanged = 1;

        public Stub() {
            attachInterface(this, IBluetoothVolumeControlCallback.DESCRIPTOR);
        }

        public static IBluetoothVolumeControlCallback asInterface(IBinder obj) {
            if (obj == null) {
                return null;
            }
            IInterface iin = obj.queryLocalInterface(IBluetoothVolumeControlCallback.DESCRIPTOR);
            if (iin != null && (iin instanceof IBluetoothVolumeControlCallback)) {
                return (IBluetoothVolumeControlCallback) iin;
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
                    return "onVolumeOffsetChanged";
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
                data.enforceInterface(IBluetoothVolumeControlCallback.DESCRIPTOR);
            }
            switch (code) {
                case IBinder.INTERFACE_TRANSACTION /* 1598968902 */:
                    reply.writeString(IBluetoothVolumeControlCallback.DESCRIPTOR);
                    return true;
                default:
                    switch (code) {
                        case 1:
                            BluetoothDevice _arg0 = (BluetoothDevice) data.readTypedObject(BluetoothDevice.CREATOR);
                            int _arg1 = data.readInt();
                            data.enforceNoDataAvail();
                            onVolumeOffsetChanged(_arg0, _arg1);
                            return true;
                        default:
                            return super.onTransact(code, data, reply, flags);
                    }
            }
        }

        private static class Proxy implements IBluetoothVolumeControlCallback {
            private IBinder mRemote;

            Proxy(IBinder remote) {
                this.mRemote = remote;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            public String getInterfaceDescriptor() {
                return IBluetoothVolumeControlCallback.DESCRIPTOR;
            }

            @Override // android.bluetooth.IBluetoothVolumeControlCallback
            public void onVolumeOffsetChanged(BluetoothDevice device, int volumeOffset) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IBluetoothVolumeControlCallback.DESCRIPTOR);
                    _data.writeTypedObject(device, 0);
                    _data.writeInt(volumeOffset);
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

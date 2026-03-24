package android.bluetooth;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes.dex */
public interface IBluetoothCsipSetCoordinatorCallback extends IInterface {
    public static final String DESCRIPTOR = "android.bluetooth.IBluetoothCsipSetCoordinatorCallback";

    void onCsisSetMemberAvailable(BluetoothDevice bluetoothDevice, int i) throws RemoteException;

    public static class Default implements IBluetoothCsipSetCoordinatorCallback {
        @Override // android.bluetooth.IBluetoothCsipSetCoordinatorCallback
        public void onCsisSetMemberAvailable(BluetoothDevice device, int groupId) throws RemoteException {
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }
    }

    public static abstract class Stub extends Binder implements IBluetoothCsipSetCoordinatorCallback {
        static final int TRANSACTION_onCsisSetMemberAvailable = 1;

        public Stub() {
            attachInterface(this, IBluetoothCsipSetCoordinatorCallback.DESCRIPTOR);
        }

        public static IBluetoothCsipSetCoordinatorCallback asInterface(IBinder obj) {
            if (obj == null) {
                return null;
            }
            IInterface iin = obj.queryLocalInterface(IBluetoothCsipSetCoordinatorCallback.DESCRIPTOR);
            if (iin != null && (iin instanceof IBluetoothCsipSetCoordinatorCallback)) {
                return (IBluetoothCsipSetCoordinatorCallback) iin;
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
                    return "onCsisSetMemberAvailable";
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
                data.enforceInterface(IBluetoothCsipSetCoordinatorCallback.DESCRIPTOR);
            }
            switch (code) {
                case IBinder.INTERFACE_TRANSACTION /* 1598968902 */:
                    reply.writeString(IBluetoothCsipSetCoordinatorCallback.DESCRIPTOR);
                    return true;
                default:
                    switch (code) {
                        case 1:
                            BluetoothDevice _arg0 = (BluetoothDevice) data.readTypedObject(BluetoothDevice.CREATOR);
                            int _arg1 = data.readInt();
                            data.enforceNoDataAvail();
                            onCsisSetMemberAvailable(_arg0, _arg1);
                            return true;
                        default:
                            return super.onTransact(code, data, reply, flags);
                    }
            }
        }

        private static class Proxy implements IBluetoothCsipSetCoordinatorCallback {
            private IBinder mRemote;

            Proxy(IBinder remote) {
                this.mRemote = remote;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            public String getInterfaceDescriptor() {
                return IBluetoothCsipSetCoordinatorCallback.DESCRIPTOR;
            }

            @Override // android.bluetooth.IBluetoothCsipSetCoordinatorCallback
            public void onCsisSetMemberAvailable(BluetoothDevice device, int groupId) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IBluetoothCsipSetCoordinatorCallback.DESCRIPTOR);
                    _data.writeTypedObject(device, 0);
                    _data.writeInt(groupId);
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

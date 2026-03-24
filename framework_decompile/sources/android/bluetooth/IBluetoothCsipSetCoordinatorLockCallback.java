package android.bluetooth;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes.dex */
public interface IBluetoothCsipSetCoordinatorLockCallback extends IInterface {
    public static final String DESCRIPTOR = "android.bluetooth.IBluetoothCsipSetCoordinatorLockCallback";

    void onGroupLockSet(int i, int i2, boolean z) throws RemoteException;

    public static class Default implements IBluetoothCsipSetCoordinatorLockCallback {
        @Override // android.bluetooth.IBluetoothCsipSetCoordinatorLockCallback
        public void onGroupLockSet(int groupId, int opStatus, boolean isLocked) throws RemoteException {
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }
    }

    public static abstract class Stub extends Binder implements IBluetoothCsipSetCoordinatorLockCallback {
        static final int TRANSACTION_onGroupLockSet = 1;

        public Stub() {
            attachInterface(this, IBluetoothCsipSetCoordinatorLockCallback.DESCRIPTOR);
        }

        public static IBluetoothCsipSetCoordinatorLockCallback asInterface(IBinder obj) {
            if (obj == null) {
                return null;
            }
            IInterface iin = obj.queryLocalInterface(IBluetoothCsipSetCoordinatorLockCallback.DESCRIPTOR);
            if (iin != null && (iin instanceof IBluetoothCsipSetCoordinatorLockCallback)) {
                return (IBluetoothCsipSetCoordinatorLockCallback) iin;
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
                    return "onGroupLockSet";
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
                data.enforceInterface(IBluetoothCsipSetCoordinatorLockCallback.DESCRIPTOR);
            }
            switch (code) {
                case IBinder.INTERFACE_TRANSACTION /* 1598968902 */:
                    reply.writeString(IBluetoothCsipSetCoordinatorLockCallback.DESCRIPTOR);
                    return true;
                default:
                    switch (code) {
                        case 1:
                            int _arg0 = data.readInt();
                            int _arg1 = data.readInt();
                            boolean _arg2 = data.readBoolean();
                            data.enforceNoDataAvail();
                            onGroupLockSet(_arg0, _arg1, _arg2);
                            return true;
                        default:
                            return super.onTransact(code, data, reply, flags);
                    }
            }
        }

        private static class Proxy implements IBluetoothCsipSetCoordinatorLockCallback {
            private IBinder mRemote;

            Proxy(IBinder remote) {
                this.mRemote = remote;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            public String getInterfaceDescriptor() {
                return IBluetoothCsipSetCoordinatorLockCallback.DESCRIPTOR;
            }

            @Override // android.bluetooth.IBluetoothCsipSetCoordinatorLockCallback
            public void onGroupLockSet(int groupId, int opStatus, boolean isLocked) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IBluetoothCsipSetCoordinatorLockCallback.DESCRIPTOR);
                    _data.writeInt(groupId);
                    _data.writeInt(opStatus);
                    _data.writeBoolean(isLocked);
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

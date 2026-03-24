package android.bluetooth;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes.dex */
public interface IBluetoothActivityEnergyInfoListener extends IInterface {
    public static final String DESCRIPTOR = "android.bluetooth.IBluetoothActivityEnergyInfoListener";

    void onBluetoothActivityEnergyInfoAvailable(BluetoothActivityEnergyInfo bluetoothActivityEnergyInfo) throws RemoteException;

    public static class Default implements IBluetoothActivityEnergyInfoListener {
        @Override // android.bluetooth.IBluetoothActivityEnergyInfoListener
        public void onBluetoothActivityEnergyInfoAvailable(BluetoothActivityEnergyInfo info) throws RemoteException {
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }
    }

    public static abstract class Stub extends Binder implements IBluetoothActivityEnergyInfoListener {
        static final int TRANSACTION_onBluetoothActivityEnergyInfoAvailable = 1;

        public Stub() {
            attachInterface(this, IBluetoothActivityEnergyInfoListener.DESCRIPTOR);
        }

        public static IBluetoothActivityEnergyInfoListener asInterface(IBinder obj) {
            if (obj == null) {
                return null;
            }
            IInterface iin = obj.queryLocalInterface(IBluetoothActivityEnergyInfoListener.DESCRIPTOR);
            if (iin != null && (iin instanceof IBluetoothActivityEnergyInfoListener)) {
                return (IBluetoothActivityEnergyInfoListener) iin;
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
                    return "onBluetoothActivityEnergyInfoAvailable";
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
                data.enforceInterface(IBluetoothActivityEnergyInfoListener.DESCRIPTOR);
            }
            switch (code) {
                case IBinder.INTERFACE_TRANSACTION /* 1598968902 */:
                    reply.writeString(IBluetoothActivityEnergyInfoListener.DESCRIPTOR);
                    return true;
                default:
                    switch (code) {
                        case 1:
                            BluetoothActivityEnergyInfo _arg0 = (BluetoothActivityEnergyInfo) data.readTypedObject(BluetoothActivityEnergyInfo.CREATOR);
                            data.enforceNoDataAvail();
                            onBluetoothActivityEnergyInfoAvailable(_arg0);
                            return true;
                        default:
                            return super.onTransact(code, data, reply, flags);
                    }
            }
        }

        private static class Proxy implements IBluetoothActivityEnergyInfoListener {
            private IBinder mRemote;

            Proxy(IBinder remote) {
                this.mRemote = remote;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            public String getInterfaceDescriptor() {
                return IBluetoothActivityEnergyInfoListener.DESCRIPTOR;
            }

            @Override // android.bluetooth.IBluetoothActivityEnergyInfoListener
            public void onBluetoothActivityEnergyInfoAvailable(BluetoothActivityEnergyInfo info) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IBluetoothActivityEnergyInfoListener.DESCRIPTOR);
                    _data.writeTypedObject(info, 0);
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

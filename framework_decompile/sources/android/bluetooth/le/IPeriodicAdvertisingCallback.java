package android.bluetooth.le;

import android.bluetooth.BluetoothDevice;
import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes.dex */
public interface IPeriodicAdvertisingCallback extends IInterface {
    void onPeriodicAdvertisingReport(PeriodicAdvertisingReport periodicAdvertisingReport) throws RemoteException;

    void onSyncEstablished(int i, BluetoothDevice bluetoothDevice, int i2, int i3, int i4, int i5) throws RemoteException;

    void onSyncLost(int i) throws RemoteException;

    void onSyncTransferred(BluetoothDevice bluetoothDevice, int i) throws RemoteException;

    public static class Default implements IPeriodicAdvertisingCallback {
        @Override // android.bluetooth.le.IPeriodicAdvertisingCallback
        public void onSyncEstablished(int syncHandle, BluetoothDevice device, int advertisingSid, int skip, int timeout, int status) throws RemoteException {
        }

        @Override // android.bluetooth.le.IPeriodicAdvertisingCallback
        public void onPeriodicAdvertisingReport(PeriodicAdvertisingReport report) throws RemoteException {
        }

        @Override // android.bluetooth.le.IPeriodicAdvertisingCallback
        public void onSyncLost(int syncHandle) throws RemoteException {
        }

        @Override // android.bluetooth.le.IPeriodicAdvertisingCallback
        public void onSyncTransferred(BluetoothDevice device, int status) throws RemoteException {
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }
    }

    public static abstract class Stub extends Binder implements IPeriodicAdvertisingCallback {
        public static final String DESCRIPTOR = "android.bluetooth.le.IPeriodicAdvertisingCallback";
        static final int TRANSACTION_onPeriodicAdvertisingReport = 2;
        static final int TRANSACTION_onSyncEstablished = 1;
        static final int TRANSACTION_onSyncLost = 3;
        static final int TRANSACTION_onSyncTransferred = 4;

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IPeriodicAdvertisingCallback asInterface(IBinder obj) {
            if (obj == null) {
                return null;
            }
            IInterface iin = obj.queryLocalInterface(DESCRIPTOR);
            if (iin != null && (iin instanceof IPeriodicAdvertisingCallback)) {
                return (IPeriodicAdvertisingCallback) iin;
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
                    return "onSyncEstablished";
                case 2:
                    return "onPeriodicAdvertisingReport";
                case 3:
                    return "onSyncLost";
                case 4:
                    return "onSyncTransferred";
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
                            BluetoothDevice _arg1 = (BluetoothDevice) data.readTypedObject(BluetoothDevice.CREATOR);
                            int _arg2 = data.readInt();
                            int _arg3 = data.readInt();
                            int _arg4 = data.readInt();
                            int _arg5 = data.readInt();
                            data.enforceNoDataAvail();
                            onSyncEstablished(_arg0, _arg1, _arg2, _arg3, _arg4, _arg5);
                            return true;
                        case 2:
                            PeriodicAdvertisingReport _arg02 = (PeriodicAdvertisingReport) data.readTypedObject(PeriodicAdvertisingReport.CREATOR);
                            data.enforceNoDataAvail();
                            onPeriodicAdvertisingReport(_arg02);
                            return true;
                        case 3:
                            int _arg03 = data.readInt();
                            data.enforceNoDataAvail();
                            onSyncLost(_arg03);
                            return true;
                        case 4:
                            BluetoothDevice _arg04 = (BluetoothDevice) data.readTypedObject(BluetoothDevice.CREATOR);
                            int _arg12 = data.readInt();
                            data.enforceNoDataAvail();
                            onSyncTransferred(_arg04, _arg12);
                            return true;
                        default:
                            return super.onTransact(code, data, reply, flags);
                    }
            }
        }

        private static class Proxy implements IPeriodicAdvertisingCallback {
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

            @Override // android.bluetooth.le.IPeriodicAdvertisingCallback
            public void onSyncEstablished(int syncHandle, BluetoothDevice device, int advertisingSid, int skip, int timeout, int status) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(syncHandle);
                    _data.writeTypedObject(device, 0);
                    _data.writeInt(advertisingSid);
                    _data.writeInt(skip);
                    _data.writeInt(timeout);
                    _data.writeInt(status);
                    this.mRemote.transact(1, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.le.IPeriodicAdvertisingCallback
            public void onPeriodicAdvertisingReport(PeriodicAdvertisingReport report) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeTypedObject(report, 0);
                    this.mRemote.transact(2, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.le.IPeriodicAdvertisingCallback
            public void onSyncLost(int syncHandle) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(syncHandle);
                    this.mRemote.transact(3, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.le.IPeriodicAdvertisingCallback
            public void onSyncTransferred(BluetoothDevice device, int status) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeTypedObject(device, 0);
                    _data.writeInt(status);
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

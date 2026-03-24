package android.bluetooth.le;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes.dex */
public interface IAdvertisingSetCallback extends IInterface {
    void onAdvertisingDataSet(int i, int i2) throws RemoteException;

    void onAdvertisingEnabled(int i, boolean z, int i2) throws RemoteException;

    void onAdvertisingParametersUpdated(int i, int i2, int i3) throws RemoteException;

    void onAdvertisingSetStarted(int i, int i2, int i3) throws RemoteException;

    void onAdvertisingSetStopped(int i) throws RemoteException;

    void onOwnAddressRead(int i, int i2, String str) throws RemoteException;

    void onPeriodicAdvertisingDataSet(int i, int i2) throws RemoteException;

    void onPeriodicAdvertisingEnabled(int i, boolean z, int i2) throws RemoteException;

    void onPeriodicAdvertisingParametersUpdated(int i, int i2) throws RemoteException;

    void onScanResponseDataSet(int i, int i2) throws RemoteException;

    public static class Default implements IAdvertisingSetCallback {
        @Override // android.bluetooth.le.IAdvertisingSetCallback
        public void onAdvertisingSetStarted(int advertiserId, int tx_power, int status) throws RemoteException {
        }

        @Override // android.bluetooth.le.IAdvertisingSetCallback
        public void onOwnAddressRead(int advertiserId, int addressType, String address) throws RemoteException {
        }

        @Override // android.bluetooth.le.IAdvertisingSetCallback
        public void onAdvertisingSetStopped(int advertiserId) throws RemoteException {
        }

        @Override // android.bluetooth.le.IAdvertisingSetCallback
        public void onAdvertisingEnabled(int advertiserId, boolean enable, int status) throws RemoteException {
        }

        @Override // android.bluetooth.le.IAdvertisingSetCallback
        public void onAdvertisingDataSet(int advertiserId, int status) throws RemoteException {
        }

        @Override // android.bluetooth.le.IAdvertisingSetCallback
        public void onScanResponseDataSet(int advertiserId, int status) throws RemoteException {
        }

        @Override // android.bluetooth.le.IAdvertisingSetCallback
        public void onAdvertisingParametersUpdated(int advertiserId, int tx_power, int status) throws RemoteException {
        }

        @Override // android.bluetooth.le.IAdvertisingSetCallback
        public void onPeriodicAdvertisingParametersUpdated(int advertiserId, int status) throws RemoteException {
        }

        @Override // android.bluetooth.le.IAdvertisingSetCallback
        public void onPeriodicAdvertisingDataSet(int advertiserId, int status) throws RemoteException {
        }

        @Override // android.bluetooth.le.IAdvertisingSetCallback
        public void onPeriodicAdvertisingEnabled(int advertiserId, boolean enable, int status) throws RemoteException {
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }
    }

    public static abstract class Stub extends Binder implements IAdvertisingSetCallback {
        public static final String DESCRIPTOR = "android.bluetooth.le.IAdvertisingSetCallback";
        static final int TRANSACTION_onAdvertisingDataSet = 5;
        static final int TRANSACTION_onAdvertisingEnabled = 4;
        static final int TRANSACTION_onAdvertisingParametersUpdated = 7;
        static final int TRANSACTION_onAdvertisingSetStarted = 1;
        static final int TRANSACTION_onAdvertisingSetStopped = 3;
        static final int TRANSACTION_onOwnAddressRead = 2;
        static final int TRANSACTION_onPeriodicAdvertisingDataSet = 9;
        static final int TRANSACTION_onPeriodicAdvertisingEnabled = 10;
        static final int TRANSACTION_onPeriodicAdvertisingParametersUpdated = 8;
        static final int TRANSACTION_onScanResponseDataSet = 6;

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IAdvertisingSetCallback asInterface(IBinder obj) {
            if (obj == null) {
                return null;
            }
            IInterface iin = obj.queryLocalInterface(DESCRIPTOR);
            if (iin != null && (iin instanceof IAdvertisingSetCallback)) {
                return (IAdvertisingSetCallback) iin;
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
                    return "onAdvertisingSetStarted";
                case 2:
                    return "onOwnAddressRead";
                case 3:
                    return "onAdvertisingSetStopped";
                case 4:
                    return "onAdvertisingEnabled";
                case 5:
                    return "onAdvertisingDataSet";
                case 6:
                    return "onScanResponseDataSet";
                case 7:
                    return "onAdvertisingParametersUpdated";
                case 8:
                    return "onPeriodicAdvertisingParametersUpdated";
                case 9:
                    return "onPeriodicAdvertisingDataSet";
                case 10:
                    return "onPeriodicAdvertisingEnabled";
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
                            int _arg2 = data.readInt();
                            data.enforceNoDataAvail();
                            onAdvertisingSetStarted(_arg0, _arg1, _arg2);
                            return true;
                        case 2:
                            int _arg02 = data.readInt();
                            int _arg12 = data.readInt();
                            String _arg22 = data.readString();
                            data.enforceNoDataAvail();
                            onOwnAddressRead(_arg02, _arg12, _arg22);
                            return true;
                        case 3:
                            int _arg03 = data.readInt();
                            data.enforceNoDataAvail();
                            onAdvertisingSetStopped(_arg03);
                            return true;
                        case 4:
                            int _arg04 = data.readInt();
                            boolean _arg13 = data.readBoolean();
                            int _arg23 = data.readInt();
                            data.enforceNoDataAvail();
                            onAdvertisingEnabled(_arg04, _arg13, _arg23);
                            return true;
                        case 5:
                            int _arg05 = data.readInt();
                            int _arg14 = data.readInt();
                            data.enforceNoDataAvail();
                            onAdvertisingDataSet(_arg05, _arg14);
                            return true;
                        case 6:
                            int _arg06 = data.readInt();
                            int _arg15 = data.readInt();
                            data.enforceNoDataAvail();
                            onScanResponseDataSet(_arg06, _arg15);
                            return true;
                        case 7:
                            int _arg07 = data.readInt();
                            int _arg16 = data.readInt();
                            int _arg24 = data.readInt();
                            data.enforceNoDataAvail();
                            onAdvertisingParametersUpdated(_arg07, _arg16, _arg24);
                            return true;
                        case 8:
                            int _arg08 = data.readInt();
                            int _arg17 = data.readInt();
                            data.enforceNoDataAvail();
                            onPeriodicAdvertisingParametersUpdated(_arg08, _arg17);
                            return true;
                        case 9:
                            int _arg09 = data.readInt();
                            int _arg18 = data.readInt();
                            data.enforceNoDataAvail();
                            onPeriodicAdvertisingDataSet(_arg09, _arg18);
                            return true;
                        case 10:
                            int _arg010 = data.readInt();
                            boolean _arg19 = data.readBoolean();
                            int _arg25 = data.readInt();
                            data.enforceNoDataAvail();
                            onPeriodicAdvertisingEnabled(_arg010, _arg19, _arg25);
                            return true;
                        default:
                            return super.onTransact(code, data, reply, flags);
                    }
            }
        }

        private static class Proxy implements IAdvertisingSetCallback {
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

            @Override // android.bluetooth.le.IAdvertisingSetCallback
            public void onAdvertisingSetStarted(int advertiserId, int tx_power, int status) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(advertiserId);
                    _data.writeInt(tx_power);
                    _data.writeInt(status);
                    this.mRemote.transact(1, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.le.IAdvertisingSetCallback
            public void onOwnAddressRead(int advertiserId, int addressType, String address) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(advertiserId);
                    _data.writeInt(addressType);
                    _data.writeString(address);
                    this.mRemote.transact(2, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.le.IAdvertisingSetCallback
            public void onAdvertisingSetStopped(int advertiserId) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(advertiserId);
                    this.mRemote.transact(3, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.le.IAdvertisingSetCallback
            public void onAdvertisingEnabled(int advertiserId, boolean enable, int status) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(advertiserId);
                    _data.writeBoolean(enable);
                    _data.writeInt(status);
                    this.mRemote.transact(4, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.le.IAdvertisingSetCallback
            public void onAdvertisingDataSet(int advertiserId, int status) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(advertiserId);
                    _data.writeInt(status);
                    this.mRemote.transact(5, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.le.IAdvertisingSetCallback
            public void onScanResponseDataSet(int advertiserId, int status) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(advertiserId);
                    _data.writeInt(status);
                    this.mRemote.transact(6, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.le.IAdvertisingSetCallback
            public void onAdvertisingParametersUpdated(int advertiserId, int tx_power, int status) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(advertiserId);
                    _data.writeInt(tx_power);
                    _data.writeInt(status);
                    this.mRemote.transact(7, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.le.IAdvertisingSetCallback
            public void onPeriodicAdvertisingParametersUpdated(int advertiserId, int status) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(advertiserId);
                    _data.writeInt(status);
                    this.mRemote.transact(8, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.le.IAdvertisingSetCallback
            public void onPeriodicAdvertisingDataSet(int advertiserId, int status) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(advertiserId);
                    _data.writeInt(status);
                    this.mRemote.transact(9, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.le.IAdvertisingSetCallback
            public void onPeriodicAdvertisingEnabled(int advertiserId, boolean enable, int status) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(advertiserId);
                    _data.writeBoolean(enable);
                    _data.writeInt(status);
                    this.mRemote.transact(10, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }
        }

        @Override // android.os.Binder
        public int getMaxTransactionId() {
            return 9;
        }
    }
}

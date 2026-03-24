package com.oplus.app;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes4.dex */
public interface ITerminateObserver extends IInterface {
    public static final String DESCRIPTOR = "com.oplus.app.ITerminateObserver";

    void onRequestTerminate(int i, String str) throws RemoteException;

    void onTerminateStateChanged(int i, int i2, boolean z) throws RemoteException;

    public static class Default implements ITerminateObserver {
        @Override // com.oplus.app.ITerminateObserver
        public void onTerminateStateChanged(int pid, int uid, boolean isRegister) throws RemoteException {
        }

        @Override // com.oplus.app.ITerminateObserver
        public void onRequestTerminate(int pid, String reason) throws RemoteException {
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }
    }

    public static abstract class Stub extends Binder implements ITerminateObserver {
        static final int TRANSACTION_onRequestTerminate = 2;
        static final int TRANSACTION_onTerminateStateChanged = 1;

        public Stub() {
            attachInterface(this, ITerminateObserver.DESCRIPTOR);
        }

        public static ITerminateObserver asInterface(IBinder obj) {
            if (obj == null) {
                return null;
            }
            IInterface iin = obj.queryLocalInterface(ITerminateObserver.DESCRIPTOR);
            if (iin != null && (iin instanceof ITerminateObserver)) {
                return (ITerminateObserver) iin;
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
                    return "onTerminateStateChanged";
                case 2:
                    return "onRequestTerminate";
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
                data.enforceInterface(ITerminateObserver.DESCRIPTOR);
            }
            switch (code) {
                case IBinder.INTERFACE_TRANSACTION /* 1598968902 */:
                    reply.writeString(ITerminateObserver.DESCRIPTOR);
                    return true;
                default:
                    switch (code) {
                        case 1:
                            int _arg0 = data.readInt();
                            int _arg1 = data.readInt();
                            boolean _arg2 = data.readBoolean();
                            data.enforceNoDataAvail();
                            onTerminateStateChanged(_arg0, _arg1, _arg2);
                            return true;
                        case 2:
                            int _arg02 = data.readInt();
                            String _arg12 = data.readString();
                            data.enforceNoDataAvail();
                            onRequestTerminate(_arg02, _arg12);
                            return true;
                        default:
                            return super.onTransact(code, data, reply, flags);
                    }
            }
        }

        private static class Proxy implements ITerminateObserver {
            private IBinder mRemote;

            Proxy(IBinder remote) {
                this.mRemote = remote;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            public String getInterfaceDescriptor() {
                return ITerminateObserver.DESCRIPTOR;
            }

            @Override // com.oplus.app.ITerminateObserver
            public void onTerminateStateChanged(int pid, int uid, boolean isRegister) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(ITerminateObserver.DESCRIPTOR);
                    _data.writeInt(pid);
                    _data.writeInt(uid);
                    _data.writeBoolean(isRegister);
                    this.mRemote.transact(1, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // com.oplus.app.ITerminateObserver
            public void onRequestTerminate(int pid, String reason) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(ITerminateObserver.DESCRIPTOR);
                    _data.writeInt(pid);
                    _data.writeString(reason);
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

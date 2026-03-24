package com.oplus.app;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes4.dex */
public interface IProcessTerminateObserver extends IInterface {
    public static final String DESCRIPTOR = "com.oplus.app.IProcessTerminateObserver";

    void onProcessTerminate(String str) throws RemoteException;

    public static class Default implements IProcessTerminateObserver {
        @Override // com.oplus.app.IProcessTerminateObserver
        public void onProcessTerminate(String reason) throws RemoteException {
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }
    }

    public static abstract class Stub extends Binder implements IProcessTerminateObserver {
        static final int TRANSACTION_onProcessTerminate = 1;

        public Stub() {
            attachInterface(this, IProcessTerminateObserver.DESCRIPTOR);
        }

        public static IProcessTerminateObserver asInterface(IBinder obj) {
            if (obj == null) {
                return null;
            }
            IInterface iin = obj.queryLocalInterface(IProcessTerminateObserver.DESCRIPTOR);
            if (iin != null && (iin instanceof IProcessTerminateObserver)) {
                return (IProcessTerminateObserver) iin;
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
                    return "onProcessTerminate";
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
                data.enforceInterface(IProcessTerminateObserver.DESCRIPTOR);
            }
            switch (code) {
                case IBinder.INTERFACE_TRANSACTION /* 1598968902 */:
                    reply.writeString(IProcessTerminateObserver.DESCRIPTOR);
                    return true;
                default:
                    switch (code) {
                        case 1:
                            String _arg0 = data.readString();
                            data.enforceNoDataAvail();
                            onProcessTerminate(_arg0);
                            return true;
                        default:
                            return super.onTransact(code, data, reply, flags);
                    }
            }
        }

        private static class Proxy implements IProcessTerminateObserver {
            private IBinder mRemote;

            Proxy(IBinder remote) {
                this.mRemote = remote;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            public String getInterfaceDescriptor() {
                return IProcessTerminateObserver.DESCRIPTOR;
            }

            @Override // com.oplus.app.IProcessTerminateObserver
            public void onProcessTerminate(String reason) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IProcessTerminateObserver.DESCRIPTOR);
                    _data.writeString(reason);
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

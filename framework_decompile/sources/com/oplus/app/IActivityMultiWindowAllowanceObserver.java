package com.oplus.app;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes4.dex */
public interface IActivityMultiWindowAllowanceObserver extends IInterface {
    public static final String DESCRIPTOR = "com.oplus.app.IActivityMultiWindowAllowanceObserver";

    void onMultiWindowAllowanceChanged(ActivityMultiWindowAllowance activityMultiWindowAllowance) throws RemoteException;

    public static class Default implements IActivityMultiWindowAllowanceObserver {
        @Override // com.oplus.app.IActivityMultiWindowAllowanceObserver
        public void onMultiWindowAllowanceChanged(ActivityMultiWindowAllowance allowance) throws RemoteException {
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }
    }

    public static abstract class Stub extends Binder implements IActivityMultiWindowAllowanceObserver {
        static final int TRANSACTION_onMultiWindowAllowanceChanged = 1;

        public Stub() {
            attachInterface(this, IActivityMultiWindowAllowanceObserver.DESCRIPTOR);
        }

        public static IActivityMultiWindowAllowanceObserver asInterface(IBinder obj) {
            if (obj == null) {
                return null;
            }
            IInterface iin = obj.queryLocalInterface(IActivityMultiWindowAllowanceObserver.DESCRIPTOR);
            if (iin != null && (iin instanceof IActivityMultiWindowAllowanceObserver)) {
                return (IActivityMultiWindowAllowanceObserver) iin;
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
                    return "onMultiWindowAllowanceChanged";
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
                data.enforceInterface(IActivityMultiWindowAllowanceObserver.DESCRIPTOR);
            }
            switch (code) {
                case IBinder.INTERFACE_TRANSACTION /* 1598968902 */:
                    reply.writeString(IActivityMultiWindowAllowanceObserver.DESCRIPTOR);
                    return true;
                default:
                    switch (code) {
                        case 1:
                            ActivityMultiWindowAllowance _arg0 = (ActivityMultiWindowAllowance) data.readTypedObject(ActivityMultiWindowAllowance.CREATOR);
                            data.enforceNoDataAvail();
                            onMultiWindowAllowanceChanged(_arg0);
                            return true;
                        default:
                            return super.onTransact(code, data, reply, flags);
                    }
            }
        }

        private static class Proxy implements IActivityMultiWindowAllowanceObserver {
            private IBinder mRemote;

            Proxy(IBinder remote) {
                this.mRemote = remote;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            public String getInterfaceDescriptor() {
                return IActivityMultiWindowAllowanceObserver.DESCRIPTOR;
            }

            @Override // com.oplus.app.IActivityMultiWindowAllowanceObserver
            public void onMultiWindowAllowanceChanged(ActivityMultiWindowAllowance allowance) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IActivityMultiWindowAllowanceObserver.DESCRIPTOR);
                    _data.writeTypedObject(allowance, 0);
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

package com.oplus.tingle.ipc;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes.dex */
public interface IMaster extends IInterface {
    public static final String DESCRIPTOR = "com.oplus.tingle.ipc.IMaster";

    /* loaded from: classes.dex */
    public static class Default implements IMaster {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // com.oplus.tingle.ipc.IMaster
        public int getUid() throws RemoteException {
            return 0;
        }
    }

    int getUid() throws RemoteException;

    /* loaded from: classes.dex */
    public static abstract class Stub extends Binder implements IMaster {
        static final int TRANSACTION_getUid = 4;

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        public Stub() {
            attachInterface(this, IMaster.DESCRIPTOR);
        }

        public static IMaster asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface(IMaster.DESCRIPTOR);
            if (queryLocalInterface != null && (queryLocalInterface instanceof IMaster)) {
                return (IMaster) queryLocalInterface;
            }
            return new Proxy(iBinder);
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            if (i == 1598968902) {
                parcel2.writeString(IMaster.DESCRIPTOR);
                return true;
            } else if (i == 4) {
                parcel.enforceInterface(IMaster.DESCRIPTOR);
                int uid = getUid();
                parcel2.writeNoException();
                parcel2.writeInt(uid);
                return true;
            } else {
                return super.onTransact(i, parcel, parcel2, i2);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* loaded from: classes.dex */
        public static class Proxy implements IMaster {
            public static IMaster sDefaultImpl;
            private IBinder mRemote;

            public String getInterfaceDescriptor() {
                return IMaster.DESCRIPTOR;
            }

            Proxy(IBinder iBinder) {
                this.mRemote = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            @Override // com.oplus.tingle.ipc.IMaster
            public int getUid() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(IMaster.DESCRIPTOR);
                    if (!this.mRemote.transact(4, obtain, obtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getUid();
                    }
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }

        public static boolean setDefaultImpl(IMaster iMaster) {
            if (Proxy.sDefaultImpl != null) {
                throw new IllegalStateException("setDefaultImpl() called twice");
            }
            if (iMaster != null) {
                Proxy.sDefaultImpl = iMaster;
                return true;
            }
            return false;
        }

        public static IMaster getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }
    }
}

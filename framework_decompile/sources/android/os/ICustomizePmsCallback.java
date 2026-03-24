package android.os;

/* loaded from: classes3.dex */
public interface ICustomizePmsCallback extends IInterface {
    public static final String DESCRIPTOR = "android.os.ICustomizePmsCallback";

    void pmsCallback(String str, PersistableBundle persistableBundle) throws RemoteException;

    public static class Default implements ICustomizePmsCallback {
        @Override // android.os.ICustomizePmsCallback
        public void pmsCallback(String funtionName, PersistableBundle result) throws RemoteException {
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }
    }

    public static abstract class Stub extends Binder implements ICustomizePmsCallback {
        static final int TRANSACTION_pmsCallback = 1;

        public Stub() {
            attachInterface(this, ICustomizePmsCallback.DESCRIPTOR);
        }

        public static ICustomizePmsCallback asInterface(IBinder obj) {
            if (obj == null) {
                return null;
            }
            IInterface iin = obj.queryLocalInterface(ICustomizePmsCallback.DESCRIPTOR);
            if (iin != null && (iin instanceof ICustomizePmsCallback)) {
                return (ICustomizePmsCallback) iin;
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
                    return "pmsCallback";
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
                data.enforceInterface(ICustomizePmsCallback.DESCRIPTOR);
            }
            switch (code) {
                case IBinder.INTERFACE_TRANSACTION /* 1598968902 */:
                    reply.writeString(ICustomizePmsCallback.DESCRIPTOR);
                    return true;
                default:
                    switch (code) {
                        case 1:
                            String _arg0 = data.readString();
                            PersistableBundle _arg1 = (PersistableBundle) data.readTypedObject(PersistableBundle.CREATOR);
                            data.enforceNoDataAvail();
                            pmsCallback(_arg0, _arg1);
                            reply.writeNoException();
                            return true;
                        default:
                            return super.onTransact(code, data, reply, flags);
                    }
            }
        }

        private static class Proxy implements ICustomizePmsCallback {
            private IBinder mRemote;

            Proxy(IBinder remote) {
                this.mRemote = remote;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            public String getInterfaceDescriptor() {
                return ICustomizePmsCallback.DESCRIPTOR;
            }

            @Override // android.os.ICustomizePmsCallback
            public void pmsCallback(String funtionName, PersistableBundle result) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(ICustomizePmsCallback.DESCRIPTOR);
                    _data.writeString(funtionName);
                    _data.writeTypedObject(result, 0);
                    this.mRemote.transact(1, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
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

package android.hardware.display;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes.dex */
public interface IOplusDisplayManager extends IInterface {
    public static final String DESCRIPTOR = "android.hardware.display.IOplusDisplayManager";

    void setSpecBrightness(int i, String str, int i2) throws RemoteException;

    public static class Default implements IOplusDisplayManager {
        @Override // android.hardware.display.IOplusDisplayManager
        public void setSpecBrightness(int gear, String reason, int rate) throws RemoteException {
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }
    }

    public static abstract class Stub extends Binder implements IOplusDisplayManager {
        static final int TRANSACTION_setSpecBrightness = 1;

        public Stub() {
            attachInterface(this, IOplusDisplayManager.DESCRIPTOR);
        }

        public static IOplusDisplayManager asInterface(IBinder obj) {
            if (obj == null) {
                return null;
            }
            IInterface iin = obj.queryLocalInterface(IOplusDisplayManager.DESCRIPTOR);
            if (iin != null && (iin instanceof IOplusDisplayManager)) {
                return (IOplusDisplayManager) iin;
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
                    return "setSpecBrightness";
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
                data.enforceInterface(IOplusDisplayManager.DESCRIPTOR);
            }
            switch (code) {
                case IBinder.INTERFACE_TRANSACTION /* 1598968902 */:
                    reply.writeString(IOplusDisplayManager.DESCRIPTOR);
                    return true;
                default:
                    switch (code) {
                        case 1:
                            int _arg0 = data.readInt();
                            String _arg1 = data.readString();
                            int _arg2 = data.readInt();
                            data.enforceNoDataAvail();
                            setSpecBrightness(_arg0, _arg1, _arg2);
                            reply.writeNoException();
                            return true;
                        default:
                            return super.onTransact(code, data, reply, flags);
                    }
            }
        }

        private static class Proxy implements IOplusDisplayManager {
            private IBinder mRemote;

            Proxy(IBinder remote) {
                this.mRemote = remote;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            public String getInterfaceDescriptor() {
                return IOplusDisplayManager.DESCRIPTOR;
            }

            @Override // android.hardware.display.IOplusDisplayManager
            public void setSpecBrightness(int gear, String reason, int rate) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IOplusDisplayManager.DESCRIPTOR);
                    _data.writeInt(gear);
                    _data.writeString(reason);
                    _data.writeInt(rate);
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

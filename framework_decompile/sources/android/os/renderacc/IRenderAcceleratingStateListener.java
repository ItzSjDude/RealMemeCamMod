package android.os.renderacc;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes3.dex */
public interface IRenderAcceleratingStateListener extends IInterface {
    public static final String DESCRIPTOR = "android.os.renderacc.IRenderAcceleratingStateListener";

    void onStateReport(int i) throws RemoteException;

    public static class Default implements IRenderAcceleratingStateListener {
        @Override // android.os.renderacc.IRenderAcceleratingStateListener
        public void onStateReport(int state) throws RemoteException {
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }
    }

    public static abstract class Stub extends Binder implements IRenderAcceleratingStateListener {
        static final int TRANSACTION_onStateReport = 1;

        public Stub() {
            attachInterface(this, IRenderAcceleratingStateListener.DESCRIPTOR);
        }

        public static IRenderAcceleratingStateListener asInterface(IBinder obj) {
            if (obj == null) {
                return null;
            }
            IInterface iin = obj.queryLocalInterface(IRenderAcceleratingStateListener.DESCRIPTOR);
            if (iin != null && (iin instanceof IRenderAcceleratingStateListener)) {
                return (IRenderAcceleratingStateListener) iin;
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
                    return "onStateReport";
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
                data.enforceInterface(IRenderAcceleratingStateListener.DESCRIPTOR);
            }
            switch (code) {
                case IBinder.INTERFACE_TRANSACTION /* 1598968902 */:
                    reply.writeString(IRenderAcceleratingStateListener.DESCRIPTOR);
                    return true;
                default:
                    switch (code) {
                        case 1:
                            int _arg0 = data.readInt();
                            data.enforceNoDataAvail();
                            onStateReport(_arg0);
                            return true;
                        default:
                            return super.onTransact(code, data, reply, flags);
                    }
            }
        }

        private static class Proxy implements IRenderAcceleratingStateListener {
            private IBinder mRemote;

            Proxy(IBinder remote) {
                this.mRemote = remote;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            public String getInterfaceDescriptor() {
                return IRenderAcceleratingStateListener.DESCRIPTOR;
            }

            @Override // android.os.renderacc.IRenderAcceleratingStateListener
            public void onStateReport(int state) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IRenderAcceleratingStateListener.DESCRIPTOR);
                    _data.writeInt(state);
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

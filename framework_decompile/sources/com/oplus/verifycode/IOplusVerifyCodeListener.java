package com.oplus.verifycode;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.oplus.verifycode.IOplusVerifyCodeService;

/* loaded from: classes5.dex */
public interface IOplusVerifyCodeListener extends IInterface {
    public static final String DESCRIPTOR = "com.oplus.verifycode.IOplusVerifyCodeListener";

    void notifyIMELayoutChanged(boolean z, int i, int i2) throws RemoteException;

    void notifyImeAttributeChanged(int i, boolean z) throws RemoteException;

    void onBindService(IOplusVerifyCodeService iOplusVerifyCodeService) throws RemoteException;

    void onUnBindService(int i) throws RemoteException;

    public static class Default implements IOplusVerifyCodeListener {
        @Override // com.oplus.verifycode.IOplusVerifyCodeListener
        public void notifyImeAttributeChanged(int condType, boolean flag) throws RemoteException {
        }

        @Override // com.oplus.verifycode.IOplusVerifyCodeListener
        public void notifyIMELayoutChanged(boolean imeVisible, int imeTop, int imeBottom) throws RemoteException {
        }

        @Override // com.oplus.verifycode.IOplusVerifyCodeListener
        public void onBindService(IOplusVerifyCodeService oplusVerifyCodeService) throws RemoteException {
        }

        @Override // com.oplus.verifycode.IOplusVerifyCodeListener
        public void onUnBindService(int reason) throws RemoteException {
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }
    }

    public static abstract class Stub extends Binder implements IOplusVerifyCodeListener {
        static final int TRANSACTION_notifyIMELayoutChanged = 2;
        static final int TRANSACTION_notifyImeAttributeChanged = 1;
        static final int TRANSACTION_onBindService = 3;
        static final int TRANSACTION_onUnBindService = 4;

        public Stub() {
            attachInterface(this, IOplusVerifyCodeListener.DESCRIPTOR);
        }

        public static IOplusVerifyCodeListener asInterface(IBinder obj) {
            if (obj == null) {
                return null;
            }
            IInterface iin = obj.queryLocalInterface(IOplusVerifyCodeListener.DESCRIPTOR);
            if (iin != null && (iin instanceof IOplusVerifyCodeListener)) {
                return (IOplusVerifyCodeListener) iin;
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
                    return "notifyImeAttributeChanged";
                case 2:
                    return "notifyIMELayoutChanged";
                case 3:
                    return "onBindService";
                case 4:
                    return "onUnBindService";
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
                data.enforceInterface(IOplusVerifyCodeListener.DESCRIPTOR);
            }
            switch (code) {
                case IBinder.INTERFACE_TRANSACTION /* 1598968902 */:
                    reply.writeString(IOplusVerifyCodeListener.DESCRIPTOR);
                    return true;
                default:
                    switch (code) {
                        case 1:
                            int _arg0 = data.readInt();
                            boolean _arg1 = data.readBoolean();
                            data.enforceNoDataAvail();
                            notifyImeAttributeChanged(_arg0, _arg1);
                            return true;
                        case 2:
                            boolean _arg02 = data.readBoolean();
                            int _arg12 = data.readInt();
                            int _arg2 = data.readInt();
                            data.enforceNoDataAvail();
                            notifyIMELayoutChanged(_arg02, _arg12, _arg2);
                            return true;
                        case 3:
                            IOplusVerifyCodeService _arg03 = IOplusVerifyCodeService.Stub.asInterface(data.readStrongBinder());
                            data.enforceNoDataAvail();
                            onBindService(_arg03);
                            return true;
                        case 4:
                            int _arg04 = data.readInt();
                            data.enforceNoDataAvail();
                            onUnBindService(_arg04);
                            return true;
                        default:
                            return super.onTransact(code, data, reply, flags);
                    }
            }
        }

        private static class Proxy implements IOplusVerifyCodeListener {
            private IBinder mRemote;

            Proxy(IBinder remote) {
                this.mRemote = remote;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            public String getInterfaceDescriptor() {
                return IOplusVerifyCodeListener.DESCRIPTOR;
            }

            @Override // com.oplus.verifycode.IOplusVerifyCodeListener
            public void notifyImeAttributeChanged(int condType, boolean flag) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IOplusVerifyCodeListener.DESCRIPTOR);
                    _data.writeInt(condType);
                    _data.writeBoolean(flag);
                    this.mRemote.transact(1, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // com.oplus.verifycode.IOplusVerifyCodeListener
            public void notifyIMELayoutChanged(boolean imeVisible, int imeTop, int imeBottom) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IOplusVerifyCodeListener.DESCRIPTOR);
                    _data.writeBoolean(imeVisible);
                    _data.writeInt(imeTop);
                    _data.writeInt(imeBottom);
                    this.mRemote.transact(2, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // com.oplus.verifycode.IOplusVerifyCodeListener
            public void onBindService(IOplusVerifyCodeService oplusVerifyCodeService) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IOplusVerifyCodeListener.DESCRIPTOR);
                    _data.writeStrongInterface(oplusVerifyCodeService);
                    this.mRemote.transact(3, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // com.oplus.verifycode.IOplusVerifyCodeListener
            public void onUnBindService(int reason) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IOplusVerifyCodeListener.DESCRIPTOR);
                    _data.writeInt(reason);
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

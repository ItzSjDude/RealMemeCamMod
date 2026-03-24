package com.oplus.verifycode;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes5.dex */
public interface IOplusVerifyCodeService extends IInterface {
    public static final String DESCRIPTOR = "com.oplus.verifycode.IOplusVerifyCodeService";

    void setVerifyCode(String str) throws RemoteException;

    public static class Default implements IOplusVerifyCodeService {
        @Override // com.oplus.verifycode.IOplusVerifyCodeService
        public void setVerifyCode(String code) throws RemoteException {
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }
    }

    public static abstract class Stub extends Binder implements IOplusVerifyCodeService {
        static final int TRANSACTION_setVerifyCode = 1;

        public Stub() {
            attachInterface(this, IOplusVerifyCodeService.DESCRIPTOR);
        }

        public static IOplusVerifyCodeService asInterface(IBinder obj) {
            if (obj == null) {
                return null;
            }
            IInterface iin = obj.queryLocalInterface(IOplusVerifyCodeService.DESCRIPTOR);
            if (iin != null && (iin instanceof IOplusVerifyCodeService)) {
                return (IOplusVerifyCodeService) iin;
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
                    return "setVerifyCode";
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
                data.enforceInterface(IOplusVerifyCodeService.DESCRIPTOR);
            }
            switch (code) {
                case IBinder.INTERFACE_TRANSACTION /* 1598968902 */:
                    reply.writeString(IOplusVerifyCodeService.DESCRIPTOR);
                    return true;
                default:
                    switch (code) {
                        case 1:
                            String _arg0 = data.readString();
                            data.enforceNoDataAvail();
                            setVerifyCode(_arg0);
                            return true;
                        default:
                            return super.onTransact(code, data, reply, flags);
                    }
            }
        }

        private static class Proxy implements IOplusVerifyCodeService {
            private IBinder mRemote;

            Proxy(IBinder remote) {
                this.mRemote = remote;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            public String getInterfaceDescriptor() {
                return IOplusVerifyCodeService.DESCRIPTOR;
            }

            @Override // com.oplus.verifycode.IOplusVerifyCodeService
            public void setVerifyCode(String code) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IOplusVerifyCodeService.DESCRIPTOR);
                    _data.writeString(code);
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

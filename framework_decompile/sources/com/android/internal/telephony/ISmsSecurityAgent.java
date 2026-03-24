package com.android.internal.telephony;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes4.dex */
public interface ISmsSecurityAgent extends IInterface {
    public static final String DESCRIPTOR = "com.android.internal.telephony.ISmsSecurityAgent";

    void onAuthorize(SmsAuthorizationRequest smsAuthorizationRequest) throws RemoteException;

    public static class Default implements ISmsSecurityAgent {
        @Override // com.android.internal.telephony.ISmsSecurityAgent
        public void onAuthorize(SmsAuthorizationRequest request) throws RemoteException {
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }
    }

    public static abstract class Stub extends Binder implements ISmsSecurityAgent {
        static final int TRANSACTION_onAuthorize = 1;

        public Stub() {
            attachInterface(this, ISmsSecurityAgent.DESCRIPTOR);
        }

        public static ISmsSecurityAgent asInterface(IBinder obj) {
            if (obj == null) {
                return null;
            }
            IInterface iin = obj.queryLocalInterface(ISmsSecurityAgent.DESCRIPTOR);
            if (iin != null && (iin instanceof ISmsSecurityAgent)) {
                return (ISmsSecurityAgent) iin;
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
                    return "onAuthorize";
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
                data.enforceInterface(ISmsSecurityAgent.DESCRIPTOR);
            }
            switch (code) {
                case IBinder.INTERFACE_TRANSACTION /* 1598968902 */:
                    reply.writeString(ISmsSecurityAgent.DESCRIPTOR);
                    return true;
                default:
                    switch (code) {
                        case 1:
                            SmsAuthorizationRequest _arg0 = (SmsAuthorizationRequest) data.readTypedObject(SmsAuthorizationRequest.CREATOR);
                            data.enforceNoDataAvail();
                            onAuthorize(_arg0);
                            reply.writeNoException();
                            return true;
                        default:
                            return super.onTransact(code, data, reply, flags);
                    }
            }
        }

        private static class Proxy implements ISmsSecurityAgent {
            private IBinder mRemote;

            Proxy(IBinder remote) {
                this.mRemote = remote;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            public String getInterfaceDescriptor() {
                return ISmsSecurityAgent.DESCRIPTOR;
            }

            @Override // com.android.internal.telephony.ISmsSecurityAgent
            public void onAuthorize(SmsAuthorizationRequest request) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(ISmsSecurityAgent.DESCRIPTOR);
                    _data.writeTypedObject(request, 0);
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

package com.android.internal.telephony;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.android.internal.telephony.ISmsSecurityAgent;

/* loaded from: classes4.dex */
public interface ISmsSecurityService extends IInterface {
    public static final String DESCRIPTOR = "com.android.internal.telephony.ISmsSecurityService";

    boolean register(ISmsSecurityAgent iSmsSecurityAgent) throws RemoteException;

    boolean sendResponse(SmsAuthorizationRequest smsAuthorizationRequest, boolean z) throws RemoteException;

    boolean unregister(ISmsSecurityAgent iSmsSecurityAgent) throws RemoteException;

    public static class Default implements ISmsSecurityService {
        @Override // com.android.internal.telephony.ISmsSecurityService
        public boolean register(ISmsSecurityAgent agent) throws RemoteException {
            return false;
        }

        @Override // com.android.internal.telephony.ISmsSecurityService
        public boolean unregister(ISmsSecurityAgent agent) throws RemoteException {
            return false;
        }

        @Override // com.android.internal.telephony.ISmsSecurityService
        public boolean sendResponse(SmsAuthorizationRequest request, boolean authorized) throws RemoteException {
            return false;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }
    }

    public static abstract class Stub extends Binder implements ISmsSecurityService {
        static final int TRANSACTION_register = 1;
        static final int TRANSACTION_sendResponse = 3;
        static final int TRANSACTION_unregister = 2;

        public Stub() {
            attachInterface(this, ISmsSecurityService.DESCRIPTOR);
        }

        public static ISmsSecurityService asInterface(IBinder obj) {
            if (obj == null) {
                return null;
            }
            IInterface iin = obj.queryLocalInterface(ISmsSecurityService.DESCRIPTOR);
            if (iin != null && (iin instanceof ISmsSecurityService)) {
                return (ISmsSecurityService) iin;
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
                    return "register";
                case 2:
                    return "unregister";
                case 3:
                    return "sendResponse";
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
                data.enforceInterface(ISmsSecurityService.DESCRIPTOR);
            }
            switch (code) {
                case IBinder.INTERFACE_TRANSACTION /* 1598968902 */:
                    reply.writeString(ISmsSecurityService.DESCRIPTOR);
                    return true;
                default:
                    switch (code) {
                        case 1:
                            ISmsSecurityAgent _arg0 = ISmsSecurityAgent.Stub.asInterface(data.readStrongBinder());
                            data.enforceNoDataAvail();
                            boolean _result = register(_arg0);
                            reply.writeNoException();
                            reply.writeBoolean(_result);
                            return true;
                        case 2:
                            ISmsSecurityAgent _arg02 = ISmsSecurityAgent.Stub.asInterface(data.readStrongBinder());
                            data.enforceNoDataAvail();
                            boolean _result2 = unregister(_arg02);
                            reply.writeNoException();
                            reply.writeBoolean(_result2);
                            return true;
                        case 3:
                            SmsAuthorizationRequest _arg03 = (SmsAuthorizationRequest) data.readTypedObject(SmsAuthorizationRequest.CREATOR);
                            boolean _arg1 = data.readBoolean();
                            data.enforceNoDataAvail();
                            boolean _result3 = sendResponse(_arg03, _arg1);
                            reply.writeNoException();
                            reply.writeBoolean(_result3);
                            return true;
                        default:
                            return super.onTransact(code, data, reply, flags);
                    }
            }
        }

        private static class Proxy implements ISmsSecurityService {
            private IBinder mRemote;

            Proxy(IBinder remote) {
                this.mRemote = remote;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            public String getInterfaceDescriptor() {
                return ISmsSecurityService.DESCRIPTOR;
            }

            @Override // com.android.internal.telephony.ISmsSecurityService
            public boolean register(ISmsSecurityAgent agent) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(ISmsSecurityService.DESCRIPTOR);
                    _data.writeStrongInterface(agent);
                    this.mRemote.transact(1, _data, _reply, 0);
                    _reply.readException();
                    boolean _result = _reply.readBoolean();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // com.android.internal.telephony.ISmsSecurityService
            public boolean unregister(ISmsSecurityAgent agent) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(ISmsSecurityService.DESCRIPTOR);
                    _data.writeStrongInterface(agent);
                    this.mRemote.transact(2, _data, _reply, 0);
                    _reply.readException();
                    boolean _result = _reply.readBoolean();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // com.android.internal.telephony.ISmsSecurityService
            public boolean sendResponse(SmsAuthorizationRequest request, boolean authorized) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(ISmsSecurityService.DESCRIPTOR);
                    _data.writeTypedObject(request, 0);
                    _data.writeBoolean(authorized);
                    this.mRemote.transact(3, _data, _reply, 0);
                    _reply.readException();
                    boolean _result = _reply.readBoolean();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }
        }

        @Override // android.os.Binder
        public int getMaxTransactionId() {
            return 2;
        }
    }
}

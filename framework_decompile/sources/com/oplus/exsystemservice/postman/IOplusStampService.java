package com.oplus.exsystemservice.postman;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import java.util.Map;

/* loaded from: classes4.dex */
public interface IOplusStampService extends IInterface {
    public static final String DESCRIPTOR = "com.oplus.exsystemservice.postman.IOplusStampService";

    void sendDeleteStampId(String str) throws RemoteException;

    int sendOnStampEvent(String str, Map map, long j) throws RemoteException;

    public static class Default implements IOplusStampService {
        @Override // com.oplus.exsystemservice.postman.IOplusStampService
        public int sendOnStampEvent(String eventId, Map map, long time) throws RemoteException {
            return 0;
        }

        @Override // com.oplus.exsystemservice.postman.IOplusStampService
        public void sendDeleteStampId(String eventId) throws RemoteException {
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }
    }

    public static abstract class Stub extends Binder implements IOplusStampService {
        static final int TRANSACTION_sendDeleteStampId = 2;
        static final int TRANSACTION_sendOnStampEvent = 1;

        public Stub() {
            attachInterface(this, IOplusStampService.DESCRIPTOR);
        }

        public static IOplusStampService asInterface(IBinder obj) {
            if (obj == null) {
                return null;
            }
            IInterface iin = obj.queryLocalInterface(IOplusStampService.DESCRIPTOR);
            if (iin != null && (iin instanceof IOplusStampService)) {
                return (IOplusStampService) iin;
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
                    return "sendOnStampEvent";
                case 2:
                    return "sendDeleteStampId";
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
                data.enforceInterface(IOplusStampService.DESCRIPTOR);
            }
            switch (code) {
                case IBinder.INTERFACE_TRANSACTION /* 1598968902 */:
                    reply.writeString(IOplusStampService.DESCRIPTOR);
                    return true;
                default:
                    switch (code) {
                        case 1:
                            String _arg0 = data.readString();
                            ClassLoader cl = getClass().getClassLoader();
                            Map _arg1 = data.readHashMap(cl);
                            long _arg2 = data.readLong();
                            data.enforceNoDataAvail();
                            int _result = sendOnStampEvent(_arg0, _arg1, _arg2);
                            reply.writeNoException();
                            reply.writeInt(_result);
                            return true;
                        case 2:
                            String _arg02 = data.readString();
                            data.enforceNoDataAvail();
                            sendDeleteStampId(_arg02);
                            reply.writeNoException();
                            return true;
                        default:
                            return super.onTransact(code, data, reply, flags);
                    }
            }
        }

        private static class Proxy implements IOplusStampService {
            private IBinder mRemote;

            Proxy(IBinder remote) {
                this.mRemote = remote;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            public String getInterfaceDescriptor() {
                return IOplusStampService.DESCRIPTOR;
            }

            @Override // com.oplus.exsystemservice.postman.IOplusStampService
            public int sendOnStampEvent(String eventId, Map map, long time) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IOplusStampService.DESCRIPTOR);
                    _data.writeString(eventId);
                    _data.writeMap(map);
                    _data.writeLong(time);
                    this.mRemote.transact(1, _data, _reply, 0);
                    _reply.readException();
                    int _result = _reply.readInt();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // com.oplus.exsystemservice.postman.IOplusStampService
            public void sendDeleteStampId(String eventId) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IOplusStampService.DESCRIPTOR);
                    _data.writeString(eventId);
                    this.mRemote.transact(2, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }
        }

        @Override // android.os.Binder
        public int getMaxTransactionId() {
            return 1;
        }
    }
}

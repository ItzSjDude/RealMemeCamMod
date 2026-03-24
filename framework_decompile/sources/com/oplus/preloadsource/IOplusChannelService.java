package com.oplus.preloadsource;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import java.util.List;

/* loaded from: classes3.dex */
public interface IOplusChannelService extends IInterface {
    public static final String DESCRIPTOR = "com.oplus.preloadsource.IOplusChannelService";

    void handleChannelEvent(List list) throws RemoteException;

    public static class Default implements IOplusChannelService {
        @Override // com.oplus.preloadsource.IOplusChannelService
        public void handleChannelEvent(List packageNames) throws RemoteException {
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }
    }

    public static abstract class Stub extends Binder implements IOplusChannelService {
        static final int TRANSACTION_handleChannelEvent = 1;

        public Stub() {
            attachInterface(this, IOplusChannelService.DESCRIPTOR);
        }

        public static IOplusChannelService asInterface(IBinder obj) {
            if (obj == null) {
                return null;
            }
            IInterface iin = obj.queryLocalInterface(IOplusChannelService.DESCRIPTOR);
            if (iin != null && (iin instanceof IOplusChannelService)) {
                return (IOplusChannelService) iin;
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
                    return "handleChannelEvent";
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
                data.enforceInterface(IOplusChannelService.DESCRIPTOR);
            }
            switch (code) {
                case IBinder.INTERFACE_TRANSACTION /* 1598968902 */:
                    reply.writeString(IOplusChannelService.DESCRIPTOR);
                    return true;
                default:
                    switch (code) {
                        case 1:
                            ClassLoader cl = getClass().getClassLoader();
                            List _arg0 = data.readArrayList(cl);
                            data.enforceNoDataAvail();
                            handleChannelEvent(_arg0);
                            return true;
                        default:
                            return super.onTransact(code, data, reply, flags);
                    }
            }
        }

        private static class Proxy implements IOplusChannelService {
            private IBinder mRemote;

            Proxy(IBinder remote) {
                this.mRemote = remote;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            public String getInterfaceDescriptor() {
                return IOplusChannelService.DESCRIPTOR;
            }

            @Override // com.oplus.preloadsource.IOplusChannelService
            public void handleChannelEvent(List packageNames) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IOplusChannelService.DESCRIPTOR);
                    _data.writeList(packageNames);
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

package com.oplus.bracket;

import android.graphics.Rect;
import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.oplus.bracket.IOplusBracketWindowObserver;

/* loaded from: classes4.dex */
public interface IOplusBracketModeChangedListener extends IInterface {
    public static final String DESCRIPTOR = "com.oplus.bracket.IOplusBracketModeChangedListener";

    void onBindService(IOplusBracketWindowObserver iOplusBracketWindowObserver) throws RemoteException;

    void onBracketModeChanged(int i) throws RemoteException;

    void onBracketRegionChange(Rect rect) throws RemoteException;

    void onUnBindService(int i) throws RemoteException;

    public static class Default implements IOplusBracketModeChangedListener {
        @Override // com.oplus.bracket.IOplusBracketModeChangedListener
        public void onBracketModeChanged(int type) throws RemoteException {
        }

        @Override // com.oplus.bracket.IOplusBracketModeChangedListener
        public void onBracketRegionChange(Rect rect) throws RemoteException {
        }

        @Override // com.oplus.bracket.IOplusBracketModeChangedListener
        public void onBindService(IOplusBracketWindowObserver oplusBracketWindowObserver) throws RemoteException {
        }

        @Override // com.oplus.bracket.IOplusBracketModeChangedListener
        public void onUnBindService(int reason) throws RemoteException {
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }
    }

    public static abstract class Stub extends Binder implements IOplusBracketModeChangedListener {
        static final int TRANSACTION_onBindService = 3;
        static final int TRANSACTION_onBracketModeChanged = 1;
        static final int TRANSACTION_onBracketRegionChange = 2;
        static final int TRANSACTION_onUnBindService = 4;

        public Stub() {
            attachInterface(this, IOplusBracketModeChangedListener.DESCRIPTOR);
        }

        public static IOplusBracketModeChangedListener asInterface(IBinder obj) {
            if (obj == null) {
                return null;
            }
            IInterface iin = obj.queryLocalInterface(IOplusBracketModeChangedListener.DESCRIPTOR);
            if (iin != null && (iin instanceof IOplusBracketModeChangedListener)) {
                return (IOplusBracketModeChangedListener) iin;
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
                    return "onBracketModeChanged";
                case 2:
                    return "onBracketRegionChange";
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
                data.enforceInterface(IOplusBracketModeChangedListener.DESCRIPTOR);
            }
            switch (code) {
                case IBinder.INTERFACE_TRANSACTION /* 1598968902 */:
                    reply.writeString(IOplusBracketModeChangedListener.DESCRIPTOR);
                    return true;
                default:
                    switch (code) {
                        case 1:
                            int _arg0 = data.readInt();
                            data.enforceNoDataAvail();
                            onBracketModeChanged(_arg0);
                            return true;
                        case 2:
                            Rect _arg02 = (Rect) data.readTypedObject(Rect.CREATOR);
                            data.enforceNoDataAvail();
                            onBracketRegionChange(_arg02);
                            return true;
                        case 3:
                            IOplusBracketWindowObserver _arg03 = IOplusBracketWindowObserver.Stub.asInterface(data.readStrongBinder());
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

        private static class Proxy implements IOplusBracketModeChangedListener {
            private IBinder mRemote;

            Proxy(IBinder remote) {
                this.mRemote = remote;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            public String getInterfaceDescriptor() {
                return IOplusBracketModeChangedListener.DESCRIPTOR;
            }

            @Override // com.oplus.bracket.IOplusBracketModeChangedListener
            public void onBracketModeChanged(int type) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IOplusBracketModeChangedListener.DESCRIPTOR);
                    _data.writeInt(type);
                    this.mRemote.transact(1, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // com.oplus.bracket.IOplusBracketModeChangedListener
            public void onBracketRegionChange(Rect rect) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IOplusBracketModeChangedListener.DESCRIPTOR);
                    _data.writeTypedObject(rect, 0);
                    this.mRemote.transact(2, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // com.oplus.bracket.IOplusBracketModeChangedListener
            public void onBindService(IOplusBracketWindowObserver oplusBracketWindowObserver) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IOplusBracketModeChangedListener.DESCRIPTOR);
                    _data.writeStrongInterface(oplusBracketWindowObserver);
                    this.mRemote.transact(3, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // com.oplus.bracket.IOplusBracketModeChangedListener
            public void onUnBindService(int reason) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IOplusBracketModeChangedListener.DESCRIPTOR);
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

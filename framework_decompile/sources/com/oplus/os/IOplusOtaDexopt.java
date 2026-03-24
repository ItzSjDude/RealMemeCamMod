package com.oplus.os;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes3.dex */
public interface IOplusOtaDexopt extends IInterface {
    public static final String DESCRIPTOR = "com.oplus.os.IOplusOtaDexopt";

    void cleanup() throws RemoteException;

    void dexoptNextPackage() throws RemoteException;

    String dump() throws RemoteException;

    float getProgress() throws RemoteException;

    void interruptOtaDexopt() throws RemoteException;

    boolean isDone() throws RemoteException;

    String nextDexoptCommand() throws RemoteException;

    void prepare() throws RemoteException;

    public static class Default implements IOplusOtaDexopt {
        @Override // com.oplus.os.IOplusOtaDexopt
        public void prepare() throws RemoteException {
        }

        @Override // com.oplus.os.IOplusOtaDexopt
        public void cleanup() throws RemoteException {
        }

        @Override // com.oplus.os.IOplusOtaDexopt
        public boolean isDone() throws RemoteException {
            return false;
        }

        @Override // com.oplus.os.IOplusOtaDexopt
        public float getProgress() throws RemoteException {
            return 0.0f;
        }

        @Override // com.oplus.os.IOplusOtaDexopt
        public void dexoptNextPackage() throws RemoteException {
        }

        @Override // com.oplus.os.IOplusOtaDexopt
        public String nextDexoptCommand() throws RemoteException {
            return null;
        }

        @Override // com.oplus.os.IOplusOtaDexopt
        public String dump() throws RemoteException {
            return null;
        }

        @Override // com.oplus.os.IOplusOtaDexopt
        public void interruptOtaDexopt() throws RemoteException {
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }
    }

    public static abstract class Stub extends Binder implements IOplusOtaDexopt {
        static final int TRANSACTION_cleanup = 2;
        static final int TRANSACTION_dexoptNextPackage = 5;
        static final int TRANSACTION_dump = 7;
        static final int TRANSACTION_getProgress = 4;
        static final int TRANSACTION_interruptOtaDexopt = 8;
        static final int TRANSACTION_isDone = 3;
        static final int TRANSACTION_nextDexoptCommand = 6;
        static final int TRANSACTION_prepare = 1;

        public Stub() {
            attachInterface(this, IOplusOtaDexopt.DESCRIPTOR);
        }

        public static IOplusOtaDexopt asInterface(IBinder obj) {
            if (obj == null) {
                return null;
            }
            IInterface iin = obj.queryLocalInterface(IOplusOtaDexopt.DESCRIPTOR);
            if (iin != null && (iin instanceof IOplusOtaDexopt)) {
                return (IOplusOtaDexopt) iin;
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
                    return "prepare";
                case 2:
                    return "cleanup";
                case 3:
                    return "isDone";
                case 4:
                    return "getProgress";
                case 5:
                    return "dexoptNextPackage";
                case 6:
                    return "nextDexoptCommand";
                case 7:
                    return "dump";
                case 8:
                    return "interruptOtaDexopt";
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
                data.enforceInterface(IOplusOtaDexopt.DESCRIPTOR);
            }
            switch (code) {
                case IBinder.INTERFACE_TRANSACTION /* 1598968902 */:
                    reply.writeString(IOplusOtaDexopt.DESCRIPTOR);
                    return true;
                default:
                    switch (code) {
                        case 1:
                            prepare();
                            reply.writeNoException();
                            return true;
                        case 2:
                            cleanup();
                            reply.writeNoException();
                            return true;
                        case 3:
                            boolean _result = isDone();
                            reply.writeNoException();
                            reply.writeBoolean(_result);
                            return true;
                        case 4:
                            float _result2 = getProgress();
                            reply.writeNoException();
                            reply.writeFloat(_result2);
                            return true;
                        case 5:
                            dexoptNextPackage();
                            reply.writeNoException();
                            return true;
                        case 6:
                            String _result3 = nextDexoptCommand();
                            reply.writeNoException();
                            reply.writeString(_result3);
                            return true;
                        case 7:
                            String _result4 = dump();
                            reply.writeNoException();
                            reply.writeString(_result4);
                            return true;
                        case 8:
                            interruptOtaDexopt();
                            reply.writeNoException();
                            return true;
                        default:
                            return super.onTransact(code, data, reply, flags);
                    }
            }
        }

        private static class Proxy implements IOplusOtaDexopt {
            private IBinder mRemote;

            Proxy(IBinder remote) {
                this.mRemote = remote;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            public String getInterfaceDescriptor() {
                return IOplusOtaDexopt.DESCRIPTOR;
            }

            @Override // com.oplus.os.IOplusOtaDexopt
            public void prepare() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IOplusOtaDexopt.DESCRIPTOR);
                    this.mRemote.transact(1, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // com.oplus.os.IOplusOtaDexopt
            public void cleanup() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IOplusOtaDexopt.DESCRIPTOR);
                    this.mRemote.transact(2, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // com.oplus.os.IOplusOtaDexopt
            public boolean isDone() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IOplusOtaDexopt.DESCRIPTOR);
                    this.mRemote.transact(3, _data, _reply, 0);
                    _reply.readException();
                    boolean _result = _reply.readBoolean();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // com.oplus.os.IOplusOtaDexopt
            public float getProgress() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IOplusOtaDexopt.DESCRIPTOR);
                    this.mRemote.transact(4, _data, _reply, 0);
                    _reply.readException();
                    float _result = _reply.readFloat();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // com.oplus.os.IOplusOtaDexopt
            public void dexoptNextPackage() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IOplusOtaDexopt.DESCRIPTOR);
                    this.mRemote.transact(5, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // com.oplus.os.IOplusOtaDexopt
            public String nextDexoptCommand() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IOplusOtaDexopt.DESCRIPTOR);
                    this.mRemote.transact(6, _data, _reply, 0);
                    _reply.readException();
                    String _result = _reply.readString();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // com.oplus.os.IOplusOtaDexopt
            public String dump() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IOplusOtaDexopt.DESCRIPTOR);
                    this.mRemote.transact(7, _data, _reply, 0);
                    _reply.readException();
                    String _result = _reply.readString();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // com.oplus.os.IOplusOtaDexopt
            public void interruptOtaDexopt() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IOplusOtaDexopt.DESCRIPTOR);
                    this.mRemote.transact(8, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }
        }

        @Override // android.os.Binder
        public int getMaxTransactionId() {
            return 7;
        }
    }
}

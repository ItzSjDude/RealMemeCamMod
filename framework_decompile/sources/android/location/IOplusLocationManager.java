package android.location;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import java.util.List;

/* loaded from: classes2.dex */
public interface IOplusLocationManager extends IInterface {
    public static final String DESCRIPTOR = "android.location.IOplusLocationManager";

    List<String> getInUsePackagesList() throws RemoteException;

    void setDebugDump() throws RemoteException;

    void setDebugOff() throws RemoteException;

    void setDebugOn() throws RemoteException;

    public static class Default implements IOplusLocationManager {
        @Override // android.location.IOplusLocationManager
        public List<String> getInUsePackagesList() throws RemoteException {
            return null;
        }

        @Override // android.location.IOplusLocationManager
        public void setDebugOn() throws RemoteException {
        }

        @Override // android.location.IOplusLocationManager
        public void setDebugOff() throws RemoteException {
        }

        @Override // android.location.IOplusLocationManager
        public void setDebugDump() throws RemoteException {
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }
    }

    public static abstract class Stub extends Binder implements IOplusLocationManager {
        static final int TRANSACTION_getInUsePackagesList = 1;
        static final int TRANSACTION_setDebugDump = 4;
        static final int TRANSACTION_setDebugOff = 3;
        static final int TRANSACTION_setDebugOn = 2;

        public Stub() {
            attachInterface(this, IOplusLocationManager.DESCRIPTOR);
        }

        public static IOplusLocationManager asInterface(IBinder obj) {
            if (obj == null) {
                return null;
            }
            IInterface iin = obj.queryLocalInterface(IOplusLocationManager.DESCRIPTOR);
            if (iin != null && (iin instanceof IOplusLocationManager)) {
                return (IOplusLocationManager) iin;
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
                    return "getInUsePackagesList";
                case 2:
                    return "setDebugOn";
                case 3:
                    return "setDebugOff";
                case 4:
                    return "setDebugDump";
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
                data.enforceInterface(IOplusLocationManager.DESCRIPTOR);
            }
            switch (code) {
                case IBinder.INTERFACE_TRANSACTION /* 1598968902 */:
                    reply.writeString(IOplusLocationManager.DESCRIPTOR);
                    return true;
                default:
                    switch (code) {
                        case 1:
                            List<String> _result = getInUsePackagesList();
                            reply.writeNoException();
                            reply.writeStringList(_result);
                            return true;
                        case 2:
                            setDebugOn();
                            reply.writeNoException();
                            return true;
                        case 3:
                            setDebugOff();
                            reply.writeNoException();
                            return true;
                        case 4:
                            setDebugDump();
                            reply.writeNoException();
                            return true;
                        default:
                            return super.onTransact(code, data, reply, flags);
                    }
            }
        }

        private static class Proxy implements IOplusLocationManager {
            private IBinder mRemote;

            Proxy(IBinder remote) {
                this.mRemote = remote;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            public String getInterfaceDescriptor() {
                return IOplusLocationManager.DESCRIPTOR;
            }

            @Override // android.location.IOplusLocationManager
            public List<String> getInUsePackagesList() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IOplusLocationManager.DESCRIPTOR);
                    this.mRemote.transact(1, _data, _reply, 0);
                    _reply.readException();
                    List<String> _result = _reply.createStringArrayList();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.location.IOplusLocationManager
            public void setDebugOn() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IOplusLocationManager.DESCRIPTOR);
                    this.mRemote.transact(2, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.location.IOplusLocationManager
            public void setDebugOff() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IOplusLocationManager.DESCRIPTOR);
                    this.mRemote.transact(3, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.location.IOplusLocationManager
            public void setDebugDump() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IOplusLocationManager.DESCRIPTOR);
                    this.mRemote.transact(4, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
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

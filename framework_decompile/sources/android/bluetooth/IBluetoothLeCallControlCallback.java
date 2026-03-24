package android.bluetooth;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.ParcelUuid;
import android.os.RemoteException;
import java.util.List;

/* loaded from: classes.dex */
public interface IBluetoothLeCallControlCallback extends IInterface {
    public static final String DESCRIPTOR = "android.bluetooth.IBluetoothLeCallControlCallback";

    void onAcceptCall(int i, ParcelUuid parcelUuid) throws RemoteException;

    void onBearerRegistered(int i) throws RemoteException;

    void onHoldCall(int i, ParcelUuid parcelUuid) throws RemoteException;

    void onJoinCalls(int i, List<ParcelUuid> list) throws RemoteException;

    void onPlaceCall(int i, ParcelUuid parcelUuid, String str) throws RemoteException;

    void onTerminateCall(int i, ParcelUuid parcelUuid) throws RemoteException;

    void onUnholdCall(int i, ParcelUuid parcelUuid) throws RemoteException;

    public static class Default implements IBluetoothLeCallControlCallback {
        @Override // android.bluetooth.IBluetoothLeCallControlCallback
        public void onBearerRegistered(int ccid) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetoothLeCallControlCallback
        public void onAcceptCall(int requestId, ParcelUuid uuid) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetoothLeCallControlCallback
        public void onTerminateCall(int requestId, ParcelUuid uuid) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetoothLeCallControlCallback
        public void onHoldCall(int requestId, ParcelUuid uuid) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetoothLeCallControlCallback
        public void onUnholdCall(int requestId, ParcelUuid uuid) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetoothLeCallControlCallback
        public void onPlaceCall(int requestId, ParcelUuid uuid, String uri) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetoothLeCallControlCallback
        public void onJoinCalls(int requestId, List<ParcelUuid> uuids) throws RemoteException {
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }
    }

    public static abstract class Stub extends Binder implements IBluetoothLeCallControlCallback {
        static final int TRANSACTION_onAcceptCall = 2;
        static final int TRANSACTION_onBearerRegistered = 1;
        static final int TRANSACTION_onHoldCall = 4;
        static final int TRANSACTION_onJoinCalls = 7;
        static final int TRANSACTION_onPlaceCall = 6;
        static final int TRANSACTION_onTerminateCall = 3;
        static final int TRANSACTION_onUnholdCall = 5;

        public Stub() {
            attachInterface(this, IBluetoothLeCallControlCallback.DESCRIPTOR);
        }

        public static IBluetoothLeCallControlCallback asInterface(IBinder obj) {
            if (obj == null) {
                return null;
            }
            IInterface iin = obj.queryLocalInterface(IBluetoothLeCallControlCallback.DESCRIPTOR);
            if (iin != null && (iin instanceof IBluetoothLeCallControlCallback)) {
                return (IBluetoothLeCallControlCallback) iin;
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
                    return "onBearerRegistered";
                case 2:
                    return "onAcceptCall";
                case 3:
                    return "onTerminateCall";
                case 4:
                    return "onHoldCall";
                case 5:
                    return "onUnholdCall";
                case 6:
                    return "onPlaceCall";
                case 7:
                    return "onJoinCalls";
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
                data.enforceInterface(IBluetoothLeCallControlCallback.DESCRIPTOR);
            }
            switch (code) {
                case IBinder.INTERFACE_TRANSACTION /* 1598968902 */:
                    reply.writeString(IBluetoothLeCallControlCallback.DESCRIPTOR);
                    return true;
                default:
                    switch (code) {
                        case 1:
                            int _arg0 = data.readInt();
                            data.enforceNoDataAvail();
                            onBearerRegistered(_arg0);
                            return true;
                        case 2:
                            int _arg02 = data.readInt();
                            ParcelUuid _arg1 = (ParcelUuid) data.readTypedObject(ParcelUuid.CREATOR);
                            data.enforceNoDataAvail();
                            onAcceptCall(_arg02, _arg1);
                            return true;
                        case 3:
                            int _arg03 = data.readInt();
                            ParcelUuid _arg12 = (ParcelUuid) data.readTypedObject(ParcelUuid.CREATOR);
                            data.enforceNoDataAvail();
                            onTerminateCall(_arg03, _arg12);
                            return true;
                        case 4:
                            int _arg04 = data.readInt();
                            ParcelUuid _arg13 = (ParcelUuid) data.readTypedObject(ParcelUuid.CREATOR);
                            data.enforceNoDataAvail();
                            onHoldCall(_arg04, _arg13);
                            return true;
                        case 5:
                            int _arg05 = data.readInt();
                            ParcelUuid _arg14 = (ParcelUuid) data.readTypedObject(ParcelUuid.CREATOR);
                            data.enforceNoDataAvail();
                            onUnholdCall(_arg05, _arg14);
                            return true;
                        case 6:
                            int _arg06 = data.readInt();
                            ParcelUuid _arg15 = (ParcelUuid) data.readTypedObject(ParcelUuid.CREATOR);
                            String _arg2 = data.readString();
                            data.enforceNoDataAvail();
                            onPlaceCall(_arg06, _arg15, _arg2);
                            return true;
                        case 7:
                            int _arg07 = data.readInt();
                            List<ParcelUuid> _arg16 = data.createTypedArrayList(ParcelUuid.CREATOR);
                            data.enforceNoDataAvail();
                            onJoinCalls(_arg07, _arg16);
                            return true;
                        default:
                            return super.onTransact(code, data, reply, flags);
                    }
            }
        }

        private static class Proxy implements IBluetoothLeCallControlCallback {
            private IBinder mRemote;

            Proxy(IBinder remote) {
                this.mRemote = remote;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            public String getInterfaceDescriptor() {
                return IBluetoothLeCallControlCallback.DESCRIPTOR;
            }

            @Override // android.bluetooth.IBluetoothLeCallControlCallback
            public void onBearerRegistered(int ccid) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IBluetoothLeCallControlCallback.DESCRIPTOR);
                    _data.writeInt(ccid);
                    this.mRemote.transact(1, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetoothLeCallControlCallback
            public void onAcceptCall(int requestId, ParcelUuid uuid) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IBluetoothLeCallControlCallback.DESCRIPTOR);
                    _data.writeInt(requestId);
                    _data.writeTypedObject(uuid, 0);
                    this.mRemote.transact(2, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetoothLeCallControlCallback
            public void onTerminateCall(int requestId, ParcelUuid uuid) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IBluetoothLeCallControlCallback.DESCRIPTOR);
                    _data.writeInt(requestId);
                    _data.writeTypedObject(uuid, 0);
                    this.mRemote.transact(3, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetoothLeCallControlCallback
            public void onHoldCall(int requestId, ParcelUuid uuid) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IBluetoothLeCallControlCallback.DESCRIPTOR);
                    _data.writeInt(requestId);
                    _data.writeTypedObject(uuid, 0);
                    this.mRemote.transact(4, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetoothLeCallControlCallback
            public void onUnholdCall(int requestId, ParcelUuid uuid) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IBluetoothLeCallControlCallback.DESCRIPTOR);
                    _data.writeInt(requestId);
                    _data.writeTypedObject(uuid, 0);
                    this.mRemote.transact(5, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetoothLeCallControlCallback
            public void onPlaceCall(int requestId, ParcelUuid uuid, String uri) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IBluetoothLeCallControlCallback.DESCRIPTOR);
                    _data.writeInt(requestId);
                    _data.writeTypedObject(uuid, 0);
                    _data.writeString(uri);
                    this.mRemote.transact(6, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetoothLeCallControlCallback
            public void onJoinCalls(int requestId, List<ParcelUuid> uuids) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IBluetoothLeCallControlCallback.DESCRIPTOR);
                    _data.writeInt(requestId);
                    _data.writeTypedList(uuids);
                    this.mRemote.transact(7, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }
        }

        @Override // android.os.Binder
        public int getMaxTransactionId() {
            return 6;
        }
    }
}

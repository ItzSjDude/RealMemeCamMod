package android.bluetooth;

import android.content.AttributionSource;
import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes.dex */
public interface IBluetoothBroadcast extends IInterface {
    public static final String DESCRIPTOR = "android.bluetooth.IBluetoothBroadcast";

    int GetBroadcastStatus(String str, AttributionSource attributionSource) throws RemoteException;

    byte[] GetEncryptionKey(String str, AttributionSource attributionSource) throws RemoteException;

    boolean SetBroadcast(boolean z, String str, AttributionSource attributionSource) throws RemoteException;

    boolean SetEncryption(boolean z, int i, boolean z2, String str, AttributionSource attributionSource) throws RemoteException;

    public static class Default implements IBluetoothBroadcast {
        @Override // android.bluetooth.IBluetoothBroadcast
        public boolean SetBroadcast(boolean enable, String packageName, AttributionSource attributionSource) throws RemoteException {
            return false;
        }

        @Override // android.bluetooth.IBluetoothBroadcast
        public boolean SetEncryption(boolean enable, int enc_len, boolean use_existing, String packageName, AttributionSource attributionSource) throws RemoteException {
            return false;
        }

        @Override // android.bluetooth.IBluetoothBroadcast
        public byte[] GetEncryptionKey(String packageName, AttributionSource attributionSource) throws RemoteException {
            return null;
        }

        @Override // android.bluetooth.IBluetoothBroadcast
        public int GetBroadcastStatus(String packageName, AttributionSource attributionSource) throws RemoteException {
            return 0;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }
    }

    public static abstract class Stub extends Binder implements IBluetoothBroadcast {
        static final int TRANSACTION_GetBroadcastStatus = 4;
        static final int TRANSACTION_GetEncryptionKey = 3;
        static final int TRANSACTION_SetBroadcast = 1;
        static final int TRANSACTION_SetEncryption = 2;

        public Stub() {
            attachInterface(this, IBluetoothBroadcast.DESCRIPTOR);
        }

        public static IBluetoothBroadcast asInterface(IBinder obj) {
            if (obj == null) {
                return null;
            }
            IInterface iin = obj.queryLocalInterface(IBluetoothBroadcast.DESCRIPTOR);
            if (iin != null && (iin instanceof IBluetoothBroadcast)) {
                return (IBluetoothBroadcast) iin;
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
                    return "SetBroadcast";
                case 2:
                    return "SetEncryption";
                case 3:
                    return "GetEncryptionKey";
                case 4:
                    return "GetBroadcastStatus";
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
                data.enforceInterface(IBluetoothBroadcast.DESCRIPTOR);
            }
            switch (code) {
                case IBinder.INTERFACE_TRANSACTION /* 1598968902 */:
                    reply.writeString(IBluetoothBroadcast.DESCRIPTOR);
                    return true;
                default:
                    switch (code) {
                        case 1:
                            boolean _arg0 = data.readBoolean();
                            String _arg1 = data.readString();
                            AttributionSource _arg2 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            data.enforceNoDataAvail();
                            boolean _result = SetBroadcast(_arg0, _arg1, _arg2);
                            reply.writeNoException();
                            reply.writeBoolean(_result);
                            return true;
                        case 2:
                            boolean _arg02 = data.readBoolean();
                            int _arg12 = data.readInt();
                            boolean _arg22 = data.readBoolean();
                            String _arg3 = data.readString();
                            AttributionSource _arg4 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            data.enforceNoDataAvail();
                            boolean _result2 = SetEncryption(_arg02, _arg12, _arg22, _arg3, _arg4);
                            reply.writeNoException();
                            reply.writeBoolean(_result2);
                            return true;
                        case 3:
                            String _arg03 = data.readString();
                            AttributionSource _arg13 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            data.enforceNoDataAvail();
                            byte[] _result3 = GetEncryptionKey(_arg03, _arg13);
                            reply.writeNoException();
                            reply.writeByteArray(_result3);
                            return true;
                        case 4:
                            String _arg04 = data.readString();
                            AttributionSource _arg14 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            data.enforceNoDataAvail();
                            int _result4 = GetBroadcastStatus(_arg04, _arg14);
                            reply.writeNoException();
                            reply.writeInt(_result4);
                            return true;
                        default:
                            return super.onTransact(code, data, reply, flags);
                    }
            }
        }

        private static class Proxy implements IBluetoothBroadcast {
            private IBinder mRemote;

            Proxy(IBinder remote) {
                this.mRemote = remote;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            public String getInterfaceDescriptor() {
                return IBluetoothBroadcast.DESCRIPTOR;
            }

            @Override // android.bluetooth.IBluetoothBroadcast
            public boolean SetBroadcast(boolean enable, String packageName, AttributionSource attributionSource) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IBluetoothBroadcast.DESCRIPTOR);
                    _data.writeBoolean(enable);
                    _data.writeString(packageName);
                    _data.writeTypedObject(attributionSource, 0);
                    this.mRemote.transact(1, _data, _reply, 0);
                    _reply.readException();
                    boolean _result = _reply.readBoolean();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetoothBroadcast
            public boolean SetEncryption(boolean enable, int enc_len, boolean use_existing, String packageName, AttributionSource attributionSource) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IBluetoothBroadcast.DESCRIPTOR);
                    _data.writeBoolean(enable);
                    _data.writeInt(enc_len);
                    _data.writeBoolean(use_existing);
                    _data.writeString(packageName);
                    _data.writeTypedObject(attributionSource, 0);
                    this.mRemote.transact(2, _data, _reply, 0);
                    _reply.readException();
                    boolean _result = _reply.readBoolean();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetoothBroadcast
            public byte[] GetEncryptionKey(String packageName, AttributionSource attributionSource) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IBluetoothBroadcast.DESCRIPTOR);
                    _data.writeString(packageName);
                    _data.writeTypedObject(attributionSource, 0);
                    this.mRemote.transact(3, _data, _reply, 0);
                    _reply.readException();
                    byte[] _result = _reply.createByteArray();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetoothBroadcast
            public int GetBroadcastStatus(String packageName, AttributionSource attributionSource) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IBluetoothBroadcast.DESCRIPTOR);
                    _data.writeString(packageName);
                    _data.writeTypedObject(attributionSource, 0);
                    this.mRemote.transact(4, _data, _reply, 0);
                    _reply.readException();
                    int _result = _reply.readInt();
                    return _result;
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

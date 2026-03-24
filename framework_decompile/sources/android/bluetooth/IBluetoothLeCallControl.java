package android.bluetooth;

import android.bluetooth.IBluetoothLeCallControlCallback;
import android.content.AttributionSource;
import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.ParcelUuid;
import android.os.RemoteException;
import java.util.List;

/* loaded from: classes.dex */
public interface IBluetoothLeCallControl extends IInterface {
    public static final String DESCRIPTOR = "android.bluetooth.IBluetoothLeCallControl";

    void callAdded(int i, BluetoothLeCall bluetoothLeCall, AttributionSource attributionSource) throws RemoteException;

    void callRemoved(int i, ParcelUuid parcelUuid, int i2, AttributionSource attributionSource) throws RemoteException;

    void callStateChanged(int i, ParcelUuid parcelUuid, int i2, AttributionSource attributionSource) throws RemoteException;

    void currentCallsList(int i, List<BluetoothLeCall> list, AttributionSource attributionSource) throws RemoteException;

    void networkStateChanged(int i, String str, int i2, AttributionSource attributionSource) throws RemoteException;

    void registerBearer(String str, IBluetoothLeCallControlCallback iBluetoothLeCallControlCallback, String str2, List<String> list, int i, String str3, int i2, AttributionSource attributionSource) throws RemoteException;

    void requestResult(int i, int i2, int i3, AttributionSource attributionSource) throws RemoteException;

    void unregisterBearer(String str, AttributionSource attributionSource) throws RemoteException;

    public static class Default implements IBluetoothLeCallControl {
        @Override // android.bluetooth.IBluetoothLeCallControl
        public void registerBearer(String token, IBluetoothLeCallControlCallback callback, String uci, List<String> uriSchemes, int capabilities, String provider, int technology, AttributionSource attributionSource) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetoothLeCallControl
        public void unregisterBearer(String token, AttributionSource attributionSource) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetoothLeCallControl
        public void requestResult(int ccid, int requestId, int result, AttributionSource attributionSource) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetoothLeCallControl
        public void callAdded(int ccid, BluetoothLeCall call, AttributionSource attributionSource) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetoothLeCallControl
        public void callRemoved(int ccid, ParcelUuid callId, int reason, AttributionSource attributionSource) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetoothLeCallControl
        public void callStateChanged(int ccid, ParcelUuid callId, int state, AttributionSource attributionSource) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetoothLeCallControl
        public void currentCallsList(int ccid, List<BluetoothLeCall> calls, AttributionSource attributionSource) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetoothLeCallControl
        public void networkStateChanged(int ccid, String provider, int technology, AttributionSource attributionSource) throws RemoteException {
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }
    }

    public static abstract class Stub extends Binder implements IBluetoothLeCallControl {
        static final int TRANSACTION_callAdded = 4;
        static final int TRANSACTION_callRemoved = 5;
        static final int TRANSACTION_callStateChanged = 6;
        static final int TRANSACTION_currentCallsList = 7;
        static final int TRANSACTION_networkStateChanged = 8;
        static final int TRANSACTION_registerBearer = 1;
        static final int TRANSACTION_requestResult = 3;
        static final int TRANSACTION_unregisterBearer = 2;

        public Stub() {
            attachInterface(this, IBluetoothLeCallControl.DESCRIPTOR);
        }

        public static IBluetoothLeCallControl asInterface(IBinder obj) {
            if (obj == null) {
                return null;
            }
            IInterface iin = obj.queryLocalInterface(IBluetoothLeCallControl.DESCRIPTOR);
            if (iin != null && (iin instanceof IBluetoothLeCallControl)) {
                return (IBluetoothLeCallControl) iin;
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
                    return "registerBearer";
                case 2:
                    return "unregisterBearer";
                case 3:
                    return "requestResult";
                case 4:
                    return "callAdded";
                case 5:
                    return "callRemoved";
                case 6:
                    return "callStateChanged";
                case 7:
                    return "currentCallsList";
                case 8:
                    return "networkStateChanged";
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
                data.enforceInterface(IBluetoothLeCallControl.DESCRIPTOR);
            }
            switch (code) {
                case IBinder.INTERFACE_TRANSACTION /* 1598968902 */:
                    reply.writeString(IBluetoothLeCallControl.DESCRIPTOR);
                    return true;
                default:
                    switch (code) {
                        case 1:
                            String _arg0 = data.readString();
                            IBluetoothLeCallControlCallback _arg1 = IBluetoothLeCallControlCallback.Stub.asInterface(data.readStrongBinder());
                            String _arg2 = data.readString();
                            List<String> _arg3 = data.createStringArrayList();
                            int _arg4 = data.readInt();
                            String _arg5 = data.readString();
                            int _arg6 = data.readInt();
                            AttributionSource _arg7 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            data.enforceNoDataAvail();
                            registerBearer(_arg0, _arg1, _arg2, _arg3, _arg4, _arg5, _arg6, _arg7);
                            return true;
                        case 2:
                            String _arg02 = data.readString();
                            AttributionSource _arg12 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            data.enforceNoDataAvail();
                            unregisterBearer(_arg02, _arg12);
                            return true;
                        case 3:
                            int _arg03 = data.readInt();
                            int _arg13 = data.readInt();
                            int _arg22 = data.readInt();
                            AttributionSource _arg32 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            data.enforceNoDataAvail();
                            requestResult(_arg03, _arg13, _arg22, _arg32);
                            return true;
                        case 4:
                            int _arg04 = data.readInt();
                            BluetoothLeCall _arg14 = (BluetoothLeCall) data.readTypedObject(BluetoothLeCall.CREATOR);
                            AttributionSource _arg23 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            data.enforceNoDataAvail();
                            callAdded(_arg04, _arg14, _arg23);
                            return true;
                        case 5:
                            int _arg05 = data.readInt();
                            ParcelUuid _arg15 = (ParcelUuid) data.readTypedObject(ParcelUuid.CREATOR);
                            int _arg24 = data.readInt();
                            AttributionSource _arg33 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            data.enforceNoDataAvail();
                            callRemoved(_arg05, _arg15, _arg24, _arg33);
                            return true;
                        case 6:
                            int _arg06 = data.readInt();
                            ParcelUuid _arg16 = (ParcelUuid) data.readTypedObject(ParcelUuid.CREATOR);
                            int _arg25 = data.readInt();
                            AttributionSource _arg34 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            data.enforceNoDataAvail();
                            callStateChanged(_arg06, _arg16, _arg25, _arg34);
                            return true;
                        case 7:
                            int _arg07 = data.readInt();
                            List<BluetoothLeCall> _arg17 = data.createTypedArrayList(BluetoothLeCall.CREATOR);
                            AttributionSource _arg26 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            data.enforceNoDataAvail();
                            currentCallsList(_arg07, _arg17, _arg26);
                            return true;
                        case 8:
                            int _arg08 = data.readInt();
                            String _arg18 = data.readString();
                            int _arg27 = data.readInt();
                            AttributionSource _arg35 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            data.enforceNoDataAvail();
                            networkStateChanged(_arg08, _arg18, _arg27, _arg35);
                            return true;
                        default:
                            return super.onTransact(code, data, reply, flags);
                    }
            }
        }

        private static class Proxy implements IBluetoothLeCallControl {
            private IBinder mRemote;

            Proxy(IBinder remote) {
                this.mRemote = remote;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            public String getInterfaceDescriptor() {
                return IBluetoothLeCallControl.DESCRIPTOR;
            }

            @Override // android.bluetooth.IBluetoothLeCallControl
            public void registerBearer(String token, IBluetoothLeCallControlCallback callback, String uci, List<String> uriSchemes, int capabilities, String provider, int technology, AttributionSource attributionSource) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IBluetoothLeCallControl.DESCRIPTOR);
                    _data.writeString(token);
                    _data.writeStrongInterface(callback);
                    _data.writeString(uci);
                    _data.writeStringList(uriSchemes);
                    _data.writeInt(capabilities);
                    _data.writeString(provider);
                    _data.writeInt(technology);
                    _data.writeTypedObject(attributionSource, 0);
                    this.mRemote.transact(1, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetoothLeCallControl
            public void unregisterBearer(String token, AttributionSource attributionSource) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IBluetoothLeCallControl.DESCRIPTOR);
                    _data.writeString(token);
                    _data.writeTypedObject(attributionSource, 0);
                    this.mRemote.transact(2, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetoothLeCallControl
            public void requestResult(int ccid, int requestId, int result, AttributionSource attributionSource) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IBluetoothLeCallControl.DESCRIPTOR);
                    _data.writeInt(ccid);
                    _data.writeInt(requestId);
                    _data.writeInt(result);
                    _data.writeTypedObject(attributionSource, 0);
                    this.mRemote.transact(3, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetoothLeCallControl
            public void callAdded(int ccid, BluetoothLeCall call, AttributionSource attributionSource) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IBluetoothLeCallControl.DESCRIPTOR);
                    _data.writeInt(ccid);
                    _data.writeTypedObject(call, 0);
                    _data.writeTypedObject(attributionSource, 0);
                    this.mRemote.transact(4, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetoothLeCallControl
            public void callRemoved(int ccid, ParcelUuid callId, int reason, AttributionSource attributionSource) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IBluetoothLeCallControl.DESCRIPTOR);
                    _data.writeInt(ccid);
                    _data.writeTypedObject(callId, 0);
                    _data.writeInt(reason);
                    _data.writeTypedObject(attributionSource, 0);
                    this.mRemote.transact(5, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetoothLeCallControl
            public void callStateChanged(int ccid, ParcelUuid callId, int state, AttributionSource attributionSource) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IBluetoothLeCallControl.DESCRIPTOR);
                    _data.writeInt(ccid);
                    _data.writeTypedObject(callId, 0);
                    _data.writeInt(state);
                    _data.writeTypedObject(attributionSource, 0);
                    this.mRemote.transact(6, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetoothLeCallControl
            public void currentCallsList(int ccid, List<BluetoothLeCall> calls, AttributionSource attributionSource) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IBluetoothLeCallControl.DESCRIPTOR);
                    _data.writeInt(ccid);
                    _data.writeTypedList(calls);
                    _data.writeTypedObject(attributionSource, 0);
                    this.mRemote.transact(7, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetoothLeCallControl
            public void networkStateChanged(int ccid, String provider, int technology, AttributionSource attributionSource) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IBluetoothLeCallControl.DESCRIPTOR);
                    _data.writeInt(ccid);
                    _data.writeString(provider);
                    _data.writeInt(technology);
                    _data.writeTypedObject(attributionSource, 0);
                    this.mRemote.transact(8, _data, null, 1);
                } finally {
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

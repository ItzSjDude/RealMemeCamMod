package android.bluetooth;

import android.bluetooth.IBluetoothPanCallback;
import android.content.AttributionSource;
import android.media.MediaMetrics;
import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.android.modules.utils.SynchronousResultReceiver;

/* loaded from: classes.dex */
public interface IBluetoothPan extends IInterface {
    void connect(BluetoothDevice bluetoothDevice, AttributionSource attributionSource, SynchronousResultReceiver synchronousResultReceiver) throws RemoteException;

    void disconnect(BluetoothDevice bluetoothDevice, AttributionSource attributionSource, SynchronousResultReceiver synchronousResultReceiver) throws RemoteException;

    void getConnectedDevices(AttributionSource attributionSource, SynchronousResultReceiver synchronousResultReceiver) throws RemoteException;

    void getConnectionState(BluetoothDevice bluetoothDevice, AttributionSource attributionSource, SynchronousResultReceiver synchronousResultReceiver) throws RemoteException;

    void getDevicesMatchingConnectionStates(int[] iArr, AttributionSource attributionSource, SynchronousResultReceiver synchronousResultReceiver) throws RemoteException;

    void isTetheringOn(AttributionSource attributionSource, SynchronousResultReceiver synchronousResultReceiver) throws RemoteException;

    void setBluetoothTethering(IBluetoothPanCallback iBluetoothPanCallback, int i, boolean z, AttributionSource attributionSource, SynchronousResultReceiver synchronousResultReceiver) throws RemoteException;

    void setConnectionPolicy(BluetoothDevice bluetoothDevice, int i, AttributionSource attributionSource, SynchronousResultReceiver synchronousResultReceiver) throws RemoteException;

    public static class Default implements IBluetoothPan {
        @Override // android.bluetooth.IBluetoothPan
        public void isTetheringOn(AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetoothPan
        public void setBluetoothTethering(IBluetoothPanCallback callback, int id, boolean value, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetoothPan
        public void connect(BluetoothDevice device, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetoothPan
        public void disconnect(BluetoothDevice device, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetoothPan
        public void getConnectedDevices(AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetoothPan
        public void getDevicesMatchingConnectionStates(int[] states, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetoothPan
        public void getConnectionState(BluetoothDevice device, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetoothPan
        public void setConnectionPolicy(BluetoothDevice device, int connectionPolicy, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }
    }

    public static abstract class Stub extends Binder implements IBluetoothPan {
        public static final String DESCRIPTOR = "android.bluetooth.IBluetoothPan";
        static final int TRANSACTION_connect = 3;
        static final int TRANSACTION_disconnect = 4;
        static final int TRANSACTION_getConnectedDevices = 5;
        static final int TRANSACTION_getConnectionState = 7;
        static final int TRANSACTION_getDevicesMatchingConnectionStates = 6;
        static final int TRANSACTION_isTetheringOn = 1;
        static final int TRANSACTION_setBluetoothTethering = 2;
        static final int TRANSACTION_setConnectionPolicy = 8;

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IBluetoothPan asInterface(IBinder obj) {
            if (obj == null) {
                return null;
            }
            IInterface iin = obj.queryLocalInterface(DESCRIPTOR);
            if (iin != null && (iin instanceof IBluetoothPan)) {
                return (IBluetoothPan) iin;
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
                    return "isTetheringOn";
                case 2:
                    return "setBluetoothTethering";
                case 3:
                    return MediaMetrics.Value.CONNECT;
                case 4:
                    return MediaMetrics.Value.DISCONNECT;
                case 5:
                    return "getConnectedDevices";
                case 6:
                    return "getDevicesMatchingConnectionStates";
                case 7:
                    return "getConnectionState";
                case 8:
                    return "setConnectionPolicy";
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
                data.enforceInterface(DESCRIPTOR);
            }
            switch (code) {
                case IBinder.INTERFACE_TRANSACTION /* 1598968902 */:
                    reply.writeString(DESCRIPTOR);
                    return true;
                default:
                    switch (code) {
                        case 1:
                            AttributionSource _arg0 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            SynchronousResultReceiver _arg1 = (SynchronousResultReceiver) data.readTypedObject(SynchronousResultReceiver.CREATOR);
                            data.enforceNoDataAvail();
                            isTetheringOn(_arg0, _arg1);
                            return true;
                        case 2:
                            IBluetoothPanCallback _arg02 = IBluetoothPanCallback.Stub.asInterface(data.readStrongBinder());
                            int _arg12 = data.readInt();
                            boolean _arg2 = data.readBoolean();
                            AttributionSource _arg3 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            SynchronousResultReceiver _arg4 = (SynchronousResultReceiver) data.readTypedObject(SynchronousResultReceiver.CREATOR);
                            data.enforceNoDataAvail();
                            setBluetoothTethering(_arg02, _arg12, _arg2, _arg3, _arg4);
                            return true;
                        case 3:
                            BluetoothDevice _arg03 = (BluetoothDevice) data.readTypedObject(BluetoothDevice.CREATOR);
                            AttributionSource _arg13 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            SynchronousResultReceiver _arg22 = (SynchronousResultReceiver) data.readTypedObject(SynchronousResultReceiver.CREATOR);
                            data.enforceNoDataAvail();
                            connect(_arg03, _arg13, _arg22);
                            return true;
                        case 4:
                            BluetoothDevice _arg04 = (BluetoothDevice) data.readTypedObject(BluetoothDevice.CREATOR);
                            AttributionSource _arg14 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            SynchronousResultReceiver _arg23 = (SynchronousResultReceiver) data.readTypedObject(SynchronousResultReceiver.CREATOR);
                            data.enforceNoDataAvail();
                            disconnect(_arg04, _arg14, _arg23);
                            return true;
                        case 5:
                            AttributionSource _arg05 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            SynchronousResultReceiver _arg15 = (SynchronousResultReceiver) data.readTypedObject(SynchronousResultReceiver.CREATOR);
                            data.enforceNoDataAvail();
                            getConnectedDevices(_arg05, _arg15);
                            return true;
                        case 6:
                            int[] _arg06 = data.createIntArray();
                            AttributionSource _arg16 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            SynchronousResultReceiver _arg24 = (SynchronousResultReceiver) data.readTypedObject(SynchronousResultReceiver.CREATOR);
                            data.enforceNoDataAvail();
                            getDevicesMatchingConnectionStates(_arg06, _arg16, _arg24);
                            return true;
                        case 7:
                            BluetoothDevice _arg07 = (BluetoothDevice) data.readTypedObject(BluetoothDevice.CREATOR);
                            AttributionSource _arg17 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            SynchronousResultReceiver _arg25 = (SynchronousResultReceiver) data.readTypedObject(SynchronousResultReceiver.CREATOR);
                            data.enforceNoDataAvail();
                            getConnectionState(_arg07, _arg17, _arg25);
                            return true;
                        case 8:
                            BluetoothDevice _arg08 = (BluetoothDevice) data.readTypedObject(BluetoothDevice.CREATOR);
                            int _arg18 = data.readInt();
                            AttributionSource _arg26 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            SynchronousResultReceiver _arg32 = (SynchronousResultReceiver) data.readTypedObject(SynchronousResultReceiver.CREATOR);
                            data.enforceNoDataAvail();
                            setConnectionPolicy(_arg08, _arg18, _arg26, _arg32);
                            return true;
                        default:
                            return super.onTransact(code, data, reply, flags);
                    }
            }
        }

        private static class Proxy implements IBluetoothPan {
            private IBinder mRemote;

            Proxy(IBinder remote) {
                this.mRemote = remote;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            public String getInterfaceDescriptor() {
                return Stub.DESCRIPTOR;
            }

            @Override // android.bluetooth.IBluetoothPan
            public void isTetheringOn(AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeTypedObject(attributionSource, 0);
                    _data.writeTypedObject(receiver, 0);
                    this.mRemote.transact(1, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetoothPan
            public void setBluetoothTethering(IBluetoothPanCallback callback, int id, boolean value, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeStrongInterface(callback);
                    _data.writeInt(id);
                    _data.writeBoolean(value);
                    _data.writeTypedObject(attributionSource, 0);
                    _data.writeTypedObject(receiver, 0);
                    this.mRemote.transact(2, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetoothPan
            public void connect(BluetoothDevice device, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeTypedObject(device, 0);
                    _data.writeTypedObject(attributionSource, 0);
                    _data.writeTypedObject(receiver, 0);
                    this.mRemote.transact(3, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetoothPan
            public void disconnect(BluetoothDevice device, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeTypedObject(device, 0);
                    _data.writeTypedObject(attributionSource, 0);
                    _data.writeTypedObject(receiver, 0);
                    this.mRemote.transact(4, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetoothPan
            public void getConnectedDevices(AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeTypedObject(attributionSource, 0);
                    _data.writeTypedObject(receiver, 0);
                    this.mRemote.transact(5, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetoothPan
            public void getDevicesMatchingConnectionStates(int[] states, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeIntArray(states);
                    _data.writeTypedObject(attributionSource, 0);
                    _data.writeTypedObject(receiver, 0);
                    this.mRemote.transact(6, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetoothPan
            public void getConnectionState(BluetoothDevice device, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeTypedObject(device, 0);
                    _data.writeTypedObject(attributionSource, 0);
                    _data.writeTypedObject(receiver, 0);
                    this.mRemote.transact(7, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetoothPan
            public void setConnectionPolicy(BluetoothDevice device, int connectionPolicy, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeTypedObject(device, 0);
                    _data.writeInt(connectionPolicy);
                    _data.writeTypedObject(attributionSource, 0);
                    _data.writeTypedObject(receiver, 0);
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

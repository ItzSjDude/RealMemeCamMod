package android.bluetooth;

import android.content.AttributionSource;
import android.media.MediaMetrics;
import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.android.modules.utils.SynchronousResultReceiver;

/* loaded from: classes.dex */
public interface IBluetoothA2dpSink extends IInterface {
    void connect(BluetoothDevice bluetoothDevice, AttributionSource attributionSource, SynchronousResultReceiver synchronousResultReceiver) throws RemoteException;

    void disconnect(BluetoothDevice bluetoothDevice, AttributionSource attributionSource, SynchronousResultReceiver synchronousResultReceiver) throws RemoteException;

    void getAudioConfig(BluetoothDevice bluetoothDevice, AttributionSource attributionSource, SynchronousResultReceiver synchronousResultReceiver) throws RemoteException;

    void getConnectedDevices(AttributionSource attributionSource, SynchronousResultReceiver synchronousResultReceiver) throws RemoteException;

    void getConnectionPolicy(BluetoothDevice bluetoothDevice, AttributionSource attributionSource, SynchronousResultReceiver synchronousResultReceiver) throws RemoteException;

    void getConnectionState(BluetoothDevice bluetoothDevice, AttributionSource attributionSource, SynchronousResultReceiver synchronousResultReceiver) throws RemoteException;

    void getDevicesMatchingConnectionStates(int[] iArr, AttributionSource attributionSource, SynchronousResultReceiver synchronousResultReceiver) throws RemoteException;

    void isA2dpPlaying(BluetoothDevice bluetoothDevice, AttributionSource attributionSource, SynchronousResultReceiver synchronousResultReceiver) throws RemoteException;

    void setConnectionPolicy(BluetoothDevice bluetoothDevice, int i, AttributionSource attributionSource, SynchronousResultReceiver synchronousResultReceiver) throws RemoteException;

    public static class Default implements IBluetoothA2dpSink {
        @Override // android.bluetooth.IBluetoothA2dpSink
        public void connect(BluetoothDevice device, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetoothA2dpSink
        public void disconnect(BluetoothDevice device, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetoothA2dpSink
        public void getConnectedDevices(AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetoothA2dpSink
        public void getDevicesMatchingConnectionStates(int[] states, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetoothA2dpSink
        public void getConnectionState(BluetoothDevice device, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetoothA2dpSink
        public void getAudioConfig(BluetoothDevice device, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetoothA2dpSink
        public void setConnectionPolicy(BluetoothDevice device, int connectionPolicy, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetoothA2dpSink
        public void getConnectionPolicy(BluetoothDevice device, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetoothA2dpSink
        public void isA2dpPlaying(BluetoothDevice device, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }
    }

    public static abstract class Stub extends Binder implements IBluetoothA2dpSink {
        public static final String DESCRIPTOR = "android.bluetooth.IBluetoothA2dpSink";
        static final int TRANSACTION_connect = 1;
        static final int TRANSACTION_disconnect = 2;
        static final int TRANSACTION_getAudioConfig = 6;
        static final int TRANSACTION_getConnectedDevices = 3;
        static final int TRANSACTION_getConnectionPolicy = 8;
        static final int TRANSACTION_getConnectionState = 5;
        static final int TRANSACTION_getDevicesMatchingConnectionStates = 4;
        static final int TRANSACTION_isA2dpPlaying = 9;
        static final int TRANSACTION_setConnectionPolicy = 7;

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IBluetoothA2dpSink asInterface(IBinder obj) {
            if (obj == null) {
                return null;
            }
            IInterface iin = obj.queryLocalInterface(DESCRIPTOR);
            if (iin != null && (iin instanceof IBluetoothA2dpSink)) {
                return (IBluetoothA2dpSink) iin;
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
                    return MediaMetrics.Value.CONNECT;
                case 2:
                    return MediaMetrics.Value.DISCONNECT;
                case 3:
                    return "getConnectedDevices";
                case 4:
                    return "getDevicesMatchingConnectionStates";
                case 5:
                    return "getConnectionState";
                case 6:
                    return "getAudioConfig";
                case 7:
                    return "setConnectionPolicy";
                case 8:
                    return "getConnectionPolicy";
                case 9:
                    return "isA2dpPlaying";
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
                            BluetoothDevice _arg0 = (BluetoothDevice) data.readTypedObject(BluetoothDevice.CREATOR);
                            AttributionSource _arg1 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            SynchronousResultReceiver _arg2 = (SynchronousResultReceiver) data.readTypedObject(SynchronousResultReceiver.CREATOR);
                            data.enforceNoDataAvail();
                            connect(_arg0, _arg1, _arg2);
                            return true;
                        case 2:
                            BluetoothDevice _arg02 = (BluetoothDevice) data.readTypedObject(BluetoothDevice.CREATOR);
                            AttributionSource _arg12 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            SynchronousResultReceiver _arg22 = (SynchronousResultReceiver) data.readTypedObject(SynchronousResultReceiver.CREATOR);
                            data.enforceNoDataAvail();
                            disconnect(_arg02, _arg12, _arg22);
                            return true;
                        case 3:
                            AttributionSource _arg03 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            SynchronousResultReceiver _arg13 = (SynchronousResultReceiver) data.readTypedObject(SynchronousResultReceiver.CREATOR);
                            data.enforceNoDataAvail();
                            getConnectedDevices(_arg03, _arg13);
                            return true;
                        case 4:
                            int[] _arg04 = data.createIntArray();
                            AttributionSource _arg14 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            SynchronousResultReceiver _arg23 = (SynchronousResultReceiver) data.readTypedObject(SynchronousResultReceiver.CREATOR);
                            data.enforceNoDataAvail();
                            getDevicesMatchingConnectionStates(_arg04, _arg14, _arg23);
                            return true;
                        case 5:
                            BluetoothDevice _arg05 = (BluetoothDevice) data.readTypedObject(BluetoothDevice.CREATOR);
                            AttributionSource _arg15 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            SynchronousResultReceiver _arg24 = (SynchronousResultReceiver) data.readTypedObject(SynchronousResultReceiver.CREATOR);
                            data.enforceNoDataAvail();
                            getConnectionState(_arg05, _arg15, _arg24);
                            return true;
                        case 6:
                            BluetoothDevice _arg06 = (BluetoothDevice) data.readTypedObject(BluetoothDevice.CREATOR);
                            AttributionSource _arg16 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            SynchronousResultReceiver _arg25 = (SynchronousResultReceiver) data.readTypedObject(SynchronousResultReceiver.CREATOR);
                            data.enforceNoDataAvail();
                            getAudioConfig(_arg06, _arg16, _arg25);
                            return true;
                        case 7:
                            BluetoothDevice _arg07 = (BluetoothDevice) data.readTypedObject(BluetoothDevice.CREATOR);
                            int _arg17 = data.readInt();
                            AttributionSource _arg26 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            SynchronousResultReceiver _arg3 = (SynchronousResultReceiver) data.readTypedObject(SynchronousResultReceiver.CREATOR);
                            data.enforceNoDataAvail();
                            setConnectionPolicy(_arg07, _arg17, _arg26, _arg3);
                            return true;
                        case 8:
                            BluetoothDevice _arg08 = (BluetoothDevice) data.readTypedObject(BluetoothDevice.CREATOR);
                            AttributionSource _arg18 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            SynchronousResultReceiver _arg27 = (SynchronousResultReceiver) data.readTypedObject(SynchronousResultReceiver.CREATOR);
                            data.enforceNoDataAvail();
                            getConnectionPolicy(_arg08, _arg18, _arg27);
                            return true;
                        case 9:
                            BluetoothDevice _arg09 = (BluetoothDevice) data.readTypedObject(BluetoothDevice.CREATOR);
                            AttributionSource _arg19 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            SynchronousResultReceiver _arg28 = (SynchronousResultReceiver) data.readTypedObject(SynchronousResultReceiver.CREATOR);
                            data.enforceNoDataAvail();
                            isA2dpPlaying(_arg09, _arg19, _arg28);
                            return true;
                        default:
                            return super.onTransact(code, data, reply, flags);
                    }
            }
        }

        private static class Proxy implements IBluetoothA2dpSink {
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

            @Override // android.bluetooth.IBluetoothA2dpSink
            public void connect(BluetoothDevice device, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeTypedObject(device, 0);
                    _data.writeTypedObject(attributionSource, 0);
                    _data.writeTypedObject(receiver, 0);
                    this.mRemote.transact(1, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetoothA2dpSink
            public void disconnect(BluetoothDevice device, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeTypedObject(device, 0);
                    _data.writeTypedObject(attributionSource, 0);
                    _data.writeTypedObject(receiver, 0);
                    this.mRemote.transact(2, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetoothA2dpSink
            public void getConnectedDevices(AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeTypedObject(attributionSource, 0);
                    _data.writeTypedObject(receiver, 0);
                    this.mRemote.transact(3, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetoothA2dpSink
            public void getDevicesMatchingConnectionStates(int[] states, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeIntArray(states);
                    _data.writeTypedObject(attributionSource, 0);
                    _data.writeTypedObject(receiver, 0);
                    this.mRemote.transact(4, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetoothA2dpSink
            public void getConnectionState(BluetoothDevice device, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeTypedObject(device, 0);
                    _data.writeTypedObject(attributionSource, 0);
                    _data.writeTypedObject(receiver, 0);
                    this.mRemote.transact(5, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetoothA2dpSink
            public void getAudioConfig(BluetoothDevice device, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeTypedObject(device, 0);
                    _data.writeTypedObject(attributionSource, 0);
                    _data.writeTypedObject(receiver, 0);
                    this.mRemote.transact(6, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetoothA2dpSink
            public void setConnectionPolicy(BluetoothDevice device, int connectionPolicy, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeTypedObject(device, 0);
                    _data.writeInt(connectionPolicy);
                    _data.writeTypedObject(attributionSource, 0);
                    _data.writeTypedObject(receiver, 0);
                    this.mRemote.transact(7, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetoothA2dpSink
            public void getConnectionPolicy(BluetoothDevice device, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeTypedObject(device, 0);
                    _data.writeTypedObject(attributionSource, 0);
                    _data.writeTypedObject(receiver, 0);
                    this.mRemote.transact(8, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetoothA2dpSink
            public void isA2dpPlaying(BluetoothDevice device, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeTypedObject(device, 0);
                    _data.writeTypedObject(attributionSource, 0);
                    _data.writeTypedObject(receiver, 0);
                    this.mRemote.transact(9, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }
        }

        @Override // android.os.Binder
        public int getMaxTransactionId() {
            return 8;
        }
    }
}

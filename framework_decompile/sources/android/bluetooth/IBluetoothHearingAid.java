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
public interface IBluetoothHearingAid extends IInterface {
    public static final int MODE_BINAURAL = 1;
    public static final int MODE_MONAURAL = 0;
    public static final int SIDE_LEFT = 0;
    public static final int SIDE_RIGHT = 1;

    void connect(BluetoothDevice bluetoothDevice, AttributionSource attributionSource, SynchronousResultReceiver synchronousResultReceiver) throws RemoteException;

    void disconnect(BluetoothDevice bluetoothDevice, AttributionSource attributionSource, SynchronousResultReceiver synchronousResultReceiver) throws RemoteException;

    void getActiveDevices(AttributionSource attributionSource, SynchronousResultReceiver synchronousResultReceiver) throws RemoteException;

    void getConnectedDevices(AttributionSource attributionSource, SynchronousResultReceiver synchronousResultReceiver) throws RemoteException;

    void getConnectionPolicy(BluetoothDevice bluetoothDevice, AttributionSource attributionSource, SynchronousResultReceiver synchronousResultReceiver) throws RemoteException;

    void getConnectionState(BluetoothDevice bluetoothDevice, AttributionSource attributionSource, SynchronousResultReceiver synchronousResultReceiver) throws RemoteException;

    void getDeviceMode(BluetoothDevice bluetoothDevice, AttributionSource attributionSource, SynchronousResultReceiver synchronousResultReceiver) throws RemoteException;

    void getDeviceSide(BluetoothDevice bluetoothDevice, AttributionSource attributionSource, SynchronousResultReceiver synchronousResultReceiver) throws RemoteException;

    void getDevicesMatchingConnectionStates(int[] iArr, AttributionSource attributionSource, SynchronousResultReceiver synchronousResultReceiver) throws RemoteException;

    void getHiSyncId(BluetoothDevice bluetoothDevice, AttributionSource attributionSource, SynchronousResultReceiver synchronousResultReceiver) throws RemoteException;

    void setActiveDevice(BluetoothDevice bluetoothDevice, AttributionSource attributionSource, SynchronousResultReceiver synchronousResultReceiver) throws RemoteException;

    void setConnectionPolicy(BluetoothDevice bluetoothDevice, int i, AttributionSource attributionSource, SynchronousResultReceiver synchronousResultReceiver) throws RemoteException;

    void setVolume(int i, AttributionSource attributionSource, SynchronousResultReceiver synchronousResultReceiver) throws RemoteException;

    public static class Default implements IBluetoothHearingAid {
        @Override // android.bluetooth.IBluetoothHearingAid
        public void connect(BluetoothDevice device, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetoothHearingAid
        public void disconnect(BluetoothDevice device, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetoothHearingAid
        public void getConnectedDevices(AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetoothHearingAid
        public void getDevicesMatchingConnectionStates(int[] states, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetoothHearingAid
        public void getConnectionState(BluetoothDevice device, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetoothHearingAid
        public void setActiveDevice(BluetoothDevice device, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetoothHearingAid
        public void getActiveDevices(AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetoothHearingAid
        public void setConnectionPolicy(BluetoothDevice device, int connectionPolicy, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetoothHearingAid
        public void getConnectionPolicy(BluetoothDevice device, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetoothHearingAid
        public void setVolume(int volume, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetoothHearingAid
        public void getHiSyncId(BluetoothDevice device, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetoothHearingAid
        public void getDeviceSide(BluetoothDevice device, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetoothHearingAid
        public void getDeviceMode(BluetoothDevice device, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }
    }

    public static abstract class Stub extends Binder implements IBluetoothHearingAid {
        public static final String DESCRIPTOR = "android.bluetooth.IBluetoothHearingAid";
        static final int TRANSACTION_connect = 1;
        static final int TRANSACTION_disconnect = 2;
        static final int TRANSACTION_getActiveDevices = 7;
        static final int TRANSACTION_getConnectedDevices = 3;
        static final int TRANSACTION_getConnectionPolicy = 9;
        static final int TRANSACTION_getConnectionState = 5;
        static final int TRANSACTION_getDeviceMode = 13;
        static final int TRANSACTION_getDeviceSide = 12;
        static final int TRANSACTION_getDevicesMatchingConnectionStates = 4;
        static final int TRANSACTION_getHiSyncId = 11;
        static final int TRANSACTION_setActiveDevice = 6;
        static final int TRANSACTION_setConnectionPolicy = 8;
        static final int TRANSACTION_setVolume = 10;

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IBluetoothHearingAid asInterface(IBinder obj) {
            if (obj == null) {
                return null;
            }
            IInterface iin = obj.queryLocalInterface(DESCRIPTOR);
            if (iin != null && (iin instanceof IBluetoothHearingAid)) {
                return (IBluetoothHearingAid) iin;
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
                    return "setActiveDevice";
                case 7:
                    return "getActiveDevices";
                case 8:
                    return "setConnectionPolicy";
                case 9:
                    return "getConnectionPolicy";
                case 10:
                    return "setVolume";
                case 11:
                    return "getHiSyncId";
                case 12:
                    return "getDeviceSide";
                case 13:
                    return "getDeviceMode";
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
                            setActiveDevice(_arg06, _arg16, _arg25);
                            return true;
                        case 7:
                            AttributionSource _arg07 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            SynchronousResultReceiver _arg17 = (SynchronousResultReceiver) data.readTypedObject(SynchronousResultReceiver.CREATOR);
                            data.enforceNoDataAvail();
                            getActiveDevices(_arg07, _arg17);
                            return true;
                        case 8:
                            BluetoothDevice _arg08 = (BluetoothDevice) data.readTypedObject(BluetoothDevice.CREATOR);
                            int _arg18 = data.readInt();
                            AttributionSource _arg26 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            SynchronousResultReceiver _arg3 = (SynchronousResultReceiver) data.readTypedObject(SynchronousResultReceiver.CREATOR);
                            data.enforceNoDataAvail();
                            setConnectionPolicy(_arg08, _arg18, _arg26, _arg3);
                            return true;
                        case 9:
                            BluetoothDevice _arg09 = (BluetoothDevice) data.readTypedObject(BluetoothDevice.CREATOR);
                            AttributionSource _arg19 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            SynchronousResultReceiver _arg27 = (SynchronousResultReceiver) data.readTypedObject(SynchronousResultReceiver.CREATOR);
                            data.enforceNoDataAvail();
                            getConnectionPolicy(_arg09, _arg19, _arg27);
                            return true;
                        case 10:
                            int _arg010 = data.readInt();
                            AttributionSource _arg110 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            SynchronousResultReceiver _arg28 = (SynchronousResultReceiver) data.readTypedObject(SynchronousResultReceiver.CREATOR);
                            data.enforceNoDataAvail();
                            setVolume(_arg010, _arg110, _arg28);
                            return true;
                        case 11:
                            BluetoothDevice _arg011 = (BluetoothDevice) data.readTypedObject(BluetoothDevice.CREATOR);
                            AttributionSource _arg111 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            SynchronousResultReceiver _arg29 = (SynchronousResultReceiver) data.readTypedObject(SynchronousResultReceiver.CREATOR);
                            data.enforceNoDataAvail();
                            getHiSyncId(_arg011, _arg111, _arg29);
                            return true;
                        case 12:
                            BluetoothDevice _arg012 = (BluetoothDevice) data.readTypedObject(BluetoothDevice.CREATOR);
                            AttributionSource _arg112 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            SynchronousResultReceiver _arg210 = (SynchronousResultReceiver) data.readTypedObject(SynchronousResultReceiver.CREATOR);
                            data.enforceNoDataAvail();
                            getDeviceSide(_arg012, _arg112, _arg210);
                            return true;
                        case 13:
                            BluetoothDevice _arg013 = (BluetoothDevice) data.readTypedObject(BluetoothDevice.CREATOR);
                            AttributionSource _arg113 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            SynchronousResultReceiver _arg211 = (SynchronousResultReceiver) data.readTypedObject(SynchronousResultReceiver.CREATOR);
                            data.enforceNoDataAvail();
                            getDeviceMode(_arg013, _arg113, _arg211);
                            return true;
                        default:
                            return super.onTransact(code, data, reply, flags);
                    }
            }
        }

        private static class Proxy implements IBluetoothHearingAid {
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

            @Override // android.bluetooth.IBluetoothHearingAid
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

            @Override // android.bluetooth.IBluetoothHearingAid
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

            @Override // android.bluetooth.IBluetoothHearingAid
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

            @Override // android.bluetooth.IBluetoothHearingAid
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

            @Override // android.bluetooth.IBluetoothHearingAid
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

            @Override // android.bluetooth.IBluetoothHearingAid
            public void setActiveDevice(BluetoothDevice device, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
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

            @Override // android.bluetooth.IBluetoothHearingAid
            public void getActiveDevices(AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeTypedObject(attributionSource, 0);
                    _data.writeTypedObject(receiver, 0);
                    this.mRemote.transact(7, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetoothHearingAid
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

            @Override // android.bluetooth.IBluetoothHearingAid
            public void getConnectionPolicy(BluetoothDevice device, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
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

            @Override // android.bluetooth.IBluetoothHearingAid
            public void setVolume(int volume, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(volume);
                    _data.writeTypedObject(attributionSource, 0);
                    _data.writeTypedObject(receiver, 0);
                    this.mRemote.transact(10, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetoothHearingAid
            public void getHiSyncId(BluetoothDevice device, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeTypedObject(device, 0);
                    _data.writeTypedObject(attributionSource, 0);
                    _data.writeTypedObject(receiver, 0);
                    this.mRemote.transact(11, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetoothHearingAid
            public void getDeviceSide(BluetoothDevice device, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeTypedObject(device, 0);
                    _data.writeTypedObject(attributionSource, 0);
                    _data.writeTypedObject(receiver, 0);
                    this.mRemote.transact(12, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetoothHearingAid
            public void getDeviceMode(BluetoothDevice device, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeTypedObject(device, 0);
                    _data.writeTypedObject(attributionSource, 0);
                    _data.writeTypedObject(receiver, 0);
                    this.mRemote.transact(13, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }
        }

        @Override // android.os.Binder
        public int getMaxTransactionId() {
            return 12;
        }
    }
}

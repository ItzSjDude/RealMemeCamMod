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
public interface IBluetoothA2dp extends IInterface {
    void connect(BluetoothDevice bluetoothDevice, SynchronousResultReceiver synchronousResultReceiver) throws RemoteException;

    void connectWithAttribution(BluetoothDevice bluetoothDevice, AttributionSource attributionSource, SynchronousResultReceiver synchronousResultReceiver) throws RemoteException;

    void disableOptionalCodecs(BluetoothDevice bluetoothDevice, AttributionSource attributionSource) throws RemoteException;

    void disconnect(BluetoothDevice bluetoothDevice, SynchronousResultReceiver synchronousResultReceiver) throws RemoteException;

    void disconnectWithAttribution(BluetoothDevice bluetoothDevice, AttributionSource attributionSource, SynchronousResultReceiver synchronousResultReceiver) throws RemoteException;

    void enableOptionalCodecs(BluetoothDevice bluetoothDevice, AttributionSource attributionSource) throws RemoteException;

    void getActiveDevice(AttributionSource attributionSource, SynchronousResultReceiver synchronousResultReceiver) throws RemoteException;

    void getBufferConstraints(AttributionSource attributionSource, SynchronousResultReceiver synchronousResultReceiver) throws RemoteException;

    void getCodecStatus(BluetoothDevice bluetoothDevice, AttributionSource attributionSource, SynchronousResultReceiver synchronousResultReceiver) throws RemoteException;

    void getConnectedDevices(SynchronousResultReceiver synchronousResultReceiver) throws RemoteException;

    void getConnectedDevicesWithAttribution(AttributionSource attributionSource, SynchronousResultReceiver synchronousResultReceiver) throws RemoteException;

    void getConnectionPolicy(BluetoothDevice bluetoothDevice, AttributionSource attributionSource, SynchronousResultReceiver synchronousResultReceiver) throws RemoteException;

    void getConnectionState(BluetoothDevice bluetoothDevice, SynchronousResultReceiver synchronousResultReceiver) throws RemoteException;

    void getConnectionStateWithAttribution(BluetoothDevice bluetoothDevice, AttributionSource attributionSource, SynchronousResultReceiver synchronousResultReceiver) throws RemoteException;

    void getDevicesMatchingConnectionStates(int[] iArr, SynchronousResultReceiver synchronousResultReceiver) throws RemoteException;

    void getDevicesMatchingConnectionStatesWithAttribution(int[] iArr, AttributionSource attributionSource, SynchronousResultReceiver synchronousResultReceiver) throws RemoteException;

    void getDynamicBufferSupport(AttributionSource attributionSource, SynchronousResultReceiver synchronousResultReceiver) throws RemoteException;

    void isA2dpPlaying(BluetoothDevice bluetoothDevice, AttributionSource attributionSource, SynchronousResultReceiver synchronousResultReceiver) throws RemoteException;

    void isAvrcpAbsoluteVolumeSupported(SynchronousResultReceiver synchronousResultReceiver) throws RemoteException;

    void isOptionalCodecsEnabled(BluetoothDevice bluetoothDevice, AttributionSource attributionSource, SynchronousResultReceiver synchronousResultReceiver) throws RemoteException;

    void isOptionalCodecsSupported(BluetoothDevice bluetoothDevice, AttributionSource attributionSource, SynchronousResultReceiver synchronousResultReceiver) throws RemoteException;

    void setActiveDevice(BluetoothDevice bluetoothDevice, AttributionSource attributionSource, SynchronousResultReceiver synchronousResultReceiver) throws RemoteException;

    void setAvrcpAbsoluteVolume(int i, AttributionSource attributionSource) throws RemoteException;

    void setBufferLengthMillis(int i, int i2, AttributionSource attributionSource, SynchronousResultReceiver synchronousResultReceiver) throws RemoteException;

    void setCodecConfigPreference(BluetoothDevice bluetoothDevice, BluetoothCodecConfig bluetoothCodecConfig, AttributionSource attributionSource) throws RemoteException;

    void setConnectionPolicy(BluetoothDevice bluetoothDevice, int i, AttributionSource attributionSource, SynchronousResultReceiver synchronousResultReceiver) throws RemoteException;

    void setOptionalCodecsEnabled(BluetoothDevice bluetoothDevice, int i, AttributionSource attributionSource) throws RemoteException;

    public static class Default implements IBluetoothA2dp {
        @Override // android.bluetooth.IBluetoothA2dp
        public void connect(BluetoothDevice device, SynchronousResultReceiver receiver) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetoothA2dp
        public void connectWithAttribution(BluetoothDevice device, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetoothA2dp
        public void disconnect(BluetoothDevice device, SynchronousResultReceiver receiver) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetoothA2dp
        public void disconnectWithAttribution(BluetoothDevice device, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetoothA2dp
        public void getConnectedDevices(SynchronousResultReceiver receiver) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetoothA2dp
        public void getConnectedDevicesWithAttribution(AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetoothA2dp
        public void getDevicesMatchingConnectionStates(int[] states, SynchronousResultReceiver receiver) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetoothA2dp
        public void getDevicesMatchingConnectionStatesWithAttribution(int[] states, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetoothA2dp
        public void getConnectionState(BluetoothDevice device, SynchronousResultReceiver receiver) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetoothA2dp
        public void getConnectionStateWithAttribution(BluetoothDevice device, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetoothA2dp
        public void setActiveDevice(BluetoothDevice device, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetoothA2dp
        public void getActiveDevice(AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetoothA2dp
        public void setConnectionPolicy(BluetoothDevice device, int connectionPolicy, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetoothA2dp
        public void getConnectionPolicy(BluetoothDevice device, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetoothA2dp
        public void isAvrcpAbsoluteVolumeSupported(SynchronousResultReceiver receiver) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetoothA2dp
        public void setAvrcpAbsoluteVolume(int volume, AttributionSource attributionSource) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetoothA2dp
        public void isA2dpPlaying(BluetoothDevice device, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetoothA2dp
        public void getCodecStatus(BluetoothDevice device, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetoothA2dp
        public void setCodecConfigPreference(BluetoothDevice device, BluetoothCodecConfig codecConfig, AttributionSource attributionSource) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetoothA2dp
        public void enableOptionalCodecs(BluetoothDevice device, AttributionSource attributionSource) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetoothA2dp
        public void disableOptionalCodecs(BluetoothDevice device, AttributionSource attributionSource) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetoothA2dp
        public void isOptionalCodecsSupported(BluetoothDevice device, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetoothA2dp
        public void isOptionalCodecsEnabled(BluetoothDevice device, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetoothA2dp
        public void setOptionalCodecsEnabled(BluetoothDevice device, int value, AttributionSource attributionSource) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetoothA2dp
        public void getDynamicBufferSupport(AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetoothA2dp
        public void getBufferConstraints(AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetoothA2dp
        public void setBufferLengthMillis(int codec, int size, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }
    }

    public static abstract class Stub extends Binder implements IBluetoothA2dp {
        public static final String DESCRIPTOR = "android.bluetooth.IBluetoothA2dp";
        static final int TRANSACTION_connect = 1;
        static final int TRANSACTION_connectWithAttribution = 2;
        static final int TRANSACTION_disableOptionalCodecs = 21;
        static final int TRANSACTION_disconnect = 3;
        static final int TRANSACTION_disconnectWithAttribution = 4;
        static final int TRANSACTION_enableOptionalCodecs = 20;
        static final int TRANSACTION_getActiveDevice = 12;
        static final int TRANSACTION_getBufferConstraints = 26;
        static final int TRANSACTION_getCodecStatus = 18;
        static final int TRANSACTION_getConnectedDevices = 5;
        static final int TRANSACTION_getConnectedDevicesWithAttribution = 6;
        static final int TRANSACTION_getConnectionPolicy = 14;
        static final int TRANSACTION_getConnectionState = 9;
        static final int TRANSACTION_getConnectionStateWithAttribution = 10;
        static final int TRANSACTION_getDevicesMatchingConnectionStates = 7;
        static final int TRANSACTION_getDevicesMatchingConnectionStatesWithAttribution = 8;
        static final int TRANSACTION_getDynamicBufferSupport = 25;
        static final int TRANSACTION_isA2dpPlaying = 17;
        static final int TRANSACTION_isAvrcpAbsoluteVolumeSupported = 15;
        static final int TRANSACTION_isOptionalCodecsEnabled = 23;
        static final int TRANSACTION_isOptionalCodecsSupported = 22;
        static final int TRANSACTION_setActiveDevice = 11;
        static final int TRANSACTION_setAvrcpAbsoluteVolume = 16;
        static final int TRANSACTION_setBufferLengthMillis = 27;
        static final int TRANSACTION_setCodecConfigPreference = 19;
        static final int TRANSACTION_setConnectionPolicy = 13;
        static final int TRANSACTION_setOptionalCodecsEnabled = 24;

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IBluetoothA2dp asInterface(IBinder obj) {
            if (obj == null) {
                return null;
            }
            IInterface iin = obj.queryLocalInterface(DESCRIPTOR);
            if (iin != null && (iin instanceof IBluetoothA2dp)) {
                return (IBluetoothA2dp) iin;
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
                    return "connectWithAttribution";
                case 3:
                    return MediaMetrics.Value.DISCONNECT;
                case 4:
                    return "disconnectWithAttribution";
                case 5:
                    return "getConnectedDevices";
                case 6:
                    return "getConnectedDevicesWithAttribution";
                case 7:
                    return "getDevicesMatchingConnectionStates";
                case 8:
                    return "getDevicesMatchingConnectionStatesWithAttribution";
                case 9:
                    return "getConnectionState";
                case 10:
                    return "getConnectionStateWithAttribution";
                case 11:
                    return "setActiveDevice";
                case 12:
                    return "getActiveDevice";
                case 13:
                    return "setConnectionPolicy";
                case 14:
                    return "getConnectionPolicy";
                case 15:
                    return "isAvrcpAbsoluteVolumeSupported";
                case 16:
                    return "setAvrcpAbsoluteVolume";
                case 17:
                    return "isA2dpPlaying";
                case 18:
                    return "getCodecStatus";
                case 19:
                    return "setCodecConfigPreference";
                case 20:
                    return "enableOptionalCodecs";
                case 21:
                    return "disableOptionalCodecs";
                case 22:
                    return "isOptionalCodecsSupported";
                case 23:
                    return "isOptionalCodecsEnabled";
                case 24:
                    return "setOptionalCodecsEnabled";
                case 25:
                    return "getDynamicBufferSupport";
                case 26:
                    return "getBufferConstraints";
                case 27:
                    return "setBufferLengthMillis";
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
                            SynchronousResultReceiver _arg1 = (SynchronousResultReceiver) data.readTypedObject(SynchronousResultReceiver.CREATOR);
                            data.enforceNoDataAvail();
                            connect(_arg0, _arg1);
                            return true;
                        case 2:
                            BluetoothDevice _arg02 = (BluetoothDevice) data.readTypedObject(BluetoothDevice.CREATOR);
                            AttributionSource _arg12 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            SynchronousResultReceiver _arg2 = (SynchronousResultReceiver) data.readTypedObject(SynchronousResultReceiver.CREATOR);
                            data.enforceNoDataAvail();
                            connectWithAttribution(_arg02, _arg12, _arg2);
                            return true;
                        case 3:
                            BluetoothDevice _arg03 = (BluetoothDevice) data.readTypedObject(BluetoothDevice.CREATOR);
                            SynchronousResultReceiver _arg13 = (SynchronousResultReceiver) data.readTypedObject(SynchronousResultReceiver.CREATOR);
                            data.enforceNoDataAvail();
                            disconnect(_arg03, _arg13);
                            return true;
                        case 4:
                            BluetoothDevice _arg04 = (BluetoothDevice) data.readTypedObject(BluetoothDevice.CREATOR);
                            AttributionSource _arg14 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            SynchronousResultReceiver _arg22 = (SynchronousResultReceiver) data.readTypedObject(SynchronousResultReceiver.CREATOR);
                            data.enforceNoDataAvail();
                            disconnectWithAttribution(_arg04, _arg14, _arg22);
                            return true;
                        case 5:
                            SynchronousResultReceiver _arg05 = (SynchronousResultReceiver) data.readTypedObject(SynchronousResultReceiver.CREATOR);
                            data.enforceNoDataAvail();
                            getConnectedDevices(_arg05);
                            return true;
                        case 6:
                            AttributionSource _arg06 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            SynchronousResultReceiver _arg15 = (SynchronousResultReceiver) data.readTypedObject(SynchronousResultReceiver.CREATOR);
                            data.enforceNoDataAvail();
                            getConnectedDevicesWithAttribution(_arg06, _arg15);
                            return true;
                        case 7:
                            int[] _arg07 = data.createIntArray();
                            SynchronousResultReceiver _arg16 = (SynchronousResultReceiver) data.readTypedObject(SynchronousResultReceiver.CREATOR);
                            data.enforceNoDataAvail();
                            getDevicesMatchingConnectionStates(_arg07, _arg16);
                            return true;
                        case 8:
                            int[] _arg08 = data.createIntArray();
                            AttributionSource _arg17 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            SynchronousResultReceiver _arg23 = (SynchronousResultReceiver) data.readTypedObject(SynchronousResultReceiver.CREATOR);
                            data.enforceNoDataAvail();
                            getDevicesMatchingConnectionStatesWithAttribution(_arg08, _arg17, _arg23);
                            return true;
                        case 9:
                            BluetoothDevice _arg09 = (BluetoothDevice) data.readTypedObject(BluetoothDevice.CREATOR);
                            SynchronousResultReceiver _arg18 = (SynchronousResultReceiver) data.readTypedObject(SynchronousResultReceiver.CREATOR);
                            data.enforceNoDataAvail();
                            getConnectionState(_arg09, _arg18);
                            return true;
                        case 10:
                            BluetoothDevice _arg010 = (BluetoothDevice) data.readTypedObject(BluetoothDevice.CREATOR);
                            AttributionSource _arg19 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            SynchronousResultReceiver _arg24 = (SynchronousResultReceiver) data.readTypedObject(SynchronousResultReceiver.CREATOR);
                            data.enforceNoDataAvail();
                            getConnectionStateWithAttribution(_arg010, _arg19, _arg24);
                            return true;
                        case 11:
                            BluetoothDevice _arg011 = (BluetoothDevice) data.readTypedObject(BluetoothDevice.CREATOR);
                            AttributionSource _arg110 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            SynchronousResultReceiver _arg25 = (SynchronousResultReceiver) data.readTypedObject(SynchronousResultReceiver.CREATOR);
                            data.enforceNoDataAvail();
                            setActiveDevice(_arg011, _arg110, _arg25);
                            return true;
                        case 12:
                            AttributionSource _arg012 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            SynchronousResultReceiver _arg111 = (SynchronousResultReceiver) data.readTypedObject(SynchronousResultReceiver.CREATOR);
                            data.enforceNoDataAvail();
                            getActiveDevice(_arg012, _arg111);
                            return true;
                        case 13:
                            BluetoothDevice _arg013 = (BluetoothDevice) data.readTypedObject(BluetoothDevice.CREATOR);
                            int _arg112 = data.readInt();
                            AttributionSource _arg26 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            SynchronousResultReceiver _arg3 = (SynchronousResultReceiver) data.readTypedObject(SynchronousResultReceiver.CREATOR);
                            data.enforceNoDataAvail();
                            setConnectionPolicy(_arg013, _arg112, _arg26, _arg3);
                            return true;
                        case 14:
                            BluetoothDevice _arg014 = (BluetoothDevice) data.readTypedObject(BluetoothDevice.CREATOR);
                            AttributionSource _arg113 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            SynchronousResultReceiver _arg27 = (SynchronousResultReceiver) data.readTypedObject(SynchronousResultReceiver.CREATOR);
                            data.enforceNoDataAvail();
                            getConnectionPolicy(_arg014, _arg113, _arg27);
                            return true;
                        case 15:
                            SynchronousResultReceiver _arg015 = (SynchronousResultReceiver) data.readTypedObject(SynchronousResultReceiver.CREATOR);
                            data.enforceNoDataAvail();
                            isAvrcpAbsoluteVolumeSupported(_arg015);
                            return true;
                        case 16:
                            int _arg016 = data.readInt();
                            AttributionSource _arg114 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            data.enforceNoDataAvail();
                            setAvrcpAbsoluteVolume(_arg016, _arg114);
                            return true;
                        case 17:
                            BluetoothDevice _arg017 = (BluetoothDevice) data.readTypedObject(BluetoothDevice.CREATOR);
                            AttributionSource _arg115 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            SynchronousResultReceiver _arg28 = (SynchronousResultReceiver) data.readTypedObject(SynchronousResultReceiver.CREATOR);
                            data.enforceNoDataAvail();
                            isA2dpPlaying(_arg017, _arg115, _arg28);
                            return true;
                        case 18:
                            BluetoothDevice _arg018 = (BluetoothDevice) data.readTypedObject(BluetoothDevice.CREATOR);
                            AttributionSource _arg116 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            SynchronousResultReceiver _arg29 = (SynchronousResultReceiver) data.readTypedObject(SynchronousResultReceiver.CREATOR);
                            data.enforceNoDataAvail();
                            getCodecStatus(_arg018, _arg116, _arg29);
                            return true;
                        case 19:
                            BluetoothDevice _arg019 = (BluetoothDevice) data.readTypedObject(BluetoothDevice.CREATOR);
                            BluetoothCodecConfig _arg117 = (BluetoothCodecConfig) data.readTypedObject(BluetoothCodecConfig.CREATOR);
                            AttributionSource _arg210 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            data.enforceNoDataAvail();
                            setCodecConfigPreference(_arg019, _arg117, _arg210);
                            return true;
                        case 20:
                            BluetoothDevice _arg020 = (BluetoothDevice) data.readTypedObject(BluetoothDevice.CREATOR);
                            AttributionSource _arg118 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            data.enforceNoDataAvail();
                            enableOptionalCodecs(_arg020, _arg118);
                            return true;
                        case 21:
                            BluetoothDevice _arg021 = (BluetoothDevice) data.readTypedObject(BluetoothDevice.CREATOR);
                            AttributionSource _arg119 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            data.enforceNoDataAvail();
                            disableOptionalCodecs(_arg021, _arg119);
                            return true;
                        case 22:
                            BluetoothDevice _arg022 = (BluetoothDevice) data.readTypedObject(BluetoothDevice.CREATOR);
                            AttributionSource _arg120 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            SynchronousResultReceiver _arg211 = (SynchronousResultReceiver) data.readTypedObject(SynchronousResultReceiver.CREATOR);
                            data.enforceNoDataAvail();
                            isOptionalCodecsSupported(_arg022, _arg120, _arg211);
                            return true;
                        case 23:
                            BluetoothDevice _arg023 = (BluetoothDevice) data.readTypedObject(BluetoothDevice.CREATOR);
                            AttributionSource _arg121 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            SynchronousResultReceiver _arg212 = (SynchronousResultReceiver) data.readTypedObject(SynchronousResultReceiver.CREATOR);
                            data.enforceNoDataAvail();
                            isOptionalCodecsEnabled(_arg023, _arg121, _arg212);
                            return true;
                        case 24:
                            BluetoothDevice _arg024 = (BluetoothDevice) data.readTypedObject(BluetoothDevice.CREATOR);
                            int _arg122 = data.readInt();
                            AttributionSource _arg213 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            data.enforceNoDataAvail();
                            setOptionalCodecsEnabled(_arg024, _arg122, _arg213);
                            return true;
                        case 25:
                            AttributionSource _arg025 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            SynchronousResultReceiver _arg123 = (SynchronousResultReceiver) data.readTypedObject(SynchronousResultReceiver.CREATOR);
                            data.enforceNoDataAvail();
                            getDynamicBufferSupport(_arg025, _arg123);
                            return true;
                        case 26:
                            AttributionSource _arg026 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            SynchronousResultReceiver _arg124 = (SynchronousResultReceiver) data.readTypedObject(SynchronousResultReceiver.CREATOR);
                            data.enforceNoDataAvail();
                            getBufferConstraints(_arg026, _arg124);
                            return true;
                        case 27:
                            int _arg027 = data.readInt();
                            int _arg125 = data.readInt();
                            AttributionSource _arg214 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            SynchronousResultReceiver _arg32 = (SynchronousResultReceiver) data.readTypedObject(SynchronousResultReceiver.CREATOR);
                            data.enforceNoDataAvail();
                            setBufferLengthMillis(_arg027, _arg125, _arg214, _arg32);
                            return true;
                        default:
                            return super.onTransact(code, data, reply, flags);
                    }
            }
        }

        private static class Proxy implements IBluetoothA2dp {
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

            @Override // android.bluetooth.IBluetoothA2dp
            public void connect(BluetoothDevice device, SynchronousResultReceiver receiver) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeTypedObject(device, 0);
                    _data.writeTypedObject(receiver, 0);
                    this.mRemote.transact(1, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetoothA2dp
            public void connectWithAttribution(BluetoothDevice device, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
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

            @Override // android.bluetooth.IBluetoothA2dp
            public void disconnect(BluetoothDevice device, SynchronousResultReceiver receiver) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeTypedObject(device, 0);
                    _data.writeTypedObject(receiver, 0);
                    this.mRemote.transact(3, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetoothA2dp
            public void disconnectWithAttribution(BluetoothDevice device, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
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

            @Override // android.bluetooth.IBluetoothA2dp
            public void getConnectedDevices(SynchronousResultReceiver receiver) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeTypedObject(receiver, 0);
                    this.mRemote.transact(5, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetoothA2dp
            public void getConnectedDevicesWithAttribution(AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeTypedObject(attributionSource, 0);
                    _data.writeTypedObject(receiver, 0);
                    this.mRemote.transact(6, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetoothA2dp
            public void getDevicesMatchingConnectionStates(int[] states, SynchronousResultReceiver receiver) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeIntArray(states);
                    _data.writeTypedObject(receiver, 0);
                    this.mRemote.transact(7, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetoothA2dp
            public void getDevicesMatchingConnectionStatesWithAttribution(int[] states, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeIntArray(states);
                    _data.writeTypedObject(attributionSource, 0);
                    _data.writeTypedObject(receiver, 0);
                    this.mRemote.transact(8, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetoothA2dp
            public void getConnectionState(BluetoothDevice device, SynchronousResultReceiver receiver) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeTypedObject(device, 0);
                    _data.writeTypedObject(receiver, 0);
                    this.mRemote.transact(9, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetoothA2dp
            public void getConnectionStateWithAttribution(BluetoothDevice device, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeTypedObject(device, 0);
                    _data.writeTypedObject(attributionSource, 0);
                    _data.writeTypedObject(receiver, 0);
                    this.mRemote.transact(10, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetoothA2dp
            public void setActiveDevice(BluetoothDevice device, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
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

            @Override // android.bluetooth.IBluetoothA2dp
            public void getActiveDevice(AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeTypedObject(attributionSource, 0);
                    _data.writeTypedObject(receiver, 0);
                    this.mRemote.transact(12, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetoothA2dp
            public void setConnectionPolicy(BluetoothDevice device, int connectionPolicy, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeTypedObject(device, 0);
                    _data.writeInt(connectionPolicy);
                    _data.writeTypedObject(attributionSource, 0);
                    _data.writeTypedObject(receiver, 0);
                    this.mRemote.transact(13, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetoothA2dp
            public void getConnectionPolicy(BluetoothDevice device, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeTypedObject(device, 0);
                    _data.writeTypedObject(attributionSource, 0);
                    _data.writeTypedObject(receiver, 0);
                    this.mRemote.transact(14, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetoothA2dp
            public void isAvrcpAbsoluteVolumeSupported(SynchronousResultReceiver receiver) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeTypedObject(receiver, 0);
                    this.mRemote.transact(15, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetoothA2dp
            public void setAvrcpAbsoluteVolume(int volume, AttributionSource attributionSource) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(volume);
                    _data.writeTypedObject(attributionSource, 0);
                    this.mRemote.transact(16, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetoothA2dp
            public void isA2dpPlaying(BluetoothDevice device, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeTypedObject(device, 0);
                    _data.writeTypedObject(attributionSource, 0);
                    _data.writeTypedObject(receiver, 0);
                    this.mRemote.transact(17, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetoothA2dp
            public void getCodecStatus(BluetoothDevice device, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeTypedObject(device, 0);
                    _data.writeTypedObject(attributionSource, 0);
                    _data.writeTypedObject(receiver, 0);
                    this.mRemote.transact(18, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetoothA2dp
            public void setCodecConfigPreference(BluetoothDevice device, BluetoothCodecConfig codecConfig, AttributionSource attributionSource) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeTypedObject(device, 0);
                    _data.writeTypedObject(codecConfig, 0);
                    _data.writeTypedObject(attributionSource, 0);
                    this.mRemote.transact(19, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetoothA2dp
            public void enableOptionalCodecs(BluetoothDevice device, AttributionSource attributionSource) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeTypedObject(device, 0);
                    _data.writeTypedObject(attributionSource, 0);
                    this.mRemote.transact(20, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetoothA2dp
            public void disableOptionalCodecs(BluetoothDevice device, AttributionSource attributionSource) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeTypedObject(device, 0);
                    _data.writeTypedObject(attributionSource, 0);
                    this.mRemote.transact(21, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetoothA2dp
            public void isOptionalCodecsSupported(BluetoothDevice device, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeTypedObject(device, 0);
                    _data.writeTypedObject(attributionSource, 0);
                    _data.writeTypedObject(receiver, 0);
                    this.mRemote.transact(22, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetoothA2dp
            public void isOptionalCodecsEnabled(BluetoothDevice device, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeTypedObject(device, 0);
                    _data.writeTypedObject(attributionSource, 0);
                    _data.writeTypedObject(receiver, 0);
                    this.mRemote.transact(23, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetoothA2dp
            public void setOptionalCodecsEnabled(BluetoothDevice device, int value, AttributionSource attributionSource) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeTypedObject(device, 0);
                    _data.writeInt(value);
                    _data.writeTypedObject(attributionSource, 0);
                    this.mRemote.transact(24, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetoothA2dp
            public void getDynamicBufferSupport(AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeTypedObject(attributionSource, 0);
                    _data.writeTypedObject(receiver, 0);
                    this.mRemote.transact(25, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetoothA2dp
            public void getBufferConstraints(AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeTypedObject(attributionSource, 0);
                    _data.writeTypedObject(receiver, 0);
                    this.mRemote.transact(26, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetoothA2dp
            public void setBufferLengthMillis(int codec, int size, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(codec);
                    _data.writeInt(size);
                    _data.writeTypedObject(attributionSource, 0);
                    _data.writeTypedObject(receiver, 0);
                    this.mRemote.transact(27, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }
        }

        @Override // android.os.Binder
        public int getMaxTransactionId() {
            return 26;
        }
    }
}

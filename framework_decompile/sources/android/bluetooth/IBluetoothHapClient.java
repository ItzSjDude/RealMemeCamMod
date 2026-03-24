package android.bluetooth;

import android.bluetooth.IBluetoothHapClientCallback;
import android.content.AttributionSource;
import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.android.modules.utils.SynchronousResultReceiver;

/* loaded from: classes.dex */
public interface IBluetoothHapClient extends IInterface {
    public static final String DESCRIPTOR = "android.bluetooth.IBluetoothHapClient";
    public static final int FEATURE_BIT_NUM_DYNAMIC_PRESETS = 4;
    public static final int FEATURE_BIT_NUM_INDEPENDENT_PRESETS = 3;
    public static final int FEATURE_BIT_NUM_SYNCHRONIZATED_PRESETS = 2;
    public static final int FEATURE_BIT_NUM_TYPE_BANDED = 1;
    public static final int FEATURE_BIT_NUM_TYPE_MONAURAL = 0;
    public static final int FEATURE_BIT_NUM_WRITABLE_PRESETS = 5;
    public static final int GROUP_ID_UNAVAILABLE = -1;
    public static final int PRESET_INDEX_UNAVAILABLE = 0;

    void getActivePresetIndex(BluetoothDevice bluetoothDevice, AttributionSource attributionSource, SynchronousResultReceiver synchronousResultReceiver) throws RemoteException;

    void getActivePresetInfo(BluetoothDevice bluetoothDevice, AttributionSource attributionSource, SynchronousResultReceiver synchronousResultReceiver) throws RemoteException;

    void getAllPresetInfo(BluetoothDevice bluetoothDevice, AttributionSource attributionSource, SynchronousResultReceiver synchronousResultReceiver) throws RemoteException;

    void getConnectedDevices(AttributionSource attributionSource, SynchronousResultReceiver synchronousResultReceiver) throws RemoteException;

    void getConnectionPolicy(BluetoothDevice bluetoothDevice, AttributionSource attributionSource, SynchronousResultReceiver synchronousResultReceiver) throws RemoteException;

    void getConnectionState(BluetoothDevice bluetoothDevice, AttributionSource attributionSource, SynchronousResultReceiver synchronousResultReceiver) throws RemoteException;

    void getDevicesMatchingConnectionStates(int[] iArr, AttributionSource attributionSource, SynchronousResultReceiver synchronousResultReceiver) throws RemoteException;

    void getFeatures(BluetoothDevice bluetoothDevice, AttributionSource attributionSource, SynchronousResultReceiver synchronousResultReceiver) throws RemoteException;

    void getHapGroup(BluetoothDevice bluetoothDevice, AttributionSource attributionSource, SynchronousResultReceiver synchronousResultReceiver) throws RemoteException;

    void getPresetInfo(BluetoothDevice bluetoothDevice, int i, AttributionSource attributionSource, SynchronousResultReceiver synchronousResultReceiver) throws RemoteException;

    void registerCallback(IBluetoothHapClientCallback iBluetoothHapClientCallback, AttributionSource attributionSource, SynchronousResultReceiver synchronousResultReceiver) throws RemoteException;

    void selectPreset(BluetoothDevice bluetoothDevice, int i, AttributionSource attributionSource) throws RemoteException;

    void selectPresetForGroup(int i, int i2, AttributionSource attributionSource) throws RemoteException;

    void setConnectionPolicy(BluetoothDevice bluetoothDevice, int i, AttributionSource attributionSource, SynchronousResultReceiver synchronousResultReceiver) throws RemoteException;

    void setPresetName(BluetoothDevice bluetoothDevice, int i, String str, AttributionSource attributionSource) throws RemoteException;

    void setPresetNameForGroup(int i, int i2, String str, AttributionSource attributionSource) throws RemoteException;

    void switchToNextPreset(BluetoothDevice bluetoothDevice, AttributionSource attributionSource) throws RemoteException;

    void switchToNextPresetForGroup(int i, AttributionSource attributionSource) throws RemoteException;

    void switchToPreviousPreset(BluetoothDevice bluetoothDevice, AttributionSource attributionSource) throws RemoteException;

    void switchToPreviousPresetForGroup(int i, AttributionSource attributionSource) throws RemoteException;

    void unregisterCallback(IBluetoothHapClientCallback iBluetoothHapClientCallback, AttributionSource attributionSource, SynchronousResultReceiver synchronousResultReceiver) throws RemoteException;

    public static class Default implements IBluetoothHapClient {
        @Override // android.bluetooth.IBluetoothHapClient
        public void getConnectedDevices(AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetoothHapClient
        public void getDevicesMatchingConnectionStates(int[] states, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetoothHapClient
        public void getConnectionState(BluetoothDevice device, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetoothHapClient
        public void setConnectionPolicy(BluetoothDevice device, int connectionPolicy, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetoothHapClient
        public void getConnectionPolicy(BluetoothDevice device, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetoothHapClient
        public void getHapGroup(BluetoothDevice device, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetoothHapClient
        public void getActivePresetIndex(BluetoothDevice device, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetoothHapClient
        public void getActivePresetInfo(BluetoothDevice device, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetoothHapClient
        public void selectPreset(BluetoothDevice device, int presetIndex, AttributionSource attributionSource) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetoothHapClient
        public void selectPresetForGroup(int groupId, int presetIndex, AttributionSource attributionSource) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetoothHapClient
        public void switchToNextPreset(BluetoothDevice device, AttributionSource attributionSource) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetoothHapClient
        public void switchToNextPresetForGroup(int groupId, AttributionSource attributionSource) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetoothHapClient
        public void switchToPreviousPreset(BluetoothDevice device, AttributionSource attributionSource) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetoothHapClient
        public void switchToPreviousPresetForGroup(int groupId, AttributionSource attributionSource) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetoothHapClient
        public void getPresetInfo(BluetoothDevice device, int presetIndex, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetoothHapClient
        public void getAllPresetInfo(BluetoothDevice device, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetoothHapClient
        public void getFeatures(BluetoothDevice device, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetoothHapClient
        public void setPresetName(BluetoothDevice device, int presetIndex, String name, AttributionSource attributionSource) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetoothHapClient
        public void setPresetNameForGroup(int groupId, int presetIndex, String name, AttributionSource attributionSource) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetoothHapClient
        public void registerCallback(IBluetoothHapClientCallback callback, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetoothHapClient
        public void unregisterCallback(IBluetoothHapClientCallback callback, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }
    }

    public static abstract class Stub extends Binder implements IBluetoothHapClient {
        static final int TRANSACTION_getActivePresetIndex = 7;
        static final int TRANSACTION_getActivePresetInfo = 8;
        static final int TRANSACTION_getAllPresetInfo = 16;
        static final int TRANSACTION_getConnectedDevices = 1;
        static final int TRANSACTION_getConnectionPolicy = 5;
        static final int TRANSACTION_getConnectionState = 3;
        static final int TRANSACTION_getDevicesMatchingConnectionStates = 2;
        static final int TRANSACTION_getFeatures = 17;
        static final int TRANSACTION_getHapGroup = 6;
        static final int TRANSACTION_getPresetInfo = 15;
        static final int TRANSACTION_registerCallback = 20;
        static final int TRANSACTION_selectPreset = 9;
        static final int TRANSACTION_selectPresetForGroup = 10;
        static final int TRANSACTION_setConnectionPolicy = 4;
        static final int TRANSACTION_setPresetName = 18;
        static final int TRANSACTION_setPresetNameForGroup = 19;
        static final int TRANSACTION_switchToNextPreset = 11;
        static final int TRANSACTION_switchToNextPresetForGroup = 12;
        static final int TRANSACTION_switchToPreviousPreset = 13;
        static final int TRANSACTION_switchToPreviousPresetForGroup = 14;
        static final int TRANSACTION_unregisterCallback = 21;

        public Stub() {
            attachInterface(this, IBluetoothHapClient.DESCRIPTOR);
        }

        public static IBluetoothHapClient asInterface(IBinder obj) {
            if (obj == null) {
                return null;
            }
            IInterface iin = obj.queryLocalInterface(IBluetoothHapClient.DESCRIPTOR);
            if (iin != null && (iin instanceof IBluetoothHapClient)) {
                return (IBluetoothHapClient) iin;
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
                    return "getConnectedDevices";
                case 2:
                    return "getDevicesMatchingConnectionStates";
                case 3:
                    return "getConnectionState";
                case 4:
                    return "setConnectionPolicy";
                case 5:
                    return "getConnectionPolicy";
                case 6:
                    return "getHapGroup";
                case 7:
                    return "getActivePresetIndex";
                case 8:
                    return "getActivePresetInfo";
                case 9:
                    return "selectPreset";
                case 10:
                    return "selectPresetForGroup";
                case 11:
                    return "switchToNextPreset";
                case 12:
                    return "switchToNextPresetForGroup";
                case 13:
                    return "switchToPreviousPreset";
                case 14:
                    return "switchToPreviousPresetForGroup";
                case 15:
                    return "getPresetInfo";
                case 16:
                    return "getAllPresetInfo";
                case 17:
                    return "getFeatures";
                case 18:
                    return "setPresetName";
                case 19:
                    return "setPresetNameForGroup";
                case 20:
                    return "registerCallback";
                case 21:
                    return "unregisterCallback";
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
                data.enforceInterface(IBluetoothHapClient.DESCRIPTOR);
            }
            switch (code) {
                case IBinder.INTERFACE_TRANSACTION /* 1598968902 */:
                    reply.writeString(IBluetoothHapClient.DESCRIPTOR);
                    return true;
                default:
                    switch (code) {
                        case 1:
                            AttributionSource _arg0 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            SynchronousResultReceiver _arg1 = (SynchronousResultReceiver) data.readTypedObject(SynchronousResultReceiver.CREATOR);
                            data.enforceNoDataAvail();
                            getConnectedDevices(_arg0, _arg1);
                            return true;
                        case 2:
                            int[] _arg02 = data.createIntArray();
                            AttributionSource _arg12 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            SynchronousResultReceiver _arg2 = (SynchronousResultReceiver) data.readTypedObject(SynchronousResultReceiver.CREATOR);
                            data.enforceNoDataAvail();
                            getDevicesMatchingConnectionStates(_arg02, _arg12, _arg2);
                            return true;
                        case 3:
                            BluetoothDevice _arg03 = (BluetoothDevice) data.readTypedObject(BluetoothDevice.CREATOR);
                            AttributionSource _arg13 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            SynchronousResultReceiver _arg22 = (SynchronousResultReceiver) data.readTypedObject(SynchronousResultReceiver.CREATOR);
                            data.enforceNoDataAvail();
                            getConnectionState(_arg03, _arg13, _arg22);
                            return true;
                        case 4:
                            BluetoothDevice _arg04 = (BluetoothDevice) data.readTypedObject(BluetoothDevice.CREATOR);
                            int _arg14 = data.readInt();
                            AttributionSource _arg23 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            SynchronousResultReceiver _arg3 = (SynchronousResultReceiver) data.readTypedObject(SynchronousResultReceiver.CREATOR);
                            data.enforceNoDataAvail();
                            setConnectionPolicy(_arg04, _arg14, _arg23, _arg3);
                            return true;
                        case 5:
                            BluetoothDevice _arg05 = (BluetoothDevice) data.readTypedObject(BluetoothDevice.CREATOR);
                            AttributionSource _arg15 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            SynchronousResultReceiver _arg24 = (SynchronousResultReceiver) data.readTypedObject(SynchronousResultReceiver.CREATOR);
                            data.enforceNoDataAvail();
                            getConnectionPolicy(_arg05, _arg15, _arg24);
                            return true;
                        case 6:
                            BluetoothDevice _arg06 = (BluetoothDevice) data.readTypedObject(BluetoothDevice.CREATOR);
                            AttributionSource _arg16 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            SynchronousResultReceiver _arg25 = (SynchronousResultReceiver) data.readTypedObject(SynchronousResultReceiver.CREATOR);
                            data.enforceNoDataAvail();
                            getHapGroup(_arg06, _arg16, _arg25);
                            return true;
                        case 7:
                            BluetoothDevice _arg07 = (BluetoothDevice) data.readTypedObject(BluetoothDevice.CREATOR);
                            AttributionSource _arg17 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            SynchronousResultReceiver _arg26 = (SynchronousResultReceiver) data.readTypedObject(SynchronousResultReceiver.CREATOR);
                            data.enforceNoDataAvail();
                            getActivePresetIndex(_arg07, _arg17, _arg26);
                            return true;
                        case 8:
                            BluetoothDevice _arg08 = (BluetoothDevice) data.readTypedObject(BluetoothDevice.CREATOR);
                            AttributionSource _arg18 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            SynchronousResultReceiver _arg27 = (SynchronousResultReceiver) data.readTypedObject(SynchronousResultReceiver.CREATOR);
                            data.enforceNoDataAvail();
                            getActivePresetInfo(_arg08, _arg18, _arg27);
                            return true;
                        case 9:
                            BluetoothDevice _arg09 = (BluetoothDevice) data.readTypedObject(BluetoothDevice.CREATOR);
                            int _arg19 = data.readInt();
                            AttributionSource _arg28 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            data.enforceNoDataAvail();
                            selectPreset(_arg09, _arg19, _arg28);
                            return true;
                        case 10:
                            int _arg010 = data.readInt();
                            int _arg110 = data.readInt();
                            AttributionSource _arg29 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            data.enforceNoDataAvail();
                            selectPresetForGroup(_arg010, _arg110, _arg29);
                            return true;
                        case 11:
                            BluetoothDevice _arg011 = (BluetoothDevice) data.readTypedObject(BluetoothDevice.CREATOR);
                            AttributionSource _arg111 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            data.enforceNoDataAvail();
                            switchToNextPreset(_arg011, _arg111);
                            return true;
                        case 12:
                            int _arg012 = data.readInt();
                            AttributionSource _arg112 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            data.enforceNoDataAvail();
                            switchToNextPresetForGroup(_arg012, _arg112);
                            return true;
                        case 13:
                            BluetoothDevice _arg013 = (BluetoothDevice) data.readTypedObject(BluetoothDevice.CREATOR);
                            AttributionSource _arg113 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            data.enforceNoDataAvail();
                            switchToPreviousPreset(_arg013, _arg113);
                            return true;
                        case 14:
                            int _arg014 = data.readInt();
                            AttributionSource _arg114 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            data.enforceNoDataAvail();
                            switchToPreviousPresetForGroup(_arg014, _arg114);
                            return true;
                        case 15:
                            BluetoothDevice _arg015 = (BluetoothDevice) data.readTypedObject(BluetoothDevice.CREATOR);
                            int _arg115 = data.readInt();
                            AttributionSource _arg210 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            SynchronousResultReceiver _arg32 = (SynchronousResultReceiver) data.readTypedObject(SynchronousResultReceiver.CREATOR);
                            data.enforceNoDataAvail();
                            getPresetInfo(_arg015, _arg115, _arg210, _arg32);
                            return true;
                        case 16:
                            BluetoothDevice _arg016 = (BluetoothDevice) data.readTypedObject(BluetoothDevice.CREATOR);
                            AttributionSource _arg116 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            SynchronousResultReceiver _arg211 = (SynchronousResultReceiver) data.readTypedObject(SynchronousResultReceiver.CREATOR);
                            data.enforceNoDataAvail();
                            getAllPresetInfo(_arg016, _arg116, _arg211);
                            return true;
                        case 17:
                            BluetoothDevice _arg017 = (BluetoothDevice) data.readTypedObject(BluetoothDevice.CREATOR);
                            AttributionSource _arg117 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            SynchronousResultReceiver _arg212 = (SynchronousResultReceiver) data.readTypedObject(SynchronousResultReceiver.CREATOR);
                            data.enforceNoDataAvail();
                            getFeatures(_arg017, _arg117, _arg212);
                            return true;
                        case 18:
                            BluetoothDevice _arg018 = (BluetoothDevice) data.readTypedObject(BluetoothDevice.CREATOR);
                            int _arg118 = data.readInt();
                            String _arg213 = data.readString();
                            AttributionSource _arg33 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            data.enforceNoDataAvail();
                            setPresetName(_arg018, _arg118, _arg213, _arg33);
                            return true;
                        case 19:
                            int _arg019 = data.readInt();
                            int _arg119 = data.readInt();
                            String _arg214 = data.readString();
                            AttributionSource _arg34 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            data.enforceNoDataAvail();
                            setPresetNameForGroup(_arg019, _arg119, _arg214, _arg34);
                            return true;
                        case 20:
                            IBluetoothHapClientCallback _arg020 = IBluetoothHapClientCallback.Stub.asInterface(data.readStrongBinder());
                            AttributionSource _arg120 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            SynchronousResultReceiver _arg215 = (SynchronousResultReceiver) data.readTypedObject(SynchronousResultReceiver.CREATOR);
                            data.enforceNoDataAvail();
                            registerCallback(_arg020, _arg120, _arg215);
                            return true;
                        case 21:
                            IBluetoothHapClientCallback _arg021 = IBluetoothHapClientCallback.Stub.asInterface(data.readStrongBinder());
                            AttributionSource _arg121 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            SynchronousResultReceiver _arg216 = (SynchronousResultReceiver) data.readTypedObject(SynchronousResultReceiver.CREATOR);
                            data.enforceNoDataAvail();
                            unregisterCallback(_arg021, _arg121, _arg216);
                            return true;
                        default:
                            return super.onTransact(code, data, reply, flags);
                    }
            }
        }

        private static class Proxy implements IBluetoothHapClient {
            private IBinder mRemote;

            Proxy(IBinder remote) {
                this.mRemote = remote;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            public String getInterfaceDescriptor() {
                return IBluetoothHapClient.DESCRIPTOR;
            }

            @Override // android.bluetooth.IBluetoothHapClient
            public void getConnectedDevices(AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IBluetoothHapClient.DESCRIPTOR);
                    _data.writeTypedObject(attributionSource, 0);
                    _data.writeTypedObject(receiver, 0);
                    this.mRemote.transact(1, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetoothHapClient
            public void getDevicesMatchingConnectionStates(int[] states, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IBluetoothHapClient.DESCRIPTOR);
                    _data.writeIntArray(states);
                    _data.writeTypedObject(attributionSource, 0);
                    _data.writeTypedObject(receiver, 0);
                    this.mRemote.transact(2, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetoothHapClient
            public void getConnectionState(BluetoothDevice device, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IBluetoothHapClient.DESCRIPTOR);
                    _data.writeTypedObject(device, 0);
                    _data.writeTypedObject(attributionSource, 0);
                    _data.writeTypedObject(receiver, 0);
                    this.mRemote.transact(3, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetoothHapClient
            public void setConnectionPolicy(BluetoothDevice device, int connectionPolicy, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IBluetoothHapClient.DESCRIPTOR);
                    _data.writeTypedObject(device, 0);
                    _data.writeInt(connectionPolicy);
                    _data.writeTypedObject(attributionSource, 0);
                    _data.writeTypedObject(receiver, 0);
                    this.mRemote.transact(4, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetoothHapClient
            public void getConnectionPolicy(BluetoothDevice device, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IBluetoothHapClient.DESCRIPTOR);
                    _data.writeTypedObject(device, 0);
                    _data.writeTypedObject(attributionSource, 0);
                    _data.writeTypedObject(receiver, 0);
                    this.mRemote.transact(5, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetoothHapClient
            public void getHapGroup(BluetoothDevice device, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IBluetoothHapClient.DESCRIPTOR);
                    _data.writeTypedObject(device, 0);
                    _data.writeTypedObject(attributionSource, 0);
                    _data.writeTypedObject(receiver, 0);
                    this.mRemote.transact(6, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetoothHapClient
            public void getActivePresetIndex(BluetoothDevice device, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IBluetoothHapClient.DESCRIPTOR);
                    _data.writeTypedObject(device, 0);
                    _data.writeTypedObject(attributionSource, 0);
                    _data.writeTypedObject(receiver, 0);
                    this.mRemote.transact(7, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetoothHapClient
            public void getActivePresetInfo(BluetoothDevice device, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IBluetoothHapClient.DESCRIPTOR);
                    _data.writeTypedObject(device, 0);
                    _data.writeTypedObject(attributionSource, 0);
                    _data.writeTypedObject(receiver, 0);
                    this.mRemote.transact(8, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetoothHapClient
            public void selectPreset(BluetoothDevice device, int presetIndex, AttributionSource attributionSource) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IBluetoothHapClient.DESCRIPTOR);
                    _data.writeTypedObject(device, 0);
                    _data.writeInt(presetIndex);
                    _data.writeTypedObject(attributionSource, 0);
                    this.mRemote.transact(9, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetoothHapClient
            public void selectPresetForGroup(int groupId, int presetIndex, AttributionSource attributionSource) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IBluetoothHapClient.DESCRIPTOR);
                    _data.writeInt(groupId);
                    _data.writeInt(presetIndex);
                    _data.writeTypedObject(attributionSource, 0);
                    this.mRemote.transact(10, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetoothHapClient
            public void switchToNextPreset(BluetoothDevice device, AttributionSource attributionSource) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IBluetoothHapClient.DESCRIPTOR);
                    _data.writeTypedObject(device, 0);
                    _data.writeTypedObject(attributionSource, 0);
                    this.mRemote.transact(11, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetoothHapClient
            public void switchToNextPresetForGroup(int groupId, AttributionSource attributionSource) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IBluetoothHapClient.DESCRIPTOR);
                    _data.writeInt(groupId);
                    _data.writeTypedObject(attributionSource, 0);
                    this.mRemote.transact(12, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetoothHapClient
            public void switchToPreviousPreset(BluetoothDevice device, AttributionSource attributionSource) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IBluetoothHapClient.DESCRIPTOR);
                    _data.writeTypedObject(device, 0);
                    _data.writeTypedObject(attributionSource, 0);
                    this.mRemote.transact(13, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetoothHapClient
            public void switchToPreviousPresetForGroup(int groupId, AttributionSource attributionSource) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IBluetoothHapClient.DESCRIPTOR);
                    _data.writeInt(groupId);
                    _data.writeTypedObject(attributionSource, 0);
                    this.mRemote.transact(14, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetoothHapClient
            public void getPresetInfo(BluetoothDevice device, int presetIndex, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IBluetoothHapClient.DESCRIPTOR);
                    _data.writeTypedObject(device, 0);
                    _data.writeInt(presetIndex);
                    _data.writeTypedObject(attributionSource, 0);
                    _data.writeTypedObject(receiver, 0);
                    this.mRemote.transact(15, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetoothHapClient
            public void getAllPresetInfo(BluetoothDevice device, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IBluetoothHapClient.DESCRIPTOR);
                    _data.writeTypedObject(device, 0);
                    _data.writeTypedObject(attributionSource, 0);
                    _data.writeTypedObject(receiver, 0);
                    this.mRemote.transact(16, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetoothHapClient
            public void getFeatures(BluetoothDevice device, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IBluetoothHapClient.DESCRIPTOR);
                    _data.writeTypedObject(device, 0);
                    _data.writeTypedObject(attributionSource, 0);
                    _data.writeTypedObject(receiver, 0);
                    this.mRemote.transact(17, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetoothHapClient
            public void setPresetName(BluetoothDevice device, int presetIndex, String name, AttributionSource attributionSource) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IBluetoothHapClient.DESCRIPTOR);
                    _data.writeTypedObject(device, 0);
                    _data.writeInt(presetIndex);
                    _data.writeString(name);
                    _data.writeTypedObject(attributionSource, 0);
                    this.mRemote.transact(18, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetoothHapClient
            public void setPresetNameForGroup(int groupId, int presetIndex, String name, AttributionSource attributionSource) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IBluetoothHapClient.DESCRIPTOR);
                    _data.writeInt(groupId);
                    _data.writeInt(presetIndex);
                    _data.writeString(name);
                    _data.writeTypedObject(attributionSource, 0);
                    this.mRemote.transact(19, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetoothHapClient
            public void registerCallback(IBluetoothHapClientCallback callback, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IBluetoothHapClient.DESCRIPTOR);
                    _data.writeStrongInterface(callback);
                    _data.writeTypedObject(attributionSource, 0);
                    _data.writeTypedObject(receiver, 0);
                    this.mRemote.transact(20, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetoothHapClient
            public void unregisterCallback(IBluetoothHapClientCallback callback, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IBluetoothHapClient.DESCRIPTOR);
                    _data.writeStrongInterface(callback);
                    _data.writeTypedObject(attributionSource, 0);
                    _data.writeTypedObject(receiver, 0);
                    this.mRemote.transact(21, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }
        }

        @Override // android.os.Binder
        public int getMaxTransactionId() {
            return 20;
        }
    }
}

package android.bluetooth;

import android.bluetooth.IBleBroadcastAudioScanAssistCallback;
import android.bluetooth.le.ScanResult;
import android.content.AttributionSource;
import android.media.MediaMetrics;
import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import java.util.List;

/* loaded from: classes.dex */
public interface IBluetoothSyncHelper extends IInterface {
    public static final String DESCRIPTOR = "android.bluetooth.IBluetoothSyncHelper";

    boolean addBroadcastSource(BluetoothDevice bluetoothDevice, BleBroadcastSourceInfo bleBroadcastSourceInfo, boolean z, AttributionSource attributionSource) throws RemoteException;

    boolean connect(BluetoothDevice bluetoothDevice, AttributionSource attributionSource) throws RemoteException;

    boolean disconnect(BluetoothDevice bluetoothDevice, AttributionSource attributionSource) throws RemoteException;

    List<BleBroadcastSourceInfo> getAllBroadcastSourceInformation(BluetoothDevice bluetoothDevice, AttributionSource attributionSource) throws RemoteException;

    List<BluetoothDevice> getConnectedDevices(AttributionSource attributionSource) throws RemoteException;

    int getConnectionPolicy(BluetoothDevice bluetoothDevice, AttributionSource attributionSource) throws RemoteException;

    int getConnectionState(BluetoothDevice bluetoothDevice, AttributionSource attributionSource) throws RemoteException;

    List<BluetoothDevice> getDevicesMatchingConnectionStates(int[] iArr, AttributionSource attributionSource) throws RemoteException;

    void registerAppCallback(BluetoothDevice bluetoothDevice, IBleBroadcastAudioScanAssistCallback iBleBroadcastAudioScanAssistCallback, AttributionSource attributionSource) throws RemoteException;

    boolean removeBroadcastSource(BluetoothDevice bluetoothDevice, byte b, boolean z, AttributionSource attributionSource) throws RemoteException;

    boolean searchforLeAudioBroadcasters(BluetoothDevice bluetoothDevice, AttributionSource attributionSource) throws RemoteException;

    boolean selectBroadcastSource(BluetoothDevice bluetoothDevice, ScanResult scanResult, boolean z, AttributionSource attributionSource) throws RemoteException;

    boolean setBroadcastCode(BluetoothDevice bluetoothDevice, BleBroadcastSourceInfo bleBroadcastSourceInfo, boolean z, AttributionSource attributionSource) throws RemoteException;

    boolean setConnectionPolicy(BluetoothDevice bluetoothDevice, int i, AttributionSource attributionSource) throws RemoteException;

    boolean startScanOffload(BluetoothDevice bluetoothDevice, boolean z, AttributionSource attributionSource) throws RemoteException;

    boolean stopScanOffload(BluetoothDevice bluetoothDevice, boolean z, AttributionSource attributionSource) throws RemoteException;

    boolean stopSearchforLeAudioBroadcasters(BluetoothDevice bluetoothDevice, AttributionSource attributionSource) throws RemoteException;

    void unregisterAppCallback(BluetoothDevice bluetoothDevice, IBleBroadcastAudioScanAssistCallback iBleBroadcastAudioScanAssistCallback, AttributionSource attributionSource) throws RemoteException;

    boolean updateBroadcastSource(BluetoothDevice bluetoothDevice, BleBroadcastSourceInfo bleBroadcastSourceInfo, boolean z, AttributionSource attributionSource) throws RemoteException;

    public static class Default implements IBluetoothSyncHelper {
        @Override // android.bluetooth.IBluetoothSyncHelper
        public boolean connect(BluetoothDevice device, AttributionSource attributionSource) throws RemoteException {
            return false;
        }

        @Override // android.bluetooth.IBluetoothSyncHelper
        public boolean disconnect(BluetoothDevice device, AttributionSource attributionSource) throws RemoteException {
            return false;
        }

        @Override // android.bluetooth.IBluetoothSyncHelper
        public List<BluetoothDevice> getConnectedDevices(AttributionSource attributionSource) throws RemoteException {
            return null;
        }

        @Override // android.bluetooth.IBluetoothSyncHelper
        public List<BluetoothDevice> getDevicesMatchingConnectionStates(int[] states, AttributionSource attributionSource) throws RemoteException {
            return null;
        }

        @Override // android.bluetooth.IBluetoothSyncHelper
        public int getConnectionState(BluetoothDevice device, AttributionSource attributionSource) throws RemoteException {
            return 0;
        }

        @Override // android.bluetooth.IBluetoothSyncHelper
        public boolean setConnectionPolicy(BluetoothDevice device, int connectionPolicy, AttributionSource attributionSource) throws RemoteException {
            return false;
        }

        @Override // android.bluetooth.IBluetoothSyncHelper
        public int getConnectionPolicy(BluetoothDevice device, AttributionSource attributionSource) throws RemoteException {
            return 0;
        }

        @Override // android.bluetooth.IBluetoothSyncHelper
        public boolean startScanOffload(BluetoothDevice device, boolean groupOp, AttributionSource attributionSource) throws RemoteException {
            return false;
        }

        @Override // android.bluetooth.IBluetoothSyncHelper
        public boolean stopScanOffload(BluetoothDevice device, boolean groupOp, AttributionSource attributionSource) throws RemoteException {
            return false;
        }

        @Override // android.bluetooth.IBluetoothSyncHelper
        public void registerAppCallback(BluetoothDevice device, IBleBroadcastAudioScanAssistCallback cb, AttributionSource attributionSource) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetoothSyncHelper
        public void unregisterAppCallback(BluetoothDevice device, IBleBroadcastAudioScanAssistCallback cb, AttributionSource attributionSource) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetoothSyncHelper
        public boolean searchforLeAudioBroadcasters(BluetoothDevice device, AttributionSource attributionSource) throws RemoteException {
            return false;
        }

        @Override // android.bluetooth.IBluetoothSyncHelper
        public boolean stopSearchforLeAudioBroadcasters(BluetoothDevice device, AttributionSource attributionSource) throws RemoteException {
            return false;
        }

        @Override // android.bluetooth.IBluetoothSyncHelper
        public boolean addBroadcastSource(BluetoothDevice device, BleBroadcastSourceInfo srcInfo, boolean groupOp, AttributionSource attributionSource) throws RemoteException {
            return false;
        }

        @Override // android.bluetooth.IBluetoothSyncHelper
        public boolean selectBroadcastSource(BluetoothDevice device, ScanResult scanRes, boolean groupOp, AttributionSource attributionSource) throws RemoteException {
            return false;
        }

        @Override // android.bluetooth.IBluetoothSyncHelper
        public boolean updateBroadcastSource(BluetoothDevice device, BleBroadcastSourceInfo srcInfo, boolean groupOp, AttributionSource attributionSource) throws RemoteException {
            return false;
        }

        @Override // android.bluetooth.IBluetoothSyncHelper
        public boolean setBroadcastCode(BluetoothDevice device, BleBroadcastSourceInfo srcInfo, boolean groupOp, AttributionSource attributionSource) throws RemoteException {
            return false;
        }

        @Override // android.bluetooth.IBluetoothSyncHelper
        public boolean removeBroadcastSource(BluetoothDevice device, byte SourceId, boolean groupOp, AttributionSource attributionSource) throws RemoteException {
            return false;
        }

        @Override // android.bluetooth.IBluetoothSyncHelper
        public List<BleBroadcastSourceInfo> getAllBroadcastSourceInformation(BluetoothDevice device, AttributionSource attributionSource) throws RemoteException {
            return null;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }
    }

    public static abstract class Stub extends Binder implements IBluetoothSyncHelper {
        static final int TRANSACTION_addBroadcastSource = 14;
        static final int TRANSACTION_connect = 1;
        static final int TRANSACTION_disconnect = 2;
        static final int TRANSACTION_getAllBroadcastSourceInformation = 19;
        static final int TRANSACTION_getConnectedDevices = 3;
        static final int TRANSACTION_getConnectionPolicy = 7;
        static final int TRANSACTION_getConnectionState = 5;
        static final int TRANSACTION_getDevicesMatchingConnectionStates = 4;
        static final int TRANSACTION_registerAppCallback = 10;
        static final int TRANSACTION_removeBroadcastSource = 18;
        static final int TRANSACTION_searchforLeAudioBroadcasters = 12;
        static final int TRANSACTION_selectBroadcastSource = 15;
        static final int TRANSACTION_setBroadcastCode = 17;
        static final int TRANSACTION_setConnectionPolicy = 6;
        static final int TRANSACTION_startScanOffload = 8;
        static final int TRANSACTION_stopScanOffload = 9;
        static final int TRANSACTION_stopSearchforLeAudioBroadcasters = 13;
        static final int TRANSACTION_unregisterAppCallback = 11;
        static final int TRANSACTION_updateBroadcastSource = 16;

        public Stub() {
            attachInterface(this, IBluetoothSyncHelper.DESCRIPTOR);
        }

        public static IBluetoothSyncHelper asInterface(IBinder obj) {
            if (obj == null) {
                return null;
            }
            IInterface iin = obj.queryLocalInterface(IBluetoothSyncHelper.DESCRIPTOR);
            if (iin != null && (iin instanceof IBluetoothSyncHelper)) {
                return (IBluetoothSyncHelper) iin;
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
                    return "setConnectionPolicy";
                case 7:
                    return "getConnectionPolicy";
                case 8:
                    return "startScanOffload";
                case 9:
                    return "stopScanOffload";
                case 10:
                    return "registerAppCallback";
                case 11:
                    return "unregisterAppCallback";
                case 12:
                    return "searchforLeAudioBroadcasters";
                case 13:
                    return "stopSearchforLeAudioBroadcasters";
                case 14:
                    return "addBroadcastSource";
                case 15:
                    return "selectBroadcastSource";
                case 16:
                    return "updateBroadcastSource";
                case 17:
                    return "setBroadcastCode";
                case 18:
                    return "removeBroadcastSource";
                case 19:
                    return "getAllBroadcastSourceInformation";
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
                data.enforceInterface(IBluetoothSyncHelper.DESCRIPTOR);
            }
            switch (code) {
                case IBinder.INTERFACE_TRANSACTION /* 1598968902 */:
                    reply.writeString(IBluetoothSyncHelper.DESCRIPTOR);
                    return true;
                default:
                    switch (code) {
                        case 1:
                            BluetoothDevice _arg0 = (BluetoothDevice) data.readTypedObject(BluetoothDevice.CREATOR);
                            AttributionSource _arg1 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            data.enforceNoDataAvail();
                            boolean _result = connect(_arg0, _arg1);
                            reply.writeNoException();
                            reply.writeBoolean(_result);
                            return true;
                        case 2:
                            BluetoothDevice _arg02 = (BluetoothDevice) data.readTypedObject(BluetoothDevice.CREATOR);
                            AttributionSource _arg12 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            data.enforceNoDataAvail();
                            boolean _result2 = disconnect(_arg02, _arg12);
                            reply.writeNoException();
                            reply.writeBoolean(_result2);
                            return true;
                        case 3:
                            AttributionSource _arg03 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            data.enforceNoDataAvail();
                            List<BluetoothDevice> _result3 = getConnectedDevices(_arg03);
                            reply.writeNoException();
                            reply.writeTypedList(_result3);
                            return true;
                        case 4:
                            int[] _arg04 = data.createIntArray();
                            AttributionSource _arg13 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            data.enforceNoDataAvail();
                            List<BluetoothDevice> _result4 = getDevicesMatchingConnectionStates(_arg04, _arg13);
                            reply.writeNoException();
                            reply.writeTypedList(_result4);
                            return true;
                        case 5:
                            BluetoothDevice _arg05 = (BluetoothDevice) data.readTypedObject(BluetoothDevice.CREATOR);
                            AttributionSource _arg14 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            data.enforceNoDataAvail();
                            int _result5 = getConnectionState(_arg05, _arg14);
                            reply.writeNoException();
                            reply.writeInt(_result5);
                            return true;
                        case 6:
                            BluetoothDevice _arg06 = (BluetoothDevice) data.readTypedObject(BluetoothDevice.CREATOR);
                            int _arg15 = data.readInt();
                            AttributionSource _arg2 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            data.enforceNoDataAvail();
                            boolean _result6 = setConnectionPolicy(_arg06, _arg15, _arg2);
                            reply.writeNoException();
                            reply.writeBoolean(_result6);
                            return true;
                        case 7:
                            BluetoothDevice _arg07 = (BluetoothDevice) data.readTypedObject(BluetoothDevice.CREATOR);
                            AttributionSource _arg16 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            data.enforceNoDataAvail();
                            int _result7 = getConnectionPolicy(_arg07, _arg16);
                            reply.writeNoException();
                            reply.writeInt(_result7);
                            return true;
                        case 8:
                            BluetoothDevice _arg08 = (BluetoothDevice) data.readTypedObject(BluetoothDevice.CREATOR);
                            boolean _arg17 = data.readBoolean();
                            AttributionSource _arg22 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            data.enforceNoDataAvail();
                            boolean _result8 = startScanOffload(_arg08, _arg17, _arg22);
                            reply.writeNoException();
                            reply.writeBoolean(_result8);
                            return true;
                        case 9:
                            BluetoothDevice _arg09 = (BluetoothDevice) data.readTypedObject(BluetoothDevice.CREATOR);
                            boolean _arg18 = data.readBoolean();
                            AttributionSource _arg23 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            data.enforceNoDataAvail();
                            boolean _result9 = stopScanOffload(_arg09, _arg18, _arg23);
                            reply.writeNoException();
                            reply.writeBoolean(_result9);
                            return true;
                        case 10:
                            BluetoothDevice _arg010 = (BluetoothDevice) data.readTypedObject(BluetoothDevice.CREATOR);
                            IBleBroadcastAudioScanAssistCallback _arg19 = IBleBroadcastAudioScanAssistCallback.Stub.asInterface(data.readStrongBinder());
                            AttributionSource _arg24 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            data.enforceNoDataAvail();
                            registerAppCallback(_arg010, _arg19, _arg24);
                            reply.writeNoException();
                            return true;
                        case 11:
                            BluetoothDevice _arg011 = (BluetoothDevice) data.readTypedObject(BluetoothDevice.CREATOR);
                            IBleBroadcastAudioScanAssistCallback _arg110 = IBleBroadcastAudioScanAssistCallback.Stub.asInterface(data.readStrongBinder());
                            AttributionSource _arg25 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            data.enforceNoDataAvail();
                            unregisterAppCallback(_arg011, _arg110, _arg25);
                            reply.writeNoException();
                            return true;
                        case 12:
                            BluetoothDevice _arg012 = (BluetoothDevice) data.readTypedObject(BluetoothDevice.CREATOR);
                            AttributionSource _arg111 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            data.enforceNoDataAvail();
                            boolean _result10 = searchforLeAudioBroadcasters(_arg012, _arg111);
                            reply.writeNoException();
                            reply.writeBoolean(_result10);
                            return true;
                        case 13:
                            BluetoothDevice _arg013 = (BluetoothDevice) data.readTypedObject(BluetoothDevice.CREATOR);
                            AttributionSource _arg112 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            data.enforceNoDataAvail();
                            boolean _result11 = stopSearchforLeAudioBroadcasters(_arg013, _arg112);
                            reply.writeNoException();
                            reply.writeBoolean(_result11);
                            return true;
                        case 14:
                            BluetoothDevice _arg014 = (BluetoothDevice) data.readTypedObject(BluetoothDevice.CREATOR);
                            BleBroadcastSourceInfo _arg113 = (BleBroadcastSourceInfo) data.readTypedObject(BleBroadcastSourceInfo.CREATOR);
                            boolean _arg26 = data.readBoolean();
                            AttributionSource _arg3 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            data.enforceNoDataAvail();
                            boolean _result12 = addBroadcastSource(_arg014, _arg113, _arg26, _arg3);
                            reply.writeNoException();
                            reply.writeBoolean(_result12);
                            return true;
                        case 15:
                            BluetoothDevice _arg015 = (BluetoothDevice) data.readTypedObject(BluetoothDevice.CREATOR);
                            ScanResult _arg114 = (ScanResult) data.readTypedObject(ScanResult.CREATOR);
                            boolean _arg27 = data.readBoolean();
                            AttributionSource _arg32 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            data.enforceNoDataAvail();
                            boolean _result13 = selectBroadcastSource(_arg015, _arg114, _arg27, _arg32);
                            reply.writeNoException();
                            reply.writeBoolean(_result13);
                            return true;
                        case 16:
                            BluetoothDevice _arg016 = (BluetoothDevice) data.readTypedObject(BluetoothDevice.CREATOR);
                            BleBroadcastSourceInfo _arg115 = (BleBroadcastSourceInfo) data.readTypedObject(BleBroadcastSourceInfo.CREATOR);
                            boolean _arg28 = data.readBoolean();
                            AttributionSource _arg33 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            data.enforceNoDataAvail();
                            boolean _result14 = updateBroadcastSource(_arg016, _arg115, _arg28, _arg33);
                            reply.writeNoException();
                            reply.writeBoolean(_result14);
                            return true;
                        case 17:
                            BluetoothDevice _arg017 = (BluetoothDevice) data.readTypedObject(BluetoothDevice.CREATOR);
                            BleBroadcastSourceInfo _arg116 = (BleBroadcastSourceInfo) data.readTypedObject(BleBroadcastSourceInfo.CREATOR);
                            boolean _arg29 = data.readBoolean();
                            AttributionSource _arg34 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            data.enforceNoDataAvail();
                            boolean _result15 = setBroadcastCode(_arg017, _arg116, _arg29, _arg34);
                            reply.writeNoException();
                            reply.writeBoolean(_result15);
                            return true;
                        case 18:
                            BluetoothDevice _arg018 = (BluetoothDevice) data.readTypedObject(BluetoothDevice.CREATOR);
                            byte _arg117 = data.readByte();
                            boolean _arg210 = data.readBoolean();
                            AttributionSource _arg35 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            data.enforceNoDataAvail();
                            boolean _result16 = removeBroadcastSource(_arg018, _arg117, _arg210, _arg35);
                            reply.writeNoException();
                            reply.writeBoolean(_result16);
                            return true;
                        case 19:
                            BluetoothDevice _arg019 = (BluetoothDevice) data.readTypedObject(BluetoothDevice.CREATOR);
                            AttributionSource _arg118 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            data.enforceNoDataAvail();
                            List<BleBroadcastSourceInfo> _result17 = getAllBroadcastSourceInformation(_arg019, _arg118);
                            reply.writeNoException();
                            reply.writeTypedList(_result17);
                            return true;
                        default:
                            return super.onTransact(code, data, reply, flags);
                    }
            }
        }

        private static class Proxy implements IBluetoothSyncHelper {
            private IBinder mRemote;

            Proxy(IBinder remote) {
                this.mRemote = remote;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            public String getInterfaceDescriptor() {
                return IBluetoothSyncHelper.DESCRIPTOR;
            }

            @Override // android.bluetooth.IBluetoothSyncHelper
            public boolean connect(BluetoothDevice device, AttributionSource attributionSource) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IBluetoothSyncHelper.DESCRIPTOR);
                    _data.writeTypedObject(device, 0);
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

            @Override // android.bluetooth.IBluetoothSyncHelper
            public boolean disconnect(BluetoothDevice device, AttributionSource attributionSource) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IBluetoothSyncHelper.DESCRIPTOR);
                    _data.writeTypedObject(device, 0);
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

            @Override // android.bluetooth.IBluetoothSyncHelper
            public List<BluetoothDevice> getConnectedDevices(AttributionSource attributionSource) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IBluetoothSyncHelper.DESCRIPTOR);
                    _data.writeTypedObject(attributionSource, 0);
                    this.mRemote.transact(3, _data, _reply, 0);
                    _reply.readException();
                    List<BluetoothDevice> _result = _reply.createTypedArrayList(BluetoothDevice.CREATOR);
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetoothSyncHelper
            public List<BluetoothDevice> getDevicesMatchingConnectionStates(int[] states, AttributionSource attributionSource) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IBluetoothSyncHelper.DESCRIPTOR);
                    _data.writeIntArray(states);
                    _data.writeTypedObject(attributionSource, 0);
                    this.mRemote.transact(4, _data, _reply, 0);
                    _reply.readException();
                    List<BluetoothDevice> _result = _reply.createTypedArrayList(BluetoothDevice.CREATOR);
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetoothSyncHelper
            public int getConnectionState(BluetoothDevice device, AttributionSource attributionSource) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IBluetoothSyncHelper.DESCRIPTOR);
                    _data.writeTypedObject(device, 0);
                    _data.writeTypedObject(attributionSource, 0);
                    this.mRemote.transact(5, _data, _reply, 0);
                    _reply.readException();
                    int _result = _reply.readInt();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetoothSyncHelper
            public boolean setConnectionPolicy(BluetoothDevice device, int connectionPolicy, AttributionSource attributionSource) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IBluetoothSyncHelper.DESCRIPTOR);
                    _data.writeTypedObject(device, 0);
                    _data.writeInt(connectionPolicy);
                    _data.writeTypedObject(attributionSource, 0);
                    this.mRemote.transact(6, _data, _reply, 0);
                    _reply.readException();
                    boolean _result = _reply.readBoolean();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetoothSyncHelper
            public int getConnectionPolicy(BluetoothDevice device, AttributionSource attributionSource) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IBluetoothSyncHelper.DESCRIPTOR);
                    _data.writeTypedObject(device, 0);
                    _data.writeTypedObject(attributionSource, 0);
                    this.mRemote.transact(7, _data, _reply, 0);
                    _reply.readException();
                    int _result = _reply.readInt();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetoothSyncHelper
            public boolean startScanOffload(BluetoothDevice device, boolean groupOp, AttributionSource attributionSource) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IBluetoothSyncHelper.DESCRIPTOR);
                    _data.writeTypedObject(device, 0);
                    _data.writeBoolean(groupOp);
                    _data.writeTypedObject(attributionSource, 0);
                    this.mRemote.transact(8, _data, _reply, 0);
                    _reply.readException();
                    boolean _result = _reply.readBoolean();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetoothSyncHelper
            public boolean stopScanOffload(BluetoothDevice device, boolean groupOp, AttributionSource attributionSource) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IBluetoothSyncHelper.DESCRIPTOR);
                    _data.writeTypedObject(device, 0);
                    _data.writeBoolean(groupOp);
                    _data.writeTypedObject(attributionSource, 0);
                    this.mRemote.transact(9, _data, _reply, 0);
                    _reply.readException();
                    boolean _result = _reply.readBoolean();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetoothSyncHelper
            public void registerAppCallback(BluetoothDevice device, IBleBroadcastAudioScanAssistCallback cb, AttributionSource attributionSource) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IBluetoothSyncHelper.DESCRIPTOR);
                    _data.writeTypedObject(device, 0);
                    _data.writeStrongInterface(cb);
                    _data.writeTypedObject(attributionSource, 0);
                    this.mRemote.transact(10, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetoothSyncHelper
            public void unregisterAppCallback(BluetoothDevice device, IBleBroadcastAudioScanAssistCallback cb, AttributionSource attributionSource) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IBluetoothSyncHelper.DESCRIPTOR);
                    _data.writeTypedObject(device, 0);
                    _data.writeStrongInterface(cb);
                    _data.writeTypedObject(attributionSource, 0);
                    this.mRemote.transact(11, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetoothSyncHelper
            public boolean searchforLeAudioBroadcasters(BluetoothDevice device, AttributionSource attributionSource) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IBluetoothSyncHelper.DESCRIPTOR);
                    _data.writeTypedObject(device, 0);
                    _data.writeTypedObject(attributionSource, 0);
                    this.mRemote.transact(12, _data, _reply, 0);
                    _reply.readException();
                    boolean _result = _reply.readBoolean();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetoothSyncHelper
            public boolean stopSearchforLeAudioBroadcasters(BluetoothDevice device, AttributionSource attributionSource) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IBluetoothSyncHelper.DESCRIPTOR);
                    _data.writeTypedObject(device, 0);
                    _data.writeTypedObject(attributionSource, 0);
                    this.mRemote.transact(13, _data, _reply, 0);
                    _reply.readException();
                    boolean _result = _reply.readBoolean();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetoothSyncHelper
            public boolean addBroadcastSource(BluetoothDevice device, BleBroadcastSourceInfo srcInfo, boolean groupOp, AttributionSource attributionSource) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IBluetoothSyncHelper.DESCRIPTOR);
                    _data.writeTypedObject(device, 0);
                    _data.writeTypedObject(srcInfo, 0);
                    _data.writeBoolean(groupOp);
                    _data.writeTypedObject(attributionSource, 0);
                    this.mRemote.transact(14, _data, _reply, 0);
                    _reply.readException();
                    boolean _result = _reply.readBoolean();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetoothSyncHelper
            public boolean selectBroadcastSource(BluetoothDevice device, ScanResult scanRes, boolean groupOp, AttributionSource attributionSource) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IBluetoothSyncHelper.DESCRIPTOR);
                    _data.writeTypedObject(device, 0);
                    _data.writeTypedObject(scanRes, 0);
                    _data.writeBoolean(groupOp);
                    _data.writeTypedObject(attributionSource, 0);
                    this.mRemote.transact(15, _data, _reply, 0);
                    _reply.readException();
                    boolean _result = _reply.readBoolean();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetoothSyncHelper
            public boolean updateBroadcastSource(BluetoothDevice device, BleBroadcastSourceInfo srcInfo, boolean groupOp, AttributionSource attributionSource) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IBluetoothSyncHelper.DESCRIPTOR);
                    _data.writeTypedObject(device, 0);
                    _data.writeTypedObject(srcInfo, 0);
                    _data.writeBoolean(groupOp);
                    _data.writeTypedObject(attributionSource, 0);
                    this.mRemote.transact(16, _data, _reply, 0);
                    _reply.readException();
                    boolean _result = _reply.readBoolean();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetoothSyncHelper
            public boolean setBroadcastCode(BluetoothDevice device, BleBroadcastSourceInfo srcInfo, boolean groupOp, AttributionSource attributionSource) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IBluetoothSyncHelper.DESCRIPTOR);
                    _data.writeTypedObject(device, 0);
                    _data.writeTypedObject(srcInfo, 0);
                    _data.writeBoolean(groupOp);
                    _data.writeTypedObject(attributionSource, 0);
                    this.mRemote.transact(17, _data, _reply, 0);
                    _reply.readException();
                    boolean _result = _reply.readBoolean();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetoothSyncHelper
            public boolean removeBroadcastSource(BluetoothDevice device, byte SourceId, boolean groupOp, AttributionSource attributionSource) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IBluetoothSyncHelper.DESCRIPTOR);
                    _data.writeTypedObject(device, 0);
                    _data.writeByte(SourceId);
                    _data.writeBoolean(groupOp);
                    _data.writeTypedObject(attributionSource, 0);
                    this.mRemote.transact(18, _data, _reply, 0);
                    _reply.readException();
                    boolean _result = _reply.readBoolean();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetoothSyncHelper
            public List<BleBroadcastSourceInfo> getAllBroadcastSourceInformation(BluetoothDevice device, AttributionSource attributionSource) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IBluetoothSyncHelper.DESCRIPTOR);
                    _data.writeTypedObject(device, 0);
                    _data.writeTypedObject(attributionSource, 0);
                    this.mRemote.transact(19, _data, _reply, 0);
                    _reply.readException();
                    List<BleBroadcastSourceInfo> _result = _reply.createTypedArrayList(BleBroadcastSourceInfo.CREATOR);
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }
        }

        @Override // android.os.Binder
        public int getMaxTransactionId() {
            return 18;
        }
    }
}

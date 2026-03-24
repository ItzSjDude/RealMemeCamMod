package android.bluetooth;

import android.content.AttributionSource;
import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes.dex */
public interface IBluetoothVcp extends IInterface {
    public static final String DESCRIPTOR = "android.bluetooth.IBluetoothVcp";

    int getAbsoluteVolume(BluetoothDevice bluetoothDevice, AttributionSource attributionSource) throws RemoteException;

    int getActiveProfile(int i, AttributionSource attributionSource) throws RemoteException;

    int getConnectionMode(BluetoothDevice bluetoothDevice, AttributionSource attributionSource) throws RemoteException;

    int getConnectionState(BluetoothDevice bluetoothDevice, AttributionSource attributionSource) throws RemoteException;

    boolean isMute(BluetoothDevice bluetoothDevice, AttributionSource attributionSource) throws RemoteException;

    void setAbsoluteVolume(BluetoothDevice bluetoothDevice, int i, AttributionSource attributionSource) throws RemoteException;

    boolean setActiveProfile(BluetoothDevice bluetoothDevice, int i, int i2, AttributionSource attributionSource) throws RemoteException;

    void setMute(BluetoothDevice bluetoothDevice, boolean z, AttributionSource attributionSource) throws RemoteException;

    public static class Default implements IBluetoothVcp {
        @Override // android.bluetooth.IBluetoothVcp
        public int getConnectionState(BluetoothDevice device, AttributionSource attributionSource) throws RemoteException {
            return 0;
        }

        @Override // android.bluetooth.IBluetoothVcp
        public int getConnectionMode(BluetoothDevice device, AttributionSource attributionSource) throws RemoteException {
            return 0;
        }

        @Override // android.bluetooth.IBluetoothVcp
        public void setAbsoluteVolume(BluetoothDevice device, int volume, AttributionSource attributionSource) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetoothVcp
        public int getAbsoluteVolume(BluetoothDevice device, AttributionSource attributionSource) throws RemoteException {
            return 0;
        }

        @Override // android.bluetooth.IBluetoothVcp
        public void setMute(BluetoothDevice device, boolean enableMute, AttributionSource attributionSource) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetoothVcp
        public boolean isMute(BluetoothDevice device, AttributionSource attributionSource) throws RemoteException {
            return false;
        }

        @Override // android.bluetooth.IBluetoothVcp
        public boolean setActiveProfile(BluetoothDevice device, int audioType, int profile, AttributionSource attributionSource) throws RemoteException {
            return false;
        }

        @Override // android.bluetooth.IBluetoothVcp
        public int getActiveProfile(int audioType, AttributionSource attributionSource) throws RemoteException {
            return 0;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }
    }

    public static abstract class Stub extends Binder implements IBluetoothVcp {
        static final int TRANSACTION_getAbsoluteVolume = 4;
        static final int TRANSACTION_getActiveProfile = 8;
        static final int TRANSACTION_getConnectionMode = 2;
        static final int TRANSACTION_getConnectionState = 1;
        static final int TRANSACTION_isMute = 6;
        static final int TRANSACTION_setAbsoluteVolume = 3;
        static final int TRANSACTION_setActiveProfile = 7;
        static final int TRANSACTION_setMute = 5;

        public Stub() {
            attachInterface(this, IBluetoothVcp.DESCRIPTOR);
        }

        public static IBluetoothVcp asInterface(IBinder obj) {
            if (obj == null) {
                return null;
            }
            IInterface iin = obj.queryLocalInterface(IBluetoothVcp.DESCRIPTOR);
            if (iin != null && (iin instanceof IBluetoothVcp)) {
                return (IBluetoothVcp) iin;
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
                    return "getConnectionState";
                case 2:
                    return "getConnectionMode";
                case 3:
                    return "setAbsoluteVolume";
                case 4:
                    return "getAbsoluteVolume";
                case 5:
                    return "setMute";
                case 6:
                    return "isMute";
                case 7:
                    return "setActiveProfile";
                case 8:
                    return "getActiveProfile";
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
                data.enforceInterface(IBluetoothVcp.DESCRIPTOR);
            }
            switch (code) {
                case IBinder.INTERFACE_TRANSACTION /* 1598968902 */:
                    reply.writeString(IBluetoothVcp.DESCRIPTOR);
                    return true;
                default:
                    switch (code) {
                        case 1:
                            BluetoothDevice _arg0 = (BluetoothDevice) data.readTypedObject(BluetoothDevice.CREATOR);
                            AttributionSource _arg1 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            data.enforceNoDataAvail();
                            int _result = getConnectionState(_arg0, _arg1);
                            reply.writeNoException();
                            reply.writeInt(_result);
                            return true;
                        case 2:
                            BluetoothDevice _arg02 = (BluetoothDevice) data.readTypedObject(BluetoothDevice.CREATOR);
                            AttributionSource _arg12 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            data.enforceNoDataAvail();
                            int _result2 = getConnectionMode(_arg02, _arg12);
                            reply.writeNoException();
                            reply.writeInt(_result2);
                            return true;
                        case 3:
                            BluetoothDevice _arg03 = (BluetoothDevice) data.readTypedObject(BluetoothDevice.CREATOR);
                            int _arg13 = data.readInt();
                            AttributionSource _arg2 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            data.enforceNoDataAvail();
                            setAbsoluteVolume(_arg03, _arg13, _arg2);
                            reply.writeNoException();
                            return true;
                        case 4:
                            BluetoothDevice _arg04 = (BluetoothDevice) data.readTypedObject(BluetoothDevice.CREATOR);
                            AttributionSource _arg14 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            data.enforceNoDataAvail();
                            int _result3 = getAbsoluteVolume(_arg04, _arg14);
                            reply.writeNoException();
                            reply.writeInt(_result3);
                            return true;
                        case 5:
                            BluetoothDevice _arg05 = (BluetoothDevice) data.readTypedObject(BluetoothDevice.CREATOR);
                            boolean _arg15 = data.readBoolean();
                            AttributionSource _arg22 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            data.enforceNoDataAvail();
                            setMute(_arg05, _arg15, _arg22);
                            reply.writeNoException();
                            return true;
                        case 6:
                            BluetoothDevice _arg06 = (BluetoothDevice) data.readTypedObject(BluetoothDevice.CREATOR);
                            AttributionSource _arg16 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            data.enforceNoDataAvail();
                            boolean _result4 = isMute(_arg06, _arg16);
                            reply.writeNoException();
                            reply.writeBoolean(_result4);
                            return true;
                        case 7:
                            BluetoothDevice _arg07 = (BluetoothDevice) data.readTypedObject(BluetoothDevice.CREATOR);
                            int _arg17 = data.readInt();
                            int _arg23 = data.readInt();
                            AttributionSource _arg3 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            data.enforceNoDataAvail();
                            boolean _result5 = setActiveProfile(_arg07, _arg17, _arg23, _arg3);
                            reply.writeNoException();
                            reply.writeBoolean(_result5);
                            return true;
                        case 8:
                            int _arg08 = data.readInt();
                            AttributionSource _arg18 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            data.enforceNoDataAvail();
                            int _result6 = getActiveProfile(_arg08, _arg18);
                            reply.writeNoException();
                            reply.writeInt(_result6);
                            return true;
                        default:
                            return super.onTransact(code, data, reply, flags);
                    }
            }
        }

        private static class Proxy implements IBluetoothVcp {
            private IBinder mRemote;

            Proxy(IBinder remote) {
                this.mRemote = remote;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            public String getInterfaceDescriptor() {
                return IBluetoothVcp.DESCRIPTOR;
            }

            @Override // android.bluetooth.IBluetoothVcp
            public int getConnectionState(BluetoothDevice device, AttributionSource attributionSource) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IBluetoothVcp.DESCRIPTOR);
                    _data.writeTypedObject(device, 0);
                    _data.writeTypedObject(attributionSource, 0);
                    this.mRemote.transact(1, _data, _reply, 0);
                    _reply.readException();
                    int _result = _reply.readInt();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetoothVcp
            public int getConnectionMode(BluetoothDevice device, AttributionSource attributionSource) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IBluetoothVcp.DESCRIPTOR);
                    _data.writeTypedObject(device, 0);
                    _data.writeTypedObject(attributionSource, 0);
                    this.mRemote.transact(2, _data, _reply, 0);
                    _reply.readException();
                    int _result = _reply.readInt();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetoothVcp
            public void setAbsoluteVolume(BluetoothDevice device, int volume, AttributionSource attributionSource) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IBluetoothVcp.DESCRIPTOR);
                    _data.writeTypedObject(device, 0);
                    _data.writeInt(volume);
                    _data.writeTypedObject(attributionSource, 0);
                    this.mRemote.transact(3, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetoothVcp
            public int getAbsoluteVolume(BluetoothDevice device, AttributionSource attributionSource) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IBluetoothVcp.DESCRIPTOR);
                    _data.writeTypedObject(device, 0);
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

            @Override // android.bluetooth.IBluetoothVcp
            public void setMute(BluetoothDevice device, boolean enableMute, AttributionSource attributionSource) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IBluetoothVcp.DESCRIPTOR);
                    _data.writeTypedObject(device, 0);
                    _data.writeBoolean(enableMute);
                    _data.writeTypedObject(attributionSource, 0);
                    this.mRemote.transact(5, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetoothVcp
            public boolean isMute(BluetoothDevice device, AttributionSource attributionSource) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IBluetoothVcp.DESCRIPTOR);
                    _data.writeTypedObject(device, 0);
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

            @Override // android.bluetooth.IBluetoothVcp
            public boolean setActiveProfile(BluetoothDevice device, int audioType, int profile, AttributionSource attributionSource) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IBluetoothVcp.DESCRIPTOR);
                    _data.writeTypedObject(device, 0);
                    _data.writeInt(audioType);
                    _data.writeInt(profile);
                    _data.writeTypedObject(attributionSource, 0);
                    this.mRemote.transact(7, _data, _reply, 0);
                    _reply.readException();
                    boolean _result = _reply.readBoolean();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetoothVcp
            public int getActiveProfile(int audioType, AttributionSource attributionSource) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IBluetoothVcp.DESCRIPTOR);
                    _data.writeInt(audioType);
                    _data.writeTypedObject(attributionSource, 0);
                    this.mRemote.transact(8, _data, _reply, 0);
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
            return 7;
        }
    }
}

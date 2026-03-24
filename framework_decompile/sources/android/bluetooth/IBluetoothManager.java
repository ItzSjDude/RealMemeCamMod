package android.bluetooth;

import android.bluetooth.IBluetooth;
import android.bluetooth.IBluetoothGatt;
import android.bluetooth.IBluetoothManagerCallback;
import android.bluetooth.IBluetoothProfileServiceConnection;
import android.bluetooth.IBluetoothStateChangeCallback;
import android.content.AttributionSource;
import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes.dex */
public interface IBluetoothManager extends IInterface {
    boolean bindBluetoothProfileService(int i, IBluetoothProfileServiceConnection iBluetoothProfileServiceConnection) throws RemoteException;

    boolean disable(AttributionSource attributionSource, boolean z) throws RemoteException;

    boolean disableBle(AttributionSource attributionSource, IBinder iBinder) throws RemoteException;

    boolean enable(AttributionSource attributionSource) throws RemoteException;

    boolean enableBle(AttributionSource attributionSource, IBinder iBinder) throws RemoteException;

    boolean enableNoAutoConnect(AttributionSource attributionSource) throws RemoteException;

    boolean factoryReset() throws RemoteException;

    String getAddress(AttributionSource attributionSource) throws RemoteException;

    IBluetoothGatt getBluetoothGatt() throws RemoteException;

    String getName(AttributionSource attributionSource) throws RemoteException;

    int getState() throws RemoteException;

    boolean isBleAppPresent() throws RemoteException;

    boolean isBleScanAlwaysAvailable() throws RemoteException;

    boolean isHearingAidProfileSupported() throws RemoteException;

    boolean onFactoryReset(AttributionSource attributionSource) throws RemoteException;

    IBluetooth registerAdapter(IBluetoothManagerCallback iBluetoothManagerCallback) throws RemoteException;

    void registerStateChangeCallback(IBluetoothStateChangeCallback iBluetoothStateChangeCallback) throws RemoteException;

    void unbindBluetoothProfileService(int i, IBluetoothProfileServiceConnection iBluetoothProfileServiceConnection) throws RemoteException;

    void unregisterAdapter(IBluetoothManagerCallback iBluetoothManagerCallback) throws RemoteException;

    void unregisterStateChangeCallback(IBluetoothStateChangeCallback iBluetoothStateChangeCallback) throws RemoteException;

    public static class Default implements IBluetoothManager {
        @Override // android.bluetooth.IBluetoothManager
        public IBluetooth registerAdapter(IBluetoothManagerCallback callback) throws RemoteException {
            return null;
        }

        @Override // android.bluetooth.IBluetoothManager
        public void unregisterAdapter(IBluetoothManagerCallback callback) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetoothManager
        public void registerStateChangeCallback(IBluetoothStateChangeCallback callback) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetoothManager
        public void unregisterStateChangeCallback(IBluetoothStateChangeCallback callback) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetoothManager
        public boolean enable(AttributionSource attributionSource) throws RemoteException {
            return false;
        }

        @Override // android.bluetooth.IBluetoothManager
        public boolean enableNoAutoConnect(AttributionSource attributionSource) throws RemoteException {
            return false;
        }

        @Override // android.bluetooth.IBluetoothManager
        public boolean disable(AttributionSource attributionSource, boolean persist) throws RemoteException {
            return false;
        }

        @Override // android.bluetooth.IBluetoothManager
        public int getState() throws RemoteException {
            return 0;
        }

        @Override // android.bluetooth.IBluetoothManager
        public IBluetoothGatt getBluetoothGatt() throws RemoteException {
            return null;
        }

        @Override // android.bluetooth.IBluetoothManager
        public boolean bindBluetoothProfileService(int profile, IBluetoothProfileServiceConnection proxy) throws RemoteException {
            return false;
        }

        @Override // android.bluetooth.IBluetoothManager
        public void unbindBluetoothProfileService(int profile, IBluetoothProfileServiceConnection proxy) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetoothManager
        public String getAddress(AttributionSource attributionSource) throws RemoteException {
            return null;
        }

        @Override // android.bluetooth.IBluetoothManager
        public String getName(AttributionSource attributionSource) throws RemoteException {
            return null;
        }

        @Override // android.bluetooth.IBluetoothManager
        public boolean onFactoryReset(AttributionSource attributionSource) throws RemoteException {
            return false;
        }

        @Override // android.bluetooth.IBluetoothManager
        public boolean isBleScanAlwaysAvailable() throws RemoteException {
            return false;
        }

        @Override // android.bluetooth.IBluetoothManager
        public boolean enableBle(AttributionSource attributionSource, IBinder b) throws RemoteException {
            return false;
        }

        @Override // android.bluetooth.IBluetoothManager
        public boolean disableBle(AttributionSource attributionSource, IBinder b) throws RemoteException {
            return false;
        }

        @Override // android.bluetooth.IBluetoothManager
        public boolean isBleAppPresent() throws RemoteException {
            return false;
        }

        @Override // android.bluetooth.IBluetoothManager
        public boolean factoryReset() throws RemoteException {
            return false;
        }

        @Override // android.bluetooth.IBluetoothManager
        public boolean isHearingAidProfileSupported() throws RemoteException {
            return false;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }
    }

    public static abstract class Stub extends Binder implements IBluetoothManager {
        public static final String DESCRIPTOR = "android.bluetooth.IBluetoothManager";
        static final int TRANSACTION_bindBluetoothProfileService = 10;
        static final int TRANSACTION_disable = 7;
        static final int TRANSACTION_disableBle = 17;
        static final int TRANSACTION_enable = 5;
        static final int TRANSACTION_enableBle = 16;
        static final int TRANSACTION_enableNoAutoConnect = 6;
        static final int TRANSACTION_factoryReset = 19;
        static final int TRANSACTION_getAddress = 12;
        static final int TRANSACTION_getBluetoothGatt = 9;
        static final int TRANSACTION_getName = 13;
        static final int TRANSACTION_getState = 8;
        static final int TRANSACTION_isBleAppPresent = 18;
        static final int TRANSACTION_isBleScanAlwaysAvailable = 15;
        static final int TRANSACTION_isHearingAidProfileSupported = 20;
        static final int TRANSACTION_onFactoryReset = 14;
        static final int TRANSACTION_registerAdapter = 1;
        static final int TRANSACTION_registerStateChangeCallback = 3;
        static final int TRANSACTION_unbindBluetoothProfileService = 11;
        static final int TRANSACTION_unregisterAdapter = 2;
        static final int TRANSACTION_unregisterStateChangeCallback = 4;

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IBluetoothManager asInterface(IBinder obj) {
            if (obj == null) {
                return null;
            }
            IInterface iin = obj.queryLocalInterface(DESCRIPTOR);
            if (iin != null && (iin instanceof IBluetoothManager)) {
                return (IBluetoothManager) iin;
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
                    return "registerAdapter";
                case 2:
                    return "unregisterAdapter";
                case 3:
                    return "registerStateChangeCallback";
                case 4:
                    return "unregisterStateChangeCallback";
                case 5:
                    return "enable";
                case 6:
                    return "enableNoAutoConnect";
                case 7:
                    return "disable";
                case 8:
                    return "getState";
                case 9:
                    return "getBluetoothGatt";
                case 10:
                    return "bindBluetoothProfileService";
                case 11:
                    return "unbindBluetoothProfileService";
                case 12:
                    return "getAddress";
                case 13:
                    return "getName";
                case 14:
                    return "onFactoryReset";
                case 15:
                    return "isBleScanAlwaysAvailable";
                case 16:
                    return "enableBle";
                case 17:
                    return "disableBle";
                case 18:
                    return "isBleAppPresent";
                case 19:
                    return "factoryReset";
                case 20:
                    return "isHearingAidProfileSupported";
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
                            IBluetoothManagerCallback _arg0 = IBluetoothManagerCallback.Stub.asInterface(data.readStrongBinder());
                            data.enforceNoDataAvail();
                            IBluetooth _result = registerAdapter(_arg0);
                            reply.writeNoException();
                            reply.writeStrongInterface(_result);
                            return true;
                        case 2:
                            IBluetoothManagerCallback _arg02 = IBluetoothManagerCallback.Stub.asInterface(data.readStrongBinder());
                            data.enforceNoDataAvail();
                            unregisterAdapter(_arg02);
                            reply.writeNoException();
                            return true;
                        case 3:
                            IBluetoothStateChangeCallback _arg03 = IBluetoothStateChangeCallback.Stub.asInterface(data.readStrongBinder());
                            data.enforceNoDataAvail();
                            registerStateChangeCallback(_arg03);
                            reply.writeNoException();
                            return true;
                        case 4:
                            IBluetoothStateChangeCallback _arg04 = IBluetoothStateChangeCallback.Stub.asInterface(data.readStrongBinder());
                            data.enforceNoDataAvail();
                            unregisterStateChangeCallback(_arg04);
                            reply.writeNoException();
                            return true;
                        case 5:
                            AttributionSource _arg05 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            data.enforceNoDataAvail();
                            boolean _result2 = enable(_arg05);
                            reply.writeNoException();
                            reply.writeBoolean(_result2);
                            return true;
                        case 6:
                            AttributionSource _arg06 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            data.enforceNoDataAvail();
                            boolean _result3 = enableNoAutoConnect(_arg06);
                            reply.writeNoException();
                            reply.writeBoolean(_result3);
                            return true;
                        case 7:
                            AttributionSource _arg07 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            boolean _arg1 = data.readBoolean();
                            data.enforceNoDataAvail();
                            boolean _result4 = disable(_arg07, _arg1);
                            reply.writeNoException();
                            reply.writeBoolean(_result4);
                            return true;
                        case 8:
                            int _result5 = getState();
                            reply.writeNoException();
                            reply.writeInt(_result5);
                            return true;
                        case 9:
                            IBluetoothGatt _result6 = getBluetoothGatt();
                            reply.writeNoException();
                            reply.writeStrongInterface(_result6);
                            return true;
                        case 10:
                            int _arg08 = data.readInt();
                            IBluetoothProfileServiceConnection _arg12 = IBluetoothProfileServiceConnection.Stub.asInterface(data.readStrongBinder());
                            data.enforceNoDataAvail();
                            boolean _result7 = bindBluetoothProfileService(_arg08, _arg12);
                            reply.writeNoException();
                            reply.writeBoolean(_result7);
                            return true;
                        case 11:
                            int _arg09 = data.readInt();
                            IBluetoothProfileServiceConnection _arg13 = IBluetoothProfileServiceConnection.Stub.asInterface(data.readStrongBinder());
                            data.enforceNoDataAvail();
                            unbindBluetoothProfileService(_arg09, _arg13);
                            reply.writeNoException();
                            return true;
                        case 12:
                            AttributionSource _arg010 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            data.enforceNoDataAvail();
                            String _result8 = getAddress(_arg010);
                            reply.writeNoException();
                            reply.writeString(_result8);
                            return true;
                        case 13:
                            AttributionSource _arg011 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            data.enforceNoDataAvail();
                            String _result9 = getName(_arg011);
                            reply.writeNoException();
                            reply.writeString(_result9);
                            return true;
                        case 14:
                            AttributionSource _arg012 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            data.enforceNoDataAvail();
                            boolean _result10 = onFactoryReset(_arg012);
                            reply.writeNoException();
                            reply.writeBoolean(_result10);
                            return true;
                        case 15:
                            boolean _result11 = isBleScanAlwaysAvailable();
                            reply.writeNoException();
                            reply.writeBoolean(_result11);
                            return true;
                        case 16:
                            AttributionSource _arg013 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            IBinder _arg14 = data.readStrongBinder();
                            data.enforceNoDataAvail();
                            boolean _result12 = enableBle(_arg013, _arg14);
                            reply.writeNoException();
                            reply.writeBoolean(_result12);
                            return true;
                        case 17:
                            AttributionSource _arg014 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            IBinder _arg15 = data.readStrongBinder();
                            data.enforceNoDataAvail();
                            boolean _result13 = disableBle(_arg014, _arg15);
                            reply.writeNoException();
                            reply.writeBoolean(_result13);
                            return true;
                        case 18:
                            boolean _result14 = isBleAppPresent();
                            reply.writeNoException();
                            reply.writeBoolean(_result14);
                            return true;
                        case 19:
                            boolean _result15 = factoryReset();
                            reply.writeNoException();
                            reply.writeBoolean(_result15);
                            return true;
                        case 20:
                            boolean _result16 = isHearingAidProfileSupported();
                            reply.writeNoException();
                            reply.writeBoolean(_result16);
                            return true;
                        default:
                            return super.onTransact(code, data, reply, flags);
                    }
            }
        }

        private static class Proxy implements IBluetoothManager {
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

            @Override // android.bluetooth.IBluetoothManager
            public IBluetooth registerAdapter(IBluetoothManagerCallback callback) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeStrongInterface(callback);
                    this.mRemote.transact(1, _data, _reply, 0);
                    _reply.readException();
                    IBluetooth _result = IBluetooth.Stub.asInterface(_reply.readStrongBinder());
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetoothManager
            public void unregisterAdapter(IBluetoothManagerCallback callback) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeStrongInterface(callback);
                    this.mRemote.transact(2, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetoothManager
            public void registerStateChangeCallback(IBluetoothStateChangeCallback callback) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeStrongInterface(callback);
                    this.mRemote.transact(3, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetoothManager
            public void unregisterStateChangeCallback(IBluetoothStateChangeCallback callback) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeStrongInterface(callback);
                    this.mRemote.transact(4, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetoothManager
            public boolean enable(AttributionSource attributionSource) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeTypedObject(attributionSource, 0);
                    this.mRemote.transact(5, _data, _reply, 0);
                    _reply.readException();
                    boolean _result = _reply.readBoolean();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetoothManager
            public boolean enableNoAutoConnect(AttributionSource attributionSource) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
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

            @Override // android.bluetooth.IBluetoothManager
            public boolean disable(AttributionSource attributionSource, boolean persist) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeTypedObject(attributionSource, 0);
                    _data.writeBoolean(persist);
                    this.mRemote.transact(7, _data, _reply, 0);
                    _reply.readException();
                    boolean _result = _reply.readBoolean();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetoothManager
            public int getState() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(8, _data, _reply, 0);
                    _reply.readException();
                    int _result = _reply.readInt();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetoothManager
            public IBluetoothGatt getBluetoothGatt() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(9, _data, _reply, 0);
                    _reply.readException();
                    IBluetoothGatt _result = IBluetoothGatt.Stub.asInterface(_reply.readStrongBinder());
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetoothManager
            public boolean bindBluetoothProfileService(int profile, IBluetoothProfileServiceConnection proxy) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(profile);
                    _data.writeStrongInterface(proxy);
                    this.mRemote.transact(10, _data, _reply, 0);
                    _reply.readException();
                    boolean _result = _reply.readBoolean();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetoothManager
            public void unbindBluetoothProfileService(int profile, IBluetoothProfileServiceConnection proxy) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(profile);
                    _data.writeStrongInterface(proxy);
                    this.mRemote.transact(11, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetoothManager
            public String getAddress(AttributionSource attributionSource) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeTypedObject(attributionSource, 0);
                    this.mRemote.transact(12, _data, _reply, 0);
                    _reply.readException();
                    String _result = _reply.readString();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetoothManager
            public String getName(AttributionSource attributionSource) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeTypedObject(attributionSource, 0);
                    this.mRemote.transact(13, _data, _reply, 0);
                    _reply.readException();
                    String _result = _reply.readString();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetoothManager
            public boolean onFactoryReset(AttributionSource attributionSource) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
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

            @Override // android.bluetooth.IBluetoothManager
            public boolean isBleScanAlwaysAvailable() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(15, _data, _reply, 0);
                    _reply.readException();
                    boolean _result = _reply.readBoolean();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetoothManager
            public boolean enableBle(AttributionSource attributionSource, IBinder b) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeTypedObject(attributionSource, 0);
                    _data.writeStrongBinder(b);
                    this.mRemote.transact(16, _data, _reply, 0);
                    _reply.readException();
                    boolean _result = _reply.readBoolean();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetoothManager
            public boolean disableBle(AttributionSource attributionSource, IBinder b) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeTypedObject(attributionSource, 0);
                    _data.writeStrongBinder(b);
                    this.mRemote.transact(17, _data, _reply, 0);
                    _reply.readException();
                    boolean _result = _reply.readBoolean();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetoothManager
            public boolean isBleAppPresent() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(18, _data, _reply, 0);
                    _reply.readException();
                    boolean _result = _reply.readBoolean();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetoothManager
            public boolean factoryReset() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(19, _data, _reply, 0);
                    _reply.readException();
                    boolean _result = _reply.readBoolean();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetoothManager
            public boolean isHearingAidProfileSupported() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(20, _data, _reply, 0);
                    _reply.readException();
                    boolean _result = _reply.readBoolean();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }
        }

        @Override // android.os.Binder
        public int getMaxTransactionId() {
            return 19;
        }
    }
}

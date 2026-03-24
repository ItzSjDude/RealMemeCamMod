package android.os.renderacc;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import android.os.renderacc.IRenderAcceleratingStateListener;
import java.util.List;

/* loaded from: classes3.dex */
public interface IRenderAcceleratingService extends IInterface {
    public static final String DESCRIPTOR = "android.os.renderacc.IRenderAcceleratingService";

    int getDeviceCapability() throws RemoteException;

    int getDeviceType() throws RemoteException;

    int getDeviceWorkMode() throws RemoteException;

    int isGameInPqEnhanceList(String str) throws RemoteException;

    int isSupportGameFrc() throws RemoteException;

    int isSupportSuperResolution() throws RemoteException;

    int registerListener(IRenderAcceleratingStateListener iRenderAcceleratingStateListener) throws RemoteException;

    void setDeviceCommand(String str) throws RemoteException;

    int setGameFps(int i) throws RemoteException;

    void setPqEnhanceListMode(int i) throws RemoteException;

    int turnOffGameFrc() throws RemoteException;

    int turnOffSuperResolution() throws RemoteException;

    int turnOnGameFrc(int i, int i2) throws RemoteException;

    int turnOnSuperResolution() throws RemoteException;

    int unregisterListener(IRenderAcceleratingStateListener iRenderAcceleratingStateListener) throws RemoteException;

    void updatePqEnhanceList(String str, List<String> list) throws RemoteException;

    public static class Default implements IRenderAcceleratingService {
        @Override // android.os.renderacc.IRenderAcceleratingService
        public int getDeviceType() throws RemoteException {
            return 0;
        }

        @Override // android.os.renderacc.IRenderAcceleratingService
        public int getDeviceCapability() throws RemoteException {
            return 0;
        }

        @Override // android.os.renderacc.IRenderAcceleratingService
        public int getDeviceWorkMode() throws RemoteException {
            return 0;
        }

        @Override // android.os.renderacc.IRenderAcceleratingService
        public void setDeviceCommand(String cmd) throws RemoteException {
        }

        @Override // android.os.renderacc.IRenderAcceleratingService
        public void setPqEnhanceListMode(int values) throws RemoteException {
        }

        @Override // android.os.renderacc.IRenderAcceleratingService
        public void updatePqEnhanceList(String type, List<String> values) throws RemoteException {
        }

        @Override // android.os.renderacc.IRenderAcceleratingService
        public int isSupportGameFrc() throws RemoteException {
            return 0;
        }

        @Override // android.os.renderacc.IRenderAcceleratingService
        public int isGameInPqEnhanceList(String game) throws RemoteException {
            return 0;
        }

        @Override // android.os.renderacc.IRenderAcceleratingService
        public int setGameFps(int fps) throws RemoteException {
            return 0;
        }

        @Override // android.os.renderacc.IRenderAcceleratingService
        public int turnOnGameFrc(int mode, int fps) throws RemoteException {
            return 0;
        }

        @Override // android.os.renderacc.IRenderAcceleratingService
        public int turnOffGameFrc() throws RemoteException {
            return 0;
        }

        @Override // android.os.renderacc.IRenderAcceleratingService
        public int isSupportSuperResolution() throws RemoteException {
            return 0;
        }

        @Override // android.os.renderacc.IRenderAcceleratingService
        public int turnOnSuperResolution() throws RemoteException {
            return 0;
        }

        @Override // android.os.renderacc.IRenderAcceleratingService
        public int turnOffSuperResolution() throws RemoteException {
            return 0;
        }

        @Override // android.os.renderacc.IRenderAcceleratingService
        public int registerListener(IRenderAcceleratingStateListener listener) throws RemoteException {
            return 0;
        }

        @Override // android.os.renderacc.IRenderAcceleratingService
        public int unregisterListener(IRenderAcceleratingStateListener listener) throws RemoteException {
            return 0;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }
    }

    public static abstract class Stub extends Binder implements IRenderAcceleratingService {
        static final int TRANSACTION_getDeviceCapability = 2;
        static final int TRANSACTION_getDeviceType = 1;
        static final int TRANSACTION_getDeviceWorkMode = 3;
        static final int TRANSACTION_isGameInPqEnhanceList = 8;
        static final int TRANSACTION_isSupportGameFrc = 7;
        static final int TRANSACTION_isSupportSuperResolution = 12;
        static final int TRANSACTION_registerListener = 15;
        static final int TRANSACTION_setDeviceCommand = 4;
        static final int TRANSACTION_setGameFps = 9;
        static final int TRANSACTION_setPqEnhanceListMode = 5;
        static final int TRANSACTION_turnOffGameFrc = 11;
        static final int TRANSACTION_turnOffSuperResolution = 14;
        static final int TRANSACTION_turnOnGameFrc = 10;
        static final int TRANSACTION_turnOnSuperResolution = 13;
        static final int TRANSACTION_unregisterListener = 16;
        static final int TRANSACTION_updatePqEnhanceList = 6;

        public Stub() {
            attachInterface(this, IRenderAcceleratingService.DESCRIPTOR);
        }

        public static IRenderAcceleratingService asInterface(IBinder obj) {
            if (obj == null) {
                return null;
            }
            IInterface iin = obj.queryLocalInterface(IRenderAcceleratingService.DESCRIPTOR);
            if (iin != null && (iin instanceof IRenderAcceleratingService)) {
                return (IRenderAcceleratingService) iin;
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
                    return "getDeviceType";
                case 2:
                    return "getDeviceCapability";
                case 3:
                    return "getDeviceWorkMode";
                case 4:
                    return "setDeviceCommand";
                case 5:
                    return "setPqEnhanceListMode";
                case 6:
                    return "updatePqEnhanceList";
                case 7:
                    return "isSupportGameFrc";
                case 8:
                    return "isGameInPqEnhanceList";
                case 9:
                    return "setGameFps";
                case 10:
                    return "turnOnGameFrc";
                case 11:
                    return "turnOffGameFrc";
                case 12:
                    return "isSupportSuperResolution";
                case 13:
                    return "turnOnSuperResolution";
                case 14:
                    return "turnOffSuperResolution";
                case 15:
                    return "registerListener";
                case 16:
                    return "unregisterListener";
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
                data.enforceInterface(IRenderAcceleratingService.DESCRIPTOR);
            }
            switch (code) {
                case IBinder.INTERFACE_TRANSACTION /* 1598968902 */:
                    reply.writeString(IRenderAcceleratingService.DESCRIPTOR);
                    return true;
                default:
                    switch (code) {
                        case 1:
                            int _result = getDeviceType();
                            reply.writeNoException();
                            reply.writeInt(_result);
                            return true;
                        case 2:
                            int _result2 = getDeviceCapability();
                            reply.writeNoException();
                            reply.writeInt(_result2);
                            return true;
                        case 3:
                            int _result3 = getDeviceWorkMode();
                            reply.writeNoException();
                            reply.writeInt(_result3);
                            return true;
                        case 4:
                            String _arg0 = data.readString();
                            data.enforceNoDataAvail();
                            setDeviceCommand(_arg0);
                            reply.writeNoException();
                            return true;
                        case 5:
                            int _arg02 = data.readInt();
                            data.enforceNoDataAvail();
                            setPqEnhanceListMode(_arg02);
                            reply.writeNoException();
                            return true;
                        case 6:
                            String _arg03 = data.readString();
                            List<String> _arg1 = data.createStringArrayList();
                            data.enforceNoDataAvail();
                            updatePqEnhanceList(_arg03, _arg1);
                            reply.writeNoException();
                            return true;
                        case 7:
                            int _result4 = isSupportGameFrc();
                            reply.writeNoException();
                            reply.writeInt(_result4);
                            return true;
                        case 8:
                            String _arg04 = data.readString();
                            data.enforceNoDataAvail();
                            int _result5 = isGameInPqEnhanceList(_arg04);
                            reply.writeNoException();
                            reply.writeInt(_result5);
                            return true;
                        case 9:
                            int _arg05 = data.readInt();
                            data.enforceNoDataAvail();
                            int _result6 = setGameFps(_arg05);
                            reply.writeNoException();
                            reply.writeInt(_result6);
                            return true;
                        case 10:
                            int _arg06 = data.readInt();
                            int _arg12 = data.readInt();
                            data.enforceNoDataAvail();
                            int _result7 = turnOnGameFrc(_arg06, _arg12);
                            reply.writeNoException();
                            reply.writeInt(_result7);
                            return true;
                        case 11:
                            int _result8 = turnOffGameFrc();
                            reply.writeNoException();
                            reply.writeInt(_result8);
                            return true;
                        case 12:
                            int _result9 = isSupportSuperResolution();
                            reply.writeNoException();
                            reply.writeInt(_result9);
                            return true;
                        case 13:
                            int _result10 = turnOnSuperResolution();
                            reply.writeNoException();
                            reply.writeInt(_result10);
                            return true;
                        case 14:
                            int _result11 = turnOffSuperResolution();
                            reply.writeNoException();
                            reply.writeInt(_result11);
                            return true;
                        case 15:
                            IRenderAcceleratingStateListener _arg07 = IRenderAcceleratingStateListener.Stub.asInterface(data.readStrongBinder());
                            data.enforceNoDataAvail();
                            int _result12 = registerListener(_arg07);
                            reply.writeNoException();
                            reply.writeInt(_result12);
                            return true;
                        case 16:
                            IRenderAcceleratingStateListener _arg08 = IRenderAcceleratingStateListener.Stub.asInterface(data.readStrongBinder());
                            data.enforceNoDataAvail();
                            int _result13 = unregisterListener(_arg08);
                            reply.writeNoException();
                            reply.writeInt(_result13);
                            return true;
                        default:
                            return super.onTransact(code, data, reply, flags);
                    }
            }
        }

        private static class Proxy implements IRenderAcceleratingService {
            private IBinder mRemote;

            Proxy(IBinder remote) {
                this.mRemote = remote;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            public String getInterfaceDescriptor() {
                return IRenderAcceleratingService.DESCRIPTOR;
            }

            @Override // android.os.renderacc.IRenderAcceleratingService
            public int getDeviceType() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IRenderAcceleratingService.DESCRIPTOR);
                    this.mRemote.transact(1, _data, _reply, 0);
                    _reply.readException();
                    int _result = _reply.readInt();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.os.renderacc.IRenderAcceleratingService
            public int getDeviceCapability() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IRenderAcceleratingService.DESCRIPTOR);
                    this.mRemote.transact(2, _data, _reply, 0);
                    _reply.readException();
                    int _result = _reply.readInt();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.os.renderacc.IRenderAcceleratingService
            public int getDeviceWorkMode() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IRenderAcceleratingService.DESCRIPTOR);
                    this.mRemote.transact(3, _data, _reply, 0);
                    _reply.readException();
                    int _result = _reply.readInt();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.os.renderacc.IRenderAcceleratingService
            public void setDeviceCommand(String cmd) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IRenderAcceleratingService.DESCRIPTOR);
                    _data.writeString(cmd);
                    this.mRemote.transact(4, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.os.renderacc.IRenderAcceleratingService
            public void setPqEnhanceListMode(int values) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IRenderAcceleratingService.DESCRIPTOR);
                    _data.writeInt(values);
                    this.mRemote.transact(5, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.os.renderacc.IRenderAcceleratingService
            public void updatePqEnhanceList(String type, List<String> values) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IRenderAcceleratingService.DESCRIPTOR);
                    _data.writeString(type);
                    _data.writeStringList(values);
                    this.mRemote.transact(6, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.os.renderacc.IRenderAcceleratingService
            public int isSupportGameFrc() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IRenderAcceleratingService.DESCRIPTOR);
                    this.mRemote.transact(7, _data, _reply, 0);
                    _reply.readException();
                    int _result = _reply.readInt();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.os.renderacc.IRenderAcceleratingService
            public int isGameInPqEnhanceList(String game) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IRenderAcceleratingService.DESCRIPTOR);
                    _data.writeString(game);
                    this.mRemote.transact(8, _data, _reply, 0);
                    _reply.readException();
                    int _result = _reply.readInt();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.os.renderacc.IRenderAcceleratingService
            public int setGameFps(int fps) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IRenderAcceleratingService.DESCRIPTOR);
                    _data.writeInt(fps);
                    this.mRemote.transact(9, _data, _reply, 0);
                    _reply.readException();
                    int _result = _reply.readInt();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.os.renderacc.IRenderAcceleratingService
            public int turnOnGameFrc(int mode, int fps) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IRenderAcceleratingService.DESCRIPTOR);
                    _data.writeInt(mode);
                    _data.writeInt(fps);
                    this.mRemote.transact(10, _data, _reply, 0);
                    _reply.readException();
                    int _result = _reply.readInt();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.os.renderacc.IRenderAcceleratingService
            public int turnOffGameFrc() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IRenderAcceleratingService.DESCRIPTOR);
                    this.mRemote.transact(11, _data, _reply, 0);
                    _reply.readException();
                    int _result = _reply.readInt();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.os.renderacc.IRenderAcceleratingService
            public int isSupportSuperResolution() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IRenderAcceleratingService.DESCRIPTOR);
                    this.mRemote.transact(12, _data, _reply, 0);
                    _reply.readException();
                    int _result = _reply.readInt();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.os.renderacc.IRenderAcceleratingService
            public int turnOnSuperResolution() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IRenderAcceleratingService.DESCRIPTOR);
                    this.mRemote.transact(13, _data, _reply, 0);
                    _reply.readException();
                    int _result = _reply.readInt();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.os.renderacc.IRenderAcceleratingService
            public int turnOffSuperResolution() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IRenderAcceleratingService.DESCRIPTOR);
                    this.mRemote.transact(14, _data, _reply, 0);
                    _reply.readException();
                    int _result = _reply.readInt();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.os.renderacc.IRenderAcceleratingService
            public int registerListener(IRenderAcceleratingStateListener listener) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IRenderAcceleratingService.DESCRIPTOR);
                    _data.writeStrongInterface(listener);
                    this.mRemote.transact(15, _data, _reply, 0);
                    _reply.readException();
                    int _result = _reply.readInt();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.os.renderacc.IRenderAcceleratingService
            public int unregisterListener(IRenderAcceleratingStateListener listener) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IRenderAcceleratingService.DESCRIPTOR);
                    _data.writeStrongInterface(listener);
                    this.mRemote.transact(16, _data, _reply, 0);
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
            return 15;
        }
    }
}

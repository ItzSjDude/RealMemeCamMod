package android.os.storage;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import java.util.Map;

/* loaded from: classes3.dex */
public interface IOplusStorageManagerService extends IInterface {
    public static final String DESCRIPTOR = "android.os.storage.IOplusStorageManagerService";

    void addAuthResultInfo(int i, int i2, int i3, String str) throws RemoteException;

    int clearSDLockPassword() throws RemoteException;

    byte[] decryptDek(byte[] bArr, int i, byte[] bArr2, byte[] bArr3, byte[] bArr4, byte[] bArr5) throws RemoteException;

    Map encryptDek(byte[] bArr, int i, byte[] bArr2, byte[] bArr3, byte[] bArr4) throws RemoteException;

    void eraseSDLock() throws RemoteException;

    String getSDCardId() throws RemoteException;

    int getSDLockState() throws RemoteException;

    int getStorageData() throws RemoteException;

    long getUnlockSdcardDeadline() throws RemoteException;

    Map initAeKek() throws RemoteException;

    Map initBeKek() throws RemoteException;

    int setSDLockPassword(String str) throws RemoteException;

    int unlockSDCard(String str) throws RemoteException;

    public static class Default implements IOplusStorageManagerService {
        @Override // android.os.storage.IOplusStorageManagerService
        public int getStorageData() throws RemoteException {
            return 0;
        }

        @Override // android.os.storage.IOplusStorageManagerService
        public int setSDLockPassword(String pw) throws RemoteException {
            return 0;
        }

        @Override // android.os.storage.IOplusStorageManagerService
        public int clearSDLockPassword() throws RemoteException {
            return 0;
        }

        @Override // android.os.storage.IOplusStorageManagerService
        public int unlockSDCard(String pw) throws RemoteException {
            return 0;
        }

        @Override // android.os.storage.IOplusStorageManagerService
        public long getUnlockSdcardDeadline() throws RemoteException {
            return 0L;
        }

        @Override // android.os.storage.IOplusStorageManagerService
        public String getSDCardId() throws RemoteException {
            return null;
        }

        @Override // android.os.storage.IOplusStorageManagerService
        public int getSDLockState() throws RemoteException {
            return 0;
        }

        @Override // android.os.storage.IOplusStorageManagerService
        public void eraseSDLock() throws RemoteException {
        }

        @Override // android.os.storage.IOplusStorageManagerService
        public Map initAeKek() throws RemoteException {
            return null;
        }

        @Override // android.os.storage.IOplusStorageManagerService
        public Map initBeKek() throws RemoteException {
            return null;
        }

        @Override // android.os.storage.IOplusStorageManagerService
        public Map encryptDek(byte[] dek, int protectType, byte[] protectedKek, byte[] deviceNonce, byte[] kekID) throws RemoteException {
            return null;
        }

        @Override // android.os.storage.IOplusStorageManagerService
        public byte[] decryptDek(byte[] protectedDek, int protectType, byte[] protectedKek, byte[] deviceNonce, byte[] kekID, byte[] appNonce) throws RemoteException {
            return null;
        }

        @Override // android.os.storage.IOplusStorageManagerService
        public void addAuthResultInfo(int uid, int pid, int permBits, String packageName) throws RemoteException {
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }
    }

    public static abstract class Stub extends Binder implements IOplusStorageManagerService {
        static final int TRANSACTION_addAuthResultInfo = 13;
        static final int TRANSACTION_clearSDLockPassword = 3;
        static final int TRANSACTION_decryptDek = 12;
        static final int TRANSACTION_encryptDek = 11;
        static final int TRANSACTION_eraseSDLock = 8;
        static final int TRANSACTION_getSDCardId = 6;
        static final int TRANSACTION_getSDLockState = 7;
        static final int TRANSACTION_getStorageData = 1;
        static final int TRANSACTION_getUnlockSdcardDeadline = 5;
        static final int TRANSACTION_initAeKek = 9;
        static final int TRANSACTION_initBeKek = 10;
        static final int TRANSACTION_setSDLockPassword = 2;
        static final int TRANSACTION_unlockSDCard = 4;

        public Stub() {
            attachInterface(this, IOplusStorageManagerService.DESCRIPTOR);
        }

        public static IOplusStorageManagerService asInterface(IBinder obj) {
            if (obj == null) {
                return null;
            }
            IInterface iin = obj.queryLocalInterface(IOplusStorageManagerService.DESCRIPTOR);
            if (iin != null && (iin instanceof IOplusStorageManagerService)) {
                return (IOplusStorageManagerService) iin;
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
                    return "getStorageData";
                case 2:
                    return "setSDLockPassword";
                case 3:
                    return "clearSDLockPassword";
                case 4:
                    return "unlockSDCard";
                case 5:
                    return "getUnlockSdcardDeadline";
                case 6:
                    return "getSDCardId";
                case 7:
                    return "getSDLockState";
                case 8:
                    return "eraseSDLock";
                case 9:
                    return "initAeKek";
                case 10:
                    return "initBeKek";
                case 11:
                    return "encryptDek";
                case 12:
                    return "decryptDek";
                case 13:
                    return "addAuthResultInfo";
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
                data.enforceInterface(IOplusStorageManagerService.DESCRIPTOR);
            }
            switch (code) {
                case IBinder.INTERFACE_TRANSACTION /* 1598968902 */:
                    reply.writeString(IOplusStorageManagerService.DESCRIPTOR);
                    return true;
                default:
                    switch (code) {
                        case 1:
                            int _result = getStorageData();
                            reply.writeNoException();
                            reply.writeInt(_result);
                            return true;
                        case 2:
                            String _arg0 = data.readString();
                            data.enforceNoDataAvail();
                            int _result2 = setSDLockPassword(_arg0);
                            reply.writeNoException();
                            reply.writeInt(_result2);
                            return true;
                        case 3:
                            int _result3 = clearSDLockPassword();
                            reply.writeNoException();
                            reply.writeInt(_result3);
                            return true;
                        case 4:
                            String _arg02 = data.readString();
                            data.enforceNoDataAvail();
                            int _result4 = unlockSDCard(_arg02);
                            reply.writeNoException();
                            reply.writeInt(_result4);
                            return true;
                        case 5:
                            long _result5 = getUnlockSdcardDeadline();
                            reply.writeNoException();
                            reply.writeLong(_result5);
                            return true;
                        case 6:
                            String _result6 = getSDCardId();
                            reply.writeNoException();
                            reply.writeString(_result6);
                            return true;
                        case 7:
                            int _result7 = getSDLockState();
                            reply.writeNoException();
                            reply.writeInt(_result7);
                            return true;
                        case 8:
                            eraseSDLock();
                            reply.writeNoException();
                            return true;
                        case 9:
                            Map _result8 = initAeKek();
                            reply.writeNoException();
                            reply.writeMap(_result8);
                            return true;
                        case 10:
                            Map _result9 = initBeKek();
                            reply.writeNoException();
                            reply.writeMap(_result9);
                            return true;
                        case 11:
                            byte[] _arg03 = data.createByteArray();
                            int _arg1 = data.readInt();
                            byte[] _arg2 = data.createByteArray();
                            byte[] _arg3 = data.createByteArray();
                            byte[] _arg4 = data.createByteArray();
                            data.enforceNoDataAvail();
                            Map _result10 = encryptDek(_arg03, _arg1, _arg2, _arg3, _arg4);
                            reply.writeNoException();
                            reply.writeMap(_result10);
                            return true;
                        case 12:
                            byte[] _arg04 = data.createByteArray();
                            int _arg12 = data.readInt();
                            byte[] _arg22 = data.createByteArray();
                            byte[] _arg32 = data.createByteArray();
                            byte[] _arg42 = data.createByteArray();
                            byte[] _arg5 = data.createByteArray();
                            data.enforceNoDataAvail();
                            byte[] _result11 = decryptDek(_arg04, _arg12, _arg22, _arg32, _arg42, _arg5);
                            reply.writeNoException();
                            reply.writeByteArray(_result11);
                            return true;
                        case 13:
                            int _arg05 = data.readInt();
                            int _arg13 = data.readInt();
                            int _arg23 = data.readInt();
                            String _arg33 = data.readString();
                            data.enforceNoDataAvail();
                            addAuthResultInfo(_arg05, _arg13, _arg23, _arg33);
                            reply.writeNoException();
                            return true;
                        default:
                            return super.onTransact(code, data, reply, flags);
                    }
            }
        }

        private static class Proxy implements IOplusStorageManagerService {
            private IBinder mRemote;

            Proxy(IBinder remote) {
                this.mRemote = remote;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            public String getInterfaceDescriptor() {
                return IOplusStorageManagerService.DESCRIPTOR;
            }

            @Override // android.os.storage.IOplusStorageManagerService
            public int getStorageData() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IOplusStorageManagerService.DESCRIPTOR);
                    this.mRemote.transact(1, _data, _reply, 0);
                    _reply.readException();
                    int _result = _reply.readInt();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.os.storage.IOplusStorageManagerService
            public int setSDLockPassword(String pw) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IOplusStorageManagerService.DESCRIPTOR);
                    _data.writeString(pw);
                    this.mRemote.transact(2, _data, _reply, 0);
                    _reply.readException();
                    int _result = _reply.readInt();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.os.storage.IOplusStorageManagerService
            public int clearSDLockPassword() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IOplusStorageManagerService.DESCRIPTOR);
                    this.mRemote.transact(3, _data, _reply, 0);
                    _reply.readException();
                    int _result = _reply.readInt();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.os.storage.IOplusStorageManagerService
            public int unlockSDCard(String pw) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IOplusStorageManagerService.DESCRIPTOR);
                    _data.writeString(pw);
                    this.mRemote.transact(4, _data, _reply, 0);
                    _reply.readException();
                    int _result = _reply.readInt();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.os.storage.IOplusStorageManagerService
            public long getUnlockSdcardDeadline() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IOplusStorageManagerService.DESCRIPTOR);
                    this.mRemote.transact(5, _data, _reply, 0);
                    _reply.readException();
                    long _result = _reply.readLong();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.os.storage.IOplusStorageManagerService
            public String getSDCardId() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IOplusStorageManagerService.DESCRIPTOR);
                    this.mRemote.transact(6, _data, _reply, 0);
                    _reply.readException();
                    String _result = _reply.readString();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.os.storage.IOplusStorageManagerService
            public int getSDLockState() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IOplusStorageManagerService.DESCRIPTOR);
                    this.mRemote.transact(7, _data, _reply, 0);
                    _reply.readException();
                    int _result = _reply.readInt();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.os.storage.IOplusStorageManagerService
            public void eraseSDLock() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IOplusStorageManagerService.DESCRIPTOR);
                    this.mRemote.transact(8, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.os.storage.IOplusStorageManagerService
            public Map initAeKek() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IOplusStorageManagerService.DESCRIPTOR);
                    this.mRemote.transact(9, _data, _reply, 0);
                    _reply.readException();
                    ClassLoader cl = getClass().getClassLoader();
                    Map _result = _reply.readHashMap(cl);
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.os.storage.IOplusStorageManagerService
            public Map initBeKek() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IOplusStorageManagerService.DESCRIPTOR);
                    this.mRemote.transact(10, _data, _reply, 0);
                    _reply.readException();
                    ClassLoader cl = getClass().getClassLoader();
                    Map _result = _reply.readHashMap(cl);
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.os.storage.IOplusStorageManagerService
            public Map encryptDek(byte[] dek, int protectType, byte[] protectedKek, byte[] deviceNonce, byte[] kekID) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IOplusStorageManagerService.DESCRIPTOR);
                    _data.writeByteArray(dek);
                    _data.writeInt(protectType);
                    _data.writeByteArray(protectedKek);
                    _data.writeByteArray(deviceNonce);
                    _data.writeByteArray(kekID);
                    this.mRemote.transact(11, _data, _reply, 0);
                    _reply.readException();
                    ClassLoader cl = getClass().getClassLoader();
                    Map _result = _reply.readHashMap(cl);
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.os.storage.IOplusStorageManagerService
            public byte[] decryptDek(byte[] protectedDek, int protectType, byte[] protectedKek, byte[] deviceNonce, byte[] kekID, byte[] appNonce) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IOplusStorageManagerService.DESCRIPTOR);
                    _data.writeByteArray(protectedDek);
                    _data.writeInt(protectType);
                    _data.writeByteArray(protectedKek);
                    _data.writeByteArray(deviceNonce);
                    _data.writeByteArray(kekID);
                    _data.writeByteArray(appNonce);
                    this.mRemote.transact(12, _data, _reply, 0);
                    _reply.readException();
                    byte[] _result = _reply.createByteArray();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.os.storage.IOplusStorageManagerService
            public void addAuthResultInfo(int uid, int pid, int permBits, String packageName) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IOplusStorageManagerService.DESCRIPTOR);
                    _data.writeInt(uid);
                    _data.writeInt(pid);
                    _data.writeInt(permBits);
                    _data.writeString(packageName);
                    this.mRemote.transact(13, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
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

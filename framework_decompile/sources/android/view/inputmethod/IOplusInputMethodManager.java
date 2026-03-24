package android.view.inputmethod;

import android.content.ComponentName;
import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.android.internal.view.IInputContext;

/* loaded from: classes2.dex */
public interface IOplusInputMethodManager extends IInterface {
    public static final String DESCRIPTOR = "android.view.inputmethod.IOplusInputMethodManager";

    boolean clearDefaultInputMethodByCustomize() throws RemoteException;

    void commitTextByOtherSide() throws RemoteException;

    String getDefaultInputMethodByCustomize() throws RemoteException;

    int getInputMethodWindowVisibleHeight(int i) throws RemoteException;

    void hideCurrentInputMethod() throws RemoteException;

    void hideSoftInput() throws RemoteException;

    void invalidateInputToSynergy(EditorInfo editorInfo, IInputContext iInputContext, int i) throws RemoteException;

    void registerInputMethodSynergyService(ComponentName componentName, boolean z) throws RemoteException;

    void setAlwaysLogOff() throws RemoteException;

    void setAlwaysLogOn(long j, String str) throws RemoteException;

    boolean setDefaultInputMethodByCustomize(String str) throws RemoteException;

    void updateCursorAnchorInfoToSynergy(CursorAnchorInfo cursorAnchorInfo) throws RemoteException;

    void updateTouchDeviceId(int i) throws RemoteException;

    public static class Default implements IOplusInputMethodManager {
        @Override // android.view.inputmethod.IOplusInputMethodManager
        public void hideCurrentInputMethod() throws RemoteException {
        }

        @Override // android.view.inputmethod.IOplusInputMethodManager
        public void hideSoftInput() throws RemoteException {
        }

        @Override // android.view.inputmethod.IOplusInputMethodManager
        public boolean setDefaultInputMethodByCustomize(String packageName) throws RemoteException {
            return false;
        }

        @Override // android.view.inputmethod.IOplusInputMethodManager
        public String getDefaultInputMethodByCustomize() throws RemoteException {
            return null;
        }

        @Override // android.view.inputmethod.IOplusInputMethodManager
        public boolean clearDefaultInputMethodByCustomize() throws RemoteException {
            return false;
        }

        @Override // android.view.inputmethod.IOplusInputMethodManager
        public void updateTouchDeviceId(int deviceId) throws RemoteException {
        }

        @Override // android.view.inputmethod.IOplusInputMethodManager
        public void updateCursorAnchorInfoToSynergy(CursorAnchorInfo cursorAnchorInfo) throws RemoteException {
        }

        @Override // android.view.inputmethod.IOplusInputMethodManager
        public void invalidateInputToSynergy(EditorInfo editorInfo, IInputContext inputContext, int sessionId) throws RemoteException {
        }

        @Override // android.view.inputmethod.IOplusInputMethodManager
        public void registerInputMethodSynergyService(ComponentName synergyName, boolean register) throws RemoteException {
        }

        @Override // android.view.inputmethod.IOplusInputMethodManager
        public void commitTextByOtherSide() throws RemoteException {
        }

        @Override // android.view.inputmethod.IOplusInputMethodManager
        public int getInputMethodWindowVisibleHeight(int displayId) throws RemoteException {
            return 0;
        }

        @Override // android.view.inputmethod.IOplusInputMethodManager
        public void setAlwaysLogOn(long maxSize, String param) throws RemoteException {
        }

        @Override // android.view.inputmethod.IOplusInputMethodManager
        public void setAlwaysLogOff() throws RemoteException {
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }
    }

    public static abstract class Stub extends Binder implements IOplusInputMethodManager {
        static final int TRANSACTION_clearDefaultInputMethodByCustomize = 5;
        static final int TRANSACTION_commitTextByOtherSide = 10;
        static final int TRANSACTION_getDefaultInputMethodByCustomize = 4;
        static final int TRANSACTION_getInputMethodWindowVisibleHeight = 11;
        static final int TRANSACTION_hideCurrentInputMethod = 1;
        static final int TRANSACTION_hideSoftInput = 2;
        static final int TRANSACTION_invalidateInputToSynergy = 8;
        static final int TRANSACTION_registerInputMethodSynergyService = 9;
        static final int TRANSACTION_setAlwaysLogOff = 13;
        static final int TRANSACTION_setAlwaysLogOn = 12;
        static final int TRANSACTION_setDefaultInputMethodByCustomize = 3;
        static final int TRANSACTION_updateCursorAnchorInfoToSynergy = 7;
        static final int TRANSACTION_updateTouchDeviceId = 6;

        public Stub() {
            attachInterface(this, IOplusInputMethodManager.DESCRIPTOR);
        }

        public static IOplusInputMethodManager asInterface(IBinder obj) {
            if (obj == null) {
                return null;
            }
            IInterface iin = obj.queryLocalInterface(IOplusInputMethodManager.DESCRIPTOR);
            if (iin != null && (iin instanceof IOplusInputMethodManager)) {
                return (IOplusInputMethodManager) iin;
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
                    return "hideCurrentInputMethod";
                case 2:
                    return "hideSoftInput";
                case 3:
                    return "setDefaultInputMethodByCustomize";
                case 4:
                    return "getDefaultInputMethodByCustomize";
                case 5:
                    return "clearDefaultInputMethodByCustomize";
                case 6:
                    return "updateTouchDeviceId";
                case 7:
                    return "updateCursorAnchorInfoToSynergy";
                case 8:
                    return "invalidateInputToSynergy";
                case 9:
                    return "registerInputMethodSynergyService";
                case 10:
                    return "commitTextByOtherSide";
                case 11:
                    return "getInputMethodWindowVisibleHeight";
                case 12:
                    return "setAlwaysLogOn";
                case 13:
                    return "setAlwaysLogOff";
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
                data.enforceInterface(IOplusInputMethodManager.DESCRIPTOR);
            }
            switch (code) {
                case IBinder.INTERFACE_TRANSACTION /* 1598968902 */:
                    reply.writeString(IOplusInputMethodManager.DESCRIPTOR);
                    return true;
                default:
                    switch (code) {
                        case 1:
                            hideCurrentInputMethod();
                            return true;
                        case 2:
                            hideSoftInput();
                            return true;
                        case 3:
                            String _arg0 = data.readString();
                            data.enforceNoDataAvail();
                            boolean _result = setDefaultInputMethodByCustomize(_arg0);
                            reply.writeNoException();
                            reply.writeBoolean(_result);
                            return true;
                        case 4:
                            String _result2 = getDefaultInputMethodByCustomize();
                            reply.writeNoException();
                            reply.writeString(_result2);
                            return true;
                        case 5:
                            boolean _result3 = clearDefaultInputMethodByCustomize();
                            reply.writeNoException();
                            reply.writeBoolean(_result3);
                            return true;
                        case 6:
                            int _arg02 = data.readInt();
                            data.enforceNoDataAvail();
                            updateTouchDeviceId(_arg02);
                            return true;
                        case 7:
                            CursorAnchorInfo _arg03 = (CursorAnchorInfo) data.readTypedObject(CursorAnchorInfo.CREATOR);
                            data.enforceNoDataAvail();
                            updateCursorAnchorInfoToSynergy(_arg03);
                            return true;
                        case 8:
                            EditorInfo _arg04 = (EditorInfo) data.readTypedObject(EditorInfo.CREATOR);
                            IInputContext _arg1 = IInputContext.Stub.asInterface(data.readStrongBinder());
                            int _arg2 = data.readInt();
                            data.enforceNoDataAvail();
                            invalidateInputToSynergy(_arg04, _arg1, _arg2);
                            return true;
                        case 9:
                            ComponentName _arg05 = (ComponentName) data.readTypedObject(ComponentName.CREATOR);
                            boolean _arg12 = data.readBoolean();
                            data.enforceNoDataAvail();
                            registerInputMethodSynergyService(_arg05, _arg12);
                            return true;
                        case 10:
                            commitTextByOtherSide();
                            return true;
                        case 11:
                            int _arg06 = data.readInt();
                            data.enforceNoDataAvail();
                            int _result4 = getInputMethodWindowVisibleHeight(_arg06);
                            reply.writeNoException();
                            reply.writeInt(_result4);
                            return true;
                        case 12:
                            long _arg07 = data.readLong();
                            String _arg13 = data.readString();
                            data.enforceNoDataAvail();
                            setAlwaysLogOn(_arg07, _arg13);
                            return true;
                        case 13:
                            setAlwaysLogOff();
                            return true;
                        default:
                            return super.onTransact(code, data, reply, flags);
                    }
            }
        }

        private static class Proxy implements IOplusInputMethodManager {
            private IBinder mRemote;

            Proxy(IBinder remote) {
                this.mRemote = remote;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            public String getInterfaceDescriptor() {
                return IOplusInputMethodManager.DESCRIPTOR;
            }

            @Override // android.view.inputmethod.IOplusInputMethodManager
            public void hideCurrentInputMethod() throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IOplusInputMethodManager.DESCRIPTOR);
                    this.mRemote.transact(1, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.view.inputmethod.IOplusInputMethodManager
            public void hideSoftInput() throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IOplusInputMethodManager.DESCRIPTOR);
                    this.mRemote.transact(2, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.view.inputmethod.IOplusInputMethodManager
            public boolean setDefaultInputMethodByCustomize(String packageName) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IOplusInputMethodManager.DESCRIPTOR);
                    _data.writeString(packageName);
                    this.mRemote.transact(3, _data, _reply, 0);
                    _reply.readException();
                    boolean _result = _reply.readBoolean();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.view.inputmethod.IOplusInputMethodManager
            public String getDefaultInputMethodByCustomize() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IOplusInputMethodManager.DESCRIPTOR);
                    this.mRemote.transact(4, _data, _reply, 0);
                    _reply.readException();
                    String _result = _reply.readString();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.view.inputmethod.IOplusInputMethodManager
            public boolean clearDefaultInputMethodByCustomize() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IOplusInputMethodManager.DESCRIPTOR);
                    this.mRemote.transact(5, _data, _reply, 0);
                    _reply.readException();
                    boolean _result = _reply.readBoolean();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.view.inputmethod.IOplusInputMethodManager
            public void updateTouchDeviceId(int deviceId) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IOplusInputMethodManager.DESCRIPTOR);
                    _data.writeInt(deviceId);
                    this.mRemote.transact(6, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.view.inputmethod.IOplusInputMethodManager
            public void updateCursorAnchorInfoToSynergy(CursorAnchorInfo cursorAnchorInfo) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IOplusInputMethodManager.DESCRIPTOR);
                    _data.writeTypedObject(cursorAnchorInfo, 0);
                    this.mRemote.transact(7, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.view.inputmethod.IOplusInputMethodManager
            public void invalidateInputToSynergy(EditorInfo editorInfo, IInputContext inputContext, int sessionId) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IOplusInputMethodManager.DESCRIPTOR);
                    _data.writeTypedObject(editorInfo, 0);
                    _data.writeStrongInterface(inputContext);
                    _data.writeInt(sessionId);
                    this.mRemote.transact(8, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.view.inputmethod.IOplusInputMethodManager
            public void registerInputMethodSynergyService(ComponentName synergyName, boolean register) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IOplusInputMethodManager.DESCRIPTOR);
                    _data.writeTypedObject(synergyName, 0);
                    _data.writeBoolean(register);
                    this.mRemote.transact(9, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.view.inputmethod.IOplusInputMethodManager
            public void commitTextByOtherSide() throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IOplusInputMethodManager.DESCRIPTOR);
                    this.mRemote.transact(10, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.view.inputmethod.IOplusInputMethodManager
            public int getInputMethodWindowVisibleHeight(int displayId) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IOplusInputMethodManager.DESCRIPTOR);
                    _data.writeInt(displayId);
                    this.mRemote.transact(11, _data, _reply, 0);
                    _reply.readException();
                    int _result = _reply.readInt();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.view.inputmethod.IOplusInputMethodManager
            public void setAlwaysLogOn(long maxSize, String param) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IOplusInputMethodManager.DESCRIPTOR);
                    _data.writeLong(maxSize);
                    _data.writeString(param);
                    this.mRemote.transact(12, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.view.inputmethod.IOplusInputMethodManager
            public void setAlwaysLogOff() throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IOplusInputMethodManager.DESCRIPTOR);
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

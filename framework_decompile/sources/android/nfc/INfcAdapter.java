package android.nfc;

import android.app.PendingIntent;
import android.content.IntentFilter;
import android.nfc.IAppCallback;
import android.nfc.INfcAdapterExtras;
import android.nfc.INfcCardEmulation;
import android.nfc.INfcControllerAlwaysOnListener;
import android.nfc.INfcDta;
import android.nfc.INfcFCardEmulation;
import android.nfc.INfcTag;
import android.nfc.INfcUnlockHandler;
import android.nfc.ITagRemovedCallback;
import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes2.dex */
public interface INfcAdapter extends IInterface {
    void addNfcUnlockHandler(INfcUnlockHandler iNfcUnlockHandler, int[] iArr) throws RemoteException;

    boolean deviceSupportsNfcSecure() throws RemoteException;

    boolean disable(boolean z) throws RemoteException;

    boolean disableNdefPush() throws RemoteException;

    void dispatch(Tag tag) throws RemoteException;

    boolean enable() throws RemoteException;

    boolean enableNdefPush() throws RemoteException;

    INfcAdapterExtras getNfcAdapterExtrasInterface(String str) throws RemoteException;

    IBinder getNfcAdapterVendorInterface(String str) throws RemoteException;

    INfcCardEmulation getNfcCardEmulationInterface() throws RemoteException;

    INfcDta getNfcDtaInterface(String str) throws RemoteException;

    INfcFCardEmulation getNfcFCardEmulationInterface() throws RemoteException;

    INfcTag getNfcTagInterface() throws RemoteException;

    int getState() throws RemoteException;

    boolean ignore(int i, int i2, ITagRemovedCallback iTagRemovedCallback) throws RemoteException;

    void invokeBeam() throws RemoteException;

    void invokeBeamInternal(BeamShareData beamShareData) throws RemoteException;

    boolean isControllerAlwaysOn() throws RemoteException;

    boolean isControllerAlwaysOnSupported() throws RemoteException;

    boolean isNdefPushEnabled() throws RemoteException;

    boolean isNfcSecureEnabled() throws RemoteException;

    void pausePolling(int i) throws RemoteException;

    void registerControllerAlwaysOnListener(INfcControllerAlwaysOnListener iNfcControllerAlwaysOnListener) throws RemoteException;

    void removeNfcUnlockHandler(INfcUnlockHandler iNfcUnlockHandler) throws RemoteException;

    void resumePolling() throws RemoteException;

    void setAppCallback(IAppCallback iAppCallback) throws RemoteException;

    boolean setControllerAlwaysOn(boolean z) throws RemoteException;

    void setForegroundDispatch(PendingIntent pendingIntent, IntentFilter[] intentFilterArr, TechListParcel techListParcel) throws RemoteException;

    boolean setNfcSecure(boolean z) throws RemoteException;

    void setP2pModes(int i, int i2) throws RemoteException;

    void setReaderMode(IBinder iBinder, IAppCallback iAppCallback, int i, Bundle bundle) throws RemoteException;

    void unregisterControllerAlwaysOnListener(INfcControllerAlwaysOnListener iNfcControllerAlwaysOnListener) throws RemoteException;

    void verifyNfcPermission() throws RemoteException;

    public static class Default implements INfcAdapter {
        @Override // android.nfc.INfcAdapter
        public INfcTag getNfcTagInterface() throws RemoteException {
            return null;
        }

        @Override // android.nfc.INfcAdapter
        public INfcCardEmulation getNfcCardEmulationInterface() throws RemoteException {
            return null;
        }

        @Override // android.nfc.INfcAdapter
        public INfcFCardEmulation getNfcFCardEmulationInterface() throws RemoteException {
            return null;
        }

        @Override // android.nfc.INfcAdapter
        public INfcAdapterExtras getNfcAdapterExtrasInterface(String pkg) throws RemoteException {
            return null;
        }

        @Override // android.nfc.INfcAdapter
        public INfcDta getNfcDtaInterface(String pkg) throws RemoteException {
            return null;
        }

        @Override // android.nfc.INfcAdapter
        public IBinder getNfcAdapterVendorInterface(String vendor2) throws RemoteException {
            return null;
        }

        @Override // android.nfc.INfcAdapter
        public int getState() throws RemoteException {
            return 0;
        }

        @Override // android.nfc.INfcAdapter
        public boolean disable(boolean saveState) throws RemoteException {
            return false;
        }

        @Override // android.nfc.INfcAdapter
        public boolean enable() throws RemoteException {
            return false;
        }

        @Override // android.nfc.INfcAdapter
        public boolean enableNdefPush() throws RemoteException {
            return false;
        }

        @Override // android.nfc.INfcAdapter
        public boolean disableNdefPush() throws RemoteException {
            return false;
        }

        @Override // android.nfc.INfcAdapter
        public boolean isNdefPushEnabled() throws RemoteException {
            return false;
        }

        @Override // android.nfc.INfcAdapter
        public void pausePolling(int timeoutInMs) throws RemoteException {
        }

        @Override // android.nfc.INfcAdapter
        public void resumePolling() throws RemoteException {
        }

        @Override // android.nfc.INfcAdapter
        public void setForegroundDispatch(PendingIntent intent, IntentFilter[] filters, TechListParcel techLists) throws RemoteException {
        }

        @Override // android.nfc.INfcAdapter
        public void setAppCallback(IAppCallback callback) throws RemoteException {
        }

        @Override // android.nfc.INfcAdapter
        public void invokeBeam() throws RemoteException {
        }

        @Override // android.nfc.INfcAdapter
        public void invokeBeamInternal(BeamShareData shareData) throws RemoteException {
        }

        @Override // android.nfc.INfcAdapter
        public boolean ignore(int nativeHandle, int debounceMs, ITagRemovedCallback callback) throws RemoteException {
            return false;
        }

        @Override // android.nfc.INfcAdapter
        public void dispatch(Tag tag) throws RemoteException {
        }

        @Override // android.nfc.INfcAdapter
        public void setReaderMode(IBinder b, IAppCallback callback, int flags, Bundle extras) throws RemoteException {
        }

        @Override // android.nfc.INfcAdapter
        public void setP2pModes(int initatorModes, int targetModes) throws RemoteException {
        }

        @Override // android.nfc.INfcAdapter
        public void addNfcUnlockHandler(INfcUnlockHandler unlockHandler, int[] techList) throws RemoteException {
        }

        @Override // android.nfc.INfcAdapter
        public void removeNfcUnlockHandler(INfcUnlockHandler unlockHandler) throws RemoteException {
        }

        @Override // android.nfc.INfcAdapter
        public void verifyNfcPermission() throws RemoteException {
        }

        @Override // android.nfc.INfcAdapter
        public boolean isNfcSecureEnabled() throws RemoteException {
            return false;
        }

        @Override // android.nfc.INfcAdapter
        public boolean deviceSupportsNfcSecure() throws RemoteException {
            return false;
        }

        @Override // android.nfc.INfcAdapter
        public boolean setNfcSecure(boolean enable) throws RemoteException {
            return false;
        }

        @Override // android.nfc.INfcAdapter
        public boolean setControllerAlwaysOn(boolean value) throws RemoteException {
            return false;
        }

        @Override // android.nfc.INfcAdapter
        public boolean isControllerAlwaysOn() throws RemoteException {
            return false;
        }

        @Override // android.nfc.INfcAdapter
        public boolean isControllerAlwaysOnSupported() throws RemoteException {
            return false;
        }

        @Override // android.nfc.INfcAdapter
        public void registerControllerAlwaysOnListener(INfcControllerAlwaysOnListener listener) throws RemoteException {
        }

        @Override // android.nfc.INfcAdapter
        public void unregisterControllerAlwaysOnListener(INfcControllerAlwaysOnListener listener) throws RemoteException {
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }
    }

    public static abstract class Stub extends Binder implements INfcAdapter {
        public static final String DESCRIPTOR = "android.nfc.INfcAdapter";
        static final int TRANSACTION_addNfcUnlockHandler = 23;
        static final int TRANSACTION_deviceSupportsNfcSecure = 27;
        static final int TRANSACTION_disable = 8;
        static final int TRANSACTION_disableNdefPush = 11;
        static final int TRANSACTION_dispatch = 20;
        static final int TRANSACTION_enable = 9;
        static final int TRANSACTION_enableNdefPush = 10;
        static final int TRANSACTION_getNfcAdapterExtrasInterface = 4;
        static final int TRANSACTION_getNfcAdapterVendorInterface = 6;
        static final int TRANSACTION_getNfcCardEmulationInterface = 2;
        static final int TRANSACTION_getNfcDtaInterface = 5;
        static final int TRANSACTION_getNfcFCardEmulationInterface = 3;
        static final int TRANSACTION_getNfcTagInterface = 1;
        static final int TRANSACTION_getState = 7;
        static final int TRANSACTION_ignore = 19;
        static final int TRANSACTION_invokeBeam = 17;
        static final int TRANSACTION_invokeBeamInternal = 18;
        static final int TRANSACTION_isControllerAlwaysOn = 30;
        static final int TRANSACTION_isControllerAlwaysOnSupported = 31;
        static final int TRANSACTION_isNdefPushEnabled = 12;
        static final int TRANSACTION_isNfcSecureEnabled = 26;
        static final int TRANSACTION_pausePolling = 13;
        static final int TRANSACTION_registerControllerAlwaysOnListener = 32;
        static final int TRANSACTION_removeNfcUnlockHandler = 24;
        static final int TRANSACTION_resumePolling = 14;
        static final int TRANSACTION_setAppCallback = 16;
        static final int TRANSACTION_setControllerAlwaysOn = 29;
        static final int TRANSACTION_setForegroundDispatch = 15;
        static final int TRANSACTION_setNfcSecure = 28;
        static final int TRANSACTION_setP2pModes = 22;
        static final int TRANSACTION_setReaderMode = 21;
        static final int TRANSACTION_unregisterControllerAlwaysOnListener = 33;
        static final int TRANSACTION_verifyNfcPermission = 25;

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static INfcAdapter asInterface(IBinder obj) {
            if (obj == null) {
                return null;
            }
            IInterface iin = obj.queryLocalInterface(DESCRIPTOR);
            if (iin != null && (iin instanceof INfcAdapter)) {
                return (INfcAdapter) iin;
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
                    return "getNfcTagInterface";
                case 2:
                    return "getNfcCardEmulationInterface";
                case 3:
                    return "getNfcFCardEmulationInterface";
                case 4:
                    return "getNfcAdapterExtrasInterface";
                case 5:
                    return "getNfcDtaInterface";
                case 6:
                    return "getNfcAdapterVendorInterface";
                case 7:
                    return "getState";
                case 8:
                    return "disable";
                case 9:
                    return "enable";
                case 10:
                    return "enableNdefPush";
                case 11:
                    return "disableNdefPush";
                case 12:
                    return "isNdefPushEnabled";
                case 13:
                    return "pausePolling";
                case 14:
                    return "resumePolling";
                case 15:
                    return "setForegroundDispatch";
                case 16:
                    return "setAppCallback";
                case 17:
                    return "invokeBeam";
                case 18:
                    return "invokeBeamInternal";
                case 19:
                    return "ignore";
                case 20:
                    return "dispatch";
                case 21:
                    return "setReaderMode";
                case 22:
                    return "setP2pModes";
                case 23:
                    return "addNfcUnlockHandler";
                case 24:
                    return "removeNfcUnlockHandler";
                case 25:
                    return "verifyNfcPermission";
                case 26:
                    return "isNfcSecureEnabled";
                case 27:
                    return "deviceSupportsNfcSecure";
                case 28:
                    return "setNfcSecure";
                case 29:
                    return "setControllerAlwaysOn";
                case 30:
                    return "isControllerAlwaysOn";
                case 31:
                    return "isControllerAlwaysOnSupported";
                case 32:
                    return "registerControllerAlwaysOnListener";
                case 33:
                    return "unregisterControllerAlwaysOnListener";
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
                            INfcTag _result = getNfcTagInterface();
                            reply.writeNoException();
                            reply.writeStrongInterface(_result);
                            return true;
                        case 2:
                            INfcCardEmulation _result2 = getNfcCardEmulationInterface();
                            reply.writeNoException();
                            reply.writeStrongInterface(_result2);
                            return true;
                        case 3:
                            INfcFCardEmulation _result3 = getNfcFCardEmulationInterface();
                            reply.writeNoException();
                            reply.writeStrongInterface(_result3);
                            return true;
                        case 4:
                            String _arg0 = data.readString();
                            data.enforceNoDataAvail();
                            INfcAdapterExtras _result4 = getNfcAdapterExtrasInterface(_arg0);
                            reply.writeNoException();
                            reply.writeStrongInterface(_result4);
                            return true;
                        case 5:
                            String _arg02 = data.readString();
                            data.enforceNoDataAvail();
                            INfcDta _result5 = getNfcDtaInterface(_arg02);
                            reply.writeNoException();
                            reply.writeStrongInterface(_result5);
                            return true;
                        case 6:
                            String _arg03 = data.readString();
                            data.enforceNoDataAvail();
                            IBinder _result6 = getNfcAdapterVendorInterface(_arg03);
                            reply.writeNoException();
                            reply.writeStrongBinder(_result6);
                            return true;
                        case 7:
                            int _result7 = getState();
                            reply.writeNoException();
                            reply.writeInt(_result7);
                            return true;
                        case 8:
                            boolean _arg04 = data.readBoolean();
                            data.enforceNoDataAvail();
                            boolean _result8 = disable(_arg04);
                            reply.writeNoException();
                            reply.writeBoolean(_result8);
                            return true;
                        case 9:
                            boolean _result9 = enable();
                            reply.writeNoException();
                            reply.writeBoolean(_result9);
                            return true;
                        case 10:
                            boolean _result10 = enableNdefPush();
                            reply.writeNoException();
                            reply.writeBoolean(_result10);
                            return true;
                        case 11:
                            boolean _result11 = disableNdefPush();
                            reply.writeNoException();
                            reply.writeBoolean(_result11);
                            return true;
                        case 12:
                            boolean _result12 = isNdefPushEnabled();
                            reply.writeNoException();
                            reply.writeBoolean(_result12);
                            return true;
                        case 13:
                            int _arg05 = data.readInt();
                            data.enforceNoDataAvail();
                            pausePolling(_arg05);
                            reply.writeNoException();
                            return true;
                        case 14:
                            resumePolling();
                            reply.writeNoException();
                            return true;
                        case 15:
                            PendingIntent _arg06 = (PendingIntent) data.readTypedObject(PendingIntent.CREATOR);
                            IntentFilter[] _arg1 = (IntentFilter[]) data.createTypedArray(IntentFilter.CREATOR);
                            TechListParcel _arg2 = (TechListParcel) data.readTypedObject(TechListParcel.CREATOR);
                            data.enforceNoDataAvail();
                            setForegroundDispatch(_arg06, _arg1, _arg2);
                            reply.writeNoException();
                            return true;
                        case 16:
                            IAppCallback _arg07 = IAppCallback.Stub.asInterface(data.readStrongBinder());
                            data.enforceNoDataAvail();
                            setAppCallback(_arg07);
                            reply.writeNoException();
                            return true;
                        case 17:
                            invokeBeam();
                            return true;
                        case 18:
                            BeamShareData _arg08 = (BeamShareData) data.readTypedObject(BeamShareData.CREATOR);
                            data.enforceNoDataAvail();
                            invokeBeamInternal(_arg08);
                            return true;
                        case 19:
                            int _arg09 = data.readInt();
                            int _arg12 = data.readInt();
                            ITagRemovedCallback _arg22 = ITagRemovedCallback.Stub.asInterface(data.readStrongBinder());
                            data.enforceNoDataAvail();
                            boolean _result13 = ignore(_arg09, _arg12, _arg22);
                            reply.writeNoException();
                            reply.writeBoolean(_result13);
                            return true;
                        case 20:
                            Tag _arg010 = (Tag) data.readTypedObject(Tag.CREATOR);
                            data.enforceNoDataAvail();
                            dispatch(_arg010);
                            reply.writeNoException();
                            return true;
                        case 21:
                            IBinder _arg011 = data.readStrongBinder();
                            IAppCallback _arg13 = IAppCallback.Stub.asInterface(data.readStrongBinder());
                            int _arg23 = data.readInt();
                            Bundle _arg3 = (Bundle) data.readTypedObject(Bundle.CREATOR);
                            data.enforceNoDataAvail();
                            setReaderMode(_arg011, _arg13, _arg23, _arg3);
                            reply.writeNoException();
                            return true;
                        case 22:
                            int _arg012 = data.readInt();
                            int _arg14 = data.readInt();
                            data.enforceNoDataAvail();
                            setP2pModes(_arg012, _arg14);
                            reply.writeNoException();
                            return true;
                        case 23:
                            INfcUnlockHandler _arg013 = INfcUnlockHandler.Stub.asInterface(data.readStrongBinder());
                            int[] _arg15 = data.createIntArray();
                            data.enforceNoDataAvail();
                            addNfcUnlockHandler(_arg013, _arg15);
                            reply.writeNoException();
                            return true;
                        case 24:
                            INfcUnlockHandler _arg014 = INfcUnlockHandler.Stub.asInterface(data.readStrongBinder());
                            data.enforceNoDataAvail();
                            removeNfcUnlockHandler(_arg014);
                            reply.writeNoException();
                            return true;
                        case 25:
                            verifyNfcPermission();
                            reply.writeNoException();
                            return true;
                        case 26:
                            boolean _result14 = isNfcSecureEnabled();
                            reply.writeNoException();
                            reply.writeBoolean(_result14);
                            return true;
                        case 27:
                            boolean _result15 = deviceSupportsNfcSecure();
                            reply.writeNoException();
                            reply.writeBoolean(_result15);
                            return true;
                        case 28:
                            boolean _arg015 = data.readBoolean();
                            data.enforceNoDataAvail();
                            boolean _result16 = setNfcSecure(_arg015);
                            reply.writeNoException();
                            reply.writeBoolean(_result16);
                            return true;
                        case 29:
                            boolean _arg016 = data.readBoolean();
                            data.enforceNoDataAvail();
                            boolean _result17 = setControllerAlwaysOn(_arg016);
                            reply.writeNoException();
                            reply.writeBoolean(_result17);
                            return true;
                        case 30:
                            boolean _result18 = isControllerAlwaysOn();
                            reply.writeNoException();
                            reply.writeBoolean(_result18);
                            return true;
                        case 31:
                            boolean _result19 = isControllerAlwaysOnSupported();
                            reply.writeNoException();
                            reply.writeBoolean(_result19);
                            return true;
                        case 32:
                            INfcControllerAlwaysOnListener _arg017 = INfcControllerAlwaysOnListener.Stub.asInterface(data.readStrongBinder());
                            data.enforceNoDataAvail();
                            registerControllerAlwaysOnListener(_arg017);
                            reply.writeNoException();
                            return true;
                        case 33:
                            INfcControllerAlwaysOnListener _arg018 = INfcControllerAlwaysOnListener.Stub.asInterface(data.readStrongBinder());
                            data.enforceNoDataAvail();
                            unregisterControllerAlwaysOnListener(_arg018);
                            reply.writeNoException();
                            return true;
                        default:
                            return super.onTransact(code, data, reply, flags);
                    }
            }
        }

        private static class Proxy implements INfcAdapter {
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

            @Override // android.nfc.INfcAdapter
            public INfcTag getNfcTagInterface() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(1, _data, _reply, 0);
                    _reply.readException();
                    INfcTag _result = INfcTag.Stub.asInterface(_reply.readStrongBinder());
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.nfc.INfcAdapter
            public INfcCardEmulation getNfcCardEmulationInterface() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(2, _data, _reply, 0);
                    _reply.readException();
                    INfcCardEmulation _result = INfcCardEmulation.Stub.asInterface(_reply.readStrongBinder());
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.nfc.INfcAdapter
            public INfcFCardEmulation getNfcFCardEmulationInterface() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(3, _data, _reply, 0);
                    _reply.readException();
                    INfcFCardEmulation _result = INfcFCardEmulation.Stub.asInterface(_reply.readStrongBinder());
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.nfc.INfcAdapter
            public INfcAdapterExtras getNfcAdapterExtrasInterface(String pkg) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(pkg);
                    this.mRemote.transact(4, _data, _reply, 0);
                    _reply.readException();
                    INfcAdapterExtras _result = INfcAdapterExtras.Stub.asInterface(_reply.readStrongBinder());
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.nfc.INfcAdapter
            public INfcDta getNfcDtaInterface(String pkg) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(pkg);
                    this.mRemote.transact(5, _data, _reply, 0);
                    _reply.readException();
                    INfcDta _result = INfcDta.Stub.asInterface(_reply.readStrongBinder());
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.nfc.INfcAdapter
            public IBinder getNfcAdapterVendorInterface(String vendor2) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(vendor2);
                    this.mRemote.transact(6, _data, _reply, 0);
                    _reply.readException();
                    IBinder _result = _reply.readStrongBinder();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.nfc.INfcAdapter
            public int getState() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(7, _data, _reply, 0);
                    _reply.readException();
                    int _result = _reply.readInt();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.nfc.INfcAdapter
            public boolean disable(boolean saveState) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeBoolean(saveState);
                    this.mRemote.transact(8, _data, _reply, 0);
                    _reply.readException();
                    boolean _result = _reply.readBoolean();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.nfc.INfcAdapter
            public boolean enable() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(9, _data, _reply, 0);
                    _reply.readException();
                    boolean _result = _reply.readBoolean();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.nfc.INfcAdapter
            public boolean enableNdefPush() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(10, _data, _reply, 0);
                    _reply.readException();
                    boolean _result = _reply.readBoolean();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.nfc.INfcAdapter
            public boolean disableNdefPush() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(11, _data, _reply, 0);
                    _reply.readException();
                    boolean _result = _reply.readBoolean();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.nfc.INfcAdapter
            public boolean isNdefPushEnabled() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(12, _data, _reply, 0);
                    _reply.readException();
                    boolean _result = _reply.readBoolean();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.nfc.INfcAdapter
            public void pausePolling(int timeoutInMs) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(timeoutInMs);
                    this.mRemote.transact(13, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.nfc.INfcAdapter
            public void resumePolling() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(14, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.nfc.INfcAdapter
            public void setForegroundDispatch(PendingIntent intent, IntentFilter[] filters, TechListParcel techLists) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeTypedObject(intent, 0);
                    _data.writeTypedArray(filters, 0);
                    _data.writeTypedObject(techLists, 0);
                    this.mRemote.transact(15, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.nfc.INfcAdapter
            public void setAppCallback(IAppCallback callback) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeStrongInterface(callback);
                    this.mRemote.transact(16, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.nfc.INfcAdapter
            public void invokeBeam() throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(17, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.nfc.INfcAdapter
            public void invokeBeamInternal(BeamShareData shareData) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeTypedObject(shareData, 0);
                    this.mRemote.transact(18, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.nfc.INfcAdapter
            public boolean ignore(int nativeHandle, int debounceMs, ITagRemovedCallback callback) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(nativeHandle);
                    _data.writeInt(debounceMs);
                    _data.writeStrongInterface(callback);
                    this.mRemote.transact(19, _data, _reply, 0);
                    _reply.readException();
                    boolean _result = _reply.readBoolean();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.nfc.INfcAdapter
            public void dispatch(Tag tag) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeTypedObject(tag, 0);
                    this.mRemote.transact(20, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.nfc.INfcAdapter
            public void setReaderMode(IBinder b, IAppCallback callback, int flags, Bundle extras) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeStrongBinder(b);
                    _data.writeStrongInterface(callback);
                    _data.writeInt(flags);
                    _data.writeTypedObject(extras, 0);
                    this.mRemote.transact(21, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.nfc.INfcAdapter
            public void setP2pModes(int initatorModes, int targetModes) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(initatorModes);
                    _data.writeInt(targetModes);
                    this.mRemote.transact(22, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.nfc.INfcAdapter
            public void addNfcUnlockHandler(INfcUnlockHandler unlockHandler, int[] techList) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeStrongInterface(unlockHandler);
                    _data.writeIntArray(techList);
                    this.mRemote.transact(23, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.nfc.INfcAdapter
            public void removeNfcUnlockHandler(INfcUnlockHandler unlockHandler) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeStrongInterface(unlockHandler);
                    this.mRemote.transact(24, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.nfc.INfcAdapter
            public void verifyNfcPermission() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(25, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.nfc.INfcAdapter
            public boolean isNfcSecureEnabled() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(26, _data, _reply, 0);
                    _reply.readException();
                    boolean _result = _reply.readBoolean();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.nfc.INfcAdapter
            public boolean deviceSupportsNfcSecure() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(27, _data, _reply, 0);
                    _reply.readException();
                    boolean _result = _reply.readBoolean();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.nfc.INfcAdapter
            public boolean setNfcSecure(boolean enable) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeBoolean(enable);
                    this.mRemote.transact(28, _data, _reply, 0);
                    _reply.readException();
                    boolean _result = _reply.readBoolean();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.nfc.INfcAdapter
            public boolean setControllerAlwaysOn(boolean value) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeBoolean(value);
                    this.mRemote.transact(29, _data, _reply, 0);
                    _reply.readException();
                    boolean _result = _reply.readBoolean();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.nfc.INfcAdapter
            public boolean isControllerAlwaysOn() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(30, _data, _reply, 0);
                    _reply.readException();
                    boolean _result = _reply.readBoolean();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.nfc.INfcAdapter
            public boolean isControllerAlwaysOnSupported() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(31, _data, _reply, 0);
                    _reply.readException();
                    boolean _result = _reply.readBoolean();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.nfc.INfcAdapter
            public void registerControllerAlwaysOnListener(INfcControllerAlwaysOnListener listener) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeStrongInterface(listener);
                    this.mRemote.transact(32, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.nfc.INfcAdapter
            public void unregisterControllerAlwaysOnListener(INfcControllerAlwaysOnListener listener) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeStrongInterface(listener);
                    this.mRemote.transact(33, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }
        }

        @Override // android.os.Binder
        public int getMaxTransactionId() {
            return 32;
        }
    }
}

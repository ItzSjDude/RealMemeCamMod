package com.oplus.vrr;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import java.util.List;

/* loaded from: classes5.dex */
public interface IOPlusRefreshRate extends IInterface {
    public static final String DESCRIPTOR = "com.oplus.vrr.IOPlusRefreshRate";

    int findDisplayModeIdByPolicy(int i, int i2, int i3) throws RemoteException;

    List<String> getList(int i) throws RemoteException;

    int getModeType(int i) throws RemoteException;

    float getPreferredFrameRate(String str, String str2) throws RemoteException;

    int getRefreshRatePolicy(float f) throws RemoteException;

    boolean hasFlickerRisk() throws RemoteException;

    boolean isGameAccelerationScene() throws RemoteException;

    boolean isWhiteListGame(String str) throws RemoteException;

    void notifyBrightnessChange(float f) throws RemoteException;

    void notifyNitsChange(float f) throws RemoteException;

    void screenStateChange(int i) throws RemoteException;

    void screenStateChangeWarning(int i) throws RemoteException;

    boolean setDisplayFrameRateControl(float f, String str, int i, int i2) throws RemoteException;

    void setExternalRefreshRateStatus(int i) throws RemoteException;

    boolean setFrameRate(float f, String str, String str2, int i) throws RemoteException;

    boolean setFrameRateTargetControl(float f, String str, boolean z, String str2) throws RemoteException;

    void setLowFreqVideo(boolean z) throws RemoteException;

    void setRefreshRatePolicy(int i, float f, int i2, boolean z) throws RemoteException;

    boolean setSystemFrameRateControl(float f, String str) throws RemoteException;

    void setTgpaGameData(Bundle bundle) throws RemoteException;

    boolean setVsyncConfig(int i, float f, float f2, String str) throws RemoteException;

    void updateAccelerationPkgName(String str, int i, int i2) throws RemoteException;

    void updateDisplayModes(long j) throws RemoteException;

    public static class Default implements IOPlusRefreshRate {
        @Override // com.oplus.vrr.IOPlusRefreshRate
        public void setExternalRefreshRateStatus(int status) throws RemoteException {
        }

        @Override // com.oplus.vrr.IOPlusRefreshRate
        public void updateDisplayModes(long physicalDisplayId) throws RemoteException {
        }

        @Override // com.oplus.vrr.IOPlusRefreshRate
        public int findDisplayModeIdByPolicy(int policy, int displayId, int baseModeId) throws RemoteException {
            return 0;
        }

        @Override // com.oplus.vrr.IOPlusRefreshRate
        public void screenStateChange(int state) throws RemoteException {
        }

        @Override // com.oplus.vrr.IOPlusRefreshRate
        public void notifyNitsChange(float nits) throws RemoteException {
        }

        @Override // com.oplus.vrr.IOPlusRefreshRate
        public void notifyBrightnessChange(float brightness) throws RemoteException {
        }

        @Override // com.oplus.vrr.IOPlusRefreshRate
        public void setRefreshRatePolicy(int displayId, float rate, int policy, boolean statusOn) throws RemoteException {
        }

        @Override // com.oplus.vrr.IOPlusRefreshRate
        public int getRefreshRatePolicy(float rate) throws RemoteException {
            return 0;
        }

        @Override // com.oplus.vrr.IOPlusRefreshRate
        public boolean setVsyncConfig(int status, float appOffset, float sfOffset, String identity) throws RemoteException {
            return false;
        }

        @Override // com.oplus.vrr.IOPlusRefreshRate
        public int getModeType(int modeId) throws RemoteException {
            return 0;
        }

        @Override // com.oplus.vrr.IOPlusRefreshRate
        public void setLowFreqVideo(boolean enable) throws RemoteException {
        }

        @Override // com.oplus.vrr.IOPlusRefreshRate
        public float getPreferredFrameRate(String pkgName, String winName) throws RemoteException {
            return 0.0f;
        }

        @Override // com.oplus.vrr.IOPlusRefreshRate
        public boolean hasFlickerRisk() throws RemoteException {
            return false;
        }

        @Override // com.oplus.vrr.IOPlusRefreshRate
        public void updateAccelerationPkgName(String pkgName, int targetFps, int currentFps) throws RemoteException {
        }

        @Override // com.oplus.vrr.IOPlusRefreshRate
        public void setTgpaGameData(Bundle bundle) throws RemoteException {
        }

        @Override // com.oplus.vrr.IOPlusRefreshRate
        public boolean isGameAccelerationScene() throws RemoteException {
            return false;
        }

        @Override // com.oplus.vrr.IOPlusRefreshRate
        public boolean isWhiteListGame(String pkgName) throws RemoteException {
            return false;
        }

        @Override // com.oplus.vrr.IOPlusRefreshRate
        public List<String> getList(int listType) throws RemoteException {
            return null;
        }

        @Override // com.oplus.vrr.IOPlusRefreshRate
        public boolean setFrameRate(float frameRate, String windowTile, String pkgName, int pid) throws RemoteException {
            return false;
        }

        @Override // com.oplus.vrr.IOPlusRefreshRate
        public boolean setFrameRateTargetControl(float frameRate, String pkgName, boolean strictMode, String keyDescription) throws RemoteException {
            return false;
        }

        @Override // com.oplus.vrr.IOPlusRefreshRate
        public boolean setDisplayFrameRateControl(float frameRate, String displayName, int layerStack, int flags) throws RemoteException {
            return false;
        }

        @Override // com.oplus.vrr.IOPlusRefreshRate
        public boolean setSystemFrameRateControl(float frameRate, String pkgName) throws RemoteException {
            return false;
        }

        @Override // com.oplus.vrr.IOPlusRefreshRate
        public void screenStateChangeWarning(int state) throws RemoteException {
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }
    }

    public static abstract class Stub extends Binder implements IOPlusRefreshRate {
        static final int TRANSACTION_findDisplayModeIdByPolicy = 3;
        static final int TRANSACTION_getList = 18;
        static final int TRANSACTION_getModeType = 10;
        static final int TRANSACTION_getPreferredFrameRate = 12;
        static final int TRANSACTION_getRefreshRatePolicy = 8;
        static final int TRANSACTION_hasFlickerRisk = 13;
        static final int TRANSACTION_isGameAccelerationScene = 16;
        static final int TRANSACTION_isWhiteListGame = 17;
        static final int TRANSACTION_notifyBrightnessChange = 6;
        static final int TRANSACTION_notifyNitsChange = 5;
        static final int TRANSACTION_screenStateChange = 4;
        static final int TRANSACTION_screenStateChangeWarning = 23;
        static final int TRANSACTION_setDisplayFrameRateControl = 21;
        static final int TRANSACTION_setExternalRefreshRateStatus = 1;
        static final int TRANSACTION_setFrameRate = 19;
        static final int TRANSACTION_setFrameRateTargetControl = 20;
        static final int TRANSACTION_setLowFreqVideo = 11;
        static final int TRANSACTION_setRefreshRatePolicy = 7;
        static final int TRANSACTION_setSystemFrameRateControl = 22;
        static final int TRANSACTION_setTgpaGameData = 15;
        static final int TRANSACTION_setVsyncConfig = 9;
        static final int TRANSACTION_updateAccelerationPkgName = 14;
        static final int TRANSACTION_updateDisplayModes = 2;

        public Stub() {
            attachInterface(this, IOPlusRefreshRate.DESCRIPTOR);
        }

        public static IOPlusRefreshRate asInterface(IBinder obj) {
            if (obj == null) {
                return null;
            }
            IInterface iin = obj.queryLocalInterface(IOPlusRefreshRate.DESCRIPTOR);
            if (iin != null && (iin instanceof IOPlusRefreshRate)) {
                return (IOPlusRefreshRate) iin;
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
                    return "setExternalRefreshRateStatus";
                case 2:
                    return "updateDisplayModes";
                case 3:
                    return "findDisplayModeIdByPolicy";
                case 4:
                    return "screenStateChange";
                case 5:
                    return "notifyNitsChange";
                case 6:
                    return "notifyBrightnessChange";
                case 7:
                    return "setRefreshRatePolicy";
                case 8:
                    return "getRefreshRatePolicy";
                case 9:
                    return "setVsyncConfig";
                case 10:
                    return "getModeType";
                case 11:
                    return "setLowFreqVideo";
                case 12:
                    return "getPreferredFrameRate";
                case 13:
                    return "hasFlickerRisk";
                case 14:
                    return "updateAccelerationPkgName";
                case 15:
                    return "setTgpaGameData";
                case 16:
                    return "isGameAccelerationScene";
                case 17:
                    return "isWhiteListGame";
                case 18:
                    return "getList";
                case 19:
                    return "setFrameRate";
                case 20:
                    return "setFrameRateTargetControl";
                case 21:
                    return "setDisplayFrameRateControl";
                case 22:
                    return "setSystemFrameRateControl";
                case 23:
                    return "screenStateChangeWarning";
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
                data.enforceInterface(IOPlusRefreshRate.DESCRIPTOR);
            }
            switch (code) {
                case IBinder.INTERFACE_TRANSACTION /* 1598968902 */:
                    reply.writeString(IOPlusRefreshRate.DESCRIPTOR);
                    return true;
                default:
                    switch (code) {
                        case 1:
                            int _arg0 = data.readInt();
                            data.enforceNoDataAvail();
                            setExternalRefreshRateStatus(_arg0);
                            reply.writeNoException();
                            return true;
                        case 2:
                            long _arg02 = data.readLong();
                            data.enforceNoDataAvail();
                            updateDisplayModes(_arg02);
                            reply.writeNoException();
                            return true;
                        case 3:
                            int _arg03 = data.readInt();
                            int _arg1 = data.readInt();
                            int _arg2 = data.readInt();
                            data.enforceNoDataAvail();
                            int _result = findDisplayModeIdByPolicy(_arg03, _arg1, _arg2);
                            reply.writeNoException();
                            reply.writeInt(_result);
                            return true;
                        case 4:
                            int _arg04 = data.readInt();
                            data.enforceNoDataAvail();
                            screenStateChange(_arg04);
                            reply.writeNoException();
                            return true;
                        case 5:
                            float _arg05 = data.readFloat();
                            data.enforceNoDataAvail();
                            notifyNitsChange(_arg05);
                            reply.writeNoException();
                            return true;
                        case 6:
                            float _arg06 = data.readFloat();
                            data.enforceNoDataAvail();
                            notifyBrightnessChange(_arg06);
                            reply.writeNoException();
                            return true;
                        case 7:
                            int _arg07 = data.readInt();
                            float _arg12 = data.readFloat();
                            int _arg22 = data.readInt();
                            boolean _arg3 = data.readBoolean();
                            data.enforceNoDataAvail();
                            setRefreshRatePolicy(_arg07, _arg12, _arg22, _arg3);
                            reply.writeNoException();
                            return true;
                        case 8:
                            float _arg08 = data.readFloat();
                            data.enforceNoDataAvail();
                            int _result2 = getRefreshRatePolicy(_arg08);
                            reply.writeNoException();
                            reply.writeInt(_result2);
                            return true;
                        case 9:
                            int _arg09 = data.readInt();
                            float _arg13 = data.readFloat();
                            float _arg23 = data.readFloat();
                            String _arg32 = data.readString();
                            data.enforceNoDataAvail();
                            boolean _result3 = setVsyncConfig(_arg09, _arg13, _arg23, _arg32);
                            reply.writeNoException();
                            reply.writeBoolean(_result3);
                            return true;
                        case 10:
                            int _arg010 = data.readInt();
                            data.enforceNoDataAvail();
                            int _result4 = getModeType(_arg010);
                            reply.writeNoException();
                            reply.writeInt(_result4);
                            return true;
                        case 11:
                            boolean _arg011 = data.readBoolean();
                            data.enforceNoDataAvail();
                            setLowFreqVideo(_arg011);
                            reply.writeNoException();
                            return true;
                        case 12:
                            String _arg012 = data.readString();
                            String _arg14 = data.readString();
                            data.enforceNoDataAvail();
                            float _result5 = getPreferredFrameRate(_arg012, _arg14);
                            reply.writeNoException();
                            reply.writeFloat(_result5);
                            return true;
                        case 13:
                            boolean _result6 = hasFlickerRisk();
                            reply.writeNoException();
                            reply.writeBoolean(_result6);
                            return true;
                        case 14:
                            String _arg013 = data.readString();
                            int _arg15 = data.readInt();
                            int _arg24 = data.readInt();
                            data.enforceNoDataAvail();
                            updateAccelerationPkgName(_arg013, _arg15, _arg24);
                            reply.writeNoException();
                            return true;
                        case 15:
                            Bundle _arg014 = (Bundle) data.readTypedObject(Bundle.CREATOR);
                            data.enforceNoDataAvail();
                            setTgpaGameData(_arg014);
                            reply.writeNoException();
                            return true;
                        case 16:
                            boolean _result7 = isGameAccelerationScene();
                            reply.writeNoException();
                            reply.writeBoolean(_result7);
                            return true;
                        case 17:
                            String _arg015 = data.readString();
                            data.enforceNoDataAvail();
                            boolean _result8 = isWhiteListGame(_arg015);
                            reply.writeNoException();
                            reply.writeBoolean(_result8);
                            return true;
                        case 18:
                            int _arg016 = data.readInt();
                            data.enforceNoDataAvail();
                            List<String> _result9 = getList(_arg016);
                            reply.writeNoException();
                            reply.writeStringList(_result9);
                            return true;
                        case 19:
                            float _arg017 = data.readFloat();
                            String _arg16 = data.readString();
                            String _arg25 = data.readString();
                            int _arg33 = data.readInt();
                            data.enforceNoDataAvail();
                            boolean _result10 = setFrameRate(_arg017, _arg16, _arg25, _arg33);
                            reply.writeNoException();
                            reply.writeBoolean(_result10);
                            return true;
                        case 20:
                            float _arg018 = data.readFloat();
                            String _arg17 = data.readString();
                            boolean _arg26 = data.readBoolean();
                            String _arg34 = data.readString();
                            data.enforceNoDataAvail();
                            boolean _result11 = setFrameRateTargetControl(_arg018, _arg17, _arg26, _arg34);
                            reply.writeNoException();
                            reply.writeBoolean(_result11);
                            return true;
                        case 21:
                            float _arg019 = data.readFloat();
                            String _arg18 = data.readString();
                            int _arg27 = data.readInt();
                            int _arg35 = data.readInt();
                            data.enforceNoDataAvail();
                            boolean _result12 = setDisplayFrameRateControl(_arg019, _arg18, _arg27, _arg35);
                            reply.writeNoException();
                            reply.writeBoolean(_result12);
                            return true;
                        case 22:
                            float _arg020 = data.readFloat();
                            String _arg19 = data.readString();
                            data.enforceNoDataAvail();
                            boolean _result13 = setSystemFrameRateControl(_arg020, _arg19);
                            reply.writeNoException();
                            reply.writeBoolean(_result13);
                            return true;
                        case 23:
                            int _arg021 = data.readInt();
                            data.enforceNoDataAvail();
                            screenStateChangeWarning(_arg021);
                            reply.writeNoException();
                            return true;
                        default:
                            return super.onTransact(code, data, reply, flags);
                    }
            }
        }

        private static class Proxy implements IOPlusRefreshRate {
            private IBinder mRemote;

            Proxy(IBinder remote) {
                this.mRemote = remote;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            public String getInterfaceDescriptor() {
                return IOPlusRefreshRate.DESCRIPTOR;
            }

            @Override // com.oplus.vrr.IOPlusRefreshRate
            public void setExternalRefreshRateStatus(int status) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IOPlusRefreshRate.DESCRIPTOR);
                    _data.writeInt(status);
                    this.mRemote.transact(1, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // com.oplus.vrr.IOPlusRefreshRate
            public void updateDisplayModes(long physicalDisplayId) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IOPlusRefreshRate.DESCRIPTOR);
                    _data.writeLong(physicalDisplayId);
                    this.mRemote.transact(2, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // com.oplus.vrr.IOPlusRefreshRate
            public int findDisplayModeIdByPolicy(int policy, int displayId, int baseModeId) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IOPlusRefreshRate.DESCRIPTOR);
                    _data.writeInt(policy);
                    _data.writeInt(displayId);
                    _data.writeInt(baseModeId);
                    this.mRemote.transact(3, _data, _reply, 0);
                    _reply.readException();
                    int _result = _reply.readInt();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // com.oplus.vrr.IOPlusRefreshRate
            public void screenStateChange(int state) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IOPlusRefreshRate.DESCRIPTOR);
                    _data.writeInt(state);
                    this.mRemote.transact(4, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // com.oplus.vrr.IOPlusRefreshRate
            public void notifyNitsChange(float nits) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IOPlusRefreshRate.DESCRIPTOR);
                    _data.writeFloat(nits);
                    this.mRemote.transact(5, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // com.oplus.vrr.IOPlusRefreshRate
            public void notifyBrightnessChange(float brightness) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IOPlusRefreshRate.DESCRIPTOR);
                    _data.writeFloat(brightness);
                    this.mRemote.transact(6, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // com.oplus.vrr.IOPlusRefreshRate
            public void setRefreshRatePolicy(int displayId, float rate, int policy, boolean statusOn) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IOPlusRefreshRate.DESCRIPTOR);
                    _data.writeInt(displayId);
                    _data.writeFloat(rate);
                    _data.writeInt(policy);
                    _data.writeBoolean(statusOn);
                    this.mRemote.transact(7, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // com.oplus.vrr.IOPlusRefreshRate
            public int getRefreshRatePolicy(float rate) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IOPlusRefreshRate.DESCRIPTOR);
                    _data.writeFloat(rate);
                    this.mRemote.transact(8, _data, _reply, 0);
                    _reply.readException();
                    int _result = _reply.readInt();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // com.oplus.vrr.IOPlusRefreshRate
            public boolean setVsyncConfig(int status, float appOffset, float sfOffset, String identity) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IOPlusRefreshRate.DESCRIPTOR);
                    _data.writeInt(status);
                    _data.writeFloat(appOffset);
                    _data.writeFloat(sfOffset);
                    _data.writeString(identity);
                    this.mRemote.transact(9, _data, _reply, 0);
                    _reply.readException();
                    boolean _result = _reply.readBoolean();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // com.oplus.vrr.IOPlusRefreshRate
            public int getModeType(int modeId) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IOPlusRefreshRate.DESCRIPTOR);
                    _data.writeInt(modeId);
                    this.mRemote.transact(10, _data, _reply, 0);
                    _reply.readException();
                    int _result = _reply.readInt();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // com.oplus.vrr.IOPlusRefreshRate
            public void setLowFreqVideo(boolean enable) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IOPlusRefreshRate.DESCRIPTOR);
                    _data.writeBoolean(enable);
                    this.mRemote.transact(11, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // com.oplus.vrr.IOPlusRefreshRate
            public float getPreferredFrameRate(String pkgName, String winName) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IOPlusRefreshRate.DESCRIPTOR);
                    _data.writeString(pkgName);
                    _data.writeString(winName);
                    this.mRemote.transact(12, _data, _reply, 0);
                    _reply.readException();
                    float _result = _reply.readFloat();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // com.oplus.vrr.IOPlusRefreshRate
            public boolean hasFlickerRisk() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IOPlusRefreshRate.DESCRIPTOR);
                    this.mRemote.transact(13, _data, _reply, 0);
                    _reply.readException();
                    boolean _result = _reply.readBoolean();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // com.oplus.vrr.IOPlusRefreshRate
            public void updateAccelerationPkgName(String pkgName, int targetFps, int currentFps) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IOPlusRefreshRate.DESCRIPTOR);
                    _data.writeString(pkgName);
                    _data.writeInt(targetFps);
                    _data.writeInt(currentFps);
                    this.mRemote.transact(14, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // com.oplus.vrr.IOPlusRefreshRate
            public void setTgpaGameData(Bundle bundle) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IOPlusRefreshRate.DESCRIPTOR);
                    _data.writeTypedObject(bundle, 0);
                    this.mRemote.transact(15, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // com.oplus.vrr.IOPlusRefreshRate
            public boolean isGameAccelerationScene() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IOPlusRefreshRate.DESCRIPTOR);
                    this.mRemote.transact(16, _data, _reply, 0);
                    _reply.readException();
                    boolean _result = _reply.readBoolean();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // com.oplus.vrr.IOPlusRefreshRate
            public boolean isWhiteListGame(String pkgName) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IOPlusRefreshRate.DESCRIPTOR);
                    _data.writeString(pkgName);
                    this.mRemote.transact(17, _data, _reply, 0);
                    _reply.readException();
                    boolean _result = _reply.readBoolean();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // com.oplus.vrr.IOPlusRefreshRate
            public List<String> getList(int listType) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IOPlusRefreshRate.DESCRIPTOR);
                    _data.writeInt(listType);
                    this.mRemote.transact(18, _data, _reply, 0);
                    _reply.readException();
                    List<String> _result = _reply.createStringArrayList();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // com.oplus.vrr.IOPlusRefreshRate
            public boolean setFrameRate(float frameRate, String windowTile, String pkgName, int pid) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IOPlusRefreshRate.DESCRIPTOR);
                    _data.writeFloat(frameRate);
                    _data.writeString(windowTile);
                    _data.writeString(pkgName);
                    _data.writeInt(pid);
                    this.mRemote.transact(19, _data, _reply, 0);
                    _reply.readException();
                    boolean _result = _reply.readBoolean();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // com.oplus.vrr.IOPlusRefreshRate
            public boolean setFrameRateTargetControl(float frameRate, String pkgName, boolean strictMode, String keyDescription) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IOPlusRefreshRate.DESCRIPTOR);
                    _data.writeFloat(frameRate);
                    _data.writeString(pkgName);
                    _data.writeBoolean(strictMode);
                    _data.writeString(keyDescription);
                    this.mRemote.transact(20, _data, _reply, 0);
                    _reply.readException();
                    boolean _result = _reply.readBoolean();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // com.oplus.vrr.IOPlusRefreshRate
            public boolean setDisplayFrameRateControl(float frameRate, String displayName, int layerStack, int flags) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IOPlusRefreshRate.DESCRIPTOR);
                    _data.writeFloat(frameRate);
                    _data.writeString(displayName);
                    _data.writeInt(layerStack);
                    _data.writeInt(flags);
                    this.mRemote.transact(21, _data, _reply, 0);
                    _reply.readException();
                    boolean _result = _reply.readBoolean();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // com.oplus.vrr.IOPlusRefreshRate
            public boolean setSystemFrameRateControl(float frameRate, String pkgName) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IOPlusRefreshRate.DESCRIPTOR);
                    _data.writeFloat(frameRate);
                    _data.writeString(pkgName);
                    this.mRemote.transact(22, _data, _reply, 0);
                    _reply.readException();
                    boolean _result = _reply.readBoolean();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // com.oplus.vrr.IOPlusRefreshRate
            public void screenStateChangeWarning(int state) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IOPlusRefreshRate.DESCRIPTOR);
                    _data.writeInt(state);
                    this.mRemote.transact(23, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }
        }

        @Override // android.os.Binder
        public int getMaxTransactionId() {
            return 22;
        }
    }
}

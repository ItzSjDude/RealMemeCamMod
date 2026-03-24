package com.oplus.splitscreen;

import android.app.ActivityManager;
import android.app.PendingIntent;
import android.content.Intent;
import android.hardware.HardwareBuffer;
import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import android.text.TextUtils;

/* loaded from: classes4.dex */
public interface IOplusStackDividerConnection extends IInterface {
    public static final String DESCRIPTOR = "com.oplus.splitscreen.IOplusStackDividerConnection";

    void dismissSplitScreenMode(int i) throws RemoteException;

    void exitSplitScreen(int i, int i2) throws RemoteException;

    void moveTaskAndIntentActivityToSplitScreen(ActivityManager.RunningTaskInfo runningTaskInfo, HardwareBuffer hardwareBuffer, int i, boolean z, int i2, PendingIntent pendingIntent, Intent intent, Bundle bundle, int i3) throws RemoteException;

    void moveTaskToSplitStage(int i, boolean z) throws RemoteException;

    void moveTasksToSplitStages(int i, int i2, int i3, int i4) throws RemoteException;

    void moveToSplitScreen(int i, PendingIntent pendingIntent, Intent intent, Bundle bundle, int i2) throws RemoteException;

    boolean needInterceptStartForSplitScreen(String str, String str2, boolean z) throws RemoteException;

    void setDividerShow(boolean z) throws RemoteException;

    void showNotSupportSplitWarn(CharSequence charSequence) throws RemoteException;

    void showSplitToast(int i, Bundle bundle) throws RemoteException;

    void startIntent(PendingIntent pendingIntent, Intent intent, int i, Bundle bundle) throws RemoteException;

    void startPairIntent(Intent intent, Intent intent2, int i, int i2, Bundle bundle) throws RemoteException;

    void startTask(int i, int i2, Bundle bundle) throws RemoteException;

    void toggleSplitScreen(int i) throws RemoteException;

    public static class Default implements IOplusStackDividerConnection {
        @Override // com.oplus.splitscreen.IOplusStackDividerConnection
        public void startTask(int taskId, int position, Bundle options) throws RemoteException {
        }

        @Override // com.oplus.splitscreen.IOplusStackDividerConnection
        public void dismissSplitScreenMode(int type) throws RemoteException {
        }

        @Override // com.oplus.splitscreen.IOplusStackDividerConnection
        public void startPairIntent(Intent intent1, Intent intent2, int userId1, int userId2, Bundle options) throws RemoteException {
        }

        @Override // com.oplus.splitscreen.IOplusStackDividerConnection
        public boolean needInterceptStartForSplitScreen(String calledPkg, String targetPkg, boolean needIntercept) throws RemoteException {
            return false;
        }

        @Override // com.oplus.splitscreen.IOplusStackDividerConnection
        public void moveTasksToSplitStages(int mainTaskId, int sideTaskId, int mainPosition, int dividerPosition) throws RemoteException {
        }

        @Override // com.oplus.splitscreen.IOplusStackDividerConnection
        public void moveTaskToSplitStage(int dragTaskId, boolean moveDragTasktoTopOrLeftStage) throws RemoteException {
        }

        @Override // com.oplus.splitscreen.IOplusStackDividerConnection
        public void setDividerShow(boolean show) throws RemoteException {
        }

        @Override // com.oplus.splitscreen.IOplusStackDividerConnection
        public void moveToSplitScreen(int mainTaskId, PendingIntent sidePendingIntent, Intent sideFillInIntent, Bundle options, int sidePosition) throws RemoteException {
        }

        @Override // com.oplus.splitscreen.IOplusStackDividerConnection
        public void showNotSupportSplitWarn(CharSequence lableName) throws RemoteException {
        }

        @Override // com.oplus.splitscreen.IOplusStackDividerConnection
        public void toggleSplitScreen(int type) throws RemoteException {
        }

        @Override // com.oplus.splitscreen.IOplusStackDividerConnection
        public void moveTaskAndIntentActivityToSplitScreen(ActivityManager.RunningTaskInfo sideTaskInfo, HardwareBuffer sideSnapshotBuffer, int colorSpace, boolean containsSecureLayers, int mainTaskId, PendingIntent mainPendingIntent, Intent mainFillInIntent, Bundle options, int sidePosition) throws RemoteException {
        }

        @Override // com.oplus.splitscreen.IOplusStackDividerConnection
        public void exitSplitScreen(int taskToTop, int exitReason) throws RemoteException {
        }

        @Override // com.oplus.splitscreen.IOplusStackDividerConnection
        public void startIntent(PendingIntent pendingIntent, Intent fillInIntent, int position, Bundle options) throws RemoteException {
        }

        @Override // com.oplus.splitscreen.IOplusStackDividerConnection
        public void showSplitToast(int type, Bundle params) throws RemoteException {
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }
    }

    public static abstract class Stub extends Binder implements IOplusStackDividerConnection {
        static final int TRANSACTION_dismissSplitScreenMode = 2;
        static final int TRANSACTION_exitSplitScreen = 12;
        static final int TRANSACTION_moveTaskAndIntentActivityToSplitScreen = 11;
        static final int TRANSACTION_moveTaskToSplitStage = 6;
        static final int TRANSACTION_moveTasksToSplitStages = 5;
        static final int TRANSACTION_moveToSplitScreen = 8;
        static final int TRANSACTION_needInterceptStartForSplitScreen = 4;
        static final int TRANSACTION_setDividerShow = 7;
        static final int TRANSACTION_showNotSupportSplitWarn = 9;
        static final int TRANSACTION_showSplitToast = 14;
        static final int TRANSACTION_startIntent = 13;
        static final int TRANSACTION_startPairIntent = 3;
        static final int TRANSACTION_startTask = 1;
        static final int TRANSACTION_toggleSplitScreen = 10;

        public Stub() {
            attachInterface(this, IOplusStackDividerConnection.DESCRIPTOR);
        }

        public static IOplusStackDividerConnection asInterface(IBinder obj) {
            if (obj == null) {
                return null;
            }
            IInterface iin = obj.queryLocalInterface(IOplusStackDividerConnection.DESCRIPTOR);
            if (iin != null && (iin instanceof IOplusStackDividerConnection)) {
                return (IOplusStackDividerConnection) iin;
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
                    return "startTask";
                case 2:
                    return "dismissSplitScreenMode";
                case 3:
                    return "startPairIntent";
                case 4:
                    return "needInterceptStartForSplitScreen";
                case 5:
                    return "moveTasksToSplitStages";
                case 6:
                    return "moveTaskToSplitStage";
                case 7:
                    return "setDividerShow";
                case 8:
                    return "moveToSplitScreen";
                case 9:
                    return "showNotSupportSplitWarn";
                case 10:
                    return "toggleSplitScreen";
                case 11:
                    return "moveTaskAndIntentActivityToSplitScreen";
                case 12:
                    return "exitSplitScreen";
                case 13:
                    return "startIntent";
                case 14:
                    return "showSplitToast";
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
                data.enforceInterface(IOplusStackDividerConnection.DESCRIPTOR);
            }
            switch (code) {
                case IBinder.INTERFACE_TRANSACTION /* 1598968902 */:
                    reply.writeString(IOplusStackDividerConnection.DESCRIPTOR);
                    return true;
                default:
                    switch (code) {
                        case 1:
                            int _arg0 = data.readInt();
                            int _arg1 = data.readInt();
                            Bundle _arg2 = (Bundle) data.readTypedObject(Bundle.CREATOR);
                            data.enforceNoDataAvail();
                            startTask(_arg0, _arg1, _arg2);
                            reply.writeNoException();
                            return true;
                        case 2:
                            int _arg02 = data.readInt();
                            data.enforceNoDataAvail();
                            dismissSplitScreenMode(_arg02);
                            reply.writeNoException();
                            return true;
                        case 3:
                            Intent _arg03 = (Intent) data.readTypedObject(Intent.CREATOR);
                            Intent _arg12 = (Intent) data.readTypedObject(Intent.CREATOR);
                            int _arg22 = data.readInt();
                            int _arg3 = data.readInt();
                            Bundle _arg4 = (Bundle) data.readTypedObject(Bundle.CREATOR);
                            data.enforceNoDataAvail();
                            startPairIntent(_arg03, _arg12, _arg22, _arg3, _arg4);
                            reply.writeNoException();
                            return true;
                        case 4:
                            String _arg04 = data.readString();
                            String _arg13 = data.readString();
                            boolean _arg23 = data.readBoolean();
                            data.enforceNoDataAvail();
                            boolean _result = needInterceptStartForSplitScreen(_arg04, _arg13, _arg23);
                            reply.writeNoException();
                            reply.writeBoolean(_result);
                            return true;
                        case 5:
                            int _arg05 = data.readInt();
                            int _arg14 = data.readInt();
                            int _arg24 = data.readInt();
                            int _arg32 = data.readInt();
                            data.enforceNoDataAvail();
                            moveTasksToSplitStages(_arg05, _arg14, _arg24, _arg32);
                            reply.writeNoException();
                            return true;
                        case 6:
                            int _arg06 = data.readInt();
                            boolean _arg15 = data.readBoolean();
                            data.enforceNoDataAvail();
                            moveTaskToSplitStage(_arg06, _arg15);
                            reply.writeNoException();
                            return true;
                        case 7:
                            boolean _arg07 = data.readBoolean();
                            data.enforceNoDataAvail();
                            setDividerShow(_arg07);
                            reply.writeNoException();
                            return true;
                        case 8:
                            int _arg08 = data.readInt();
                            PendingIntent _arg16 = (PendingIntent) data.readTypedObject(PendingIntent.CREATOR);
                            Intent _arg25 = (Intent) data.readTypedObject(Intent.CREATOR);
                            Bundle _arg33 = (Bundle) data.readTypedObject(Bundle.CREATOR);
                            int _arg42 = data.readInt();
                            data.enforceNoDataAvail();
                            moveToSplitScreen(_arg08, _arg16, _arg25, _arg33, _arg42);
                            reply.writeNoException();
                            return true;
                        case 9:
                            CharSequence _arg09 = (CharSequence) data.readTypedObject(TextUtils.CHAR_SEQUENCE_CREATOR);
                            data.enforceNoDataAvail();
                            showNotSupportSplitWarn(_arg09);
                            reply.writeNoException();
                            return true;
                        case 10:
                            int _arg010 = data.readInt();
                            data.enforceNoDataAvail();
                            toggleSplitScreen(_arg010);
                            reply.writeNoException();
                            return true;
                        case 11:
                            ActivityManager.RunningTaskInfo _arg011 = (ActivityManager.RunningTaskInfo) data.readTypedObject(ActivityManager.RunningTaskInfo.CREATOR);
                            HardwareBuffer _arg17 = (HardwareBuffer) data.readTypedObject(HardwareBuffer.CREATOR);
                            int _arg26 = data.readInt();
                            boolean _arg34 = data.readBoolean();
                            int _arg43 = data.readInt();
                            PendingIntent _arg5 = (PendingIntent) data.readTypedObject(PendingIntent.CREATOR);
                            Intent _arg6 = (Intent) data.readTypedObject(Intent.CREATOR);
                            Bundle _arg7 = (Bundle) data.readTypedObject(Bundle.CREATOR);
                            int _arg8 = data.readInt();
                            data.enforceNoDataAvail();
                            moveTaskAndIntentActivityToSplitScreen(_arg011, _arg17, _arg26, _arg34, _arg43, _arg5, _arg6, _arg7, _arg8);
                            reply.writeNoException();
                            return true;
                        case 12:
                            int _arg012 = data.readInt();
                            int _arg18 = data.readInt();
                            data.enforceNoDataAvail();
                            exitSplitScreen(_arg012, _arg18);
                            reply.writeNoException();
                            return true;
                        case 13:
                            PendingIntent _arg013 = (PendingIntent) data.readTypedObject(PendingIntent.CREATOR);
                            Intent _arg19 = (Intent) data.readTypedObject(Intent.CREATOR);
                            int _arg27 = data.readInt();
                            Bundle _arg35 = (Bundle) data.readTypedObject(Bundle.CREATOR);
                            data.enforceNoDataAvail();
                            startIntent(_arg013, _arg19, _arg27, _arg35);
                            reply.writeNoException();
                            return true;
                        case 14:
                            int _arg014 = data.readInt();
                            Bundle _arg110 = (Bundle) data.readTypedObject(Bundle.CREATOR);
                            data.enforceNoDataAvail();
                            showSplitToast(_arg014, _arg110);
                            return true;
                        default:
                            return super.onTransact(code, data, reply, flags);
                    }
            }
        }

        private static class Proxy implements IOplusStackDividerConnection {
            private IBinder mRemote;

            Proxy(IBinder remote) {
                this.mRemote = remote;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            public String getInterfaceDescriptor() {
                return IOplusStackDividerConnection.DESCRIPTOR;
            }

            @Override // com.oplus.splitscreen.IOplusStackDividerConnection
            public void startTask(int taskId, int position, Bundle options) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IOplusStackDividerConnection.DESCRIPTOR);
                    _data.writeInt(taskId);
                    _data.writeInt(position);
                    _data.writeTypedObject(options, 0);
                    this.mRemote.transact(1, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // com.oplus.splitscreen.IOplusStackDividerConnection
            public void dismissSplitScreenMode(int type) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IOplusStackDividerConnection.DESCRIPTOR);
                    _data.writeInt(type);
                    this.mRemote.transact(2, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // com.oplus.splitscreen.IOplusStackDividerConnection
            public void startPairIntent(Intent intent1, Intent intent2, int userId1, int userId2, Bundle options) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IOplusStackDividerConnection.DESCRIPTOR);
                    _data.writeTypedObject(intent1, 0);
                    _data.writeTypedObject(intent2, 0);
                    _data.writeInt(userId1);
                    _data.writeInt(userId2);
                    _data.writeTypedObject(options, 0);
                    this.mRemote.transact(3, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // com.oplus.splitscreen.IOplusStackDividerConnection
            public boolean needInterceptStartForSplitScreen(String calledPkg, String targetPkg, boolean needIntercept) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IOplusStackDividerConnection.DESCRIPTOR);
                    _data.writeString(calledPkg);
                    _data.writeString(targetPkg);
                    _data.writeBoolean(needIntercept);
                    this.mRemote.transact(4, _data, _reply, 0);
                    _reply.readException();
                    boolean _result = _reply.readBoolean();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // com.oplus.splitscreen.IOplusStackDividerConnection
            public void moveTasksToSplitStages(int mainTaskId, int sideTaskId, int mainPosition, int dividerPosition) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IOplusStackDividerConnection.DESCRIPTOR);
                    _data.writeInt(mainTaskId);
                    _data.writeInt(sideTaskId);
                    _data.writeInt(mainPosition);
                    _data.writeInt(dividerPosition);
                    this.mRemote.transact(5, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // com.oplus.splitscreen.IOplusStackDividerConnection
            public void moveTaskToSplitStage(int dragTaskId, boolean moveDragTasktoTopOrLeftStage) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IOplusStackDividerConnection.DESCRIPTOR);
                    _data.writeInt(dragTaskId);
                    _data.writeBoolean(moveDragTasktoTopOrLeftStage);
                    this.mRemote.transact(6, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // com.oplus.splitscreen.IOplusStackDividerConnection
            public void setDividerShow(boolean show) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IOplusStackDividerConnection.DESCRIPTOR);
                    _data.writeBoolean(show);
                    this.mRemote.transact(7, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // com.oplus.splitscreen.IOplusStackDividerConnection
            public void moveToSplitScreen(int mainTaskId, PendingIntent sidePendingIntent, Intent sideFillInIntent, Bundle options, int sidePosition) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IOplusStackDividerConnection.DESCRIPTOR);
                    _data.writeInt(mainTaskId);
                    _data.writeTypedObject(sidePendingIntent, 0);
                    _data.writeTypedObject(sideFillInIntent, 0);
                    _data.writeTypedObject(options, 0);
                    _data.writeInt(sidePosition);
                    this.mRemote.transact(8, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // com.oplus.splitscreen.IOplusStackDividerConnection
            public void showNotSupportSplitWarn(CharSequence lableName) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IOplusStackDividerConnection.DESCRIPTOR);
                    if (lableName != null) {
                        _data.writeInt(1);
                        TextUtils.writeToParcel(lableName, _data, 0);
                    } else {
                        _data.writeInt(0);
                    }
                    this.mRemote.transact(9, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // com.oplus.splitscreen.IOplusStackDividerConnection
            public void toggleSplitScreen(int type) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IOplusStackDividerConnection.DESCRIPTOR);
                    _data.writeInt(type);
                    this.mRemote.transact(10, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // com.oplus.splitscreen.IOplusStackDividerConnection
            public void moveTaskAndIntentActivityToSplitScreen(ActivityManager.RunningTaskInfo sideTaskInfo, HardwareBuffer sideSnapshotBuffer, int colorSpace, boolean containsSecureLayers, int mainTaskId, PendingIntent mainPendingIntent, Intent mainFillInIntent, Bundle options, int sidePosition) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IOplusStackDividerConnection.DESCRIPTOR);
                    _data.writeTypedObject(sideTaskInfo, 0);
                    _data.writeTypedObject(sideSnapshotBuffer, 0);
                    _data.writeInt(colorSpace);
                    _data.writeBoolean(containsSecureLayers);
                    _data.writeInt(mainTaskId);
                    _data.writeTypedObject(mainPendingIntent, 0);
                    _data.writeTypedObject(mainFillInIntent, 0);
                    _data.writeTypedObject(options, 0);
                    _data.writeInt(sidePosition);
                    this.mRemote.transact(11, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // com.oplus.splitscreen.IOplusStackDividerConnection
            public void exitSplitScreen(int taskToTop, int exitReason) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IOplusStackDividerConnection.DESCRIPTOR);
                    _data.writeInt(taskToTop);
                    _data.writeInt(exitReason);
                    this.mRemote.transact(12, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // com.oplus.splitscreen.IOplusStackDividerConnection
            public void startIntent(PendingIntent pendingIntent, Intent fillInIntent, int position, Bundle options) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IOplusStackDividerConnection.DESCRIPTOR);
                    _data.writeTypedObject(pendingIntent, 0);
                    _data.writeTypedObject(fillInIntent, 0);
                    _data.writeInt(position);
                    _data.writeTypedObject(options, 0);
                    this.mRemote.transact(13, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // com.oplus.splitscreen.IOplusStackDividerConnection
            public void showSplitToast(int type, Bundle params) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IOplusStackDividerConnection.DESCRIPTOR);
                    _data.writeInt(type);
                    _data.writeTypedObject(params, 0);
                    this.mRemote.transact(14, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }
        }

        @Override // android.os.Binder
        public int getMaxTransactionId() {
            return 13;
        }
    }
}

package com.oplus.splitscreen;

import android.graphics.Rect;
import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import android.view.RemoteAnimationDefinition;
import com.oplus.app.SplitScreenParams;
import com.oplus.splitscreen.IOplusStackDividerConnection;
import java.util.List;

/* loaded from: classes4.dex */
public interface IOplusSplitScreenSession extends IInterface {
    public static final String DESCRIPTOR = "com.oplus.splitscreen.IOplusSplitScreenSession";

    List<String> getRecentUsedApp(int i, long j, boolean z, List<String> list) throws RemoteException;

    void maintainSplitToZoomTaskState(int i, boolean z) throws RemoteException;

    boolean moveChildrenTaskToBack(int i) throws RemoteException;

    void notifyFoldUpdatingComplete() throws RemoteException;

    void notifySplitRootTaskId(int i, int i2, int i3) throws RemoteException;

    void registerActivityMultiWindowAllowanceObserver(IBinder iBinder, IBinder iBinder2) throws RemoteException;

    void registerStackDivider(IOplusStackDividerConnection iOplusStackDividerConnection) throws RemoteException;

    void removeSelfSplitTaskIfNeed(int i, int i2) throws RemoteException;

    boolean requestSwitchToFullScreen(IBinder iBinder) throws RemoteException;

    boolean requestSwitchToSplitScreen(IBinder iBinder, SplitScreenParams splitScreenParams) throws RemoteException;

    void setOverrideRemoteAnimations(RemoteAnimationDefinition remoteAnimationDefinition) throws RemoteException;

    void setSplitControlBarRegion(Rect rect, boolean z) throws RemoteException;

    void setSplitRequestedOrientation(int i) throws RemoteException;

    void setSplitRootTaskAlwaysOnTop(boolean z) throws RemoteException;

    void setSplitTasksState(int i, int i2, boolean z) throws RemoteException;

    void setWallpaperVisible(boolean z) throws RemoteException;

    void startZoomWindowFromSplit(int i, Rect rect, float f) throws RemoteException;

    void unregisterActivityMultiWindowAllowanceObserver(IBinder iBinder, IBinder iBinder2) throws RemoteException;

    public static class Default implements IOplusSplitScreenSession {
        @Override // com.oplus.splitscreen.IOplusSplitScreenSession
        public void registerStackDivider(IOplusStackDividerConnection conn) throws RemoteException {
        }

        @Override // com.oplus.splitscreen.IOplusSplitScreenSession
        public void setSplitControlBarRegion(Rect region, boolean isPrimary) throws RemoteException {
        }

        @Override // com.oplus.splitscreen.IOplusSplitScreenSession
        public void notifySplitRootTaskId(int root, int primary, int secondary) throws RemoteException {
        }

        @Override // com.oplus.splitscreen.IOplusSplitScreenSession
        public void startZoomWindowFromSplit(int taskId, Rect bounds, float scale) throws RemoteException {
        }

        @Override // com.oplus.splitscreen.IOplusSplitScreenSession
        public void setWallpaperVisible(boolean show) throws RemoteException {
        }

        @Override // com.oplus.splitscreen.IOplusSplitScreenSession
        public void setSplitRootTaskAlwaysOnTop(boolean onTop) throws RemoteException {
        }

        @Override // com.oplus.splitscreen.IOplusSplitScreenSession
        public boolean moveChildrenTaskToBack(int rootTaskId) throws RemoteException {
            return false;
        }

        @Override // com.oplus.splitscreen.IOplusSplitScreenSession
        public List<String> getRecentUsedApp(int maxNum, long period, boolean supportSplitScreen, List<String> exclude) throws RemoteException {
            return null;
        }

        @Override // com.oplus.splitscreen.IOplusSplitScreenSession
        public void setSplitRequestedOrientation(int requestedOrientation) throws RemoteException {
        }

        @Override // com.oplus.splitscreen.IOplusSplitScreenSession
        public void maintainSplitToZoomTaskState(int taskId, boolean maintain) throws RemoteException {
        }

        @Override // com.oplus.splitscreen.IOplusSplitScreenSession
        public boolean requestSwitchToSplitScreen(IBinder activityToken, SplitScreenParams params) throws RemoteException {
            return false;
        }

        @Override // com.oplus.splitscreen.IOplusSplitScreenSession
        public boolean requestSwitchToFullScreen(IBinder activityToken) throws RemoteException {
            return false;
        }

        @Override // com.oplus.splitscreen.IOplusSplitScreenSession
        public void registerActivityMultiWindowAllowanceObserver(IBinder activityToken, IBinder observer) throws RemoteException {
        }

        @Override // com.oplus.splitscreen.IOplusSplitScreenSession
        public void unregisterActivityMultiWindowAllowanceObserver(IBinder activityToken, IBinder observer) throws RemoteException {
        }

        @Override // com.oplus.splitscreen.IOplusSplitScreenSession
        public void removeSelfSplitTaskIfNeed(int toTopTaskId, int toBottomTaskId) throws RemoteException {
        }

        @Override // com.oplus.splitscreen.IOplusSplitScreenSession
        public void setOverrideRemoteAnimations(RemoteAnimationDefinition definition) throws RemoteException {
        }

        @Override // com.oplus.splitscreen.IOplusSplitScreenSession
        public void notifyFoldUpdatingComplete() throws RemoteException {
        }

        @Override // com.oplus.splitscreen.IOplusSplitScreenSession
        public void setSplitTasksState(int taskIdf, int taskIds, boolean addSplitPair) throws RemoteException {
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }
    }

    public static abstract class Stub extends Binder implements IOplusSplitScreenSession {
        static final int TRANSACTION_getRecentUsedApp = 8;
        static final int TRANSACTION_maintainSplitToZoomTaskState = 10;
        static final int TRANSACTION_moveChildrenTaskToBack = 7;
        static final int TRANSACTION_notifyFoldUpdatingComplete = 17;
        static final int TRANSACTION_notifySplitRootTaskId = 3;
        static final int TRANSACTION_registerActivityMultiWindowAllowanceObserver = 13;
        static final int TRANSACTION_registerStackDivider = 1;
        static final int TRANSACTION_removeSelfSplitTaskIfNeed = 15;
        static final int TRANSACTION_requestSwitchToFullScreen = 12;
        static final int TRANSACTION_requestSwitchToSplitScreen = 11;
        static final int TRANSACTION_setOverrideRemoteAnimations = 16;
        static final int TRANSACTION_setSplitControlBarRegion = 2;
        static final int TRANSACTION_setSplitRequestedOrientation = 9;
        static final int TRANSACTION_setSplitRootTaskAlwaysOnTop = 6;
        static final int TRANSACTION_setSplitTasksState = 18;
        static final int TRANSACTION_setWallpaperVisible = 5;
        static final int TRANSACTION_startZoomWindowFromSplit = 4;
        static final int TRANSACTION_unregisterActivityMultiWindowAllowanceObserver = 14;

        public Stub() {
            attachInterface(this, IOplusSplitScreenSession.DESCRIPTOR);
        }

        public static IOplusSplitScreenSession asInterface(IBinder obj) {
            if (obj == null) {
                return null;
            }
            IInterface iin = obj.queryLocalInterface(IOplusSplitScreenSession.DESCRIPTOR);
            if (iin != null && (iin instanceof IOplusSplitScreenSession)) {
                return (IOplusSplitScreenSession) iin;
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
                    return "registerStackDivider";
                case 2:
                    return "setSplitControlBarRegion";
                case 3:
                    return "notifySplitRootTaskId";
                case 4:
                    return "startZoomWindowFromSplit";
                case 5:
                    return "setWallpaperVisible";
                case 6:
                    return "setSplitRootTaskAlwaysOnTop";
                case 7:
                    return "moveChildrenTaskToBack";
                case 8:
                    return "getRecentUsedApp";
                case 9:
                    return "setSplitRequestedOrientation";
                case 10:
                    return "maintainSplitToZoomTaskState";
                case 11:
                    return "requestSwitchToSplitScreen";
                case 12:
                    return "requestSwitchToFullScreen";
                case 13:
                    return "registerActivityMultiWindowAllowanceObserver";
                case 14:
                    return "unregisterActivityMultiWindowAllowanceObserver";
                case 15:
                    return "removeSelfSplitTaskIfNeed";
                case 16:
                    return "setOverrideRemoteAnimations";
                case 17:
                    return "notifyFoldUpdatingComplete";
                case 18:
                    return "setSplitTasksState";
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
                data.enforceInterface(IOplusSplitScreenSession.DESCRIPTOR);
            }
            switch (code) {
                case IBinder.INTERFACE_TRANSACTION /* 1598968902 */:
                    reply.writeString(IOplusSplitScreenSession.DESCRIPTOR);
                    return true;
                default:
                    switch (code) {
                        case 1:
                            IOplusStackDividerConnection _arg0 = IOplusStackDividerConnection.Stub.asInterface(data.readStrongBinder());
                            data.enforceNoDataAvail();
                            registerStackDivider(_arg0);
                            reply.writeNoException();
                            return true;
                        case 2:
                            Rect _arg02 = (Rect) data.readTypedObject(Rect.CREATOR);
                            boolean _arg1 = data.readBoolean();
                            data.enforceNoDataAvail();
                            setSplitControlBarRegion(_arg02, _arg1);
                            reply.writeNoException();
                            return true;
                        case 3:
                            int _arg03 = data.readInt();
                            int _arg12 = data.readInt();
                            int _arg2 = data.readInt();
                            data.enforceNoDataAvail();
                            notifySplitRootTaskId(_arg03, _arg12, _arg2);
                            reply.writeNoException();
                            return true;
                        case 4:
                            int _arg04 = data.readInt();
                            Rect _arg13 = (Rect) data.readTypedObject(Rect.CREATOR);
                            float _arg22 = data.readFloat();
                            data.enforceNoDataAvail();
                            startZoomWindowFromSplit(_arg04, _arg13, _arg22);
                            reply.writeNoException();
                            return true;
                        case 5:
                            boolean _arg05 = data.readBoolean();
                            data.enforceNoDataAvail();
                            setWallpaperVisible(_arg05);
                            reply.writeNoException();
                            return true;
                        case 6:
                            boolean _arg06 = data.readBoolean();
                            data.enforceNoDataAvail();
                            setSplitRootTaskAlwaysOnTop(_arg06);
                            reply.writeNoException();
                            return true;
                        case 7:
                            int _arg07 = data.readInt();
                            data.enforceNoDataAvail();
                            boolean _result = moveChildrenTaskToBack(_arg07);
                            reply.writeNoException();
                            reply.writeBoolean(_result);
                            return true;
                        case 8:
                            int _arg08 = data.readInt();
                            long _arg14 = data.readLong();
                            boolean _arg23 = data.readBoolean();
                            List<String> _arg3 = data.createStringArrayList();
                            data.enforceNoDataAvail();
                            List<String> _result2 = getRecentUsedApp(_arg08, _arg14, _arg23, _arg3);
                            reply.writeNoException();
                            reply.writeStringList(_result2);
                            return true;
                        case 9:
                            int _arg09 = data.readInt();
                            data.enforceNoDataAvail();
                            setSplitRequestedOrientation(_arg09);
                            reply.writeNoException();
                            return true;
                        case 10:
                            int _arg010 = data.readInt();
                            boolean _arg15 = data.readBoolean();
                            data.enforceNoDataAvail();
                            maintainSplitToZoomTaskState(_arg010, _arg15);
                            reply.writeNoException();
                            return true;
                        case 11:
                            IBinder _arg011 = data.readStrongBinder();
                            SplitScreenParams _arg16 = (SplitScreenParams) data.readTypedObject(SplitScreenParams.CREATOR);
                            data.enforceNoDataAvail();
                            boolean _result3 = requestSwitchToSplitScreen(_arg011, _arg16);
                            reply.writeNoException();
                            reply.writeBoolean(_result3);
                            return true;
                        case 12:
                            IBinder _arg012 = data.readStrongBinder();
                            data.enforceNoDataAvail();
                            boolean _result4 = requestSwitchToFullScreen(_arg012);
                            reply.writeNoException();
                            reply.writeBoolean(_result4);
                            return true;
                        case 13:
                            IBinder _arg013 = data.readStrongBinder();
                            IBinder _arg17 = data.readStrongBinder();
                            data.enforceNoDataAvail();
                            registerActivityMultiWindowAllowanceObserver(_arg013, _arg17);
                            reply.writeNoException();
                            return true;
                        case 14:
                            IBinder _arg014 = data.readStrongBinder();
                            IBinder _arg18 = data.readStrongBinder();
                            data.enforceNoDataAvail();
                            unregisterActivityMultiWindowAllowanceObserver(_arg014, _arg18);
                            reply.writeNoException();
                            return true;
                        case 15:
                            int _arg015 = data.readInt();
                            int _arg19 = data.readInt();
                            data.enforceNoDataAvail();
                            removeSelfSplitTaskIfNeed(_arg015, _arg19);
                            reply.writeNoException();
                            return true;
                        case 16:
                            RemoteAnimationDefinition _arg016 = (RemoteAnimationDefinition) data.readTypedObject(RemoteAnimationDefinition.CREATOR);
                            data.enforceNoDataAvail();
                            setOverrideRemoteAnimations(_arg016);
                            reply.writeNoException();
                            return true;
                        case 17:
                            notifyFoldUpdatingComplete();
                            return true;
                        case 18:
                            int _arg017 = data.readInt();
                            int _arg110 = data.readInt();
                            boolean _arg24 = data.readBoolean();
                            data.enforceNoDataAvail();
                            setSplitTasksState(_arg017, _arg110, _arg24);
                            reply.writeNoException();
                            return true;
                        default:
                            return super.onTransact(code, data, reply, flags);
                    }
            }
        }

        private static class Proxy implements IOplusSplitScreenSession {
            private IBinder mRemote;

            Proxy(IBinder remote) {
                this.mRemote = remote;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            public String getInterfaceDescriptor() {
                return IOplusSplitScreenSession.DESCRIPTOR;
            }

            @Override // com.oplus.splitscreen.IOplusSplitScreenSession
            public void registerStackDivider(IOplusStackDividerConnection conn) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IOplusSplitScreenSession.DESCRIPTOR);
                    _data.writeStrongInterface(conn);
                    this.mRemote.transact(1, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // com.oplus.splitscreen.IOplusSplitScreenSession
            public void setSplitControlBarRegion(Rect region, boolean isPrimary) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IOplusSplitScreenSession.DESCRIPTOR);
                    _data.writeTypedObject(region, 0);
                    _data.writeBoolean(isPrimary);
                    this.mRemote.transact(2, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // com.oplus.splitscreen.IOplusSplitScreenSession
            public void notifySplitRootTaskId(int root, int primary, int secondary) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IOplusSplitScreenSession.DESCRIPTOR);
                    _data.writeInt(root);
                    _data.writeInt(primary);
                    _data.writeInt(secondary);
                    this.mRemote.transact(3, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // com.oplus.splitscreen.IOplusSplitScreenSession
            public void startZoomWindowFromSplit(int taskId, Rect bounds, float scale) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IOplusSplitScreenSession.DESCRIPTOR);
                    _data.writeInt(taskId);
                    _data.writeTypedObject(bounds, 0);
                    _data.writeFloat(scale);
                    this.mRemote.transact(4, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // com.oplus.splitscreen.IOplusSplitScreenSession
            public void setWallpaperVisible(boolean show) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IOplusSplitScreenSession.DESCRIPTOR);
                    _data.writeBoolean(show);
                    this.mRemote.transact(5, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // com.oplus.splitscreen.IOplusSplitScreenSession
            public void setSplitRootTaskAlwaysOnTop(boolean onTop) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IOplusSplitScreenSession.DESCRIPTOR);
                    _data.writeBoolean(onTop);
                    this.mRemote.transact(6, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // com.oplus.splitscreen.IOplusSplitScreenSession
            public boolean moveChildrenTaskToBack(int rootTaskId) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IOplusSplitScreenSession.DESCRIPTOR);
                    _data.writeInt(rootTaskId);
                    this.mRemote.transact(7, _data, _reply, 0);
                    _reply.readException();
                    boolean _result = _reply.readBoolean();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // com.oplus.splitscreen.IOplusSplitScreenSession
            public List<String> getRecentUsedApp(int maxNum, long period, boolean supportSplitScreen, List<String> exclude) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IOplusSplitScreenSession.DESCRIPTOR);
                    _data.writeInt(maxNum);
                    _data.writeLong(period);
                    _data.writeBoolean(supportSplitScreen);
                    _data.writeStringList(exclude);
                    this.mRemote.transact(8, _data, _reply, 0);
                    _reply.readException();
                    List<String> _result = _reply.createStringArrayList();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // com.oplus.splitscreen.IOplusSplitScreenSession
            public void setSplitRequestedOrientation(int requestedOrientation) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IOplusSplitScreenSession.DESCRIPTOR);
                    _data.writeInt(requestedOrientation);
                    this.mRemote.transact(9, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // com.oplus.splitscreen.IOplusSplitScreenSession
            public void maintainSplitToZoomTaskState(int taskId, boolean maintain) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IOplusSplitScreenSession.DESCRIPTOR);
                    _data.writeInt(taskId);
                    _data.writeBoolean(maintain);
                    this.mRemote.transact(10, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // com.oplus.splitscreen.IOplusSplitScreenSession
            public boolean requestSwitchToSplitScreen(IBinder activityToken, SplitScreenParams params) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IOplusSplitScreenSession.DESCRIPTOR);
                    _data.writeStrongBinder(activityToken);
                    _data.writeTypedObject(params, 0);
                    this.mRemote.transact(11, _data, _reply, 0);
                    _reply.readException();
                    boolean _result = _reply.readBoolean();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // com.oplus.splitscreen.IOplusSplitScreenSession
            public boolean requestSwitchToFullScreen(IBinder activityToken) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IOplusSplitScreenSession.DESCRIPTOR);
                    _data.writeStrongBinder(activityToken);
                    this.mRemote.transact(12, _data, _reply, 0);
                    _reply.readException();
                    boolean _result = _reply.readBoolean();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // com.oplus.splitscreen.IOplusSplitScreenSession
            public void registerActivityMultiWindowAllowanceObserver(IBinder activityToken, IBinder observer) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IOplusSplitScreenSession.DESCRIPTOR);
                    _data.writeStrongBinder(activityToken);
                    _data.writeStrongBinder(observer);
                    this.mRemote.transact(13, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // com.oplus.splitscreen.IOplusSplitScreenSession
            public void unregisterActivityMultiWindowAllowanceObserver(IBinder activityToken, IBinder observer) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IOplusSplitScreenSession.DESCRIPTOR);
                    _data.writeStrongBinder(activityToken);
                    _data.writeStrongBinder(observer);
                    this.mRemote.transact(14, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // com.oplus.splitscreen.IOplusSplitScreenSession
            public void removeSelfSplitTaskIfNeed(int toTopTaskId, int toBottomTaskId) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IOplusSplitScreenSession.DESCRIPTOR);
                    _data.writeInt(toTopTaskId);
                    _data.writeInt(toBottomTaskId);
                    this.mRemote.transact(15, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // com.oplus.splitscreen.IOplusSplitScreenSession
            public void setOverrideRemoteAnimations(RemoteAnimationDefinition definition) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IOplusSplitScreenSession.DESCRIPTOR);
                    _data.writeTypedObject(definition, 0);
                    this.mRemote.transact(16, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // com.oplus.splitscreen.IOplusSplitScreenSession
            public void notifyFoldUpdatingComplete() throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IOplusSplitScreenSession.DESCRIPTOR);
                    this.mRemote.transact(17, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // com.oplus.splitscreen.IOplusSplitScreenSession
            public void setSplitTasksState(int taskIdf, int taskIds, boolean addSplitPair) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IOplusSplitScreenSession.DESCRIPTOR);
                    _data.writeInt(taskIdf);
                    _data.writeInt(taskIds);
                    _data.writeBoolean(addSplitPair);
                    this.mRemote.transact(18, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }
        }

        @Override // android.os.Binder
        public int getMaxTransactionId() {
            return 17;
        }
    }
}

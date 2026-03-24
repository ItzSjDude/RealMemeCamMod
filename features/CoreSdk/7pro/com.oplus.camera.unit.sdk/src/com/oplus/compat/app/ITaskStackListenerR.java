package com.oplus.compat.app;

import android.app.ActivityManager;
import android.content.ComponentName;
import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes.dex */
public interface ITaskStackListenerR extends IInterface {
    public static final int FORCED_RESIZEABLE_REASON_SECONDARY_DISPLAY = 2;
    public static final int FORCED_RESIZEABLE_REASON_SPLIT_SCREEN = 1;

    /* loaded from: classes.dex */
    public static class Default implements ITaskStackListenerR {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // com.oplus.compat.app.ITaskStackListenerR
        public void onActivityDismissingDockedStack() throws RemoteException {
        }

        @Override // com.oplus.compat.app.ITaskStackListenerR
        public void onActivityForcedResizable(String str, int i, int i2) throws RemoteException {
        }

        @Override // com.oplus.compat.app.ITaskStackListenerR
        public void onActivityLaunchOnSecondaryDisplayFailed(ActivityManager.RunningTaskInfo runningTaskInfo, int i) throws RemoteException {
        }

        @Override // com.oplus.compat.app.ITaskStackListenerR
        public void onActivityLaunchOnSecondaryDisplayRerouted(ActivityManager.RunningTaskInfo runningTaskInfo, int i) throws RemoteException {
        }

        @Override // com.oplus.compat.app.ITaskStackListenerR
        public void onActivityPinned(String str, int i, int i2, int i3) throws RemoteException {
        }

        @Override // com.oplus.compat.app.ITaskStackListenerR
        public void onActivityRequestedOrientationChanged(int i, int i2) throws RemoteException {
        }

        @Override // com.oplus.compat.app.ITaskStackListenerR
        public void onActivityRestartAttempt(ActivityManager.RunningTaskInfo runningTaskInfo, boolean z, boolean z2, boolean z3) throws RemoteException {
        }

        @Override // com.oplus.compat.app.ITaskStackListenerR
        public void onActivityRotation(int i) throws RemoteException {
        }

        @Override // com.oplus.compat.app.ITaskStackListenerR
        public void onActivityUnpinned() throws RemoteException {
        }

        @Override // com.oplus.compat.app.ITaskStackListenerR
        public void onBackPressedOnTaskRoot(ActivityManager.RunningTaskInfo runningTaskInfo) throws RemoteException {
        }

        @Override // com.oplus.compat.app.ITaskStackListenerR
        public void onRecentTaskListFrozenChanged(boolean z) throws RemoteException {
        }

        @Override // com.oplus.compat.app.ITaskStackListenerR
        public void onRecentTaskListUpdated() throws RemoteException {
        }

        @Override // com.oplus.compat.app.ITaskStackListenerR
        public void onSingleTaskDisplayDrawn(int i) throws RemoteException {
        }

        @Override // com.oplus.compat.app.ITaskStackListenerR
        public void onSingleTaskDisplayEmpty(int i) throws RemoteException {
        }

        @Override // com.oplus.compat.app.ITaskStackListenerR
        public void onSizeCompatModeActivityChanged(int i, IBinder iBinder) throws RemoteException {
        }

        @Override // com.oplus.compat.app.ITaskStackListenerR
        public void onTaskCreated(int i, ComponentName componentName) throws RemoteException {
        }

        @Override // com.oplus.compat.app.ITaskStackListenerR
        public void onTaskDescriptionChanged(ActivityManager.RunningTaskInfo runningTaskInfo) throws RemoteException {
        }

        @Override // com.oplus.compat.app.ITaskStackListenerR
        public void onTaskDisplayChanged(int i, int i2) throws RemoteException {
        }

        @Override // com.oplus.compat.app.ITaskStackListenerR
        public void onTaskFocusChanged(int i, boolean z) throws RemoteException {
        }

        @Override // com.oplus.compat.app.ITaskStackListenerR
        public void onTaskMovedToFront(ActivityManager.RunningTaskInfo runningTaskInfo) throws RemoteException {
        }

        @Override // com.oplus.compat.app.ITaskStackListenerR
        public void onTaskProfileLocked(int i, int i2) throws RemoteException {
        }

        @Override // com.oplus.compat.app.ITaskStackListenerR
        public void onTaskRemovalStarted(ActivityManager.RunningTaskInfo runningTaskInfo) throws RemoteException {
        }

        @Override // com.oplus.compat.app.ITaskStackListenerR
        public void onTaskRemoved(int i) throws RemoteException {
        }

        @Override // com.oplus.compat.app.ITaskStackListenerR
        public void onTaskRequestedOrientationChanged(int i, int i2) throws RemoteException {
        }

        @Override // com.oplus.compat.app.ITaskStackListenerR
        public void onTaskSnapshotChanged(int i, TaskSnapshotNative taskSnapshotNative) throws RemoteException {
        }

        @Override // com.oplus.compat.app.ITaskStackListenerR
        public void onTaskStackChanged() throws RemoteException {
        }
    }

    void onActivityDismissingDockedStack() throws RemoteException;

    void onActivityForcedResizable(String str, int i, int i2) throws RemoteException;

    void onActivityLaunchOnSecondaryDisplayFailed(ActivityManager.RunningTaskInfo runningTaskInfo, int i) throws RemoteException;

    void onActivityLaunchOnSecondaryDisplayRerouted(ActivityManager.RunningTaskInfo runningTaskInfo, int i) throws RemoteException;

    void onActivityPinned(String str, int i, int i2, int i3) throws RemoteException;

    void onActivityRequestedOrientationChanged(int i, int i2) throws RemoteException;

    void onActivityRestartAttempt(ActivityManager.RunningTaskInfo runningTaskInfo, boolean z, boolean z2, boolean z3) throws RemoteException;

    void onActivityRotation(int i) throws RemoteException;

    void onActivityUnpinned() throws RemoteException;

    void onBackPressedOnTaskRoot(ActivityManager.RunningTaskInfo runningTaskInfo) throws RemoteException;

    void onRecentTaskListFrozenChanged(boolean z) throws RemoteException;

    void onRecentTaskListUpdated() throws RemoteException;

    void onSingleTaskDisplayDrawn(int i) throws RemoteException;

    void onSingleTaskDisplayEmpty(int i) throws RemoteException;

    void onSizeCompatModeActivityChanged(int i, IBinder iBinder) throws RemoteException;

    void onTaskCreated(int i, ComponentName componentName) throws RemoteException;

    void onTaskDescriptionChanged(ActivityManager.RunningTaskInfo runningTaskInfo) throws RemoteException;

    void onTaskDisplayChanged(int i, int i2) throws RemoteException;

    void onTaskFocusChanged(int i, boolean z) throws RemoteException;

    void onTaskMovedToFront(ActivityManager.RunningTaskInfo runningTaskInfo) throws RemoteException;

    void onTaskProfileLocked(int i, int i2) throws RemoteException;

    void onTaskRemovalStarted(ActivityManager.RunningTaskInfo runningTaskInfo) throws RemoteException;

    void onTaskRemoved(int i) throws RemoteException;

    void onTaskRequestedOrientationChanged(int i, int i2) throws RemoteException;

    void onTaskSnapshotChanged(int i, TaskSnapshotNative taskSnapshotNative) throws RemoteException;

    void onTaskStackChanged() throws RemoteException;

    /* loaded from: classes.dex */
    public static abstract class Stub extends Binder implements ITaskStackListenerR {
        private static final String DESCRIPTOR = "android.app.ITaskStackListener";
        static final int TRANSACTION_onActivityDismissingDockedStack = 6;
        static final int TRANSACTION_onActivityForcedResizable = 5;
        static final int TRANSACTION_onActivityLaunchOnSecondaryDisplayFailed = 7;
        static final int TRANSACTION_onActivityLaunchOnSecondaryDisplayRerouted = 8;
        static final int TRANSACTION_onActivityPinned = 2;
        static final int TRANSACTION_onActivityRequestedOrientationChanged = 13;
        static final int TRANSACTION_onActivityRestartAttempt = 4;
        static final int TRANSACTION_onActivityRotation = 26;
        static final int TRANSACTION_onActivityUnpinned = 3;
        static final int TRANSACTION_onBackPressedOnTaskRoot = 18;
        static final int TRANSACTION_onRecentTaskListFrozenChanged = 23;
        static final int TRANSACTION_onRecentTaskListUpdated = 22;
        static final int TRANSACTION_onSingleTaskDisplayDrawn = 19;
        static final int TRANSACTION_onSingleTaskDisplayEmpty = 20;
        static final int TRANSACTION_onSizeCompatModeActivityChanged = 17;
        static final int TRANSACTION_onTaskCreated = 9;
        static final int TRANSACTION_onTaskDescriptionChanged = 12;
        static final int TRANSACTION_onTaskDisplayChanged = 21;
        static final int TRANSACTION_onTaskFocusChanged = 24;
        static final int TRANSACTION_onTaskMovedToFront = 11;
        static final int TRANSACTION_onTaskProfileLocked = 15;
        static final int TRANSACTION_onTaskRemovalStarted = 14;
        static final int TRANSACTION_onTaskRemoved = 10;
        static final int TRANSACTION_onTaskRequestedOrientationChanged = 25;
        static final int TRANSACTION_onTaskSnapshotChanged = 16;
        static final int TRANSACTION_onTaskStackChanged = 1;

        public static String getDefaultTransactionName(int i) {
            switch (i) {
                case 1:
                    return "onTaskStackChanged";
                case 2:
                    return "onActivityPinned";
                case 3:
                    return "onActivityUnpinned";
                case 4:
                    return "onActivityRestartAttempt";
                case 5:
                    return "onActivityForcedResizable";
                case 6:
                    return "onActivityDismissingDockedStack";
                case 7:
                    return "onActivityLaunchOnSecondaryDisplayFailed";
                case 8:
                    return "onActivityLaunchOnSecondaryDisplayRerouted";
                case 9:
                    return "onTaskCreated";
                case 10:
                    return "onTaskRemoved";
                case 11:
                    return "onTaskMovedToFront";
                case 12:
                    return "onTaskDescriptionChanged";
                case 13:
                    return "onActivityRequestedOrientationChanged";
                case 14:
                    return "onTaskRemovalStarted";
                case 15:
                    return "onTaskProfileLocked";
                case 16:
                    return "onTaskSnapshotChanged";
                case 17:
                    return "onSizeCompatModeActivityChanged";
                case 18:
                    return "onBackPressedOnTaskRoot";
                case 19:
                    return "onSingleTaskDisplayDrawn";
                case 20:
                    return "onSingleTaskDisplayEmpty";
                case 21:
                    return "onTaskDisplayChanged";
                case 22:
                    return "onRecentTaskListUpdated";
                case 23:
                    return "onRecentTaskListFrozenChanged";
                case 24:
                    return "onTaskFocusChanged";
                case TRANSACTION_onTaskRequestedOrientationChanged /* 25 */:
                    return "onTaskRequestedOrientationChanged";
                case 26:
                    return "onActivityRotation";
                default:
                    return null;
            }
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static ITaskStackListenerR asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            if (queryLocalInterface != null && (queryLocalInterface instanceof ITaskStackListenerR)) {
                return (ITaskStackListenerR) queryLocalInterface;
            }
            return new Proxy(iBinder);
        }

        public String getTransactionName(int i) {
            return getDefaultTransactionName(i);
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            if (i == 1598968902) {
                parcel2.writeString(DESCRIPTOR);
                return true;
            }
            switch (i) {
                case 1:
                    parcel.enforceInterface(DESCRIPTOR);
                    onTaskStackChanged();
                    return true;
                case 2:
                    parcel.enforceInterface(DESCRIPTOR);
                    onActivityPinned(parcel.readString(), parcel.readInt(), parcel.readInt(), parcel.readInt());
                    return true;
                case 3:
                    parcel.enforceInterface(DESCRIPTOR);
                    onActivityUnpinned();
                    return true;
                case 4:
                    parcel.enforceInterface(DESCRIPTOR);
                    onActivityRestartAttempt(parcel.readInt() != 0 ? (ActivityManager.RunningTaskInfo) ActivityManager.RunningTaskInfo.CREATOR.createFromParcel(parcel) : null, parcel.readInt() != 0, parcel.readInt() != 0, parcel.readInt() != 0);
                    return true;
                case 5:
                    parcel.enforceInterface(DESCRIPTOR);
                    onActivityForcedResizable(parcel.readString(), parcel.readInt(), parcel.readInt());
                    return true;
                case 6:
                    parcel.enforceInterface(DESCRIPTOR);
                    onActivityDismissingDockedStack();
                    return true;
                case 7:
                    parcel.enforceInterface(DESCRIPTOR);
                    onActivityLaunchOnSecondaryDisplayFailed(parcel.readInt() != 0 ? (ActivityManager.RunningTaskInfo) ActivityManager.RunningTaskInfo.CREATOR.createFromParcel(parcel) : null, parcel.readInt());
                    return true;
                case 8:
                    parcel.enforceInterface(DESCRIPTOR);
                    onActivityLaunchOnSecondaryDisplayRerouted(parcel.readInt() != 0 ? (ActivityManager.RunningTaskInfo) ActivityManager.RunningTaskInfo.CREATOR.createFromParcel(parcel) : null, parcel.readInt());
                    return true;
                case 9:
                    parcel.enforceInterface(DESCRIPTOR);
                    onTaskCreated(parcel.readInt(), parcel.readInt() != 0 ? (ComponentName) ComponentName.CREATOR.createFromParcel(parcel) : null);
                    return true;
                case 10:
                    parcel.enforceInterface(DESCRIPTOR);
                    onTaskRemoved(parcel.readInt());
                    return true;
                case 11:
                    parcel.enforceInterface(DESCRIPTOR);
                    onTaskMovedToFront(parcel.readInt() != 0 ? (ActivityManager.RunningTaskInfo) ActivityManager.RunningTaskInfo.CREATOR.createFromParcel(parcel) : null);
                    return true;
                case 12:
                    parcel.enforceInterface(DESCRIPTOR);
                    onTaskDescriptionChanged(parcel.readInt() != 0 ? (ActivityManager.RunningTaskInfo) ActivityManager.RunningTaskInfo.CREATOR.createFromParcel(parcel) : null);
                    return true;
                case 13:
                    parcel.enforceInterface(DESCRIPTOR);
                    onActivityRequestedOrientationChanged(parcel.readInt(), parcel.readInt());
                    return true;
                case 14:
                    parcel.enforceInterface(DESCRIPTOR);
                    onTaskRemovalStarted(parcel.readInt() != 0 ? (ActivityManager.RunningTaskInfo) ActivityManager.RunningTaskInfo.CREATOR.createFromParcel(parcel) : null);
                    return true;
                case 15:
                    parcel.enforceInterface(DESCRIPTOR);
                    onTaskProfileLocked(parcel.readInt(), parcel.readInt());
                    return true;
                case 16:
                    parcel.enforceInterface(DESCRIPTOR);
                    onTaskSnapshotChanged(parcel.readInt(), parcel.readInt() != 0 ? TaskSnapshotNative.CREATOR.createFromParcel(parcel) : null);
                    return true;
                case 17:
                    parcel.enforceInterface(DESCRIPTOR);
                    onSizeCompatModeActivityChanged(parcel.readInt(), parcel.readStrongBinder());
                    return true;
                case 18:
                    parcel.enforceInterface(DESCRIPTOR);
                    onBackPressedOnTaskRoot(parcel.readInt() != 0 ? (ActivityManager.RunningTaskInfo) ActivityManager.RunningTaskInfo.CREATOR.createFromParcel(parcel) : null);
                    return true;
                case 19:
                    parcel.enforceInterface(DESCRIPTOR);
                    onSingleTaskDisplayDrawn(parcel.readInt());
                    return true;
                case 20:
                    parcel.enforceInterface(DESCRIPTOR);
                    onSingleTaskDisplayEmpty(parcel.readInt());
                    return true;
                case 21:
                    parcel.enforceInterface(DESCRIPTOR);
                    onTaskDisplayChanged(parcel.readInt(), parcel.readInt());
                    return true;
                case 22:
                    parcel.enforceInterface(DESCRIPTOR);
                    onRecentTaskListUpdated();
                    return true;
                case 23:
                    parcel.enforceInterface(DESCRIPTOR);
                    onRecentTaskListFrozenChanged(parcel.readInt() != 0);
                    return true;
                case 24:
                    parcel.enforceInterface(DESCRIPTOR);
                    onTaskFocusChanged(parcel.readInt(), parcel.readInt() != 0);
                    return true;
                case TRANSACTION_onTaskRequestedOrientationChanged /* 25 */:
                    parcel.enforceInterface(DESCRIPTOR);
                    onTaskRequestedOrientationChanged(parcel.readInt(), parcel.readInt());
                    return true;
                case 26:
                    parcel.enforceInterface(DESCRIPTOR);
                    onActivityRotation(parcel.readInt());
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* loaded from: classes.dex */
        public static class Proxy implements ITaskStackListenerR {
            public static ITaskStackListenerR sDefaultImpl;
            private IBinder mRemote;

            public String getInterfaceDescriptor() {
                return Stub.DESCRIPTOR;
            }

            Proxy(IBinder iBinder) {
                this.mRemote = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            @Override // com.oplus.compat.app.ITaskStackListenerR
            public void onTaskStackChanged() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (this.mRemote.transact(1, obtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().onTaskStackChanged();
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.oplus.compat.app.ITaskStackListenerR
            public void onActivityPinned(String str, int i, int i2, int i3) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    obtain.writeInt(i);
                    obtain.writeInt(i2);
                    obtain.writeInt(i3);
                    if (this.mRemote.transact(2, obtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().onActivityPinned(str, i, i2, i3);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.oplus.compat.app.ITaskStackListenerR
            public void onActivityUnpinned() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (this.mRemote.transact(3, obtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().onActivityUnpinned();
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.oplus.compat.app.ITaskStackListenerR
            public void onActivityRestartAttempt(ActivityManager.RunningTaskInfo runningTaskInfo, boolean z, boolean z2, boolean z3) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (runningTaskInfo != null) {
                        obtain.writeInt(1);
                        runningTaskInfo.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeInt(z ? 1 : 0);
                    obtain.writeInt(z2 ? 1 : 0);
                    obtain.writeInt(z3 ? 1 : 0);
                    if (this.mRemote.transact(4, obtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().onActivityRestartAttempt(runningTaskInfo, z, z2, z3);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.oplus.compat.app.ITaskStackListenerR
            public void onActivityForcedResizable(String str, int i, int i2) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    obtain.writeInt(i);
                    obtain.writeInt(i2);
                    if (this.mRemote.transact(5, obtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().onActivityForcedResizable(str, i, i2);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.oplus.compat.app.ITaskStackListenerR
            public void onActivityDismissingDockedStack() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (this.mRemote.transact(6, obtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().onActivityDismissingDockedStack();
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.oplus.compat.app.ITaskStackListenerR
            public void onActivityLaunchOnSecondaryDisplayFailed(ActivityManager.RunningTaskInfo runningTaskInfo, int i) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (runningTaskInfo != null) {
                        obtain.writeInt(1);
                        runningTaskInfo.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeInt(i);
                    if (this.mRemote.transact(7, obtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().onActivityLaunchOnSecondaryDisplayFailed(runningTaskInfo, i);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.oplus.compat.app.ITaskStackListenerR
            public void onActivityLaunchOnSecondaryDisplayRerouted(ActivityManager.RunningTaskInfo runningTaskInfo, int i) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (runningTaskInfo != null) {
                        obtain.writeInt(1);
                        runningTaskInfo.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeInt(i);
                    if (this.mRemote.transact(8, obtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().onActivityLaunchOnSecondaryDisplayRerouted(runningTaskInfo, i);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.oplus.compat.app.ITaskStackListenerR
            public void onTaskCreated(int i, ComponentName componentName) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i);
                    if (componentName != null) {
                        obtain.writeInt(1);
                        componentName.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (this.mRemote.transact(9, obtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().onTaskCreated(i, componentName);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.oplus.compat.app.ITaskStackListenerR
            public void onTaskRemoved(int i) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i);
                    if (this.mRemote.transact(10, obtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().onTaskRemoved(i);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.oplus.compat.app.ITaskStackListenerR
            public void onTaskMovedToFront(ActivityManager.RunningTaskInfo runningTaskInfo) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (runningTaskInfo != null) {
                        obtain.writeInt(1);
                        runningTaskInfo.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (this.mRemote.transact(11, obtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().onTaskMovedToFront(runningTaskInfo);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.oplus.compat.app.ITaskStackListenerR
            public void onTaskDescriptionChanged(ActivityManager.RunningTaskInfo runningTaskInfo) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (runningTaskInfo != null) {
                        obtain.writeInt(1);
                        runningTaskInfo.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (this.mRemote.transact(12, obtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().onTaskDescriptionChanged(runningTaskInfo);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.oplus.compat.app.ITaskStackListenerR
            public void onActivityRequestedOrientationChanged(int i, int i2) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i);
                    obtain.writeInt(i2);
                    if (this.mRemote.transact(13, obtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().onActivityRequestedOrientationChanged(i, i2);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.oplus.compat.app.ITaskStackListenerR
            public void onTaskRemovalStarted(ActivityManager.RunningTaskInfo runningTaskInfo) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (runningTaskInfo != null) {
                        obtain.writeInt(1);
                        runningTaskInfo.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (this.mRemote.transact(14, obtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().onTaskRemovalStarted(runningTaskInfo);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.oplus.compat.app.ITaskStackListenerR
            public void onTaskProfileLocked(int i, int i2) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i);
                    obtain.writeInt(i2);
                    if (this.mRemote.transact(15, obtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().onTaskProfileLocked(i, i2);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.oplus.compat.app.ITaskStackListenerR
            public void onTaskSnapshotChanged(int i, TaskSnapshotNative taskSnapshotNative) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i);
                    if (taskSnapshotNative != null) {
                        obtain.writeInt(1);
                        taskSnapshotNative.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (this.mRemote.transact(16, obtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().onTaskSnapshotChanged(i, taskSnapshotNative);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.oplus.compat.app.ITaskStackListenerR
            public void onSizeCompatModeActivityChanged(int i, IBinder iBinder) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i);
                    obtain.writeStrongBinder(iBinder);
                    if (this.mRemote.transact(17, obtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().onSizeCompatModeActivityChanged(i, iBinder);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.oplus.compat.app.ITaskStackListenerR
            public void onBackPressedOnTaskRoot(ActivityManager.RunningTaskInfo runningTaskInfo) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (runningTaskInfo != null) {
                        obtain.writeInt(1);
                        runningTaskInfo.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (this.mRemote.transact(18, obtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().onBackPressedOnTaskRoot(runningTaskInfo);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.oplus.compat.app.ITaskStackListenerR
            public void onSingleTaskDisplayDrawn(int i) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i);
                    if (this.mRemote.transact(19, obtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().onSingleTaskDisplayDrawn(i);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.oplus.compat.app.ITaskStackListenerR
            public void onSingleTaskDisplayEmpty(int i) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i);
                    if (this.mRemote.transact(20, obtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().onSingleTaskDisplayEmpty(i);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.oplus.compat.app.ITaskStackListenerR
            public void onTaskDisplayChanged(int i, int i2) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i);
                    obtain.writeInt(i2);
                    if (this.mRemote.transact(21, obtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().onTaskDisplayChanged(i, i2);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.oplus.compat.app.ITaskStackListenerR
            public void onRecentTaskListUpdated() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (this.mRemote.transact(22, obtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().onRecentTaskListUpdated();
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.oplus.compat.app.ITaskStackListenerR
            public void onRecentTaskListFrozenChanged(boolean z) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(z ? 1 : 0);
                    if (this.mRemote.transact(23, obtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().onRecentTaskListFrozenChanged(z);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.oplus.compat.app.ITaskStackListenerR
            public void onTaskFocusChanged(int i, boolean z) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i);
                    obtain.writeInt(z ? 1 : 0);
                    if (this.mRemote.transact(24, obtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().onTaskFocusChanged(i, z);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.oplus.compat.app.ITaskStackListenerR
            public void onTaskRequestedOrientationChanged(int i, int i2) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i);
                    obtain.writeInt(i2);
                    if (this.mRemote.transact(Stub.TRANSACTION_onTaskRequestedOrientationChanged, obtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().onTaskRequestedOrientationChanged(i, i2);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.oplus.compat.app.ITaskStackListenerR
            public void onActivityRotation(int i) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i);
                    if (this.mRemote.transact(26, obtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().onActivityRotation(i);
                } finally {
                    obtain.recycle();
                }
            }
        }

        public static boolean setDefaultImpl(ITaskStackListenerR iTaskStackListenerR) {
            if (Proxy.sDefaultImpl != null) {
                throw new IllegalStateException("setDefaultImpl() called twice");
            }
            if (iTaskStackListenerR != null) {
                Proxy.sDefaultImpl = iTaskStackListenerR;
                return true;
            }
            return false;
        }

        public static ITaskStackListenerR getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }
    }
}

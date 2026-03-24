package com.oplus.multisearch;

import android.app.ActivityManager;
import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import android.view.SurfaceControl;

/* loaded from: classes3.dex */
public interface IOplusMultiSearchListener extends IInterface {
    public static final String DESCRIPTOR = "com.oplus.multisearch.IOplusMultiSearchListener";

    void onBackPressedOnTaskRoot(ActivityManager.RunningTaskInfo runningTaskInfo) throws RemoteException;

    void onTaskAppeared(ActivityManager.RunningTaskInfo runningTaskInfo, SurfaceControl surfaceControl) throws RemoteException;

    void onTaskInfoChanged(ActivityManager.RunningTaskInfo runningTaskInfo) throws RemoteException;

    void onTaskVanished(ActivityManager.RunningTaskInfo runningTaskInfo) throws RemoteException;

    public static class Default implements IOplusMultiSearchListener {
        @Override // com.oplus.multisearch.IOplusMultiSearchListener
        public void onBackPressedOnTaskRoot(ActivityManager.RunningTaskInfo runningTaskInfo) throws RemoteException {
        }

        @Override // com.oplus.multisearch.IOplusMultiSearchListener
        public void onTaskAppeared(ActivityManager.RunningTaskInfo runningTaskInfo, SurfaceControl surfaceControl) throws RemoteException {
        }

        @Override // com.oplus.multisearch.IOplusMultiSearchListener
        public void onTaskInfoChanged(ActivityManager.RunningTaskInfo runningTaskInfo) throws RemoteException {
        }

        @Override // com.oplus.multisearch.IOplusMultiSearchListener
        public void onTaskVanished(ActivityManager.RunningTaskInfo runningTaskInfo) throws RemoteException {
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }
    }

    public static abstract class Stub extends Binder implements IOplusMultiSearchListener {
        static final int TRANSACTION_onBackPressedOnTaskRoot = 1;
        static final int TRANSACTION_onTaskAppeared = 2;
        static final int TRANSACTION_onTaskInfoChanged = 3;
        static final int TRANSACTION_onTaskVanished = 4;

        public Stub() {
            attachInterface(this, IOplusMultiSearchListener.DESCRIPTOR);
        }

        public static IOplusMultiSearchListener asInterface(IBinder obj) {
            if (obj == null) {
                return null;
            }
            IInterface iin = obj.queryLocalInterface(IOplusMultiSearchListener.DESCRIPTOR);
            if (iin != null && (iin instanceof IOplusMultiSearchListener)) {
                return (IOplusMultiSearchListener) iin;
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
                    return "onBackPressedOnTaskRoot";
                case 2:
                    return "onTaskAppeared";
                case 3:
                    return "onTaskInfoChanged";
                case 4:
                    return "onTaskVanished";
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
                data.enforceInterface(IOplusMultiSearchListener.DESCRIPTOR);
            }
            switch (code) {
                case IBinder.INTERFACE_TRANSACTION /* 1598968902 */:
                    reply.writeString(IOplusMultiSearchListener.DESCRIPTOR);
                    return true;
                default:
                    switch (code) {
                        case 1:
                            ActivityManager.RunningTaskInfo _arg0 = (ActivityManager.RunningTaskInfo) data.readTypedObject(ActivityManager.RunningTaskInfo.CREATOR);
                            data.enforceNoDataAvail();
                            onBackPressedOnTaskRoot(_arg0);
                            return true;
                        case 2:
                            ActivityManager.RunningTaskInfo _arg02 = (ActivityManager.RunningTaskInfo) data.readTypedObject(ActivityManager.RunningTaskInfo.CREATOR);
                            SurfaceControl _arg1 = (SurfaceControl) data.readTypedObject(SurfaceControl.CREATOR);
                            data.enforceNoDataAvail();
                            onTaskAppeared(_arg02, _arg1);
                            return true;
                        case 3:
                            ActivityManager.RunningTaskInfo _arg03 = (ActivityManager.RunningTaskInfo) data.readTypedObject(ActivityManager.RunningTaskInfo.CREATOR);
                            data.enforceNoDataAvail();
                            onTaskInfoChanged(_arg03);
                            return true;
                        case 4:
                            ActivityManager.RunningTaskInfo _arg04 = (ActivityManager.RunningTaskInfo) data.readTypedObject(ActivityManager.RunningTaskInfo.CREATOR);
                            data.enforceNoDataAvail();
                            onTaskVanished(_arg04);
                            return true;
                        default:
                            return super.onTransact(code, data, reply, flags);
                    }
            }
        }

        private static class Proxy implements IOplusMultiSearchListener {
            private IBinder mRemote;

            Proxy(IBinder remote) {
                this.mRemote = remote;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            public String getInterfaceDescriptor() {
                return IOplusMultiSearchListener.DESCRIPTOR;
            }

            @Override // com.oplus.multisearch.IOplusMultiSearchListener
            public void onBackPressedOnTaskRoot(ActivityManager.RunningTaskInfo runningTaskInfo) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IOplusMultiSearchListener.DESCRIPTOR);
                    _data.writeTypedObject(runningTaskInfo, 0);
                    this.mRemote.transact(1, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // com.oplus.multisearch.IOplusMultiSearchListener
            public void onTaskAppeared(ActivityManager.RunningTaskInfo runningTaskInfo, SurfaceControl surfaceControl) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IOplusMultiSearchListener.DESCRIPTOR);
                    _data.writeTypedObject(runningTaskInfo, 0);
                    _data.writeTypedObject(surfaceControl, 0);
                    this.mRemote.transact(2, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // com.oplus.multisearch.IOplusMultiSearchListener
            public void onTaskInfoChanged(ActivityManager.RunningTaskInfo runningTaskInfo) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IOplusMultiSearchListener.DESCRIPTOR);
                    _data.writeTypedObject(runningTaskInfo, 0);
                    this.mRemote.transact(3, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // com.oplus.multisearch.IOplusMultiSearchListener
            public void onTaskVanished(ActivityManager.RunningTaskInfo runningTaskInfo) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IOplusMultiSearchListener.DESCRIPTOR);
                    _data.writeTypedObject(runningTaskInfo, 0);
                    this.mRemote.transact(4, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }
        }

        @Override // android.os.Binder
        public int getMaxTransactionId() {
            return 3;
        }
    }
}

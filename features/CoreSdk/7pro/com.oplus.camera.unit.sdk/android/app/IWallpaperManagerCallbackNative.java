package android.app;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes.dex */
public interface IWallpaperManagerCallbackNative extends IInterface {
    public static final String DESCRIPTOR = "android.app.IWallpaperManagerCallbackNative";

    /* loaded from: classes.dex */
    public static class Default implements IWallpaperManagerCallbackNative {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // android.app.IWallpaperManagerCallbackNative
        public void onWallpaperChanged() throws RemoteException {
        }

        @Override // android.app.IWallpaperManagerCallbackNative
        public void onWallpaperColorsChanged(WallpaperColors wallpaperColors, int i, int i2) throws RemoteException {
        }
    }

    void onWallpaperChanged() throws RemoteException;

    void onWallpaperColorsChanged(WallpaperColors wallpaperColors, int i, int i2) throws RemoteException;

    /* loaded from: classes.dex */
    public static abstract class Stub extends Binder implements IWallpaperManagerCallbackNative {
        static final int TRANSACTION_onWallpaperChanged = 1;
        static final int TRANSACTION_onWallpaperColorsChanged = 2;

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        public Stub() {
            attachInterface(this, IWallpaperManagerCallbackNative.DESCRIPTOR);
        }

        public static IWallpaperManagerCallbackNative asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface(IWallpaperManagerCallbackNative.DESCRIPTOR);
            if (queryLocalInterface != null && (queryLocalInterface instanceof IWallpaperManagerCallbackNative)) {
                return (IWallpaperManagerCallbackNative) queryLocalInterface;
            }
            return new Proxy(iBinder);
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            if (i == 1598968902) {
                parcel2.writeString(IWallpaperManagerCallbackNative.DESCRIPTOR);
                return true;
            }
            switch (i) {
                case 1:
                    parcel.enforceInterface(IWallpaperManagerCallbackNative.DESCRIPTOR);
                    onWallpaperChanged();
                    parcel2.writeNoException();
                    return true;
                case 2:
                    parcel.enforceInterface(IWallpaperManagerCallbackNative.DESCRIPTOR);
                    onWallpaperColorsChanged(parcel.readInt() != 0 ? (WallpaperColors) WallpaperColors.CREATOR.createFromParcel(parcel) : null, parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* loaded from: classes.dex */
        public static class Proxy implements IWallpaperManagerCallbackNative {
            public static IWallpaperManagerCallbackNative sDefaultImpl;
            private IBinder mRemote;

            public String getInterfaceDescriptor() {
                return IWallpaperManagerCallbackNative.DESCRIPTOR;
            }

            Proxy(IBinder iBinder) {
                this.mRemote = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            @Override // android.app.IWallpaperManagerCallbackNative
            public void onWallpaperChanged() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(IWallpaperManagerCallbackNative.DESCRIPTOR);
                    if (!this.mRemote.transact(1, obtain, obtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().onWallpaperChanged();
                    } else {
                        obtain2.readException();
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.app.IWallpaperManagerCallbackNative
            public void onWallpaperColorsChanged(WallpaperColors wallpaperColors, int i, int i2) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(IWallpaperManagerCallbackNative.DESCRIPTOR);
                    if (wallpaperColors != null) {
                        obtain.writeInt(1);
                        wallpaperColors.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeInt(i);
                    obtain.writeInt(i2);
                    if (!this.mRemote.transact(2, obtain, obtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().onWallpaperColorsChanged(wallpaperColors, i, i2);
                    } else {
                        obtain2.readException();
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }

        public static boolean setDefaultImpl(IWallpaperManagerCallbackNative iWallpaperManagerCallbackNative) {
            if (Proxy.sDefaultImpl != null) {
                throw new IllegalStateException("setDefaultImpl() called twice");
            }
            if (iWallpaperManagerCallbackNative != null) {
                Proxy.sDefaultImpl = iWallpaperManagerCallbackNative;
                return true;
            }
            return false;
        }

        public static IWallpaperManagerCallbackNative getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }
    }
}

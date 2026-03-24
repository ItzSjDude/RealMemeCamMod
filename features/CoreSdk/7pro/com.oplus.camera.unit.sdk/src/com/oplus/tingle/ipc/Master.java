package com.oplus.tingle.ipc;

import android.os.Build;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import android.system.Os;
import com.oplus.shield.PermissionCheck;
import com.oplus.tingle.Constants;
import com.oplus.tingle.ipc.IMaster;
import com.oplus.tingle.ipc.utils.Logger;
/* loaded from: classes.dex */
public class Master extends IMaster.Stub {
    private static final String TAG = "Master";
    private static final Object mLock = new Object();
    private static volatile Master sInstance;

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Master getInstance() {
        if (sInstance == null) {
            synchronized (mLock) {
                if (sInstance == null) {
                    sInstance = new Master();
                }
            }
        }
        return sInstance;
    }

    private Master() {
    }

    @Override // com.oplus.tingle.ipc.IMaster.Stub, android.os.Binder
    public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i == 1) {
            parcel.enforceInterface(Constants.getBinderDescriptor());
            transactRemote(parcel, parcel2, i2);
            return true;
        }
        return super.onTransact(i, parcel, parcel2, i2);
    }

    private void transactRemote(Parcel parcel, Parcel parcel2, int i) throws RemoteException {
        IBinder readStrongBinder = parcel.readStrongBinder();
        int readInt = parcel.readInt();
        parcel.readStringArray();
        if (PermissionCheck.getInstance().isValid() && !PermissionCheck.getInstance().verityTingle(readStrongBinder.getInterfaceDescriptor(), readInt)) {
            throw new SecurityException("Tingle Authentication Failed.");
        }
        Parcel obtain = Parcel.obtain();
        try {
            obtain.appendFrom(parcel, parcel.dataPosition(), parcel.dataAvail());
            try {
                long clearCallingIdentity = clearCallingIdentity();
                readStrongBinder.transact(readInt, obtain, parcel2, i);
                restoreCallingIdentity(clearCallingIdentity);
            } finally {
                obtain.recycle();
            }
        } catch (Throwable th) {
            Logger.e(TAG, "appendFrom failed: " + th.toString(), new Object[0]);
        }
    }

    @Override // com.oplus.tingle.ipc.IMaster
    public int getUid() throws RemoteException {
        if (Build.VERSION.SDK_INT >= 21) {
            return Os.getuid();
        }
        return -1;
    }
}

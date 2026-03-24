package com.oplus.tingle.ipc;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import android.os.ResultReceiver;
import android.os.ShellCallback;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.oplus.shield.utils.SystemUtils;
import com.oplus.tingle.Constants;
import java.io.FileDescriptor;
import java.util.Objects;
/* loaded from: classes.dex */
public class SlaveBinder implements IBinder {
    private IBinder original;

    @Override // android.os.IBinder
    @Nullable
    public IInterface queryLocalInterface(@NonNull String str) {
        return null;
    }

    public void shellCommand(FileDescriptor fileDescriptor, FileDescriptor fileDescriptor2, FileDescriptor fileDescriptor3, String[] strArr, ShellCallback shellCallback, ResultReceiver resultReceiver) throws RemoteException {
    }

    public SlaveBinder(@NonNull IBinder iBinder) {
        this.original = (IBinder) Objects.requireNonNull(iBinder);
    }

    @Override // android.os.IBinder
    public boolean transact(int i, @NonNull Parcel parcel, @Nullable Parcel parcel2, int i2) throws RemoteException {
        Parcel obtain = Parcel.obtain();
        try {
            obtain.writeInterfaceToken(Constants.getBinderDescriptor());
            obtain.writeStrongBinder(this.original);
            obtain.writeInt(i);
            obtain.writeStringArray(SystemUtils.getCallerName());
            obtain.appendFrom(parcel, 0, parcel.dataSize());
            Slave.transactRemote(obtain, parcel2, i2);
            obtain.recycle();
            return true;
        } catch (Throwable th) {
            obtain.recycle();
            throw th;
        }
    }

    @Override // android.os.IBinder
    @Nullable
    public String getInterfaceDescriptor() {
        try {
            return this.original.getInterfaceDescriptor();
        } catch (RemoteException e) {
            throw new IllegalStateException(e.getClass().getSimpleName(), e);
        }
    }

    @Override // android.os.IBinder
    public boolean pingBinder() {
        return this.original.pingBinder();
    }

    @Override // android.os.IBinder
    public boolean isBinderAlive() {
        return this.original.isBinderAlive();
    }

    @Override // android.os.IBinder
    public void dump(@NonNull FileDescriptor fileDescriptor, @Nullable String[] strArr) {
        try {
            this.original.dump(fileDescriptor, strArr);
        } catch (RemoteException e) {
            throw new IllegalStateException(e.getClass().getSimpleName(), e);
        }
    }

    @Override // android.os.IBinder
    public void dumpAsync(@NonNull FileDescriptor fileDescriptor, @Nullable String[] strArr) {
        try {
            this.original.dumpAsync(fileDescriptor, strArr);
        } catch (RemoteException e) {
            throw new IllegalStateException(e.getClass().getSimpleName(), e);
        }
    }

    @Override // android.os.IBinder
    public void linkToDeath(@NonNull IBinder.DeathRecipient deathRecipient, int i) {
        try {
            this.original.linkToDeath(deathRecipient, i);
        } catch (RemoteException e) {
            throw new IllegalStateException(e.getClass().getSimpleName(), e);
        }
    }

    @Override // android.os.IBinder
    public boolean unlinkToDeath(@NonNull IBinder.DeathRecipient deathRecipient, int i) {
        return this.original.unlinkToDeath(deathRecipient, i);
    }
}

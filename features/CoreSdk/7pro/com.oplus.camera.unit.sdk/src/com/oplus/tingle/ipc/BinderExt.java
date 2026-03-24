package com.oplus.tingle.ipc;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes.dex */
public class BinderExt implements Parcelable {
    public static final Parcelable.Creator<BinderExt> CREATOR = new Parcelable.Creator<BinderExt>() { // from class: com.oplus.tingle.ipc.BinderExt.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public BinderExt createFromParcel(Parcel parcel) {
            return new BinderExt(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public BinderExt[] newArray(int i) {
            return new BinderExt[i];
        }
    };
    private IBinder mBinder;
    private int mPid;
    private String mProcessName;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public BinderExt(IBinder iBinder) {
        this.mBinder = iBinder;
    }

    public BinderExt(IBinder iBinder, String str, int i) {
        this.mBinder = iBinder;
        this.mProcessName = str;
        this.mPid = i;
    }

    public BinderExt(Parcel parcel) {
        this.mBinder = parcel.readStrongBinder();
        this.mProcessName = parcel.readString();
        this.mPid = parcel.readInt();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeStrongBinder(this.mBinder);
        parcel.writeString(this.mProcessName);
        parcel.writeInt(this.mPid);
    }

    public IBinder getBinder() {
        return this.mBinder;
    }

    public String getProcessName() {
        return this.mProcessName;
    }

    public int getPid() {
        return this.mPid;
    }
}

package com.oplus.app;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes4.dex */
public class KernelWakeLockInfo implements Parcelable {
    public static final Parcelable.Creator<KernelWakeLockInfo> CREATOR = new Parcelable.Creator<KernelWakeLockInfo>() { // from class: com.oplus.app.KernelWakeLockInfo.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public KernelWakeLockInfo createFromParcel(Parcel _aidl_source) {
            KernelWakeLockInfo _aidl_out = new KernelWakeLockInfo();
            _aidl_out.readFromParcel(_aidl_source);
            return _aidl_out;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public KernelWakeLockInfo[] newArray(int _aidl_size) {
            return new KernelWakeLockInfo[_aidl_size];
        }
    };
    public String name;
    public long activeCount = 0;
    public long lastChange = 0;
    public long maxTime = 0;
    public long totalTime = 0;
    public boolean isActive = false;
    public long activeTime = 0;
    public boolean isKernelWakelock = false;
    public int pid = 0;
    public long eventCount = 0;
    public long expireCount = 0;
    public long preventSuspendTime = 0;
    public long wakeupCount = 0;

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int iDataPosition = parcel.dataPosition();
        parcel.writeInt(0);
        parcel.writeString(this.name);
        parcel.writeLong(this.activeCount);
        parcel.writeLong(this.lastChange);
        parcel.writeLong(this.maxTime);
        parcel.writeLong(this.totalTime);
        parcel.writeInt(this.isActive ? 1 : 0);
        parcel.writeLong(this.activeTime);
        parcel.writeInt(this.isKernelWakelock ? 1 : 0);
        parcel.writeInt(this.pid);
        parcel.writeLong(this.eventCount);
        parcel.writeLong(this.expireCount);
        parcel.writeLong(this.preventSuspendTime);
        parcel.writeLong(this.wakeupCount);
        int iDataPosition2 = parcel.dataPosition();
        parcel.setDataPosition(iDataPosition);
        parcel.writeInt(iDataPosition2 - iDataPosition);
        parcel.setDataPosition(iDataPosition2);
    }

    public final void readFromParcel(Parcel _aidl_parcel) {
        int _aidl_start_pos = _aidl_parcel.dataPosition();
        int _aidl_parcelable_size = _aidl_parcel.readInt();
        if (_aidl_parcelable_size < 0) {
            return;
        }
        try {
            if (_aidl_parcel.dataPosition() - _aidl_start_pos >= _aidl_parcelable_size) {
                return;
            }
            this.name = _aidl_parcel.readString();
            if (_aidl_parcel.dataPosition() - _aidl_start_pos >= _aidl_parcelable_size) {
                return;
            }
            this.activeCount = _aidl_parcel.readLong();
            if (_aidl_parcel.dataPosition() - _aidl_start_pos >= _aidl_parcelable_size) {
                return;
            }
            this.lastChange = _aidl_parcel.readLong();
            if (_aidl_parcel.dataPosition() - _aidl_start_pos >= _aidl_parcelable_size) {
                return;
            }
            this.maxTime = _aidl_parcel.readLong();
            if (_aidl_parcel.dataPosition() - _aidl_start_pos >= _aidl_parcelable_size) {
                return;
            }
            this.totalTime = _aidl_parcel.readLong();
            if (_aidl_parcel.dataPosition() - _aidl_start_pos >= _aidl_parcelable_size) {
                return;
            }
            boolean z = true;
            this.isActive = _aidl_parcel.readInt() != 0;
            if (_aidl_parcel.dataPosition() - _aidl_start_pos >= _aidl_parcelable_size) {
                return;
            }
            this.activeTime = _aidl_parcel.readLong();
            if (_aidl_parcel.dataPosition() - _aidl_start_pos >= _aidl_parcelable_size) {
                return;
            }
            if (_aidl_parcel.readInt() == 0) {
                z = false;
            }
            this.isKernelWakelock = z;
            if (_aidl_parcel.dataPosition() - _aidl_start_pos >= _aidl_parcelable_size) {
                return;
            }
            this.pid = _aidl_parcel.readInt();
            if (_aidl_parcel.dataPosition() - _aidl_start_pos >= _aidl_parcelable_size) {
                return;
            }
            this.eventCount = _aidl_parcel.readLong();
            if (_aidl_parcel.dataPosition() - _aidl_start_pos >= _aidl_parcelable_size) {
                return;
            }
            this.expireCount = _aidl_parcel.readLong();
            if (_aidl_parcel.dataPosition() - _aidl_start_pos >= _aidl_parcelable_size) {
                return;
            }
            this.preventSuspendTime = _aidl_parcel.readLong();
            if (_aidl_parcel.dataPosition() - _aidl_start_pos >= _aidl_parcelable_size) {
                return;
            }
            this.wakeupCount = _aidl_parcel.readLong();
        } finally {
            _aidl_parcel.setDataPosition(_aidl_start_pos + _aidl_parcelable_size);
        }
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }
}

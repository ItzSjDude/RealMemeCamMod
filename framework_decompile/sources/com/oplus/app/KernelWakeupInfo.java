package com.oplus.app;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes4.dex */
public class KernelWakeupInfo implements Parcelable {
    public static final Parcelable.Creator<KernelWakeupInfo> CREATOR = new Parcelable.Creator<KernelWakeupInfo>() { // from class: com.oplus.app.KernelWakeupInfo.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public KernelWakeupInfo createFromParcel(Parcel _aidl_source) {
            KernelWakeupInfo _aidl_out = new KernelWakeupInfo();
            _aidl_out.readFromParcel(_aidl_source);
            return _aidl_out;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public KernelWakeupInfo[] newArray(int _aidl_size) {
            return new KernelWakeupInfo[_aidl_size];
        }
    };
    public long count = 0;
    public String name;

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel _aidl_parcel, int _aidl_flag) {
        int _aidl_start_pos = _aidl_parcel.dataPosition();
        _aidl_parcel.writeInt(0);
        _aidl_parcel.writeString(this.name);
        _aidl_parcel.writeLong(this.count);
        int _aidl_end_pos = _aidl_parcel.dataPosition();
        _aidl_parcel.setDataPosition(_aidl_start_pos);
        _aidl_parcel.writeInt(_aidl_end_pos - _aidl_start_pos);
        _aidl_parcel.setDataPosition(_aidl_end_pos);
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
            this.count = _aidl_parcel.readLong();
        } finally {
            _aidl_parcel.setDataPosition(_aidl_start_pos + _aidl_parcelable_size);
        }
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }
}

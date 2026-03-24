package android.telephony;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import java.util.Objects;

/* loaded from: classes3.dex */
public final class CagInfo implements Parcelable {
    public static final Parcelable.Creator<CagInfo> CREATOR = new Parcelable.Creator<CagInfo>() { // from class: android.telephony.CagInfo.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public CagInfo createFromParcel(Parcel in) {
            return new CagInfo(in);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public CagInfo[] newArray(int size) {
            return new CagInfo[size];
        }
    };
    public static final long UNAVAILABLE_LONG = Long.MAX_VALUE;
    private long mCagId;
    private boolean mCagInAllowedList;
    private String mCagName;
    private boolean mCagOnlyAccess;

    public String getCagName() {
        return this.mCagName;
    }

    public long getCagId() {
        return this.mCagId;
    }

    public boolean getCagOnlyAccess() {
        return this.mCagOnlyAccess;
    }

    public boolean getCagInAllowedList() {
        return this.mCagInAllowedList;
    }

    public CagInfo() {
        this.mCagName = new String();
        this.mCagId = Long.MAX_VALUE;
        this.mCagOnlyAccess = false;
        this.mCagInAllowedList = false;
    }

    public CagInfo(String cagName, long cagId, boolean cagOnlyAccess, boolean cagInAllowedList) {
        this.mCagName = cagName;
        this.mCagId = cagId;
        this.mCagOnlyAccess = cagOnlyAccess;
        this.mCagInAllowedList = cagInAllowedList;
    }

    private CagInfo(Parcel in) {
        this.mCagName = in.readString();
        this.mCagId = in.readLong();
        this.mCagOnlyAccess = in.readBoolean();
        this.mCagInAllowedList = in.readBoolean();
    }

    public String toString() {
        return "mCagName: " + getCagName() + ", mCagId: " + getCagId() + "mCagOnlyAccess: " + getCagOnlyAccess() + "mCagInAllowedList: " + getCagInAllowedList();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel out, int flags) {
        out.writeString(this.mCagName);
        out.writeLong(this.mCagId);
        out.writeBoolean(this.mCagOnlyAccess);
        out.writeBoolean(this.mCagInAllowedList);
    }

    public int hashCode() {
        return Objects.hash(this.mCagName, Long.valueOf(this.mCagId), Boolean.valueOf(this.mCagOnlyAccess), Boolean.valueOf(this.mCagInAllowedList));
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null) {
            return false;
        }
        CagInfo other = (CagInfo) obj;
        if (TextUtils.equals(this.mCagName, other.mCagName) && this.mCagId == other.mCagId && this.mCagOnlyAccess == other.mCagOnlyAccess && this.mCagInAllowedList == other.mCagInAllowedList) {
            return true;
        }
        return false;
    }
}

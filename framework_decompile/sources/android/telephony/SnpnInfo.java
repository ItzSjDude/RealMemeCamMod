package android.telephony;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import java.util.Arrays;
import java.util.Objects;

/* loaded from: classes3.dex */
public final class SnpnInfo implements Parcelable {
    public static final Parcelable.Creator<SnpnInfo> CREATOR = new Parcelable.Creator<SnpnInfo>() { // from class: android.telephony.SnpnInfo.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public SnpnInfo createFromParcel(Parcel in) {
            return new SnpnInfo(in);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public SnpnInfo[] newArray(int size) {
            return new SnpnInfo[size];
        }
    };
    public static final int UNAVAILABLE = Integer.MAX_VALUE;
    private int mLevel;
    private String mMcc;
    private String mMnc;
    private byte[] mNid;
    private String mOperatorNumeric;
    private int mSignalQuality;
    private int mSignalStrength;
    private int[] mSsRsrpThresholds;

    public byte[] getNid() {
        return this.mNid;
    }

    public String getMcc() {
        return this.mMcc;
    }

    public String getMnc() {
        return this.mMnc;
    }

    public String getOperatorNumeric() {
        return this.mOperatorNumeric;
    }

    public int getSignalStrength() {
        return this.mSignalStrength;
    }

    public int getSignalQuality() {
        return this.mSignalQuality;
    }

    public int getLevel() {
        return this.mLevel;
    }

    public SnpnInfo() {
        this.mSsRsrpThresholds = new int[]{-110, -90, -80, -65};
        this.mNid = null;
        this.mMcc = null;
        this.mMnc = null;
        this.mOperatorNumeric = null;
        this.mSignalStrength = Integer.MAX_VALUE;
        this.mSignalQuality = Integer.MAX_VALUE;
        this.mLevel = 0;
    }

    public SnpnInfo(byte[] nid, String mcc, String mnc, String operatorNumeric, int signalStrength, int signalQuality) {
        this.mSsRsrpThresholds = new int[]{-110, -90, -80, -65};
        this.mNid = nid;
        this.mMcc = mcc;
        this.mMnc = mnc;
        this.mOperatorNumeric = operatorNumeric;
        this.mSignalStrength = signalStrength;
        this.mSignalQuality = signalQuality;
        updateLevel();
    }

    public SnpnInfo(SnpnInfo s) {
        this.mSsRsrpThresholds = new int[]{-110, -90, -80, -65};
        this.mNid = s.mNid;
        this.mMcc = s.mMcc;
        this.mMnc = s.mMnc;
        this.mOperatorNumeric = s.mOperatorNumeric;
        this.mSignalStrength = s.mSignalStrength;
        this.mSignalQuality = s.mSignalQuality;
        this.mLevel = s.mLevel;
    }

    private SnpnInfo(Parcel in) {
        this.mSsRsrpThresholds = new int[]{-110, -90, -80, -65};
        int arrayLength = in.readInt();
        if (arrayLength > 0) {
            byte[] bArr = new byte[arrayLength];
            this.mNid = bArr;
            in.readByteArray(bArr);
        } else {
            this.mNid = null;
        }
        this.mMcc = in.readString();
        this.mMnc = in.readString();
        this.mOperatorNumeric = in.readString();
        this.mSignalStrength = in.readInt();
        this.mSignalQuality = in.readInt();
        this.mLevel = in.readInt();
    }

    public void updateLevel() {
        int ssRsrpLevel = updateLevelWithMeasure(this.mSignalStrength, this.mSsRsrpThresholds);
        this.mLevel = ssRsrpLevel;
    }

    private int updateLevelWithMeasure(int measure, int[] thresholds) {
        if (measure == Integer.MAX_VALUE) {
            return 0;
        }
        if (measure >= thresholds[3]) {
            return 4;
        }
        if (measure >= thresholds[2]) {
            return 3;
        }
        if (measure >= thresholds[1]) {
            return 2;
        }
        if (measure >= thresholds[0]) {
            return 1;
        }
        return 0;
    }

    public String toString() {
        return "mNid: " + getNid() + ", mMcc: " + getMcc() + "mMnc: " + getMnc() + "mOperatorNumeric: " + getOperatorNumeric() + "mSignalStrength: " + getSignalStrength() + "mSignalQuality: " + getSignalQuality() + "mLevel: " + this.mLevel;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel out, int flags) {
        byte[] bArr = this.mNid;
        if (bArr != null && bArr.length > 0) {
            out.writeInt(bArr.length);
            out.writeByteArray(this.mNid);
        } else {
            out.writeInt(0);
        }
        out.writeString(this.mMcc);
        out.writeString(this.mMnc);
        out.writeString(this.mOperatorNumeric);
        out.writeInt(this.mSignalStrength);
        out.writeInt(this.mSignalQuality);
        out.writeInt(this.mLevel);
    }

    public int hashCode() {
        int result = Objects.hash(this.mMcc, this.mMnc, this.mOperatorNumeric, Integer.valueOf(this.mSignalStrength), Integer.valueOf(this.mSignalQuality), Integer.valueOf(this.mLevel));
        return (result * 31) + Arrays.hashCode(this.mNid);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null) {
            return false;
        }
        SnpnInfo other = (SnpnInfo) obj;
        if (Arrays.equals(this.mNid, other.mNid) && TextUtils.equals(this.mMcc, other.mMcc) && TextUtils.equals(this.mMnc, other.mMnc) && TextUtils.equals(this.mOperatorNumeric, other.mOperatorNumeric) && this.mSignalStrength == other.mSignalStrength && this.mSignalQuality == other.mSignalQuality && this.mLevel == other.mLevel) {
            return true;
        }
        return false;
    }
}

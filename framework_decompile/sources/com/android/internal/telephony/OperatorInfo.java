package com.android.internal.telephony;

import android.os.Parcel;
import android.os.Parcelable;
import android.provider.Telephony;
import android.telephony.CagInfo;
import android.telephony.SnpnInfo;
import java.io.IOException;

/* loaded from: classes4.dex */
public class OperatorInfo implements Parcelable {
    public static final int ACCESS_MODE_INVALID = 0;
    public static final int ACCESS_MODE_PLMN = 1;
    public static final int ACCESS_MODE_SNPN = 2;
    public static final Parcelable.Creator<OperatorInfo> CREATOR = new Parcelable.Creator<OperatorInfo>() { // from class: com.android.internal.telephony.OperatorInfo.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public OperatorInfo createFromParcel(Parcel in) {
            return new OperatorInfo(in);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public OperatorInfo[] newArray(int size) {
            return new OperatorInfo[size];
        }
    };
    private int mAccessMode;
    private CagInfo mCagInfo;
    private String mOperatorAlphaLong;
    private String mOperatorAlphaShort;
    private String mOperatorNumeric;
    private int mRan;
    private SnpnInfo mSnpnInfo;
    private State mState;

    public enum State {
        UNKNOWN,
        AVAILABLE,
        CURRENT,
        FORBIDDEN
    }

    public String getOperatorAlphaLong() {
        return this.mOperatorAlphaLong;
    }

    public String getOperatorAlphaShort() {
        return this.mOperatorAlphaShort;
    }

    public String getOperatorNumeric() {
        return this.mOperatorNumeric;
    }

    public State getState() {
        return this.mState;
    }

    public int getRan() {
        return this.mRan;
    }

    public int getAccessMode() {
        return this.mAccessMode;
    }

    public CagInfo getCagInfo() {
        return this.mCagInfo;
    }

    public SnpnInfo getSnpnInfo() {
        return this.mSnpnInfo;
    }

    OperatorInfo(String operatorAlphaLong, String operatorAlphaShort, String operatorNumeric, State state) {
        this.mState = State.UNKNOWN;
        this.mRan = 0;
        this.mAccessMode = 1;
        this.mOperatorAlphaLong = operatorAlphaLong;
        this.mOperatorAlphaShort = operatorAlphaShort;
        this.mOperatorNumeric = operatorNumeric;
        this.mState = state;
    }

    OperatorInfo(String operatorAlphaLong, String operatorAlphaShort, String operatorNumeric, State state, int ran) {
        this(operatorAlphaLong, operatorAlphaShort, operatorNumeric, state);
        this.mRan = ran;
    }

    public OperatorInfo(String operatorAlphaLong, String operatorAlphaShort, String operatorNumeric, String stateString) {
        this(operatorAlphaLong, operatorAlphaShort, operatorNumeric, rilStateToState(stateString));
    }

    public OperatorInfo(String operatorAlphaLong, String operatorAlphaShort, String operatorNumeric, int ran) {
        this(operatorAlphaLong, operatorAlphaShort, operatorNumeric);
        this.mRan = ran;
    }

    public OperatorInfo(String operatorAlphaLong, String operatorAlphaShort, String operatorNumeric) {
        this(operatorAlphaLong, operatorAlphaShort, operatorNumeric, State.UNKNOWN);
    }

    public OperatorInfo(String operatorAlphaLong, String operatorAlphaShort, String operatorNumeric, int ran, int accessMode, CagInfo cagInfo, SnpnInfo snpnInfo) {
        this(operatorAlphaLong, operatorAlphaShort, operatorNumeric, ran);
        this.mAccessMode = accessMode;
        this.mCagInfo = cagInfo;
        this.mSnpnInfo = snpnInfo;
    }

    public OperatorInfo(String operatorAlphaLong, String operatorAlphaShort, String operatorNumeric, State state, int ran, int accessMode, CagInfo cagInfo, SnpnInfo snpnInfo) {
        this(operatorAlphaLong, operatorAlphaShort, operatorNumeric, state, ran);
        this.mAccessMode = accessMode;
        this.mCagInfo = cagInfo;
        this.mSnpnInfo = snpnInfo;
    }

    private OperatorInfo(Parcel in) {
        this.mState = State.UNKNOWN;
        this.mRan = 0;
        this.mAccessMode = 1;
        this.mOperatorAlphaLong = in.readString();
        this.mOperatorAlphaShort = in.readString();
        this.mOperatorNumeric = in.readString();
        this.mState = (State) in.readSerializable(State.class.getClassLoader(), State.class);
        this.mRan = in.readInt();
        this.mAccessMode = in.readInt();
        this.mCagInfo = (CagInfo) in.readParcelable(CagInfo.class.getClassLoader(), CagInfo.class);
        this.mSnpnInfo = (SnpnInfo) in.readParcelable(SnpnInfo.class.getClassLoader(), SnpnInfo.class);
    }

    private static State rilStateToState(String s) {
        if (s.equals("unknown")) {
            return State.UNKNOWN;
        }
        if (s.equals("available")) {
            return State.AVAILABLE;
        }
        if (s.equals(Telephony.Carriers.CURRENT)) {
            return State.CURRENT;
        }
        if (s.equals("forbidden")) {
            return State.FORBIDDEN;
        }
        throw new RuntimeException("RIL impl error: Invalid network state '" + s + "'");
    }

    public String toString() {
        return "OperatorInfo " + this.mOperatorAlphaLong + "/" + this.mOperatorAlphaShort + "/" + this.mOperatorNumeric + "/" + this.mState + "/" + this.mRan + "/" + this.mAccessMode + "/" + this.mCagInfo + "/" + this.mSnpnInfo;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) throws IOException {
        dest.writeString(this.mOperatorAlphaLong);
        dest.writeString(this.mOperatorAlphaShort);
        dest.writeString(this.mOperatorNumeric);
        dest.writeSerializable(this.mState);
        dest.writeInt(this.mRan);
        dest.writeInt(this.mAccessMode);
        dest.writeParcelable(this.mCagInfo, 0);
        dest.writeParcelable(this.mSnpnInfo, 0);
    }
}

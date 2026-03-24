package android.telephony;

import android.os.Parcel;
import android.os.Parcelable;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.Objects;

/* loaded from: classes3.dex */
public final class CellSignalStrengthWcdma extends CellSignalStrength implements Parcelable {
    private static final boolean DBG = false;
    private static final String DEFAULT_LEVEL_CALCULATION_METHOD = "rssi";
    public static final String LEVEL_CALCULATION_METHOD_RSCP = "rscp";
    public static final String LEVEL_CALCULATION_METHOD_RSSI = "rssi";
    private static final String LOG_TAG = "CellSignalStrengthWcdma";
    private static final int WCDMA_RSCP_GOOD = -95;
    private static final int WCDMA_RSCP_GREAT = -85;
    private static final int WCDMA_RSCP_MAX = -24;
    private static final int WCDMA_RSCP_MIN = -120;
    private static final int WCDMA_RSCP_MODERATE = -105;
    private static final int WCDMA_RSCP_POOR = -115;
    private static final int WCDMA_RSSI_GREAT = -77;
    private static final int WCDMA_RSSI_MAX = -51;
    private static final int WCDMA_RSSI_MIN = -113;
    private static final int WCDMA_RSSI_MODERATE = -97;
    private static final int WCDMA_RSSI_POOR = -107;
    private int mBitErrorRate;
    private int mEcNo;
    private int mLevel;
    private int mRscp;
    private int mRssi;
    private static final int WCDMA_RSSI_GOOD = -87;
    private static final int[] sRssiThresholds = {-107, -97, WCDMA_RSSI_GOOD, -77};
    private static final int[] sRscpThresholds = {-115, -105, -95, -85};
    private static final CellSignalStrengthWcdma sInvalid = new CellSignalStrengthWcdma();
    public static final Parcelable.Creator<CellSignalStrengthWcdma> CREATOR = new Parcelable.Creator<CellSignalStrengthWcdma>() { // from class: android.telephony.CellSignalStrengthWcdma.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public CellSignalStrengthWcdma createFromParcel(Parcel in) {
            return new CellSignalStrengthWcdma(in);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public CellSignalStrengthWcdma[] newArray(int size) {
            return new CellSignalStrengthWcdma[size];
        }
    };

    @Retention(RetentionPolicy.SOURCE)
    public @interface LevelCalculationMethod {
    }

    public CellSignalStrengthWcdma() {
        setDefaultValues();
    }

    public CellSignalStrengthWcdma(int rssi, int ber, int rscp, int ecno) {
        this.mRssi = inRangeOrUnavailable(rssi, -113, -51);
        this.mBitErrorRate = inRangeOrUnavailable(ber, 0, 7, 99);
        this.mRscp = inRangeOrUnavailable(rscp, -120, -24);
        this.mEcNo = inRangeOrUnavailable(ecno, -24, 1);
        updateLevel(null, null);
    }

    public CellSignalStrengthWcdma(CellSignalStrengthWcdma s) {
        copyFrom(s);
    }

    protected void copyFrom(CellSignalStrengthWcdma s) {
        this.mRssi = s.mRssi;
        this.mBitErrorRate = s.mBitErrorRate;
        this.mRscp = s.mRscp;
        this.mEcNo = s.mEcNo;
        this.mLevel = s.mLevel;
    }

    @Override // android.telephony.CellSignalStrength
    public CellSignalStrengthWcdma copy() {
        return new CellSignalStrengthWcdma(this);
    }

    @Override // android.telephony.CellSignalStrength
    public void setDefaultValues() {
        this.mRssi = Integer.MAX_VALUE;
        this.mBitErrorRate = Integer.MAX_VALUE;
        this.mRscp = Integer.MAX_VALUE;
        this.mEcNo = Integer.MAX_VALUE;
        this.mLevel = 0;
    }

    @Override // android.telephony.CellSignalStrength
    public int getLevel() {
        return this.mLevel;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0047  */
    @Override // android.telephony.CellSignalStrength
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void updateLevel(android.os.PersistableBundle r7, android.telephony.ServiceState r8) {
        /*
            r6 = this;
            java.lang.String r0 = "rssi"
            if (r7 != 0) goto Lb
            java.lang.String r1 = "rssi"
            int[] r2 = android.telephony.CellSignalStrengthWcdma.sRscpThresholds
            goto L2a
        Lb:
            java.lang.String r1 = "wcdma_default_signal_strength_measurement_string"
            java.lang.String r1 = r7.getString(r1, r0)
            boolean r2 = android.text.TextUtils.isEmpty(r1)
            if (r2 == 0) goto L1b
            java.lang.String r1 = "rssi"
        L1b:
            java.lang.String r2 = "wcdma_rscp_thresholds_int_array"
            int[] r2 = r7.getIntArray(r2)
            if (r2 == 0) goto L28
            int r3 = r2.length
            r4 = 4
            if (r3 == r4) goto L2a
        L28:
            int[] r2 = android.telephony.CellSignalStrengthWcdma.sRscpThresholds
        L2a:
            r3 = 4
            int r4 = r1.hashCode()
            r5 = 0
            switch(r4) {
                case 3509870: goto L3c;
                case 3510359: goto L34;
                default: goto L33;
            }
        L33:
            goto L47
        L34:
            boolean r0 = r1.equals(r0)
            if (r0 == 0) goto L33
            r0 = 2
            goto L48
        L3c:
            java.lang.String r0 = "rscp"
            boolean r0 = r1.equals(r0)
            if (r0 == 0) goto L33
            r0 = r5
            goto L48
        L47:
            r0 = -1
        L48:
            switch(r0) {
                case 0: goto L62;
                case 1: goto L4b;
                case 2: goto L80;
                default: goto L4b;
            }
        L4b:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r4 = "Invalid Level Calculation Method for CellSignalStrengthWcdma = "
            java.lang.StringBuilder r0 = r0.append(r4)
            java.lang.StringBuilder r0 = r0.append(r1)
            java.lang.String r0 = r0.toString()
            loge(r0)
            goto L80
        L62:
            int r0 = r6.mRscp
            r4 = -120(0xffffffffffffff88, float:NaN)
            if (r0 < r4) goto L7d
            r4 = -24
            if (r0 <= r4) goto L6d
            goto L7d
        L6d:
            if (r3 <= 0) goto L7a
            int r0 = r6.mRscp
            int r4 = r3 + (-1)
            r4 = r2[r4]
            if (r0 >= r4) goto L7a
            int r3 = r3 + (-1)
            goto L6d
        L7a:
            r6.mLevel = r3
            return
        L7d:
            r6.mLevel = r5
            return
        L80:
            int r0 = r6.mRssi
            r4 = -113(0xffffffffffffff8f, float:NaN)
            if (r0 < r4) goto L9d
            r4 = -51
            if (r0 <= r4) goto L8b
            goto L9d
        L8b:
            if (r3 <= 0) goto L9a
            int r0 = r6.mRssi
            int[] r4 = android.telephony.CellSignalStrengthWcdma.sRssiThresholds
            int r5 = r3 + (-1)
            r4 = r4[r5]
            if (r0 >= r4) goto L9a
            int r3 = r3 + (-1)
            goto L8b
        L9a:
            r6.mLevel = r3
            return
        L9d:
            r6.mLevel = r5
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: android.telephony.CellSignalStrengthWcdma.updateLevel(android.os.PersistableBundle, android.telephony.ServiceState):void");
    }

    @Override // android.telephony.CellSignalStrength
    public int getDbm() {
        int i = this.mRscp;
        return i != Integer.MAX_VALUE ? i : this.mRssi;
    }

    @Override // android.telephony.CellSignalStrength
    public int getAsuLevel() {
        int i = this.mRscp;
        if (i != Integer.MAX_VALUE) {
            return getAsuFromRscpDbm(i);
        }
        int i2 = this.mRssi;
        return i2 != Integer.MAX_VALUE ? getAsuFromRssiDbm(i2) : getAsuFromRscpDbm(Integer.MAX_VALUE);
    }

    public int getRssi() {
        return this.mRssi;
    }

    public int getRscp() {
        return this.mRscp;
    }

    public int getEcNo() {
        return this.mEcNo;
    }

    public int getBitErrorRate() {
        return this.mBitErrorRate;
    }

    @Override // android.telephony.CellSignalStrength
    public int hashCode() {
        return Objects.hash(Integer.valueOf(this.mRssi), Integer.valueOf(this.mBitErrorRate), Integer.valueOf(this.mRscp), Integer.valueOf(this.mEcNo), Integer.valueOf(this.mLevel));
    }

    @Override // android.telephony.CellSignalStrength
    public boolean isValid() {
        return !equals(sInvalid);
    }

    @Override // android.telephony.CellSignalStrength
    public boolean equals(Object o) {
        if (!(o instanceof CellSignalStrengthWcdma)) {
            return false;
        }
        CellSignalStrengthWcdma s = (CellSignalStrengthWcdma) o;
        return this.mRssi == s.mRssi && this.mBitErrorRate == s.mBitErrorRate && this.mRscp == s.mRscp && this.mEcNo == s.mEcNo && this.mLevel == s.mLevel;
    }

    public String toString() {
        return "CellSignalStrengthWcdma: ss=" + this.mRssi + " ber=" + this.mBitErrorRate + " rscp=" + this.mRscp + " ecno=" + this.mEcNo + " level=" + this.mLevel;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        dest.writeInt(this.mRssi);
        dest.writeInt(this.mBitErrorRate);
        dest.writeInt(this.mRscp);
        dest.writeInt(this.mEcNo);
        dest.writeInt(this.mLevel);
    }

    private CellSignalStrengthWcdma(Parcel in) {
        this.mRssi = in.readInt();
        this.mBitErrorRate = in.readInt();
        this.mRscp = in.readInt();
        this.mEcNo = in.readInt();
        this.mLevel = in.readInt();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    private static void log(String s) {
        com.android.telephony.Rlog.w(LOG_TAG, s);
    }

    private static void loge(String s) {
        com.android.telephony.Rlog.e(LOG_TAG, s);
    }
}

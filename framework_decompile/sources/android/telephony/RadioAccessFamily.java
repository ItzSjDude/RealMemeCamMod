package android.telephony;

import android.os.Parcel;
import android.os.Parcelable;
import com.android.internal.telephony.RILConstants;

/* loaded from: classes3.dex */
public class RadioAccessFamily implements Parcelable {
    private static final int CDMA = 72;
    public static final Parcelable.Creator<RadioAccessFamily> CREATOR = new Parcelable.Creator<RadioAccessFamily>() { // from class: android.telephony.RadioAccessFamily.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public RadioAccessFamily createFromParcel(Parcel in) {
            int phoneId = in.readInt();
            int radioAccessFamily = in.readInt();
            return new RadioAccessFamily(phoneId, radioAccessFamily);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public RadioAccessFamily[] newArray(int size) {
            return new RadioAccessFamily[size];
        }
    };
    private static final int EVDO = 10288;
    private static final int GSM = 32771;
    private static final int HS = 17280;
    private static final int LTE = 266240;
    private static final int NR = 524288;
    public static final int RAF_1xRTT = 64;
    public static final int RAF_EDGE = 2;
    public static final int RAF_EHRPD = 8192;
    public static final int RAF_EVDO_0 = 16;
    public static final int RAF_EVDO_A = 32;
    public static final int RAF_EVDO_B = 2048;
    public static final int RAF_GPRS = 1;
    public static final int RAF_GSM = 32768;
    public static final int RAF_HSDPA = 128;
    public static final int RAF_HSPA = 512;
    public static final int RAF_HSPAP = 16384;
    public static final int RAF_HSUPA = 256;
    public static final int RAF_IS95A = 8;
    public static final int RAF_IS95B = 8;
    public static final int RAF_LTE = 4096;
    public static final int RAF_LTE_CA = 262144;
    public static final int RAF_NR = 524288;
    public static final int RAF_TD_SCDMA = 65536;
    public static final int RAF_UMTS = 4;
    public static final int RAF_UNKNOWN = 0;
    private static final int WCDMA = 17284;
    private int mPhoneId;
    private int mRadioAccessFamily;

    public RadioAccessFamily(int phoneId, int radioAccessFamily) {
        this.mPhoneId = phoneId;
        this.mRadioAccessFamily = radioAccessFamily;
    }

    public int getPhoneId() {
        return this.mPhoneId;
    }

    public int getRadioAccessFamily() {
        return this.mRadioAccessFamily;
    }

    public String toString() {
        String ret = "{ mPhoneId = " + this.mPhoneId + ", mRadioAccessFamily = " + this.mRadioAccessFamily + "}";
        return ret;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel outParcel, int flags) {
        outParcel.writeInt(this.mPhoneId);
        outParcel.writeInt(this.mRadioAccessFamily);
    }

    public static int getRafFromNetworkType(int type) {
        switch (type) {
        }
        return 50055;
    }

    private static int getAdjustedRaf(int raf) {
        int raf2 = (raf & 32771) > 0 ? 32771 | raf : raf;
        int raf3 = (raf2 & WCDMA) > 0 ? raf2 | WCDMA : raf2;
        int raf4 = (raf3 & 72) > 0 ? raf3 | 72 : raf3;
        int raf5 = (raf4 & EVDO) > 0 ? raf4 | EVDO : raf4;
        int raf6 = (raf5 & 266240) > 0 ? 266240 | raf5 : raf5;
        return (raf6 & 524288) > 0 ? 524288 | raf6 : raf6;
    }

    public static int getNetworkTypeFromRaf(int raf) {
        switch (getAdjustedRaf(raf)) {
            case 72:
                return 5;
            case EVDO /* 10288 */:
                return 6;
            case 10360:
                return 4;
            case WCDMA /* 17284 */:
                return 2;
            case 32771:
                return 1;
            case 50055:
                return 0;
            case 60415:
                return 7;
            case 65536:
                return 13;
            case 82820:
                return 14;
            case 98307:
                return 16;
            case 115591:
                return 18;
            case 125951:
                return 21;
            case 266240:
                return 11;
            case 276600:
                return 8;
            case 283524:
                return 12;
            case 316295:
                return 9;
            case 326655:
                return 10;
            case 331776:
                return 15;
            case 349060:
                return 19;
            case 364547:
                return 17;
            case 381831:
                return 20;
            case 392191:
                return 22;
            case 524288:
                return 23;
            case 790528:
                return 24;
            case 800888:
                return 25;
            case 807812:
                return 28;
            case 840583:
                return 26;
            case 850943:
                return 27;
            case 856064:
                return 29;
            case 873348:
                return 31;
            case 888835:
                return 30;
            case 906119:
                return 32;
            case 916479:
                return 33;
            default:
                return RILConstants.PREFERRED_NETWORK_MODE;
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:74:0x0112  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int singleRafTypeFromString(java.lang.String r7) {
        /*
            Method dump skipped, instructions count: 482
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: android.telephony.RadioAccessFamily.singleRafTypeFromString(java.lang.String):int");
    }

    public static int rafTypeFromString(String rafList) {
        String[] rafs = rafList.toUpperCase().split("\\|");
        int result = 0;
        for (String raf : rafs) {
            int rafType = singleRafTypeFromString(raf.trim());
            if (rafType == 0) {
                return rafType;
            }
            result |= rafType;
        }
        return result;
    }

    public static int compare(long networkTypeBitmaskL, long networkTypeBitmaskR) {
        long[] prioritizedNetworkClassBitmasks = {524288, TelephonyManager.NETWORK_CLASS_BITMASK_4G, TelephonyManager.NETWORK_CLASS_BITMASK_3G, TelephonyManager.NETWORK_CLASS_BITMASK_2G};
        long lhsUnique = (~networkTypeBitmaskR) & networkTypeBitmaskL;
        long rhsUnique = (~networkTypeBitmaskL) & networkTypeBitmaskR;
        for (long classBitmask : prioritizedNetworkClassBitmasks) {
            int result = (lhsUnique & classBitmask) != 0 ? 0 + 1 : 0;
            if ((rhsUnique & classBitmask) != 0) {
                result--;
            }
            if (result != 0) {
                return result;
            }
        }
        return Long.bitCount(networkTypeBitmaskL) - Long.bitCount(networkTypeBitmaskR);
    }
}

package com.android.internal.power;

import android.content.res.XmlResourceParser;
import android.inputmethodservice.navigationbar.NavigationBarInflaterView;
import android.util.Slog;
import android.util.SparseArray;
import android.util.SparseDoubleArray;
import com.android.internal.telephony.DctConstants;
import com.android.internal.util.XmlUtils;
import com.oplus.uifirst.IOplusUIFirstManager;
import java.io.IOException;
import java.io.PrintWriter;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.Arrays;
import org.xmlpull.v1.XmlPullParserException;

/* loaded from: classes4.dex */
public class ModemPowerProfile {
    private static final String ATTR_LEVEL = "level";
    private static final String ATTR_NR_FREQUENCY = "nrFrequency";
    private static final String ATTR_RAT = "rat";
    public static final int MODEM_DRAIN_TYPE_IDLE = 268435456;
    private static final int MODEM_DRAIN_TYPE_MASK = -268435456;
    private static final SparseArray<String> MODEM_DRAIN_TYPE_NAMES;
    public static final int MODEM_DRAIN_TYPE_RX = 536870912;
    public static final int MODEM_DRAIN_TYPE_SLEEP = 0;
    public static final int MODEM_DRAIN_TYPE_TX = 805306368;
    public static final int MODEM_NR_FREQUENCY_RANGE_DEFAULT = 0;
    public static final int MODEM_NR_FREQUENCY_RANGE_HIGH = 196608;
    public static final int MODEM_NR_FREQUENCY_RANGE_LOW = 65536;
    private static final int MODEM_NR_FREQUENCY_RANGE_MASK = 983040;
    public static final int MODEM_NR_FREQUENCY_RANGE_MID = 131072;
    public static final int MODEM_NR_FREQUENCY_RANGE_MMWAVE = 262144;
    private static final SparseArray<String> MODEM_NR_FREQUENCY_RANGE_NAMES;
    public static final int MODEM_RAT_TYPE_DEFAULT = 0;
    public static final int MODEM_RAT_TYPE_LTE = 1048576;
    private static final int MODEM_RAT_TYPE_MASK = 15728640;
    private static final SparseArray<String> MODEM_RAT_TYPE_NAMES;
    public static final int MODEM_RAT_TYPE_NR = 2097152;
    public static final int MODEM_TX_LEVEL_0 = 0;
    public static final int MODEM_TX_LEVEL_1 = 16777216;
    public static final int MODEM_TX_LEVEL_2 = 33554432;
    public static final int MODEM_TX_LEVEL_3 = 50331648;
    public static final int MODEM_TX_LEVEL_4 = 67108864;
    private static final int MODEM_TX_LEVEL_COUNT = 5;
    private static final int[] MODEM_TX_LEVEL_MAP;
    private static final int MODEM_TX_LEVEL_MASK = 251658240;
    private static final SparseArray<String> MODEM_TX_LEVEL_NAMES;
    private static final String TAG = "ModemPowerProfile";
    private static final String TAG_ACTIVE = "active";
    private static final String TAG_IDLE = "idle";
    private static final String TAG_RECEIVE = "receive";
    private static final String TAG_SLEEP = "sleep";
    private static final String TAG_TRANSMIT = "transmit";
    private final SparseDoubleArray mPowerConstants = new SparseDoubleArray();

    @Retention(RetentionPolicy.SOURCE)
    public @interface ModemDrainType {
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface ModemNrFrequencyRange {
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface ModemRatType {
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface ModemTxLevel {
    }

    static {
        SparseArray<String> sparseArray = new SparseArray<>(4);
        MODEM_DRAIN_TYPE_NAMES = sparseArray;
        sparseArray.put(0, "SLEEP");
        sparseArray.put(268435456, "IDLE");
        sparseArray.put(536870912, "RX");
        sparseArray.put(805306368, "TX");
        MODEM_TX_LEVEL_NAMES = new SparseArray<>(5);
        sparseArray.put(0, "0");
        sparseArray.put(16777216, IOplusUIFirstManager.APP_START_ANIMATION);
        sparseArray.put(33554432, IOplusUIFirstManager.APP_EXIT_ANIMATION);
        sparseArray.put(50331648, "3");
        sparseArray.put(67108864, IOplusUIFirstManager.LAUNCHER_SI_START);
        MODEM_TX_LEVEL_MAP = new int[]{0, 16777216, 33554432, 50331648, 67108864};
        SparseArray<String> sparseArray2 = new SparseArray<>(3);
        MODEM_RAT_TYPE_NAMES = sparseArray2;
        sparseArray2.put(0, "DEFAULT");
        sparseArray2.put(1048576, DctConstants.RAT_NAME_LTE);
        sparseArray2.put(2097152, "NR");
        SparseArray<String> sparseArray3 = new SparseArray<>(5);
        MODEM_NR_FREQUENCY_RANGE_NAMES = sparseArray3;
        sparseArray3.put(0, "DEFAULT");
        sparseArray3.put(65536, "LOW");
        sparseArray3.put(131072, "MID");
        sparseArray3.put(196608, "HIGH");
        sparseArray3.put(262144, "MMWAVE");
    }

    public void parseFromXml(XmlResourceParser parser) throws XmlPullParserException, IOException {
        String name;
        int depth = parser.getDepth();
        while (XmlUtils.nextElementWithin(parser, depth)) {
            name = parser.getName();
            switch (name) {
                case "sleep":
                    if (parser.next() == 4) {
                        String sleepDrain = parser.getText();
                        setPowerConstant(0, sleepDrain);
                        break;
                    } else {
                        break;
                    }
                case "idle":
                    if (parser.next() == 4) {
                        String idleDrain = parser.getText();
                        setPowerConstant(268435456, idleDrain);
                        break;
                    } else {
                        break;
                    }
                case "active":
                    parseActivePowerConstantsFromXml(parser);
                    break;
                default:
                    Slog.e(TAG, "Unexpected element parsed: " + name);
                    break;
            }
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0048  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void parseActivePowerConstantsFromXml(android.content.res.XmlResourceParser r11) throws org.xmlpull.v1.XmlPullParserException, java.io.IOException {
        /*
            r10 = this;
            java.lang.String r0 = "ModemPowerProfile"
            java.lang.String r1 = "rat"
            android.util.SparseArray<java.lang.String> r2 = com.android.internal.power.ModemPowerProfile.MODEM_RAT_TYPE_NAMES     // Catch: java.lang.IllegalArgumentException -> Lc2
            int r1 = getTypeFromAttribute(r11, r1, r2)     // Catch: java.lang.IllegalArgumentException -> Lc2
            r2 = 2097152(0x200000, float:2.938736E-39)
            if (r1 != r2) goto L19
            java.lang.String r2 = "nrFrequency"
            android.util.SparseArray<java.lang.String> r3 = com.android.internal.power.ModemPowerProfile.MODEM_NR_FREQUENCY_RANGE_NAMES     // Catch: java.lang.IllegalArgumentException -> Lc2
            int r2 = getTypeFromAttribute(r11, r2, r3)     // Catch: java.lang.IllegalArgumentException -> Lc2
            goto L1a
        L19:
            r2 = 0
        L1a:
            int r3 = r11.getDepth()
        L1f:
            boolean r4 = com.android.internal.util.XmlUtils.nextElementWithin(r11, r3)
            if (r4 == 0) goto Lc1
            java.lang.String r4 = r11.getName()
            int r5 = r4.hashCode()
            r6 = -1
            switch(r5) {
                case 1082290915: goto L3d;
                case 1280889520: goto L32;
                default: goto L31;
            }
        L31:
            goto L48
        L32:
            java.lang.String r5 = "transmit"
            boolean r5 = r4.equals(r5)
            if (r5 == 0) goto L31
            r5 = 1
            goto L49
        L3d:
            java.lang.String r5 = "receive"
            boolean r5 = r4.equals(r5)
            if (r5 == 0) goto L31
            r5 = 0
            goto L49
        L48:
            r5 = r6
        L49:
            r7 = 4
            switch(r5) {
                case 0: goto Lab;
                case 1: goto L64;
                default: goto L4d;
            }
        L4d:
            java.lang.StringBuilder r5 = new java.lang.StringBuilder
            r5.<init>()
            java.lang.String r6 = "Unexpected element parsed: "
            java.lang.StringBuilder r5 = r5.append(r6)
            java.lang.StringBuilder r5 = r5.append(r4)
            java.lang.String r5 = r5.toString()
            android.util.Slog.e(r0, r5)
            goto Lbf
        L64:
            java.lang.String r5 = "level"
            int r5 = com.android.internal.util.XmlUtils.readIntAttribute(r11, r5, r6)
            int r6 = r11.next()
            if (r6 == r7) goto L72
            goto L1f
        L72:
            java.lang.String r6 = r11.getText()
            if (r5 < 0) goto L89
            r8 = 5
            if (r5 < r8) goto L7c
            goto L89
        L7c:
            int[] r7 = com.android.internal.power.ModemPowerProfile.MODEM_TX_LEVEL_MAP
            r7 = r7[r5]
            r8 = 805306368(0x30000000, float:4.656613E-10)
            r8 = r8 | r7
            r8 = r8 | r1
            r8 = r8 | r2
            r10.setPowerConstant(r8, r6)
            goto Lbf
        L89:
            java.lang.StringBuilder r8 = new java.lang.StringBuilder
            r8.<init>()
            java.lang.String r9 = "Unexpected tx level: "
            java.lang.StringBuilder r8 = r8.append(r9)
            java.lang.StringBuilder r8 = r8.append(r5)
            java.lang.String r9 = ". Must be between 0 and "
            java.lang.StringBuilder r8 = r8.append(r9)
            java.lang.StringBuilder r7 = r8.append(r7)
            java.lang.String r7 = r7.toString()
            android.util.Slog.e(r0, r7)
            goto L1f
        Lab:
            int r5 = r11.next()
            if (r5 == r7) goto Lb3
            goto L1f
        Lb3:
            java.lang.String r5 = r11.getText()
            r6 = 536870912(0x20000000, float:1.0842022E-19)
            r6 = r6 | r1
            r6 = r6 | r2
            r10.setPowerConstant(r6, r5)
        Lbf:
            goto L1f
        Lc1:
            return
        Lc2:
            r1 = move-exception
            java.lang.String r2 = "Failed parse to active modem power constants"
            android.util.Slog.e(r0, r2, r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.internal.power.ModemPowerProfile.parseActivePowerConstantsFromXml(android.content.res.XmlResourceParser):void");
    }

    private static int getTypeFromAttribute(XmlResourceParser parser, String attr, SparseArray<String> names) {
        String value = XmlUtils.readStringAttribute(parser, attr);
        if (value == null) {
            return 0;
        }
        int index = -1;
        int size = names.size();
        for (int i = 0; i < size; i++) {
            if (value.equals(names.valueAt(i))) {
                index = i;
            }
        }
        if (index < 0) {
            String[] stringNames = new String[size];
            for (int i2 = 0; i2 < size; i2++) {
                stringNames[i2] = names.valueAt(i2);
            }
            throw new IllegalArgumentException("Unexpected " + attr + " value : " + value + ". Acceptable values are " + Arrays.toString(stringNames));
        }
        return names.keyAt(index);
    }

    public void setPowerConstant(int key, String value) {
        try {
            this.mPowerConstants.put(key, Double.valueOf(value).doubleValue());
        } catch (Exception e) {
            Slog.e(TAG, "Failed to set power constant 0x" + Integer.toHexString(key) + NavigationBarInflaterView.KEY_CODE_START + keyToString(key) + ") to " + value, e);
        }
    }

    public double getAverageBatteryDrainMa(int key) {
        int bestKey = key;
        double value = this.mPowerConstants.get(bestKey, Double.NaN);
        if (!Double.isNaN(value)) {
            return value;
        }
        if ((983040 & bestKey) != 0) {
            bestKey = (bestKey & (-983041)) | 0;
            double value2 = this.mPowerConstants.get(bestKey, Double.NaN);
            if (!Double.isNaN(value2)) {
                return value2;
            }
        }
        if ((MODEM_RAT_TYPE_MASK & bestKey) != 0) {
            double value3 = this.mPowerConstants.get((bestKey & (-15728641)) | 0, Double.NaN);
            if (!Double.isNaN(value3)) {
                return value3;
            }
        }
        Slog.w(TAG, "getAverageBatteryDrainMaH called with unexpected key: 0x" + Integer.toHexString(key) + ", " + keyToString(key));
        return Double.NaN;
    }

    private static String keyToString(int key) {
        StringBuilder sb = new StringBuilder();
        int drainType = (-268435456) & key;
        appendFieldToString(sb, "drain", MODEM_DRAIN_TYPE_NAMES, drainType);
        sb.append(",");
        if (drainType == 805306368) {
            int txLevel = 251658240 & key;
            appendFieldToString(sb, "level", MODEM_TX_LEVEL_NAMES, txLevel);
        }
        int ratType = MODEM_RAT_TYPE_MASK & key;
        appendFieldToString(sb, "RAT", MODEM_RAT_TYPE_NAMES, ratType);
        if (ratType == 2097152) {
            sb.append(",");
            int nrFreq = 983040 & key;
            appendFieldToString(sb, "nrFreq", MODEM_NR_FREQUENCY_RANGE_NAMES, nrFreq);
        }
        return sb.toString();
    }

    private static void appendFieldToString(StringBuilder sb, String fieldName, SparseArray<String> names, int key) {
        sb.append(fieldName);
        sb.append(":");
        String name = names.get(key, null);
        if (name == null) {
            sb.append("UNKNOWN(0x");
            sb.append(Integer.toHexString(key));
            sb.append(NavigationBarInflaterView.KEY_CODE_END);
            return;
        }
        sb.append(name);
    }

    public void clear() {
        this.mPowerConstants.clear();
    }

    public void dump(PrintWriter pw) {
        int size = this.mPowerConstants.size();
        for (int i = 0; i < size; i++) {
            pw.print(keyToString(this.mPowerConstants.keyAt(i)));
            pw.print("=");
            pw.println(this.mPowerConstants.valueAt(i));
        }
    }
}

package vendor.oplus.hardware.rpmh.V1_0;

import java.util.ArrayList;

/* loaded from: classes5.dex */
public final class RpmhErrorCode {
    public static final int ERR_FILE_FAILURE_ACCESS = Integer.MIN_VALUE;
    public static final int ERR_FILE_FAILURE_OPEN = -2147483647;
    public static final int ERR_FILE_FAILURE_READ = -2147483646;
    public static final int ERR_FILE_FAILURE_WRITE = -2147483645;
    public static final int ERR_FILE_NOT_EXIST = -2147483644;

    public static final String toString(int o) {
        if (o == Integer.MIN_VALUE) {
            return "ERR_FILE_FAILURE_ACCESS";
        }
        if (o == -2147483647) {
            return "ERR_FILE_FAILURE_OPEN";
        }
        if (o == -2147483646) {
            return "ERR_FILE_FAILURE_READ";
        }
        if (o == -2147483645) {
            return "ERR_FILE_FAILURE_WRITE";
        }
        if (o == -2147483644) {
            return "ERR_FILE_NOT_EXIST";
        }
        return "0x" + Integer.toHexString(o);
    }

    public static final String dumpBitfield(int o) {
        ArrayList<String> list = new ArrayList<>();
        int flipped = 0;
        if ((o & Integer.MIN_VALUE) == Integer.MIN_VALUE) {
            list.add("ERR_FILE_FAILURE_ACCESS");
            flipped = 0 | Integer.MIN_VALUE;
        }
        if ((o & (-2147483647)) == -2147483647) {
            list.add("ERR_FILE_FAILURE_OPEN");
            flipped |= -2147483647;
        }
        if ((o & (-2147483646)) == -2147483646) {
            list.add("ERR_FILE_FAILURE_READ");
            flipped |= -2147483646;
        }
        if ((o & ERR_FILE_FAILURE_WRITE) == -2147483645) {
            list.add("ERR_FILE_FAILURE_WRITE");
            flipped |= ERR_FILE_FAILURE_WRITE;
        }
        if ((o & (-2147483644)) == -2147483644) {
            list.add("ERR_FILE_NOT_EXIST");
            flipped |= -2147483644;
        }
        if (o != flipped) {
            list.add("0x" + Integer.toHexString((~flipped) & o));
        }
        return String.join(" | ", list);
    }
}

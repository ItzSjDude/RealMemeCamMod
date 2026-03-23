package com.oplus.exif;

import java.nio.charset.Charset;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.Date;
/* loaded from: classes.dex */
public class OplusExifTag {
    public static final String EXIF_KEY_TAGFLAGS = "tagflags";
    public static final int EXIF_TAG_AI_ID_PHOTO = 16384;
    public static final int EXIF_TAG_BOKEH = 16;
    public static final int EXIF_TAG_DOUBLE_EXPOSURE = 32768;
    public static final int EXIF_TAG_ENHANCE_TEXT = 4096;
    public static final int EXIF_TAG_FACE_BEAUTY = 2;
    public static final int EXIF_TAG_FAST_VIDEO = 8;
    public static final int EXIF_TAG_FILTER = 1024;
    public static final int EXIF_TAG_FRONT_CAMERA = 1;
    public static final int EXIF_TAG_MODEL = 128;
    public static final int EXIF_TAG_NIGHT_SCENE = 2048;
    public static final int EXIF_TAG_PANORAMA = 4;
    public static final String EXIF_TAG_PREFIX = "Oplus_";
    public static final int EXIF_TAG_PROFESSION = 256;
    public static final int EXIF_TAG_RELIGHT = 64;
    public static final int EXIF_TAG_STICKER = 512;
    public static final int EXIF_TAG_SUPER_HIGH_RESOLUTION = 8192;
    public static final int EXIF_TAG_WITH_ORIENTATION = 32;
    private static final long LONG_MAX = 2147483647L;
    private static final long LONG_MIN = -2147483648L;
    static final int SIZE_UNDEFINED = 0;
    private static final SimpleDateFormat TIME_FORMAT;
    public static final short TYPE_ASCII = 2;
    public static final short TYPE_LONG = 9;
    public static final short TYPE_RATIONAL = 10;
    public static final short TYPE_UNDEFINED = 7;
    public static final short TYPE_UNSIGNED_BYTE = 1;
    public static final short TYPE_UNSIGNED_LONG = 4;
    public static final short TYPE_UNSIGNED_RATIONAL = 5;
    public static final short TYPE_UNSIGNED_SHORT = 3;
    private static final long UNSIGNED_LONG_MAX = 4294967295L;
    private static final int UNSIGNED_SHORT_MAX = 65535;
    private int mComponentCountActual;
    private final short mDataType;
    private boolean mHasDefinedDefaultComponentCount;
    private int mIfd;
    private int mOffset;
    private final short mTagId;
    private Object mValue = null;
    private static Charset US_ASCII = Charset.forName("US-ASCII");
    private static final int[] TYPE_TO_SIZE_MAP = new int[11];

    private static String convertTypeToString(short s) {
        switch (s) {
            case 1:
                return "UNSIGNED_BYTE";
            case 2:
                return "ASCII";
            case 3:
                return "UNSIGNED_SHORT";
            case 4:
                return "UNSIGNED_LONG";
            case 5:
                return "UNSIGNED_RATIONAL";
            case 6:
            case 8:
            default:
                return "";
            case 7:
                return "UNDEFINED";
            case 9:
                return "LONG";
            case 10:
                return "RATIONAL";
        }
    }

    public static boolean isValidIfd(int i) {
        return i == 0 || i == 1 || i == 2 || i == 3 || i == 4;
    }

    public static boolean isValidType(short s) {
        return s == 1 || s == 2 || s == 3 || s == 4 || s == 5 || s == 7 || s == 9 || s == 10;
    }

    static {
        TYPE_TO_SIZE_MAP[1] = 1;
        TYPE_TO_SIZE_MAP[2] = 1;
        TYPE_TO_SIZE_MAP[3] = 2;
        TYPE_TO_SIZE_MAP[4] = 4;
        TYPE_TO_SIZE_MAP[5] = 8;
        TYPE_TO_SIZE_MAP[7] = 1;
        TYPE_TO_SIZE_MAP[9] = 4;
        TYPE_TO_SIZE_MAP[10] = 8;
        TIME_FORMAT = new SimpleDateFormat("yyyy:MM:dd HH:mm:ss");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public OplusExifTag(short s, short s2, int i, int i2, boolean z) {
        this.mTagId = s;
        this.mDataType = s2;
        this.mComponentCountActual = i;
        this.mHasDefinedDefaultComponentCount = z;
        this.mIfd = i2;
    }

    public static int getElementSize(short s) {
        return TYPE_TO_SIZE_MAP[s];
    }

    public int getIfd() {
        return this.mIfd;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void setIfd(int i) {
        this.mIfd = i;
    }

    public short getTagId() {
        return this.mTagId;
    }

    public short getDataType() {
        return this.mDataType;
    }

    public int getDataSize() {
        return getComponentCount() * getElementSize(getDataType());
    }

    public int getComponentCount() {
        return this.mComponentCountActual;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void forceSetComponentCount(int i) {
        this.mComponentCountActual = i;
    }

    public boolean hasValue() {
        return this.mValue != null;
    }

    public boolean setValue(int[] iArr) {
        if (checkBadComponentCount(iArr.length)) {
            return false;
        }
        if (this.mDataType == 3 || this.mDataType == 9 || this.mDataType == 4) {
            if (this.mDataType == 3 && checkOverflowForUnsignedShort(iArr)) {
                return false;
            }
            if (this.mDataType == 4 && checkOverflowForUnsignedLong(iArr)) {
                return false;
            }
            long[] jArr = new long[iArr.length];
            for (int i = 0; i < iArr.length; i++) {
                jArr[i] = iArr[i];
            }
            this.mValue = jArr;
            this.mComponentCountActual = iArr.length;
            return true;
        }
        return false;
    }

    public boolean setValue(int i) {
        return setValue(new int[]{i});
    }

    public boolean setValue(long[] jArr) {
        if (checkBadComponentCount(jArr.length) || this.mDataType != 4 || checkOverflowForUnsignedLong(jArr)) {
            return false;
        }
        this.mValue = jArr;
        this.mComponentCountActual = jArr.length;
        return true;
    }

    public boolean setValue(long j) {
        return setValue(new long[]{j});
    }

    public boolean setValue(String str) {
        if (this.mDataType == 2 || this.mDataType == 7) {
            byte[] bytes = str.getBytes(US_ASCII);
            if (bytes.length > 0) {
                if (bytes[bytes.length - 1] != 0 && this.mDataType != 7) {
                    bytes = Arrays.copyOf(bytes, bytes.length + 1);
                }
            } else if (this.mDataType == 2 && this.mComponentCountActual == 1) {
                bytes = new byte[]{0};
            }
            int length = bytes.length;
            if (checkBadComponentCount(length)) {
                return false;
            }
            this.mComponentCountActual = length;
            this.mValue = bytes;
            return true;
        }
        return false;
    }

    public boolean setValue(OplusRational[] oplusRationalArr) {
        if (checkBadComponentCount(oplusRationalArr.length)) {
            return false;
        }
        if (this.mDataType == 5 || this.mDataType == 10) {
            if (this.mDataType == 5 && checkOverflowForUnsignedRational(oplusRationalArr)) {
                return false;
            }
            if (this.mDataType == 10 && checkOverflowForRational(oplusRationalArr)) {
                return false;
            }
            this.mValue = oplusRationalArr;
            this.mComponentCountActual = oplusRationalArr.length;
            return true;
        }
        return false;
    }

    public boolean setValue(OplusRational oplusRational) {
        return setValue(new OplusRational[]{oplusRational});
    }

    public boolean setValue(byte[] bArr, int i, int i2) {
        if (checkBadComponentCount(i2)) {
            return false;
        }
        if (this.mDataType == 1 || this.mDataType == 7) {
            this.mValue = new byte[i2];
            System.arraycopy(bArr, i, this.mValue, 0, i2);
            this.mComponentCountActual = i2;
            return true;
        }
        return false;
    }

    public boolean setValue(byte[] bArr) {
        return setValue(bArr, 0, bArr.length);
    }

    public boolean setValue(byte b) {
        return setValue(new byte[]{b});
    }

    public boolean setValue(Object obj) {
        if (obj == null) {
            return false;
        }
        if (obj instanceof Short) {
            return setValue(((Short) obj).shortValue() & UNSIGNED_SHORT_MAX);
        }
        if (obj instanceof String) {
            return setValue((String) obj);
        }
        if (obj instanceof int[]) {
            return setValue((int[]) obj);
        }
        if (obj instanceof long[]) {
            return setValue((long[]) obj);
        }
        if (obj instanceof OplusRational) {
            return setValue((OplusRational) obj);
        }
        if (obj instanceof OplusRational[]) {
            return setValue((OplusRational[]) obj);
        }
        if (obj instanceof byte[]) {
            return setValue((byte[]) obj);
        }
        if (obj instanceof Integer) {
            return setValue(((Integer) obj).intValue());
        }
        if (obj instanceof Long) {
            return setValue(((Long) obj).longValue());
        }
        if (obj instanceof Byte) {
            return setValue(((Byte) obj).byteValue());
        }
        if (obj instanceof Short[]) {
            Short[] shArr = (Short[]) obj;
            int[] iArr = new int[shArr.length];
            for (int i = 0; i < shArr.length; i++) {
                iArr[i] = shArr[i] == null ? 0 : shArr[i].shortValue() & UNSIGNED_SHORT_MAX;
            }
            return setValue(iArr);
        } else if (obj instanceof Integer[]) {
            Integer[] numArr = (Integer[]) obj;
            int[] iArr2 = new int[numArr.length];
            for (int i2 = 0; i2 < numArr.length; i2++) {
                iArr2[i2] = numArr[i2] == null ? 0 : numArr[i2].intValue();
            }
            return setValue(iArr2);
        } else if (obj instanceof Long[]) {
            Long[] lArr = (Long[]) obj;
            long[] jArr = new long[lArr.length];
            for (int i3 = 0; i3 < lArr.length; i3++) {
                jArr[i3] = lArr[i3] == null ? 0L : lArr[i3].longValue();
            }
            return setValue(jArr);
        } else if (obj instanceof Byte[]) {
            Byte[] bArr = (Byte[]) obj;
            byte[] bArr2 = new byte[bArr.length];
            for (int i4 = 0; i4 < bArr.length; i4++) {
                bArr2[i4] = bArr[i4] == null ? (byte) 0 : bArr[i4].byteValue();
            }
            return setValue(bArr2);
        } else {
            return false;
        }
    }

    public boolean setTimeValue(long j) {
        boolean value;
        synchronized (TIME_FORMAT) {
            value = setValue(TIME_FORMAT.format(new Date(j)));
        }
        return value;
    }

    public String getValueAsString() {
        if (this.mValue == null) {
            return null;
        }
        if (this.mValue instanceof String) {
            return (String) this.mValue;
        }
        if (this.mValue instanceof byte[]) {
            return new String((byte[]) this.mValue, US_ASCII);
        }
        return null;
    }

    public String getValueAsString(String str) {
        String valueAsString = getValueAsString();
        return valueAsString == null ? str : valueAsString;
    }

    public byte[] getValueAsBytes() {
        if (this.mValue instanceof byte[]) {
            return (byte[]) this.mValue;
        }
        return null;
    }

    public byte getValueAsByte(byte b) {
        byte[] valueAsBytes = getValueAsBytes();
        return (valueAsBytes == null || valueAsBytes.length < 1) ? b : valueAsBytes[0];
    }

    public OplusRational[] getValueAsRationals() {
        if (this.mValue instanceof OplusRational[]) {
            return (OplusRational[]) this.mValue;
        }
        return null;
    }

    public OplusRational getValueAsRational(OplusRational oplusRational) {
        OplusRational[] valueAsRationals = getValueAsRationals();
        return (valueAsRationals == null || valueAsRationals.length < 1) ? oplusRational : valueAsRationals[0];
    }

    public OplusRational getValueAsRational(long j) {
        return getValueAsRational(new OplusRational(j, 1L));
    }

    public int[] getValueAsInts() {
        if (this.mValue != null && (this.mValue instanceof long[])) {
            long[] jArr = (long[]) this.mValue;
            int[] iArr = new int[jArr.length];
            for (int i = 0; i < jArr.length; i++) {
                iArr[i] = (int) jArr[i];
            }
            return iArr;
        }
        return null;
    }

    public int getValueAsInt(int i) {
        int[] valueAsInts = getValueAsInts();
        return (valueAsInts == null || valueAsInts.length < 1) ? i : valueAsInts[0];
    }

    public long[] getValueAsLongs() {
        if (this.mValue instanceof long[]) {
            return (long[]) this.mValue;
        }
        return null;
    }

    public long getValueAsLong(long j) {
        long[] valueAsLongs = getValueAsLongs();
        return (valueAsLongs == null || valueAsLongs.length < 1) ? j : valueAsLongs[0];
    }

    public Object getValue() {
        return this.mValue;
    }

    public long forceGetValueAsLong(long j) {
        long[] valueAsLongs = getValueAsLongs();
        if (valueAsLongs != null && valueAsLongs.length >= 1) {
            return valueAsLongs[0];
        }
        byte[] valueAsBytes = getValueAsBytes();
        if (valueAsBytes != null && valueAsBytes.length >= 1) {
            return valueAsBytes[0];
        }
        OplusRational[] valueAsRationals = getValueAsRationals();
        return (valueAsRationals == null || valueAsRationals.length < 1 || valueAsRationals[0].getDenominator() == 0) ? j : (long) valueAsRationals[0].toDouble();
    }

    public String forceGetValueAsString() {
        if (this.mValue == null) {
            return "";
        }
        if (this.mValue instanceof byte[]) {
            if (this.mDataType == 2) {
                return new String((byte[]) this.mValue, US_ASCII);
            }
            return Arrays.toString((byte[]) this.mValue);
        } else if (this.mValue instanceof long[]) {
            if (((long[]) this.mValue).length == 1) {
                return String.valueOf(((long[]) this.mValue)[0]);
            }
            return Arrays.toString((long[]) this.mValue);
        } else if (this.mValue instanceof Object[]) {
            if (((Object[]) this.mValue).length == 1) {
                Object obj = ((Object[]) this.mValue)[0];
                return obj == null ? "" : obj.toString();
            }
            return Arrays.toString((Object[]) this.mValue);
        } else {
            return this.mValue.toString();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public long getValueAt(int i) {
        if (this.mValue instanceof long[]) {
            return ((long[]) this.mValue)[i];
        }
        if (this.mValue instanceof byte[]) {
            return ((byte[]) this.mValue)[i];
        }
        throw new IllegalArgumentException("Cannot get integer value from " + convertTypeToString(this.mDataType));
    }

    protected String getString() {
        if (this.mDataType != 2) {
            throw new IllegalArgumentException("Cannot get ASCII value from " + convertTypeToString(this.mDataType));
        }
        return new String((byte[]) this.mValue, US_ASCII);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public byte[] getStringByte() {
        return (byte[]) this.mValue;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public OplusRational getRational(int i) {
        if (this.mDataType != 10 && this.mDataType != 5) {
            throw new IllegalArgumentException("Cannot get RATIONAL value from " + convertTypeToString(this.mDataType));
        }
        return ((OplusRational[]) this.mValue)[i];
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void getBytes(byte[] bArr) {
        getBytes(bArr, 0, bArr.length);
    }

    protected void getBytes(byte[] bArr, int i, int i2) {
        if (this.mDataType != 7 && this.mDataType != 1) {
            throw new IllegalArgumentException("Cannot get BYTE value from " + convertTypeToString(this.mDataType));
        }
        Object obj = this.mValue;
        if (i2 > this.mComponentCountActual) {
            i2 = this.mComponentCountActual;
        }
        System.arraycopy(obj, 0, bArr, i, i2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public int getOffset() {
        return this.mOffset;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void setOffset(int i) {
        this.mOffset = i;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void setHasDefinedCount(boolean z) {
        this.mHasDefinedDefaultComponentCount = z;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean hasDefinedCount() {
        return this.mHasDefinedDefaultComponentCount;
    }

    private boolean checkBadComponentCount(int i) {
        return this.mHasDefinedDefaultComponentCount && this.mComponentCountActual != i;
    }

    private boolean checkOverflowForUnsignedShort(int[] iArr) {
        for (int i : iArr) {
            if (i > UNSIGNED_SHORT_MAX || i < 0) {
                return true;
            }
        }
        return false;
    }

    private boolean checkOverflowForUnsignedLong(long[] jArr) {
        for (long j : jArr) {
            if (j < 0 || j > UNSIGNED_LONG_MAX) {
                return true;
            }
        }
        return false;
    }

    private boolean checkOverflowForUnsignedLong(int[] iArr) {
        for (int i : iArr) {
            if (i < 0) {
                return true;
            }
        }
        return false;
    }

    private boolean checkOverflowForUnsignedRational(OplusRational[] oplusRationalArr) {
        for (OplusRational oplusRational : oplusRationalArr) {
            if (oplusRational.getNumerator() < 0 || oplusRational.getDenominator() < 0 || oplusRational.getNumerator() > UNSIGNED_LONG_MAX || oplusRational.getDenominator() > UNSIGNED_LONG_MAX) {
                return true;
            }
        }
        return false;
    }

    private boolean checkOverflowForRational(OplusRational[] oplusRationalArr) {
        for (OplusRational oplusRational : oplusRationalArr) {
            if (oplusRational.getNumerator() < LONG_MIN || oplusRational.getDenominator() < LONG_MIN || oplusRational.getNumerator() > LONG_MAX || oplusRational.getDenominator() > LONG_MAX) {
                return true;
            }
        }
        return false;
    }

    public boolean equals(Object obj) {
        if (obj != null && (obj instanceof OplusExifTag)) {
            OplusExifTag oplusExifTag = (OplusExifTag) obj;
            if (oplusExifTag.mTagId == this.mTagId && oplusExifTag.mComponentCountActual == this.mComponentCountActual && oplusExifTag.mDataType == this.mDataType) {
                if (this.mValue == null) {
                    return oplusExifTag.mValue == null;
                } else if (oplusExifTag.mValue == null) {
                    return false;
                } else {
                    if (this.mValue instanceof long[]) {
                        if (oplusExifTag.mValue instanceof long[]) {
                            return Arrays.equals((long[]) this.mValue, (long[]) oplusExifTag.mValue);
                        }
                        return false;
                    } else if (this.mValue instanceof OplusRational[]) {
                        if (oplusExifTag.mValue instanceof OplusRational[]) {
                            return Arrays.equals((OplusRational[]) this.mValue, (OplusRational[]) oplusExifTag.mValue);
                        }
                        return false;
                    } else if (this.mValue instanceof byte[]) {
                        if (oplusExifTag.mValue instanceof byte[]) {
                            return Arrays.equals((byte[]) this.mValue, (byte[]) oplusExifTag.mValue);
                        }
                        return false;
                    } else {
                        return this.mValue.equals(oplusExifTag.mValue);
                    }
                }
            }
            return false;
        }
        return false;
    }

    public int hashCode() {
        return toString().hashCode();
    }

    public String toString() {
        return String.format("tag id: %04X\n", Short.valueOf(this.mTagId)) + "ifd id: " + this.mIfd + "\ntype: " + convertTypeToString(this.mDataType) + "\ncount: " + this.mComponentCountActual + "\noffset: " + this.mOffset + "\nvalue: " + forceGetValueAsString() + "\n";
    }
}

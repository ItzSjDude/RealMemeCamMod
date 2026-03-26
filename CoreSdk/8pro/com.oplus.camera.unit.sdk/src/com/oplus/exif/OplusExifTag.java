package com.oplus.exif;

import java.nio.charset.Charset;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.Date;

/* JADX INFO: loaded from: classes.dex */
public class OplusExifTag {
    public static final int IFD_0 = 0;
    public static final int IFD_1 = 1;
    public static final int IFD_2 = 2;
    public static final int IFD_3 = 3;
    public static final int IFD_4 = 4;
    public static final int NUM_IFDS = 5;
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
    private static final int[] TYPE_TO_SIZE_MAP = { 0, 1, 1, 2, 4, 8, 0, 1, 0, 4, 8 };
    private static final SimpleDateFormat TIME_FORMAT = new SimpleDateFormat("yyyy:MM:dd HH:mm:ss");

    private static String convertTypeToString(short type) {
        switch (type) {
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

    public static boolean isValidIfd(int ifdId) {
        return ifdId == 0 || ifdId == 1 || ifdId == 2 || ifdId == 3 || ifdId == 4;
    }

    public static boolean isValidType(short type) {
        return type == 1 || type == 2 || type == 3 || type == 4 || type == 5 || type == 7 || type == 9 || type == 10;
    }

    OplusExifTag(short tagId, short dataType, int componentCount, int ifdId, boolean hasDefinedCount) {
        this.mTagId = tagId;
        this.mDataType = dataType;
        this.mComponentCountActual = componentCount;
        this.mHasDefinedDefaultComponentCount = hasDefinedCount;
        this.mIfd = ifdId;
    }

    public static int getElementSize(short type) {
        return TYPE_TO_SIZE_MAP[type];
    }

    public int getIfd() {
        return this.mIfd;
    }

    protected void setIfd(int ifdId) {
        this.mIfd = ifdId;
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

    protected void forceSetComponentCount(int componentCount) {
        this.mComponentCountActual = componentCount;
    }

    public boolean hasValue() {
        return this.mValue != null;
    }

    public boolean setValue(int[] values) {
        if (checkBadComponentCount(values.length)) {
            return false;
        }
        short type = this.mDataType;
        if (type != 3 && type != 9 && type != 4) {
            return false;
        }
        if (type == 3 && checkOverflowForUnsignedShort(values)) {
            return false;
        }
        if (this.mDataType == 4 && checkOverflowForUnsignedLong(values)) {
            return false;
        }
        long[] longValues = new long[values.length];
        for (int i = 0; i < values.length; i++) {
            longValues[i] = values[i];
        }
        this.mValue = longValues;
        this.mComponentCountActual = values.length;
        return true;
    }

    public boolean setValue(int value) {
        return setValue(new int[] { value });
    }

    public boolean setValue(long[] values) {
        if (checkBadComponentCount(values.length) || this.mDataType != 4 || checkOverflowForUnsignedLong(values)) {
            return false;
        }
        this.mValue = values;
        this.mComponentCountActual = values.length;
        return true;
    }

    public boolean setValue(long value) {
        return setValue(new long[] { value });
    }

    public boolean setValue(String value) {
        short type = this.mDataType;
        if (type != 2 && type != 7) {
            return false;
        }
        byte[] bytes = value.getBytes(US_ASCII);
        if (bytes.length > 0) {
            if (bytes[bytes.length - 1] != 0 && this.mDataType != 7) {
                bytes = Arrays.copyOf(bytes, bytes.length + 1);
            }
        } else if (this.mDataType == 2 && this.mComponentCountActual == 1) {
            bytes = new byte[] { 0 };
        }
        int length = bytes.length;
        if (checkBadComponentCount(length)) {
            return false;
        }
        this.mComponentCountActual = length;
        this.mValue = bytes;
        return true;
    }

    public boolean setValue(OplusRational[] values) {
        if (checkBadComponentCount(values.length)) {
            return false;
        }
        short type = this.mDataType;
        if (type != 5 && type != 10) {
            return false;
        }
        if (type == 5 && checkOverflowForUnsignedRational(values)) {
            return false;
        }
        if (this.mDataType == 10 && checkOverflowForRational(values)) {
            return false;
        }
        this.mValue = values;
        this.mComponentCountActual = values.length;
        return true;
    }

    public boolean setValue(OplusRational oplusRational) {
        return setValue(new OplusRational[] { oplusRational });
    }

    public boolean setValue(byte[] values, int offset, int length) {
        if (checkBadComponentCount(length)) {
            return false;
        }
        short type = this.mDataType;
        if (type != 1 && type != 7) {
            return false;
        }
        byte[] result = new byte[length];
        this.mValue = result;
        System.arraycopy(values, offset, result, 0, length);
        this.mComponentCountActual = length;
        return true;
    }

    public boolean setValue(byte[] values) {
        return setValue(values, 0, values.length);
    }

    public boolean setValue(byte b) {
        return setValue(new byte[] { b });
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
                Short sh = shArr[i];
                iArr[i] = sh == null ? 0 : sh.shortValue() & UNSIGNED_SHORT_MAX;
            }
            return setValue(iArr);
        }
        if (obj instanceof Integer[]) {
            Integer[] numArr = (Integer[]) obj;
            int[] iArr2 = new int[numArr.length];
            for (int i2 = 0; i2 < numArr.length; i2++) {
                Integer num = numArr[i2];
                iArr2[i2] = num == null ? 0 : num.intValue();
            }
            return setValue(iArr2);
        }
        if (obj instanceof Long[]) {
            Long[] lArr = (Long[]) obj;
            long[] jArr = new long[lArr.length];
            for (int i3 = 0; i3 < lArr.length; i3++) {
                Long l = lArr[i3];
                jArr[i3] = l == null ? 0L : l.longValue();
            }
            return setValue(jArr);
        }
        if (!(obj instanceof Byte[])) {
            return false;
        }
        Byte[] bArr = (Byte[]) obj;
        byte[] bArr2 = new byte[bArr.length];
        for (int i4 = 0; i4 < bArr.length; i4++) {
            Byte b = bArr[i4];
            bArr2[i4] = b == null ? (byte) 0 : b.byteValue();
        }
        return setValue(bArr2);
    }

    public boolean setTimeValue(long timestamp) {
        boolean success;
        SimpleDateFormat simpleDateFormat = TIME_FORMAT;
        synchronized (simpleDateFormat) {
            success = setValue(simpleDateFormat.format(new Date(timestamp)));
        }
        return success;
    }

    public String getValueAsString() {
        Object obj = this.mValue;
        if (obj == null) {
            return null;
        }
        if (obj instanceof String) {
            return (String) obj;
        }
        if (obj instanceof byte[]) {
            return new String((byte[]) obj, US_ASCII);
        }
        return null;
    }

    public String getValueAsString(String str) {
        String valueAsString = getValueAsString();
        return valueAsString == null ? str : valueAsString;
    }

    public byte[] getValueAsBytes() {
        Object obj = this.mValue;
        if (obj instanceof byte[]) {
            return (byte[]) obj;
        }
        return null;
    }

    public byte getValueAsByte(byte defaultValue) {
        byte[] values = getValueAsBytes();
        return (values == null || values.length < 1) ? defaultValue : values[0];
    }

    public OplusRational[] getValueAsRationals() {
        Object obj = this.mValue;
        if (obj instanceof OplusRational[]) {
            return (OplusRational[]) obj;
        }
        return null;
    }

    public OplusRational getValueAsRational(OplusRational defaultValue) {
        OplusRational[] values = getValueAsRationals();
        return (values == null || values.length < 1) ? defaultValue : values[0];
    }

    public OplusRational getValueAsRational(long defaultValue) {
        return getValueAsRational(new OplusRational(defaultValue, 1L));
    }

    public int[] getValueAsInts() {
        Object obj = this.mValue;
        int[] iArr = null;
        if (obj == null) {
            return null;
        }
        if (obj instanceof long[]) {
            long[] jArr = (long[]) obj;
            iArr = new int[jArr.length];
            for (int i = 0; i < jArr.length; i++) {
                iArr[i] = (int) jArr[i];
            }
        }
        return iArr;
    }

    public int getValueAsInt(int defaultValue) {
        int[] values = getValueAsInts();
        return (values == null || values.length < 1) ? defaultValue : values[0];
    }

    public long[] getValueAsLongs() {
        Object obj = this.mValue;
        if (obj instanceof long[]) {
            return (long[]) obj;
        }
        return null;
    }

    public long getValueAsLong(long defaultValue) {
        long[] values = getValueAsLongs();
        return (values == null || values.length < 1) ? defaultValue : values[0];
    }

    public Object getValue() {
        return this.mValue;
    }

    public long forceGetValueAsLong(long defaultValue) {
        long[] valuesAsLongs = getValueAsLongs();
        if (valuesAsLongs != null && valuesAsLongs.length >= 1) {
            return valuesAsLongs[0];
        }
        byte[] valuesAsBytes = getValueAsBytes();
        if (valuesAsBytes != null && valuesAsBytes.length >= 1) {
            return valuesAsBytes[0];
        }
        OplusRational[] valuesAsRationals = getValueAsRationals();
        return (valuesAsRationals == null || valuesAsRationals.length < 1 || valuesAsRationals[0].getDenominator() == 0)
                ? defaultValue
                : (long) valuesAsRationals[0].toDouble();
    }

    public String forceGetValueAsString() {
        Object obj = this.mValue;
        if (obj == null) {
            return "";
        }
        if (obj instanceof byte[]) {
            if (this.mDataType == 2) {
                return new String((byte[]) obj, US_ASCII);
            }
            return Arrays.toString((byte[]) obj);
        }
        if (obj instanceof long[]) {
            if (((long[]) obj).length == 1) {
                return String.valueOf(((long[]) obj)[0]);
            }
            return Arrays.toString((long[]) obj);
        }
        if (obj instanceof Object[]) {
            if (((Object[]) obj).length == 1) {
                Object obj2 = ((Object[]) obj)[0];
                return obj2 == null ? "" : obj2.toString();
            }
            return Arrays.toString((Object[]) obj);
        }
        return obj.toString();
    }

    protected long getValueAt(int index) {
        Object value = this.mValue;
        if (value instanceof long[]) {
            return ((long[]) value)[index];
        }
        if (value instanceof byte[]) {
            return ((byte[]) value)[index];
        }
        throw new IllegalArgumentException("Cannot get integer value from " + convertTypeToString(this.mDataType));
    }

    protected String getString() {
        if (this.mDataType != 2) {
            throw new IllegalArgumentException("Cannot get ASCII value from " + convertTypeToString(this.mDataType));
        }
        return new String((byte[]) this.mValue, US_ASCII);
    }

    protected byte[] getStringByte() {
        return (byte[]) this.mValue;
    }

    protected OplusRational getRational(int index) {
        short dataType = this.mDataType;
        if (dataType != 10 && dataType != 5) {
            throw new IllegalArgumentException("Cannot get RATIONAL value from " + convertTypeToString(this.mDataType));
        }
        return ((OplusRational[]) this.mValue)[index];
    }

    protected void getBytes(byte[] bArr) {
        getBytes(bArr, 0, bArr.length);
    }

    protected void getBytes(byte[] buffer, int offset, int length) {
        short dataType = this.mDataType;
        if (dataType != 7 && dataType != 1) {
            throw new IllegalArgumentException("Cannot get BYTE value from " + convertTypeToString(this.mDataType));
        }
        Object value = this.mValue;
        int actualCount = this.mComponentCountActual;
        if (length > actualCount) {
            length = actualCount;
        }
        System.arraycopy(value, 0, buffer, offset, length);
    }

    protected int getOffset() {
        return this.mOffset;
    }

    protected void setOffset(int offset) {
        this.mOffset = offset;
    }

    protected void setHasDefinedCount(boolean hasDefinedCount) {
        this.mHasDefinedDefaultComponentCount = hasDefinedCount;
    }

    protected boolean hasDefinedCount() {
        return this.mHasDefinedDefaultComponentCount;
    }

    private boolean checkBadComponentCount(int count) {
        return this.mHasDefinedDefaultComponentCount && this.mComponentCountActual != count;
    }

    private boolean checkOverflowForUnsignedShort(int[] values) {
        for (int value : values) {
            if (value > UNSIGNED_SHORT_MAX || value < 0) {
                return true;
            }
        }
        return false;
    }

    private boolean checkOverflowForUnsignedLong(long[] values) {
        for (long value : values) {
            if (value < 0 || value > UNSIGNED_LONG_MAX) {
                return true;
            }
        }
        return false;
    }

    private boolean checkOverflowForUnsignedLong(int[] values) {
        for (int value : values) {
            if (value < 0) {
                return true;
            }
        }
        return false;
    }

    private boolean checkOverflowForUnsignedRational(OplusRational[] oplusRationalArr) {
        for (OplusRational oplusRational : oplusRationalArr) {
            if (oplusRational.getNumerator() < 0 || oplusRational.getDenominator() < 0
                    || oplusRational.getNumerator() > UNSIGNED_LONG_MAX
                    || oplusRational.getDenominator() > UNSIGNED_LONG_MAX) {
                return true;
            }
        }
        return false;
    }

    private boolean checkOverflowForRational(OplusRational[] oplusRationalArr) {
        for (OplusRational oplusRational : oplusRationalArr) {
            if (oplusRational.getNumerator() < LONG_MIN || oplusRational.getDenominator() < LONG_MIN
                    || oplusRational.getNumerator() > LONG_MAX || oplusRational.getDenominator() > LONG_MAX) {
                return true;
            }
        }
        return false;
    }

    public boolean equals(Object obj) {
        if (obj == null || !(obj instanceof OplusExifTag)) {
            return false;
        }
        OplusExifTag other = (OplusExifTag) obj;
        if (other.mTagId != this.mTagId || other.mComponentCountActual != this.mComponentCountActual
                || other.mDataType != this.mDataType) {
            return false;
        }
        Object myValue = this.mValue;
        if (myValue == null) {
            return other.mValue == null;
        }
        Object otherValue = other.mValue;
        if (otherValue == null) {
            return false;
        }
        if (myValue instanceof long[]) {
            if (otherValue instanceof long[]) {
                return Arrays.equals((long[]) myValue, (long[]) otherValue);
            }
            return false;
        }
        if (myValue instanceof OplusRational[]) {
            if (otherValue instanceof OplusRational[]) {
                return Arrays.equals((OplusRational[]) myValue, (OplusRational[]) otherValue);
            }
            return false;
        }
        if (myValue instanceof byte[]) {
            if (otherValue instanceof byte[]) {
                return Arrays.equals((byte[]) myValue, (byte[]) otherValue);
            }
            return false;
        }
        return myValue.equals(otherValue);
    }

    public int hashCode() {
        return toString().hashCode();
    }

    public String toString() {
        return String.format("tag id: %04X\n", Short.valueOf(this.mTagId)) + "ifd id: " + this.mIfd + "\ntype: "
                + convertTypeToString(this.mDataType) + "\ncount: " + this.mComponentCountActual + "\noffset: "
                + this.mOffset + "\nvalue: " + forceGetValueAsString() + "\n";
    }
}

package com.oplus.ocs.camera.configure;

import android.text.TextUtils;
import android.util.Size;
import androidx.annotation.NonNull;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class Value<P> {
    protected static final String ARRAY_DELIMITER = ",";
    protected static final String BRACKET_LEFT = "[";
    protected static final String BRACKET_RIGHT = "]";
    protected static final String RANGE_DELIMITER = "~";
    protected static final String SIZE_DELIMITER = "x";
    private final Class<P> mClazz;
    private final String mOriginValue;

    @NonNull
    private final List<P> mValue;
    private final boolean mbIncludeLeftBoundary;
    private final boolean mbIncludeRightBoundary;
    private final boolean mbSupportRange;
    private final boolean mbSupportSize;

    protected Value(String str, Class<P> cls) {
        String[] strArrSplit;
        this.mClazz = cls;
        this.mOriginValue = str;
        if (TextUtils.isEmpty(str)) {
            this.mbSupportRange = false;
            this.mbSupportSize = false;
            this.mbIncludeLeftBoundary = false;
            this.mbIncludeRightBoundary = false;
            this.mValue = Collections.EMPTY_LIST;
            return;
        }
        boolean zEquals = Size.class.equals(cls);
        this.mbSupportSize = zEquals;
        String str2 = RANGE_DELIMITER;
        boolean zContains = str.contains(RANGE_DELIMITER);
        this.mbSupportRange = zContains;
        String strReplaceAll = str.replaceAll("\\s|\n", "");
        if (zEquals) {
            this.mbIncludeLeftBoundary = false;
            this.mbIncludeRightBoundary = false;
            strArrSplit = strReplaceAll.split(SIZE_DELIMITER);
        } else {
            this.mbIncludeLeftBoundary = zContains ? strReplaceAll.contains(BRACKET_LEFT) : false;
            this.mbIncludeRightBoundary = zContains ? strReplaceAll.contains(BRACKET_RIGHT) : false;
            strArrSplit = strReplaceAll.replaceAll("[\\(\\[\\)\\]]", "").split(zContains ? str2 : ",");
        }
        this.mValue = initValue(strArrSplit, cls);
    }

    @NonNull
    public List<P> getValue() {
        return this.mValue;
    }

    /*
     * JADX WARN: Removed duplicated region for block: B:21:0x0040 A[PHI: r1
     * 0x0040: PHI (r1v60 boolean) =
     * (r1v34 boolean)
     * (r1v34 boolean)
     * (r1v41 boolean)
     * (r1v41 boolean)
     * (r1v50 boolean)
     * (r1v50 boolean)
     * (r1v58 boolean)
     * (r1v58 boolean)
     * (r1v68 boolean)
     * (r1v68 boolean)
     * binds: [B:87:0x013c, B:85:0x0138, B:72:0x0102, B:70:0x00fe, B:57:0x00c8,
     * B:54:0x00c2, B:38:0x0087, B:35:0x0080, B:20:0x003e, B:18:0x003b]
     * A[DONT_GENERATE, DONT_INLINE]]
     */
    /*
     * JADX WARN: Removed duplicated region for block: B:22:0x0043 A[PHI: r1
     * 0x0043: PHI (r1v62 boolean) =
     * (r1v34 boolean)
     * (r1v34 boolean)
     * (r1v41 boolean)
     * (r1v41 boolean)
     * (r1v50 boolean)
     * (r1v50 boolean)
     * (r1v58 boolean)
     * (r1v58 boolean)
     * (r1v68 boolean)
     * (r1v68 boolean)
     * binds: [B:87:0x013c, B:85:0x0138, B:72:0x0102, B:70:0x00fe, B:57:0x00c8,
     * B:54:0x00c2, B:38:0x0087, B:35:0x0080, B:20:0x003e, B:18:0x003b]
     * A[DONT_GENERATE, DONT_INLINE]]
     */
    /*
     * Code decompiled incorrectly, please refer to instructions dump.
     */
    public boolean isTargetValue(Object obj) {
        boolean z;
        boolean z2;
        if (obj == null) {
            return false;
        }
        if (this.mbSupportRange) {
            if (obj instanceof Integer) {
                int iIntValue = ((Integer) this.mValue.get(0)).intValue();
                int iIntValue2 = ((Integer) this.mValue.get(1)).intValue();
                int iIntValue3 = ((Integer) obj).intValue();
                z2 = !this.mbIncludeLeftBoundary ? iIntValue3 <= iIntValue : iIntValue3 < iIntValue;
                z = !this.mbIncludeRightBoundary ? iIntValue3 >= iIntValue2 : iIntValue3 > iIntValue2;
            } else if (obj instanceof Float) {
                float fFloatValue = ((Float) this.mValue.get(0)).floatValue();
                float fFloatValue2 = ((Float) this.mValue.get(1)).floatValue();
                float fFloatValue3 = ((Float) obj).floatValue();
                boolean z3 = this.mbIncludeLeftBoundary;
                int iCompare = Float.compare(fFloatValue3, fFloatValue);
                z2 = !z3 ? iCompare <= 0 : iCompare < 0;
                if (!this.mbIncludeRightBoundary ? Float.compare(fFloatValue3, fFloatValue2) >= 0
                        : Float.compare(fFloatValue3, fFloatValue2) > 0) {
                }
            } else if (obj instanceof Long) {
                long jLongValue = ((Long) this.mValue.get(0)).longValue();
                long jLongValue2 = ((Long) this.mValue.get(1)).longValue();
                long jLongValue3 = ((Long) obj).longValue();
                z2 = !this.mbIncludeLeftBoundary ? jLongValue3 <= jLongValue : jLongValue3 < jLongValue;
                if (!this.mbIncludeRightBoundary ? jLongValue3 >= jLongValue2 : jLongValue3 > jLongValue2) {
                }
            } else if (obj instanceof Byte) {
                byte bByteValue = ((Byte) this.mValue.get(0)).byteValue();
                byte bByteValue2 = ((Byte) this.mValue.get(1)).byteValue();
                byte bByteValue3 = ((Byte) obj).byteValue();
                z2 = !this.mbIncludeLeftBoundary ? bByteValue3 <= bByteValue : bByteValue3 < bByteValue;
                if (!this.mbIncludeRightBoundary ? bByteValue3 >= bByteValue2 : bByteValue3 > bByteValue2) {
                }
            } else if (obj instanceof Short) {
                short sShortValue = ((Short) this.mValue.get(0)).shortValue();
                short sShortValue2 = ((Short) this.mValue.get(1)).shortValue();
                short sShortValue3 = ((Short) obj).shortValue();
                z2 = !this.mbIncludeLeftBoundary ? sShortValue3 <= sShortValue : sShortValue3 < sShortValue;
                if (!this.mbIncludeRightBoundary ? sShortValue3 >= sShortValue2 : sShortValue3 > sShortValue2) {
                }
            } else {
                z = false;
                z2 = false;
            }
            return z2 && z;
        }
        for (Object obj2 : this.mValue) {
            if (obj instanceof Integer) {
                if (Integer.compare(((Integer) obj2).intValue(), ((Integer) obj).intValue()) == 0) {
                    return true;
                }
            } else if (obj instanceof Float) {
                if (Float.compare(((Float) obj).floatValue(), ((Float) obj2).floatValue()) == 0) {
                    return true;
                }
            } else if (obj instanceof Byte) {
                if (Byte.compare(((Byte) obj2).byteValue(), ((Byte) obj).byteValue()) == 0) {
                    return true;
                }
            } else if (obj instanceof Short) {
                if (Short.compare(((Short) obj2).shortValue(), ((Short) obj).shortValue()) == 0) {
                    return true;
                }
            } else if (obj instanceof Long) {
                if (Long.compare(((Long) obj2).longValue(), ((Long) obj).longValue()) == 0) {
                    return true;
                }
            } else if (obj instanceof Boolean) {
                if (Boolean.compare(((Boolean) obj2).booleanValue(), ((Boolean) obj).booleanValue()) == 0) {
                    return true;
                }
            } else if (obj.equals(obj2)) {
                return true;
            }
        }
        return false;
    }

    protected String getOriginValue() {
        return this.mOriginValue;
    }

    /*
     * JADX DEBUG: Multi-variable search result rejected for r6v0, resolved type:
     * java.lang.Class<P>
     */
    /* JADX WARN: Multi-variable type inference failed */
    private List<P> initValue(String[] strArr, Class<P> cls) {
        if (strArr == null || strArr.length == 0) {
            return Collections.EMPTY_LIST;
        }
        ArrayList arrayList = new ArrayList();
        int i = 0;
        if (cls.equals(Size.class)) {
            while (i < strArr.length) {
                int i2 = i + 1;
                if (strArr.length > i2) {
                    arrayList.add(new Size(Integer.parseInt(strArr[i]), Integer.parseInt(strArr[i2])));
                }
                i += 2;
            }
        } else {
            int length = strArr.length;
            while (i < length) {
                arrayList.add(getRealValue(strArr[i], cls));
                i++;
            }
        }
        return arrayList;
    }

    /*
     * JADX DEBUG: Multi-variable search result rejected for r1v0, resolved type:
     * java.lang.String
     */
    /* JADX WARN: Multi-variable type inference failed */
    private <V> V getRealValue(String str, Class<V> cls) {
        if (Integer.class.equals(cls)) {
            return (V) Integer.valueOf(Integer.parseInt(str));
        }
        if (Float.class.equals(cls)) {
            return (V) Float.valueOf(Float.parseFloat(str));
        }
        if (Long.class.equals(cls)) {
            return (V) Long.valueOf(Long.parseLong(str));
        }
        if (Boolean.class.equals(cls)) {
            return (V) Boolean.valueOf(Boolean.parseBoolean(str));
        }
        if (Byte.class.equals(cls)) {
            return (V) Byte.valueOf(Byte.parseByte(str));
        }
        return Short.class.equals(cls) ? (V) Short.valueOf(Short.parseShort(str)) : (V) str;
    }

    public String toString() {
        return "Value{mbSupportRange=" + this.mbSupportRange + ", mbSupportSize=" + this.mbSupportSize
                + ", mbIncludeLeftBoundary=" + this.mbIncludeLeftBoundary + ", mbIncludeRightBoundary="
                + this.mbIncludeRightBoundary + ", mValue=" + this.mValue + ", mClazz=" + this.mClazz + '}';
    }
}

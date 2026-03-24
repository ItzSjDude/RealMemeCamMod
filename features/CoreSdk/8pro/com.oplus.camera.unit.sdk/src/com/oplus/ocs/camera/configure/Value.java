package com.oplus.ocs.camera.configure;

import android.text.TextUtils;
import android.util.Size;
import androidx.annotation.NonNull;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* loaded from: classes.dex */
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

    /* JADX INFO: Access modifiers changed from: protected */
    public Value(String str, Class<P> cls) {
        String[] split;
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
        boolean equals = Size.class.equals(cls);
        this.mbSupportSize = equals;
        String str2 = RANGE_DELIMITER;
        boolean contains = str.contains(RANGE_DELIMITER);
        this.mbSupportRange = contains;
        String replaceAll = str.replaceAll("\\s|\n", "");
        if (equals) {
            this.mbIncludeLeftBoundary = false;
            this.mbIncludeRightBoundary = false;
            split = replaceAll.split(SIZE_DELIMITER);
        } else {
            this.mbIncludeLeftBoundary = contains ? replaceAll.contains(BRACKET_LEFT) : false;
            this.mbIncludeRightBoundary = contains ? replaceAll.contains(BRACKET_RIGHT) : false;
            split = replaceAll.replaceAll("[\\(\\[\\)\\]]", "").split(contains ? str2 : ",");
        }
        this.mValue = initValue(split, cls);
    }

    @NonNull
    public List<P> getValue() {
        return this.mValue;
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x0040, code lost:
        r9 = true;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean isTargetValue(java.lang.Object r10) {
        /*
            Method dump skipped, instructions count: 496
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.oplus.ocs.camera.configure.Value.isTargetValue(java.lang.Object):boolean");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public String getOriginValue() {
        return this.mOriginValue;
    }

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
        return Short.class.equals(cls) ? (V) Short.valueOf(Short.parseShort(str)) : str;
    }

    public String toString() {
        return "Value{mbSupportRange=" + this.mbSupportRange + ", mbSupportSize=" + this.mbSupportSize + ", mbIncludeLeftBoundary=" + this.mbIncludeLeftBoundary + ", mbIncludeRightBoundary=" + this.mbIncludeRightBoundary + ", mValue=" + this.mValue + ", mClazz=" + this.mClazz + '}';
    }
}

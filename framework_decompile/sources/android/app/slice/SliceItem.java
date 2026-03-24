package android.app.slice;

import android.app.PendingIntent;
import android.app.RemoteInput;
import android.graphics.drawable.Icon;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.Pair;
import android.widget.RemoteViews;
import com.android.internal.util.ArrayUtils;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.Arrays;
import java.util.List;

/* loaded from: classes.dex */
public final class SliceItem implements Parcelable {
    public static final Parcelable.Creator<SliceItem> CREATOR = new Parcelable.Creator<SliceItem>() { // from class: android.app.slice.SliceItem.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public SliceItem createFromParcel(Parcel in) {
            return new SliceItem(in);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public SliceItem[] newArray(int size) {
            return new SliceItem[size];
        }
    };
    public static final String FORMAT_ACTION = "action";
    public static final String FORMAT_BUNDLE = "bundle";
    public static final String FORMAT_IMAGE = "image";
    public static final String FORMAT_INT = "int";
    public static final String FORMAT_LONG = "long";
    public static final String FORMAT_REMOTE_INPUT = "input";
    public static final String FORMAT_SLICE = "slice";
    public static final String FORMAT_TEXT = "text";

    @Deprecated
    public static final String FORMAT_TIMESTAMP = "long";
    private static final String TAG = "SliceItem";
    private final String mFormat;
    protected String[] mHints;
    private final Object mObj;
    private final String mSubType;

    @Retention(RetentionPolicy.SOURCE)
    public @interface SliceType {
    }

    public SliceItem(Object obj, String format, String subType, List<String> hints) {
        this(obj, format, subType, (String[]) hints.toArray(new String[hints.size()]));
    }

    public SliceItem(Object obj, String format, String subType, String[] hints) {
        this.mHints = hints;
        this.mFormat = format;
        this.mSubType = subType;
        this.mObj = obj;
    }

    public SliceItem(PendingIntent intent, Slice slice, String format, String subType, String[] hints) {
        this(new Pair(intent, slice), format, subType, hints);
    }

    public List<String> getHints() {
        return Arrays.asList(this.mHints);
    }

    public String getFormat() {
        return this.mFormat;
    }

    public String getSubType() {
        return this.mSubType;
    }

    public CharSequence getText() {
        return (CharSequence) this.mObj;
    }

    public Bundle getBundle() {
        return (Bundle) this.mObj;
    }

    public Icon getIcon() {
        return (Icon) this.mObj;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public PendingIntent getAction() {
        return (PendingIntent) ((Pair) this.mObj).first;
    }

    public RemoteViews getRemoteView() {
        return (RemoteViews) this.mObj;
    }

    public RemoteInput getRemoteInput() {
        return (RemoteInput) this.mObj;
    }

    public int getInt() {
        return ((Integer) this.mObj).intValue();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Slice getSlice() {
        if ("action".equals(getFormat())) {
            return (Slice) ((Pair) this.mObj).second;
        }
        return (Slice) this.mObj;
    }

    public long getLong() {
        return ((Long) this.mObj).longValue();
    }

    @Deprecated
    public long getTimestamp() {
        return ((Long) this.mObj).longValue();
    }

    public boolean hasHint(String hint) {
        return ArrayUtils.contains(this.mHints, hint);
    }

    public SliceItem(Parcel in) {
        this.mHints = in.readStringArray();
        String string = in.readString();
        this.mFormat = string;
        this.mSubType = in.readString();
        this.mObj = readObj(string, in);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        dest.writeStringArray(this.mHints);
        dest.writeString(this.mFormat);
        dest.writeString(this.mSubType);
        writeObj(dest, flags, this.mObj, this.mFormat);
    }

    public boolean hasHints(String[] hints) {
        if (hints == null) {
            return true;
        }
        for (String hint : hints) {
            if (!TextUtils.isEmpty(hint) && !ArrayUtils.contains(this.mHints, hint)) {
                return false;
            }
        }
        return true;
    }

    public boolean hasAnyHints(String[] hints) {
        if (hints == null) {
            return false;
        }
        for (String hint : hints) {
            if (ArrayUtils.contains(this.mHints, hint)) {
                return true;
            }
        }
        return false;
    }

    private static String getBaseType(String type) {
        int index = type.indexOf(47);
        if (index >= 0) {
            return type.substring(0, index);
        }
        return type;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:29:0x005f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static void writeObj(android.os.Parcel r2, int r3, java.lang.Object r4, java.lang.String r5) {
        /*
            java.lang.String r0 = getBaseType(r5)
            int r1 = r0.hashCode()
            switch(r1) {
                case -1422950858: goto L55;
                case -1377881982: goto L4b;
                case 104431: goto L41;
                case 3327612: goto L36;
                case 3556653: goto L2b;
                case 100313435: goto L21;
                case 100358090: goto L17;
                case 109526418: goto Lc;
                default: goto Lb;
            }
        Lb:
            goto L5f
        Lc:
            java.lang.String r1 = "slice"
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto Lb
            r0 = 0
            goto L60
        L17:
            java.lang.String r1 = "input"
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto Lb
            r0 = 2
            goto L60
        L21:
            java.lang.String r1 = "image"
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto Lb
            r0 = 1
            goto L60
        L2b:
            java.lang.String r1 = "text"
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto Lb
            r0 = 5
            goto L60
        L36:
            java.lang.String r1 = "long"
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto Lb
            r0 = 7
            goto L60
        L41:
            java.lang.String r1 = "int"
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto Lb
            r0 = 6
            goto L60
        L4b:
            java.lang.String r1 = "bundle"
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto Lb
            r0 = 3
            goto L60
        L55:
            java.lang.String r1 = "action"
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto Lb
            r0 = 4
            goto L60
        L5f:
            r0 = -1
        L60:
            switch(r0) {
                case 0: goto L96;
                case 1: goto L96;
                case 2: goto L96;
                case 3: goto L96;
                case 4: goto L81;
                case 5: goto L7a;
                case 6: goto L6f;
                case 7: goto L64;
                default: goto L63;
            }
        L63:
            goto L9d
        L64:
            r0 = r4
            java.lang.Long r0 = (java.lang.Long) r0
            long r0 = r0.longValue()
            r2.writeLong(r0)
            goto L9d
        L6f:
            r0 = r4
            java.lang.Integer r0 = (java.lang.Integer) r0
            int r0 = r0.intValue()
            r2.writeInt(r0)
            goto L9d
        L7a:
            r0 = r4
            java.lang.CharSequence r0 = (java.lang.CharSequence) r0
            android.text.TextUtils.writeToParcel(r0, r2, r3)
            goto L9d
        L81:
            r0 = r4
            android.util.Pair r0 = (android.util.Pair) r0
            F r0 = r0.first
            android.app.PendingIntent r0 = (android.app.PendingIntent) r0
            r0.writeToParcel(r2, r3)
            r0 = r4
            android.util.Pair r0 = (android.util.Pair) r0
            S r0 = r0.second
            android.app.slice.Slice r0 = (android.app.slice.Slice) r0
            r0.writeToParcel(r2, r3)
            goto L9d
        L96:
            r0 = r4
            android.os.Parcelable r0 = (android.os.Parcelable) r0
            r0.writeToParcel(r2, r3)
        L9d:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: android.app.slice.SliceItem.writeObj(android.os.Parcel, int, java.lang.Object, java.lang.String):void");
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:29:0x005f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static java.lang.Object readObj(java.lang.String r3, android.os.Parcel r4) {
        /*
            java.lang.String r0 = getBaseType(r3)
            int r1 = r0.hashCode()
            switch(r1) {
                case -1422950858: goto L55;
                case -1377881982: goto L4b;
                case 104431: goto L41;
                case 3327612: goto L36;
                case 3556653: goto L2b;
                case 100313435: goto L21;
                case 100358090: goto L17;
                case 109526418: goto Lc;
                default: goto Lb;
            }
        Lb:
            goto L5f
        Lc:
            java.lang.String r1 = "slice"
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto Lb
            r0 = 0
            goto L60
        L17:
            java.lang.String r1 = "input"
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto Lb
            r0 = 6
            goto L60
        L21:
            java.lang.String r1 = "image"
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto Lb
            r0 = 2
            goto L60
        L2b:
            java.lang.String r1 = "text"
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto Lb
            r0 = 1
            goto L60
        L36:
            java.lang.String r1 = "long"
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto Lb
            r0 = 5
            goto L60
        L41:
            java.lang.String r1 = "int"
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto Lb
            r0 = 4
            goto L60
        L4b:
            java.lang.String r1 = "bundle"
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto Lb
            r0 = 7
            goto L60
        L55:
            java.lang.String r1 = "action"
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto Lb
            r0 = 3
            goto L60
        L5f:
            r0 = -1
        L60:
            switch(r0) {
                case 0: goto Lc0;
                case 1: goto Lb9;
                case 2: goto Lb2;
                case 3: goto L9c;
                case 4: goto L93;
                case 5: goto L8a;
                case 6: goto L83;
                case 7: goto L7c;
                default: goto L63;
            }
        L63:
            java.lang.RuntimeException r0 = new java.lang.RuntimeException
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r2 = "Unsupported type "
            java.lang.StringBuilder r1 = r1.append(r2)
            java.lang.StringBuilder r1 = r1.append(r3)
            java.lang.String r1 = r1.toString()
            r0.<init>(r1)
            throw r0
        L7c:
            android.os.Parcelable$Creator<android.os.Bundle> r0 = android.os.Bundle.CREATOR
            java.lang.Object r0 = r0.createFromParcel(r4)
            return r0
        L83:
            android.os.Parcelable$Creator<android.app.RemoteInput> r0 = android.app.RemoteInput.CREATOR
            java.lang.Object r0 = r0.createFromParcel(r4)
            return r0
        L8a:
            long r0 = r4.readLong()
            java.lang.Long r0 = java.lang.Long.valueOf(r0)
            return r0
        L93:
            int r0 = r4.readInt()
            java.lang.Integer r0 = java.lang.Integer.valueOf(r0)
            return r0
        L9c:
            android.util.Pair r0 = new android.util.Pair
            android.os.Parcelable$Creator<android.app.PendingIntent> r1 = android.app.PendingIntent.CREATOR
            java.lang.Object r1 = r1.createFromParcel(r4)
            android.app.PendingIntent r1 = (android.app.PendingIntent) r1
            android.os.Parcelable$Creator<android.app.slice.Slice> r2 = android.app.slice.Slice.CREATOR
            java.lang.Object r2 = r2.createFromParcel(r4)
            android.app.slice.Slice r2 = (android.app.slice.Slice) r2
            r0.<init>(r1, r2)
            return r0
        Lb2:
            android.os.Parcelable$Creator<android.graphics.drawable.Icon> r0 = android.graphics.drawable.Icon.CREATOR
            java.lang.Object r0 = r0.createFromParcel(r4)
            return r0
        Lb9:
            android.os.Parcelable$Creator<java.lang.CharSequence> r0 = android.text.TextUtils.CHAR_SEQUENCE_CREATOR
            java.lang.Object r0 = r0.createFromParcel(r4)
            return r0
        Lc0:
            android.os.Parcelable$Creator<android.app.slice.Slice> r0 = android.app.slice.Slice.CREATOR
            java.lang.Object r0 = r0.createFromParcel(r4)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: android.app.slice.SliceItem.readObj(java.lang.String, android.os.Parcel):java.lang.Object");
    }
}

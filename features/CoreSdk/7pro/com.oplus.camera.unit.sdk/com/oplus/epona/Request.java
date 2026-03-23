package com.oplus.epona;

import android.content.Context;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import com.oplus.epona.route.RouteData;
import java.io.Serializable;
import java.util.ArrayList;
/* loaded from: classes.dex */
public class Request implements Parcelable {
    public static final Parcelable.Creator<Request> CREATOR = new Parcelable.Creator<Request>() { // from class: com.oplus.epona.Request.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public Request createFromParcel(Parcel parcel) {
            return new Request(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public Request[] newArray(int i) {
            return new Request[i];
        }
    };
    private final String mActionName;
    private Bundle mBundle;
    private final String mComponentName;
    private RouteData mRouteData;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    private Request(String str, String str2, Bundle bundle, RouteData routeData) {
        this.mBundle = new Bundle();
        this.mComponentName = str;
        this.mActionName = str2;
        this.mBundle.putAll(bundle);
        this.mRouteData = routeData;
    }

    private Request(Parcel parcel) {
        this.mBundle = new Bundle();
        this.mComponentName = parcel.readString();
        this.mActionName = parcel.readString();
        this.mBundle = parcel.readBundle(getClass().getClassLoader());
    }

    public void putBundle(Bundle bundle) {
        this.mBundle.putAll(bundle);
    }

    public String getComponentName() {
        return this.mComponentName;
    }

    public String getActionName() {
        return this.mActionName;
    }

    public Bundle getBundle() {
        return this.mBundle;
    }

    public RouteData getRouteData() {
        return this.mRouteData;
    }

    @NonNull
    public String toString() {
        return "Request{Component=" + this.mComponentName + ",Action=" + this.mActionName + ",Bundle=" + this.mBundle + "}";
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.mComponentName);
        parcel.writeString(this.mActionName);
        parcel.writeBundle(this.mBundle);
    }

    /* loaded from: classes.dex */
    public static class Builder {
        private String mActionName;
        private Bundle mBundle = new Bundle();
        private String mComponentName;
        private RouteData mRouteData;

        public Builder setComponentName(String str) {
            this.mComponentName = str;
            return this;
        }

        public Builder setActionName(String str) {
            this.mActionName = str;
            return this;
        }

        public Builder withBoolean(String str, boolean z) {
            this.mBundle.putBoolean(str, z);
            return this;
        }

        public Builder withByte(String str, byte b) {
            this.mBundle.putByte(str, b);
            return this;
        }

        public Builder withChar(String str, char c) {
            this.mBundle.putChar(str, c);
            return this;
        }

        public Builder withShort(String str, short s) {
            this.mBundle.putShort(str, s);
            return this;
        }

        public Builder withInt(String str, int i) {
            this.mBundle.putInt(str, i);
            return this;
        }

        public Builder withLong(String str, long j) {
            this.mBundle.putLong(str, j);
            return this;
        }

        public Builder withFloat(String str, float f) {
            this.mBundle.putFloat(str, f);
            return this;
        }

        public Builder withDouble(String str, double d) {
            this.mBundle.putDouble(str, d);
            return this;
        }

        public Builder withString(String str, String str2) {
            this.mBundle.putString(str, str2);
            return this;
        }

        public Builder withCharSequence(String str, CharSequence charSequence) {
            this.mBundle.putCharSequence(str, charSequence);
            return this;
        }

        public Builder withIntegerArrayList(String str, ArrayList<Integer> arrayList) {
            this.mBundle.putIntegerArrayList(str, arrayList);
            return this;
        }

        public Builder withStringArrayList(String str, ArrayList<String> arrayList) {
            this.mBundle.putStringArrayList(str, arrayList);
            return this;
        }

        public Builder withCharSequenceList(String str, ArrayList<CharSequence> arrayList) {
            this.mBundle.putCharSequenceArrayList(str, arrayList);
            return this;
        }

        public Builder withSerializable(String str, Serializable serializable) {
            this.mBundle.putSerializable(str, serializable);
            return this;
        }

        public Builder withBooleanArray(String str, boolean[] zArr) {
            this.mBundle.putBooleanArray(str, zArr);
            return this;
        }

        public Builder withByteArray(String str, byte[] bArr) {
            this.mBundle.putByteArray(str, bArr);
            return this;
        }

        public Builder withShortArray(String str, short[] sArr) {
            this.mBundle.putShortArray(str, sArr);
            return this;
        }

        public Builder withCharArray(String str, char[] cArr) {
            this.mBundle.putCharArray(str, cArr);
            return this;
        }

        public Builder withIntArray(String str, int[] iArr) {
            this.mBundle.putIntArray(str, iArr);
            return this;
        }

        public Builder withLongArray(String str, long[] jArr) {
            this.mBundle.putLongArray(str, jArr);
            return this;
        }

        public Builder withFloatArray(String str, float[] fArr) {
            this.mBundle.putFloatArray(str, fArr);
            return this;
        }

        public Builder withDoubleArray(String str, double[] dArr) {
            this.mBundle.putDoubleArray(str, dArr);
            return this;
        }

        public Builder withStringArray(String str, String[] strArr) {
            this.mBundle.putStringArray(str, strArr);
            return this;
        }

        public Builder withCharSequenceArray(String str, CharSequence[] charSequenceArr) {
            this.mBundle.putCharSequenceArray(str, charSequenceArr);
            return this;
        }

        public Builder withParcelable(String str, Parcelable parcelable) {
            this.mBundle.putParcelable(str, parcelable);
            return this;
        }

        public Builder withParcelableArray(String str, Parcelable[] parcelableArr) {
            this.mBundle.putParcelableArray(str, parcelableArr);
            return this;
        }

        public Builder withParcelableArrayList(String str, ArrayList<? extends Parcelable> arrayList) {
            this.mBundle.putParcelableArrayList(str, arrayList);
            return this;
        }

        public Builder withBundle(String str, Bundle bundle) {
            this.mBundle.putBundle(str, bundle);
            return this;
        }

        public Builder withBinder(String str, IBinder iBinder) {
            this.mBundle.putBinder(str, iBinder);
            return this;
        }

        public Builder withRoute(Context context) {
            return withRoute(context, -1);
        }

        public Builder withRoute(Context context, int i) {
            this.mRouteData = new RouteData(context, i);
            return this;
        }

        public Request build() {
            return new Request(this.mComponentName, this.mActionName, this.mBundle, this.mRouteData);
        }
    }
}

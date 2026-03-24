package com.oppo.inner.os;

import android.os.Parcel;
import android.util.ArraySet;
import android.util.Log;
import com.oplus.inner.os.ParcelWrapper;

public class ParcelWrapper {
    public static void writeStringNoHelper(Parcel parcel, String val) {
        ParcelWrapper.writeStringNoHelper(parcel, val);
    }

    public static String readStringNoHelper(Parcel parcel) {
        return ParcelWrapper.readStringNoHelper(parcel);
    }

    public static void writeArraySet(Parcel parcel, ArraySet<? extends Object> val) {
        ParcelWrapper.writeArraySet(parcel, val);
    }

}
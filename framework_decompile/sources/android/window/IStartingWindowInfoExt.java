package android.window;

import android.os.Parcel;

/* loaded from: classes4.dex */
public interface IStartingWindowInfoExt {
    default void setExtendedInfo(Object extendedInfo) {
    }

    default Object getExtendedInfo() {
        return null;
    }

    default void writeToParcel(Parcel dest, int flags) {
    }

    default void readFromParcel(Parcel in) {
    }
}

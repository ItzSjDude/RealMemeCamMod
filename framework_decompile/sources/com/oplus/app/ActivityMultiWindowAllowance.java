package com.oplus.app;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Objects;

/* loaded from: classes4.dex */
public class ActivityMultiWindowAllowance implements Parcelable {
    public static final Parcelable.Creator<ActivityMultiWindowAllowance> CREATOR = new Parcelable.Creator<ActivityMultiWindowAllowance>() { // from class: com.oplus.app.ActivityMultiWindowAllowance.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ActivityMultiWindowAllowance createFromParcel(Parcel in) {
            return new ActivityMultiWindowAllowance(in);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ActivityMultiWindowAllowance[] newArray(int size) {
            return new ActivityMultiWindowAllowance[size];
        }
    };
    public boolean allowSelfSplitToSplitScreen;
    public boolean allowSwitchToFullScreen;
    public boolean allowSwitchToSplitScreen;

    public ActivityMultiWindowAllowance() {
    }

    private ActivityMultiWindowAllowance(Parcel source) {
        readFromParcel(source);
    }

    private void readFromParcel(Parcel source) {
        this.allowSelfSplitToSplitScreen = source.readBoolean();
        this.allowSwitchToSplitScreen = source.readBoolean();
        this.allowSwitchToFullScreen = source.readBoolean();
    }

    public boolean equals(Object o) {
        if (this == o) {
            return true;
        }
        if (o == null || getClass() != o.getClass()) {
            return false;
        }
        ActivityMultiWindowAllowance that = (ActivityMultiWindowAllowance) o;
        if (this.allowSelfSplitToSplitScreen == that.allowSelfSplitToSplitScreen && this.allowSwitchToSplitScreen == that.allowSwitchToSplitScreen && this.allowSwitchToFullScreen == that.allowSwitchToFullScreen) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return Objects.hash(Boolean.valueOf(this.allowSelfSplitToSplitScreen), Boolean.valueOf(this.allowSwitchToSplitScreen), Boolean.valueOf(this.allowSwitchToFullScreen));
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int i) {
        dest.writeBoolean(this.allowSelfSplitToSplitScreen);
        dest.writeBoolean(this.allowSwitchToSplitScreen);
        dest.writeBoolean(this.allowSwitchToFullScreen);
    }
}

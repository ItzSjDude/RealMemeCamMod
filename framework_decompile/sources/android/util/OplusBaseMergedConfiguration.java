package android.util;

import android.os.Parcel;
import android.os.Parcelable;
import com.oplus.darkmode.OplusDarkModeData;

/* loaded from: classes3.dex */
public abstract class OplusBaseMergedConfiguration {
    public Parcelable mOplusDarkModeData;
    public int mOplusForceDarkValue;
    public float mDialogBgMaxL = -1.0f;
    public float mBackgroundMaxL = -1.0f;
    public float mForegroundMinL = -1.0f;

    public void writeParcel(Parcel dest, int flags) {
        OplusDarkModeData oplusDarkModeData = null;
        Parcelable parcelable = this.mOplusDarkModeData;
        if (parcelable != null && OplusDarkModeData.class.isInstance(parcelable)) {
            oplusDarkModeData = (OplusDarkModeData) this.mOplusDarkModeData;
        }
        dest.writeParcelable(oplusDarkModeData, 0);
    }

    public void readParcel(Parcel source) {
        this.mOplusDarkModeData = source.readParcelable(OplusBaseMergedConfiguration.class.getClassLoader());
    }
}

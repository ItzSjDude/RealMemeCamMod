package android.bluetooth;

import android.annotation.SystemApi;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;

@SystemApi
/* loaded from: classes.dex */
public final class BluetoothHapPresetInfo implements Parcelable {
    public static final Parcelable.Creator<BluetoothHapPresetInfo> CREATOR = new Parcelable.Creator<BluetoothHapPresetInfo>() { // from class: android.bluetooth.BluetoothHapPresetInfo.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public BluetoothHapPresetInfo createFromParcel(Parcel in) {
            return new BluetoothHapPresetInfo(in);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public BluetoothHapPresetInfo[] newArray(int size) {
            return new BluetoothHapPresetInfo[size];
        }
    };
    private boolean mIsAvailable;
    private boolean mIsWritable;
    private int mPresetIndex;
    private String mPresetName;

    BluetoothHapPresetInfo(int presetIndex, String presetName, boolean isWritable, boolean isAvailable) {
        this.mPresetName = "";
        this.mPresetIndex = presetIndex;
        this.mPresetName = presetName;
        this.mIsWritable = isWritable;
        this.mIsAvailable = isAvailable;
    }

    private BluetoothHapPresetInfo(Parcel in) {
        this.mPresetName = "";
        this.mPresetIndex = in.readInt();
        this.mPresetName = in.readString();
        this.mIsWritable = in.readBoolean();
        this.mIsAvailable = in.readBoolean();
    }

    public int getIndex() {
        return this.mPresetIndex;
    }

    public String getName() {
        return this.mPresetName;
    }

    public boolean isWritable() {
        return this.mIsWritable;
    }

    public boolean isAvailable() {
        return this.mIsAvailable;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        dest.writeInt(this.mPresetIndex);
        dest.writeString(this.mPresetName);
        dest.writeBoolean(this.mIsWritable);
        dest.writeBoolean(this.mIsAvailable);
    }

    public static final class Builder {
        private int mPresetIndex;
        private String mPresetName;
        private boolean mIsWritable = false;
        private boolean mIsAvailable = false;

        public Builder(int index, String name) {
            this.mPresetIndex = 0;
            this.mPresetName = "";
            if (TextUtils.isEmpty(name)) {
                throw new IllegalArgumentException("The size of the preset name for HAP shall be at least one character long.");
            }
            if (index < 0) {
                throw new IllegalArgumentException("Preset index for HAP shall be a non-negative value.");
            }
            this.mPresetIndex = index;
            this.mPresetName = name;
        }

        public Builder setWritable(boolean isWritable) {
            this.mIsWritable = isWritable;
            return this;
        }

        public Builder setAvailable(boolean isAvailable) {
            this.mIsAvailable = isAvailable;
            return this;
        }

        public BluetoothHapPresetInfo build() {
            return new BluetoothHapPresetInfo(this.mPresetIndex, this.mPresetName, this.mIsWritable, this.mIsAvailable);
        }
    }
}

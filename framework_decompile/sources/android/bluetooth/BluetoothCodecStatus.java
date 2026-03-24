package android.bluetooth;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Collections;
import java.util.List;
import java.util.Objects;

/* loaded from: classes.dex */
public final class BluetoothCodecStatus implements Parcelable {
    public static final Parcelable.Creator<BluetoothCodecStatus> CREATOR = new Parcelable.Creator<BluetoothCodecStatus>() { // from class: android.bluetooth.BluetoothCodecStatus.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public BluetoothCodecStatus createFromParcel(Parcel in) {
            return new BluetoothCodecStatus(in);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public BluetoothCodecStatus[] newArray(int size) {
            return new BluetoothCodecStatus[size];
        }
    };
    public static final String EXTRA_CODEC_STATUS = "android.bluetooth.extra.CODEC_STATUS";
    private final BluetoothCodecConfig mCodecConfig;
    private final List<BluetoothCodecConfig> mCodecsLocalCapabilities;
    private final List<BluetoothCodecConfig> mCodecsSelectableCapabilities;

    public BluetoothCodecStatus(BluetoothCodecConfig codecConfig, List<BluetoothCodecConfig> codecsLocalCapabilities, List<BluetoothCodecConfig> codecsSelectableCapabilities) {
        this.mCodecConfig = codecConfig;
        this.mCodecsLocalCapabilities = codecsLocalCapabilities;
        this.mCodecsSelectableCapabilities = codecsSelectableCapabilities;
    }

    private BluetoothCodecStatus(Parcel in) {
        this.mCodecConfig = (BluetoothCodecConfig) in.readTypedObject(BluetoothCodecConfig.CREATOR);
        this.mCodecsLocalCapabilities = in.createTypedArrayList(BluetoothCodecConfig.CREATOR);
        this.mCodecsSelectableCapabilities = in.createTypedArrayList(BluetoothCodecConfig.CREATOR);
    }

    public boolean equals(Object o) {
        if (!(o instanceof BluetoothCodecStatus)) {
            return false;
        }
        BluetoothCodecStatus other = (BluetoothCodecStatus) o;
        return Objects.equals(other.mCodecConfig, this.mCodecConfig) && sameCapabilities(other.mCodecsLocalCapabilities, this.mCodecsLocalCapabilities) && sameCapabilities(other.mCodecsSelectableCapabilities, this.mCodecsSelectableCapabilities);
    }

    private static boolean sameCapabilities(List<BluetoothCodecConfig> c1, List<BluetoothCodecConfig> c2) {
        if (c1 == null) {
            return c2 == null;
        }
        if (c2 == null || c1.size() != c2.size()) {
            return false;
        }
        return c1.containsAll(c2);
    }

    public boolean isCodecConfigSelectable(BluetoothCodecConfig codecConfig) {
        if (codecConfig == null || !codecConfig.hasSingleSampleRate() || !codecConfig.hasSingleBitsPerSample() || !codecConfig.hasSingleChannelMode()) {
            return false;
        }
        for (BluetoothCodecConfig selectableConfig : this.mCodecsSelectableCapabilities) {
            if (codecConfig.getCodecType() == selectableConfig.getCodecType()) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        List<BluetoothCodecConfig> list = this.mCodecsLocalCapabilities;
        return Objects.hash(this.mCodecConfig, list, list);
    }

    public String toString() {
        return "{mCodecConfig:" + this.mCodecConfig + ",mCodecsLocalCapabilities:" + this.mCodecsLocalCapabilities + ",mCodecsSelectableCapabilities:" + this.mCodecsSelectableCapabilities + "}";
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel out, int flags) {
        out.writeTypedObject(this.mCodecConfig, 0);
        out.writeTypedList(this.mCodecsLocalCapabilities);
        out.writeTypedList(this.mCodecsSelectableCapabilities);
    }

    public BluetoothCodecConfig getCodecConfig() {
        return this.mCodecConfig;
    }

    public List<BluetoothCodecConfig> getCodecsLocalCapabilities() {
        List<BluetoothCodecConfig> list = this.mCodecsLocalCapabilities;
        if (list != null) {
            return list;
        }
        return Collections.emptyList();
    }

    public List<BluetoothCodecConfig> getCodecsSelectableCapabilities() {
        List<BluetoothCodecConfig> list = this.mCodecsSelectableCapabilities;
        if (list != null) {
            return list;
        }
        return Collections.emptyList();
    }

    public static final class Builder {
        private BluetoothCodecConfig mCodecConfig = null;
        private List<BluetoothCodecConfig> mCodecsLocalCapabilities = null;
        private List<BluetoothCodecConfig> mCodecsSelectableCapabilities = null;

        public Builder setCodecConfig(BluetoothCodecConfig codecConfig) {
            this.mCodecConfig = codecConfig;
            return this;
        }

        public Builder setCodecsLocalCapabilities(List<BluetoothCodecConfig> codecsLocalCapabilities) {
            this.mCodecsLocalCapabilities = codecsLocalCapabilities;
            return this;
        }

        public Builder setCodecsSelectableCapabilities(List<BluetoothCodecConfig> codecsSelectableCapabilities) {
            this.mCodecsSelectableCapabilities = codecsSelectableCapabilities;
            return this;
        }

        public BluetoothCodecStatus build() {
            return new BluetoothCodecStatus(this.mCodecConfig, this.mCodecsLocalCapabilities, this.mCodecsSelectableCapabilities);
        }
    }
}

package android.bluetooth;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Collections;
import java.util.List;
import java.util.Objects;

/* loaded from: classes.dex */
public final class BluetoothLeAudioCodecStatus implements Parcelable {
    public static final Parcelable.Creator<BluetoothLeAudioCodecStatus> CREATOR = new Parcelable.Creator<BluetoothLeAudioCodecStatus>() { // from class: android.bluetooth.BluetoothLeAudioCodecStatus.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public BluetoothLeAudioCodecStatus createFromParcel(Parcel in) {
            return new BluetoothLeAudioCodecStatus(in);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public BluetoothLeAudioCodecStatus[] newArray(int size) {
            return new BluetoothLeAudioCodecStatus[size];
        }
    };
    public static final String EXTRA_LE_AUDIO_CODEC_STATUS = "android.bluetooth.extra.LE_AUDIO_CODEC_STATUS";
    private final BluetoothLeAudioCodecConfig mInputCodecConfig;
    private final List<BluetoothLeAudioCodecConfig> mInputCodecsLocalCapabilities;
    private final List<BluetoothLeAudioCodecConfig> mInputCodecsSelectableCapabilities;
    private final BluetoothLeAudioCodecConfig mOutputCodecConfig;
    private final List<BluetoothLeAudioCodecConfig> mOutputCodecsLocalCapabilities;
    private final List<BluetoothLeAudioCodecConfig> mOutputCodecsSelectableCapabilities;

    public BluetoothLeAudioCodecStatus(BluetoothLeAudioCodecConfig inputCodecConfig, BluetoothLeAudioCodecConfig outputCodecConfig, List<BluetoothLeAudioCodecConfig> inputCodecsLocalCapabilities, List<BluetoothLeAudioCodecConfig> outputCodecsLocalCapabilities, List<BluetoothLeAudioCodecConfig> inputCodecsSelectableCapabilities, List<BluetoothLeAudioCodecConfig> outputCodecsSelectableCapabilities) {
        this.mInputCodecConfig = inputCodecConfig;
        this.mOutputCodecConfig = outputCodecConfig;
        this.mInputCodecsLocalCapabilities = inputCodecsLocalCapabilities;
        this.mOutputCodecsLocalCapabilities = outputCodecsLocalCapabilities;
        this.mInputCodecsSelectableCapabilities = inputCodecsSelectableCapabilities;
        this.mOutputCodecsSelectableCapabilities = outputCodecsSelectableCapabilities;
    }

    private BluetoothLeAudioCodecStatus(Parcel in) {
        this.mInputCodecConfig = (BluetoothLeAudioCodecConfig) in.readTypedObject(BluetoothLeAudioCodecConfig.CREATOR);
        this.mOutputCodecConfig = (BluetoothLeAudioCodecConfig) in.readTypedObject(BluetoothLeAudioCodecConfig.CREATOR);
        this.mInputCodecsLocalCapabilities = in.createTypedArrayList(BluetoothLeAudioCodecConfig.CREATOR);
        this.mOutputCodecsLocalCapabilities = in.createTypedArrayList(BluetoothLeAudioCodecConfig.CREATOR);
        this.mInputCodecsSelectableCapabilities = in.createTypedArrayList(BluetoothLeAudioCodecConfig.CREATOR);
        this.mOutputCodecsSelectableCapabilities = in.createTypedArrayList(BluetoothLeAudioCodecConfig.CREATOR);
    }

    public boolean equals(Object o) {
        if (!(o instanceof BluetoothLeAudioCodecStatus)) {
            return false;
        }
        BluetoothLeAudioCodecStatus other = (BluetoothLeAudioCodecStatus) o;
        return Objects.equals(other.mInputCodecConfig, this.mInputCodecConfig) && Objects.equals(other.mOutputCodecConfig, this.mOutputCodecConfig) && sameCapabilities(other.mInputCodecsLocalCapabilities, this.mInputCodecsLocalCapabilities) && sameCapabilities(other.mOutputCodecsLocalCapabilities, this.mOutputCodecsLocalCapabilities) && sameCapabilities(other.mInputCodecsSelectableCapabilities, this.mInputCodecsSelectableCapabilities) && sameCapabilities(other.mOutputCodecsSelectableCapabilities, this.mOutputCodecsSelectableCapabilities);
    }

    private static boolean sameCapabilities(List<BluetoothLeAudioCodecConfig> c1, List<BluetoothLeAudioCodecConfig> c2) {
        if (c1 == null) {
            return c2 == null;
        }
        if (c2 == null || c1.size() != c2.size()) {
            return false;
        }
        return c1.containsAll(c2);
    }

    private boolean isCodecConfigSelectable(BluetoothLeAudioCodecConfig codecConfig, BluetoothLeAudioCodecConfig selectableConfig) {
        if (codecConfig.getCodecType() != selectableConfig.getCodecType()) {
            return false;
        }
        if (codecConfig.getFrameDuration() != 0 && (codecConfig.getFrameDuration() & selectableConfig.getFrameDuration()) == 0) {
            return false;
        }
        if (codecConfig.getChannelCount() != 0 && (codecConfig.getChannelCount() & selectableConfig.getChannelCount()) == 0) {
            return false;
        }
        if (codecConfig.getSampleRate() != 0 && (codecConfig.getSampleRate() & selectableConfig.getSampleRate()) == 0) {
            return false;
        }
        if (codecConfig.getBitsPerSample() != 0 && (codecConfig.getBitsPerSample() & selectableConfig.getBitsPerSample()) == 0) {
            return false;
        }
        if (codecConfig.getOctetsPerFrame() != 0) {
            return codecConfig.getOctetsPerFrame() >= selectableConfig.getMinOctetsPerFrame() && codecConfig.getOctetsPerFrame() <= selectableConfig.getMaxOctetsPerFrame();
        }
        return true;
    }

    public boolean isInputCodecConfigSelectable(BluetoothLeAudioCodecConfig codecConfig) {
        if (codecConfig == null) {
            return false;
        }
        for (BluetoothLeAudioCodecConfig selectableConfig : this.mInputCodecsSelectableCapabilities) {
            if (isCodecConfigSelectable(codecConfig, selectableConfig)) {
                return true;
            }
        }
        return false;
    }

    public boolean isOutputCodecConfigSelectable(BluetoothLeAudioCodecConfig codecConfig) {
        if (codecConfig == null) {
            return false;
        }
        for (BluetoothLeAudioCodecConfig selectableConfig : this.mOutputCodecsSelectableCapabilities) {
            if (isCodecConfigSelectable(codecConfig, selectableConfig)) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return Objects.hash(this.mInputCodecConfig, this.mOutputCodecConfig, this.mInputCodecsLocalCapabilities, this.mOutputCodecsLocalCapabilities, this.mInputCodecsSelectableCapabilities, this.mOutputCodecsSelectableCapabilities);
    }

    public String toString() {
        return "{mInputCodecConfig:" + this.mInputCodecConfig + ",mOutputCodecConfig:" + this.mOutputCodecConfig + ",mInputCodecsLocalCapabilities:" + this.mInputCodecsLocalCapabilities + ",mOutputCodecsLocalCapabilities:" + this.mOutputCodecsLocalCapabilities + ",mInputCodecsSelectableCapabilities:" + this.mInputCodecsSelectableCapabilities + ",mOutputCodecsSelectableCapabilities:" + this.mOutputCodecsSelectableCapabilities + "}";
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel out, int flags) {
        out.writeTypedObject(this.mInputCodecConfig, flags);
        out.writeTypedObject(this.mOutputCodecConfig, flags);
        out.writeTypedList(this.mInputCodecsLocalCapabilities);
        out.writeTypedList(this.mOutputCodecsLocalCapabilities);
        out.writeTypedList(this.mInputCodecsSelectableCapabilities);
        out.writeTypedList(this.mOutputCodecsSelectableCapabilities);
    }

    public BluetoothLeAudioCodecConfig getInputCodecConfig() {
        return this.mInputCodecConfig;
    }

    public BluetoothLeAudioCodecConfig getOutputCodecConfig() {
        return this.mOutputCodecConfig;
    }

    public List<BluetoothLeAudioCodecConfig> getInputCodecLocalCapabilities() {
        List<BluetoothLeAudioCodecConfig> list = this.mInputCodecsLocalCapabilities;
        if (list != null) {
            return list;
        }
        return Collections.emptyList();
    }

    public List<BluetoothLeAudioCodecConfig> getOutputCodecLocalCapabilities() {
        List<BluetoothLeAudioCodecConfig> list = this.mOutputCodecsLocalCapabilities;
        if (list != null) {
            return list;
        }
        return Collections.emptyList();
    }

    public List<BluetoothLeAudioCodecConfig> getInputCodecSelectableCapabilities() {
        List<BluetoothLeAudioCodecConfig> list = this.mInputCodecsSelectableCapabilities;
        if (list != null) {
            return list;
        }
        return Collections.emptyList();
    }

    public List<BluetoothLeAudioCodecConfig> getOutputCodecSelectableCapabilities() {
        List<BluetoothLeAudioCodecConfig> list = this.mOutputCodecsSelectableCapabilities;
        if (list != null) {
            return list;
        }
        return Collections.emptyList();
    }
}

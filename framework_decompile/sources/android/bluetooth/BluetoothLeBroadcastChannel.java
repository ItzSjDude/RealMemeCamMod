package android.bluetooth;

import android.annotation.SystemApi;
import android.os.Parcel;
import android.os.Parcelable;
import java.util.Objects;

@SystemApi
/* loaded from: classes.dex */
public final class BluetoothLeBroadcastChannel implements Parcelable {

    @SystemApi
    public static final Parcelable.Creator<BluetoothLeBroadcastChannel> CREATOR = new Parcelable.Creator<BluetoothLeBroadcastChannel>() { // from class: android.bluetooth.BluetoothLeBroadcastChannel.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public BluetoothLeBroadcastChannel createFromParcel(Parcel in) {
            Builder builder = new Builder();
            builder.setSelected(in.readBoolean());
            builder.setChannelIndex(in.readInt());
            builder.setCodecMetadata((BluetoothLeAudioCodecConfigMetadata) in.readTypedObject(BluetoothLeAudioCodecConfigMetadata.CREATOR));
            return builder.build();
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public BluetoothLeBroadcastChannel[] newArray(int size) {
            return new BluetoothLeBroadcastChannel[size];
        }
    };
    private static final int UNKNOWN_VALUE_PLACEHOLDER = -1;
    private final int mChannelIndex;
    private final BluetoothLeAudioCodecConfigMetadata mCodecMetadata;
    private final boolean mIsSelected;

    private BluetoothLeBroadcastChannel(boolean isSelected, int channelIndex, BluetoothLeAudioCodecConfigMetadata codecMetadata) {
        this.mIsSelected = isSelected;
        this.mChannelIndex = channelIndex;
        this.mCodecMetadata = codecMetadata;
    }

    public boolean equals(Object o) {
        if (!(o instanceof BluetoothLeBroadcastChannel)) {
            return false;
        }
        BluetoothLeBroadcastChannel other = (BluetoothLeBroadcastChannel) o;
        return this.mIsSelected == other.isSelected() && this.mChannelIndex == other.getChannelIndex() && this.mCodecMetadata.equals(other.getCodecMetadata());
    }

    public int hashCode() {
        return Objects.hash(Boolean.valueOf(this.mIsSelected), Integer.valueOf(this.mChannelIndex), this.mCodecMetadata);
    }

    @SystemApi
    public boolean isSelected() {
        return this.mIsSelected;
    }

    @SystemApi
    public int getChannelIndex() {
        return this.mChannelIndex;
    }

    @SystemApi
    public BluetoothLeAudioCodecConfigMetadata getCodecMetadata() {
        return this.mCodecMetadata;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel out, int flags) {
        out.writeBoolean(this.mIsSelected);
        out.writeInt(this.mChannelIndex);
        out.writeTypedObject(this.mCodecMetadata, 0);
    }

    @SystemApi
    public static final class Builder {
        private int mChannelIndex;
        private BluetoothLeAudioCodecConfigMetadata mCodecMetadata;
        private boolean mIsSelected;

        @SystemApi
        public Builder() {
            this.mIsSelected = false;
            this.mChannelIndex = -1;
            this.mCodecMetadata = null;
        }

        @SystemApi
        public Builder(BluetoothLeBroadcastChannel original) {
            this.mIsSelected = false;
            this.mChannelIndex = -1;
            this.mCodecMetadata = null;
            this.mIsSelected = original.isSelected();
            this.mChannelIndex = original.getChannelIndex();
            this.mCodecMetadata = original.getCodecMetadata();
        }

        @SystemApi
        public Builder setSelected(boolean isSelected) {
            this.mIsSelected = isSelected;
            return this;
        }

        @SystemApi
        public Builder setChannelIndex(int channelIndex) {
            if (channelIndex == -1) {
                throw new IllegalArgumentException("channelIndex cannot be -1");
            }
            this.mChannelIndex = channelIndex;
            return this;
        }

        @SystemApi
        public Builder setCodecMetadata(BluetoothLeAudioCodecConfigMetadata codecMetadata) {
            Objects.requireNonNull(codecMetadata, "codecMetadata cannot be null");
            this.mCodecMetadata = codecMetadata;
            return this;
        }

        @SystemApi
        public BluetoothLeBroadcastChannel build() {
            Objects.requireNonNull(this.mCodecMetadata, "codec metadata cannot be null");
            if (this.mChannelIndex == -1) {
                throw new IllegalArgumentException("mChannelIndex cannot be -1");
            }
            return new BluetoothLeBroadcastChannel(this.mIsSelected, this.mChannelIndex, this.mCodecMetadata);
        }
    }
}

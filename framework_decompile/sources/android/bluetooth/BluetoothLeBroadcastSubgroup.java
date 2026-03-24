package android.bluetooth;

import android.annotation.SystemApi;
import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import java.util.function.Predicate;

@SystemApi
/* loaded from: classes.dex */
public final class BluetoothLeBroadcastSubgroup implements Parcelable {

    @SystemApi
    public static final Parcelable.Creator<BluetoothLeBroadcastSubgroup> CREATOR = new Parcelable.Creator<BluetoothLeBroadcastSubgroup>() { // from class: android.bluetooth.BluetoothLeBroadcastSubgroup.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public BluetoothLeBroadcastSubgroup createFromParcel(Parcel in) {
            Builder builder = new Builder();
            builder.setCodecId(in.readLong());
            builder.setCodecSpecificConfig((BluetoothLeAudioCodecConfigMetadata) in.readTypedObject(BluetoothLeAudioCodecConfigMetadata.CREATOR));
            builder.setContentMetadata((BluetoothLeAudioContentMetadata) in.readTypedObject(BluetoothLeAudioContentMetadata.CREATOR));
            ArrayList<BluetoothLeBroadcastChannel> arrayList = new ArrayList();
            in.readTypedList(arrayList, BluetoothLeBroadcastChannel.CREATOR);
            for (BluetoothLeBroadcastChannel channel : arrayList) {
                builder.addChannel(channel);
            }
            return builder.build();
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public BluetoothLeBroadcastSubgroup[] newArray(int size) {
            return new BluetoothLeBroadcastSubgroup[size];
        }
    };
    private static final int UNKNOWN_VALUE_PLACEHOLDER = -1;
    private final List<BluetoothLeBroadcastChannel> mChannels;
    private final long mCodecId;
    private final BluetoothLeAudioCodecConfigMetadata mCodecSpecificConfig;
    private final BluetoothLeAudioContentMetadata mContentMetadata;

    private BluetoothLeBroadcastSubgroup(long codecId, BluetoothLeAudioCodecConfigMetadata codecSpecificConfig, BluetoothLeAudioContentMetadata contentMetadata, List<BluetoothLeBroadcastChannel> channels) {
        this.mCodecId = codecId;
        this.mCodecSpecificConfig = codecSpecificConfig;
        this.mContentMetadata = contentMetadata;
        this.mChannels = channels;
    }

    public boolean equals(Object o) {
        if (!(o instanceof BluetoothLeBroadcastSubgroup)) {
            return false;
        }
        BluetoothLeBroadcastSubgroup other = (BluetoothLeBroadcastSubgroup) o;
        return this.mCodecId == other.getCodecId() && this.mCodecSpecificConfig.equals(other.getCodecSpecificConfig()) && this.mContentMetadata.equals(other.getContentMetadata()) && this.mChannels.equals(other.getChannels());
    }

    public int hashCode() {
        return Objects.hash(Long.valueOf(this.mCodecId), this.mCodecSpecificConfig, this.mContentMetadata, this.mChannels);
    }

    @SystemApi
    public long getCodecId() {
        return this.mCodecId;
    }

    @SystemApi
    public BluetoothLeAudioCodecConfigMetadata getCodecSpecificConfig() {
        return this.mCodecSpecificConfig;
    }

    @SystemApi
    public BluetoothLeAudioContentMetadata getContentMetadata() {
        return this.mContentMetadata;
    }

    @SystemApi
    public boolean hasChannelPreference() {
        return this.mChannels.stream().anyMatch(new Predicate() { // from class: android.bluetooth.BluetoothLeBroadcastSubgroup$$ExternalSyntheticLambda0
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return ((BluetoothLeBroadcastChannel) obj).isSelected();
            }
        });
    }

    @SystemApi
    public List<BluetoothLeBroadcastChannel> getChannels() {
        return this.mChannels;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel out, int flags) {
        out.writeLong(this.mCodecId);
        out.writeTypedObject(this.mCodecSpecificConfig, 0);
        out.writeTypedObject(this.mContentMetadata, 0);
        out.writeTypedList(this.mChannels);
    }

    @SystemApi
    public static final class Builder {
        private List<BluetoothLeBroadcastChannel> mChannels;
        private long mCodecId;
        private BluetoothLeAudioCodecConfigMetadata mCodecSpecificConfig;
        private BluetoothLeAudioContentMetadata mContentMetadata;

        @SystemApi
        public Builder() {
            this.mCodecId = -1L;
            this.mCodecSpecificConfig = null;
            this.mContentMetadata = null;
            this.mChannels = new ArrayList();
        }

        @SystemApi
        public Builder(BluetoothLeBroadcastSubgroup original) {
            this.mCodecId = -1L;
            this.mCodecSpecificConfig = null;
            this.mContentMetadata = null;
            this.mChannels = new ArrayList();
            this.mCodecId = original.getCodecId();
            this.mCodecSpecificConfig = original.getCodecSpecificConfig();
            this.mContentMetadata = original.getContentMetadata();
            this.mChannels = original.getChannels();
        }

        @SystemApi
        public Builder setCodecId(long codecId) {
            this.mCodecId = codecId;
            return this;
        }

        @SystemApi
        public Builder setCodecSpecificConfig(BluetoothLeAudioCodecConfigMetadata codecSpecificConfig) {
            Objects.requireNonNull(codecSpecificConfig, "codecSpecificConfig cannot be null");
            this.mCodecSpecificConfig = codecSpecificConfig;
            return this;
        }

        @SystemApi
        public Builder setContentMetadata(BluetoothLeAudioContentMetadata contentMetadata) {
            Objects.requireNonNull(contentMetadata, "contentMetadata cannot be null");
            this.mContentMetadata = contentMetadata;
            return this;
        }

        @SystemApi
        public Builder addChannel(BluetoothLeBroadcastChannel channel) {
            Objects.requireNonNull(channel, "channel cannot be null");
            this.mChannels.add(channel);
            return this;
        }

        @SystemApi
        public Builder clearChannel() {
            this.mChannels.clear();
            return this;
        }

        @SystemApi
        public BluetoothLeBroadcastSubgroup build() {
            Objects.requireNonNull(this.mCodecSpecificConfig, "CodecSpecificConfig is null");
            Objects.requireNonNull(this.mContentMetadata, "ContentMetadata is null");
            if (this.mChannels.isEmpty()) {
                throw new IllegalArgumentException("Must have at least one channel");
            }
            return new BluetoothLeBroadcastSubgroup(this.mCodecId, this.mCodecSpecificConfig, this.mContentMetadata, this.mChannels);
        }
    }
}

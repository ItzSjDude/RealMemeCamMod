package android.bluetooth;

import android.annotation.SystemApi;
import android.bluetooth.BluetoothLeAudioCodecConfigMetadata;
import android.bluetooth.BluetoothUtils;
import android.os.Parcel;
import android.os.Parcelable;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Objects;
import java.util.function.Predicate;

@SystemApi
/* loaded from: classes.dex */
public final class BluetoothLeAudioCodecConfigMetadata implements Parcelable {
    private static final int AUDIO_CHANNEL_LOCATION_TYPE = 3;

    @SystemApi
    public static final Parcelable.Creator<BluetoothLeAudioCodecConfigMetadata> CREATOR = new Parcelable.Creator<BluetoothLeAudioCodecConfigMetadata>() { // from class: android.bluetooth.BluetoothLeAudioCodecConfigMetadata.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public BluetoothLeAudioCodecConfigMetadata createFromParcel(Parcel in) {
            byte[] rawMetadata;
            long audioLocation = in.readLong();
            int rawMetadataLen = in.readInt();
            if (rawMetadataLen != -1) {
                rawMetadata = new byte[rawMetadataLen];
                in.readByteArray(rawMetadata);
            } else {
                rawMetadata = new byte[0];
            }
            return new BluetoothLeAudioCodecConfigMetadata(audioLocation, rawMetadata);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public BluetoothLeAudioCodecConfigMetadata[] newArray(int size) {
            return new BluetoothLeAudioCodecConfigMetadata[size];
        }
    };
    private final long mAudioLocation;
    private final byte[] mRawMetadata;

    private BluetoothLeAudioCodecConfigMetadata(long audioLocation, byte[] rawMetadata) {
        this.mAudioLocation = audioLocation;
        this.mRawMetadata = rawMetadata;
    }

    public boolean equals(Object o) {
        if (o == null || !(o instanceof BluetoothLeAudioCodecConfigMetadata)) {
            return false;
        }
        BluetoothLeAudioCodecConfigMetadata oth = (BluetoothLeAudioCodecConfigMetadata) o;
        return this.mAudioLocation == oth.getAudioLocation() && Arrays.equals(this.mRawMetadata, oth.getRawMetadata());
    }

    public int hashCode() {
        return Objects.hash(Long.valueOf(this.mAudioLocation), this.mRawMetadata);
    }

    @SystemApi
    public long getAudioLocation() {
        return this.mAudioLocation;
    }

    @SystemApi
    public byte[] getRawMetadata() {
        return this.mRawMetadata;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel out, int flags) {
        out.writeLong(this.mAudioLocation);
        byte[] bArr = this.mRawMetadata;
        if (bArr != null) {
            out.writeInt(bArr.length);
            out.writeByteArray(this.mRawMetadata);
        } else {
            out.writeInt(-1);
        }
    }

    @SystemApi
    public static BluetoothLeAudioCodecConfigMetadata fromRawBytes(byte[] rawBytes) {
        if (rawBytes == null) {
            throw new IllegalArgumentException("Raw bytes cannot be null");
        }
        List<BluetoothUtils.TypeValueEntry> entries = BluetoothUtils.parseLengthTypeValueBytes(rawBytes);
        if (rawBytes.length > 0 && rawBytes[0] > 0 && entries.isEmpty()) {
            throw new IllegalArgumentException("No LTV entries are found from rawBytes of size " + rawBytes.length);
        }
        long audioLocation = 0;
        for (BluetoothUtils.TypeValueEntry entry : entries) {
            if (entry.getType() == 3) {
                byte[] bytes = entry.getValue();
                audioLocation = ((bytes[0] & 255) << 0) | ((bytes[1] & 255) << 8) | ((bytes[2] & 255) << 16) | ((bytes[3] & 255) << 24);
            }
        }
        return new BluetoothLeAudioCodecConfigMetadata(audioLocation, rawBytes);
    }

    @SystemApi
    public static final class Builder {
        private long mAudioLocation;
        private byte[] mRawMetadata;

        @SystemApi
        public Builder() {
            this.mAudioLocation = 0L;
            this.mRawMetadata = null;
        }

        @SystemApi
        public Builder(BluetoothLeAudioCodecConfigMetadata original) {
            this.mAudioLocation = 0L;
            this.mRawMetadata = null;
            this.mAudioLocation = original.getAudioLocation();
            this.mRawMetadata = original.getRawMetadata();
        }

        @SystemApi
        public Builder setAudioLocation(long audioLocation) {
            this.mAudioLocation = audioLocation;
            return this;
        }

        @SystemApi
        public BluetoothLeAudioCodecConfigMetadata build() {
            List<BluetoothUtils.TypeValueEntry> entries = new ArrayList<>();
            byte[] bArr = this.mRawMetadata;
            if (bArr != null) {
                entries = BluetoothUtils.parseLengthTypeValueBytes(bArr);
                byte[] bArr2 = this.mRawMetadata;
                if (bArr2.length > 0 && bArr2[0] > 0 && entries.isEmpty()) {
                    throw new IllegalArgumentException("No LTV entries are found from rawBytes of size " + this.mRawMetadata.length + " please check the original object passed to Builder's copy constructor");
                }
            }
            if (this.mAudioLocation != 0) {
                entries.removeIf(new Predicate() { // from class: android.bluetooth.BluetoothLeAudioCodecConfigMetadata$Builder$$ExternalSyntheticLambda0
                    @Override // java.util.function.Predicate
                    public final boolean test(Object obj) {
                        return BluetoothLeAudioCodecConfigMetadata.Builder.lambda$build$0((BluetoothUtils.TypeValueEntry) obj);
                    }
                });
                entries.add(new BluetoothUtils.TypeValueEntry(3, ByteBuffer.allocate(8).putLong(this.mAudioLocation).array()));
            }
            byte[] rawBytes = BluetoothUtils.serializeTypeValue(entries);
            if (rawBytes == null) {
                throw new IllegalArgumentException("Failed to serialize entries to bytes");
            }
            return new BluetoothLeAudioCodecConfigMetadata(this.mAudioLocation, rawBytes);
        }

        static /* synthetic */ boolean lambda$build$0(BluetoothUtils.TypeValueEntry entry) {
            return entry.getType() == 3;
        }
    }
}

package android.bluetooth;

import android.annotation.SystemApi;
import android.bluetooth.BluetoothLeAudioContentMetadata;
import android.bluetooth.BluetoothUtils;
import android.os.Parcel;
import android.os.Parcelable;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Objects;
import java.util.function.Predicate;

@SystemApi
/* loaded from: classes.dex */
public final class BluetoothLeAudioContentMetadata implements Parcelable {

    @SystemApi
    public static final Parcelable.Creator<BluetoothLeAudioContentMetadata> CREATOR = new Parcelable.Creator<BluetoothLeAudioContentMetadata>() { // from class: android.bluetooth.BluetoothLeAudioContentMetadata.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public BluetoothLeAudioContentMetadata createFromParcel(Parcel in) {
            String programInfo = in.readString();
            String language = in.readString();
            int rawMetadataLength = in.readInt();
            byte[] rawMetadata = new byte[rawMetadataLength];
            in.readByteArray(rawMetadata);
            return new BluetoothLeAudioContentMetadata(programInfo, language, rawMetadata);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public BluetoothLeAudioContentMetadata[] newArray(int size) {
            return new BluetoothLeAudioContentMetadata[size];
        }
    };
    private static final int LANGUAGE_LENGTH = 3;
    private static final int LANGUAGE_TYPE = 4;
    private static final int PROGRAM_INFO_TYPE = 3;
    private final String mLanguage;
    private final String mProgramInfo;
    private final byte[] mRawMetadata;

    private BluetoothLeAudioContentMetadata(String programInfo, String language, byte[] rawMetadata) {
        this.mProgramInfo = programInfo;
        this.mLanguage = language;
        this.mRawMetadata = rawMetadata;
    }

    public boolean equals(Object o) {
        if (!(o instanceof BluetoothLeAudioContentMetadata)) {
            return false;
        }
        BluetoothLeAudioContentMetadata other = (BluetoothLeAudioContentMetadata) o;
        return Objects.equals(this.mProgramInfo, other.getProgramInfo()) && Objects.equals(this.mLanguage, other.getLanguage()) && Arrays.equals(this.mRawMetadata, other.getRawMetadata());
    }

    public int hashCode() {
        return Objects.hash(this.mProgramInfo, this.mLanguage, Integer.valueOf(Arrays.hashCode(this.mRawMetadata)));
    }

    @SystemApi
    public String getProgramInfo() {
        return this.mProgramInfo;
    }

    @SystemApi
    public String getLanguage() {
        return this.mLanguage;
    }

    public byte[] getRawMetadata() {
        return this.mRawMetadata;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel out, int flags) {
        out.writeString(this.mProgramInfo);
        out.writeString(this.mLanguage);
        out.writeInt(this.mRawMetadata.length);
        out.writeByteArray(this.mRawMetadata);
    }

    @SystemApi
    public static BluetoothLeAudioContentMetadata fromRawBytes(byte[] rawBytes) {
        if (rawBytes == null) {
            throw new IllegalArgumentException("Raw bytes cannot be null");
        }
        List<BluetoothUtils.TypeValueEntry> entries = BluetoothUtils.parseLengthTypeValueBytes(rawBytes);
        if (rawBytes.length > 0 && rawBytes[0] > 0 && entries.isEmpty()) {
            throw new IllegalArgumentException("No LTV entries are found from rawBytes of size " + rawBytes.length);
        }
        String programInfo = null;
        String language = null;
        for (BluetoothUtils.TypeValueEntry entry : entries) {
            if (programInfo == null && entry.getType() == 3) {
                programInfo = new String(entry.getValue(), StandardCharsets.UTF_8);
            } else if (language == null && entry.getType() == 4) {
                byte[] bytes = entry.getValue();
                if (bytes.length != 3) {
                    throw new IllegalArgumentException("Language byte size " + bytes.length + " is less than 3, needed for ISO 639-3");
                }
                language = new String(bytes, 0, 3, StandardCharsets.US_ASCII);
            }
        }
        return new BluetoothLeAudioContentMetadata(programInfo, language, rawBytes);
    }

    @SystemApi
    public static final class Builder {
        private String mLanguage;
        private String mProgramInfo;
        private byte[] mRawMetadata;

        @SystemApi
        public Builder() {
            this.mProgramInfo = null;
            this.mLanguage = null;
            this.mRawMetadata = null;
        }

        @SystemApi
        public Builder(BluetoothLeAudioContentMetadata original) {
            this.mProgramInfo = null;
            this.mLanguage = null;
            this.mRawMetadata = null;
            this.mProgramInfo = original.getProgramInfo();
            this.mLanguage = original.getLanguage();
            this.mRawMetadata = original.getRawMetadata();
        }

        @SystemApi
        public Builder setProgramInfo(String programInfo) {
            this.mProgramInfo = programInfo;
            return this;
        }

        @SystemApi
        public Builder setLanguage(String language) {
            this.mLanguage = language;
            return this;
        }

        @SystemApi
        public BluetoothLeAudioContentMetadata build() {
            List<BluetoothUtils.TypeValueEntry> entries = new ArrayList<>();
            byte[] bArr = this.mRawMetadata;
            if (bArr != null) {
                entries = BluetoothUtils.parseLengthTypeValueBytes(bArr);
                byte[] bArr2 = this.mRawMetadata;
                if (bArr2.length > 0 && bArr2[0] > 0 && entries.isEmpty()) {
                    throw new IllegalArgumentException("No LTV entries are found from rawBytes of size " + this.mRawMetadata.length + " please check the original object passed to Builder's copy constructor");
                }
            }
            if (this.mProgramInfo != null) {
                entries.removeIf(new Predicate() { // from class: android.bluetooth.BluetoothLeAudioContentMetadata$Builder$$ExternalSyntheticLambda0
                    @Override // java.util.function.Predicate
                    public final boolean test(Object obj) {
                        return BluetoothLeAudioContentMetadata.Builder.lambda$build$0((BluetoothUtils.TypeValueEntry) obj);
                    }
                });
                entries.add(new BluetoothUtils.TypeValueEntry(3, this.mProgramInfo.getBytes(StandardCharsets.UTF_8)));
            }
            String str = this.mLanguage;
            if (str != null) {
                String cleanedLanguage = str.toLowerCase().strip();
                byte[] languageBytes = cleanedLanguage.getBytes(StandardCharsets.US_ASCII);
                if (languageBytes.length != 3) {
                    throw new IllegalArgumentException("Language byte size " + languageBytes.length + " is less than 3, needed ISO 639-3, to build");
                }
                entries.removeIf(new Predicate() { // from class: android.bluetooth.BluetoothLeAudioContentMetadata$Builder$$ExternalSyntheticLambda1
                    @Override // java.util.function.Predicate
                    public final boolean test(Object obj) {
                        return BluetoothLeAudioContentMetadata.Builder.lambda$build$1((BluetoothUtils.TypeValueEntry) obj);
                    }
                });
                entries.add(new BluetoothUtils.TypeValueEntry(4, languageBytes));
            }
            byte[] rawBytes = BluetoothUtils.serializeTypeValue(entries);
            if (rawBytes == null) {
                throw new IllegalArgumentException("Failed to serialize entries to bytes");
            }
            return new BluetoothLeAudioContentMetadata(this.mProgramInfo, this.mLanguage, rawBytes);
        }

        static /* synthetic */ boolean lambda$build$0(BluetoothUtils.TypeValueEntry entry) {
            return entry.getType() == 3;
        }

        static /* synthetic */ boolean lambda$build$1(BluetoothUtils.TypeValueEntry entry) {
            return entry.getType() == 4;
        }
    }
}

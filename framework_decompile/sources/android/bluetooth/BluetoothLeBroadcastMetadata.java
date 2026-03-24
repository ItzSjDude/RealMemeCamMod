package android.bluetooth;

import android.annotation.SystemApi;
import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Objects;

@SystemApi
/* loaded from: classes.dex */
public final class BluetoothLeBroadcastMetadata implements Parcelable {

    @SystemApi
    public static final Parcelable.Creator<BluetoothLeBroadcastMetadata> CREATOR = new Parcelable.Creator<BluetoothLeBroadcastMetadata>() { // from class: android.bluetooth.BluetoothLeBroadcastMetadata.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public BluetoothLeBroadcastMetadata createFromParcel(Parcel in) {
            Builder builder = new Builder();
            int sourceAddressType = in.readInt();
            int deviceExist = in.readInt();
            BluetoothDevice sourceDevice = null;
            if (deviceExist == 1) {
                sourceDevice = (BluetoothDevice) in.readTypedObject(BluetoothDevice.CREATOR);
            }
            builder.setSourceDevice(sourceDevice, sourceAddressType);
            builder.setSourceAdvertisingSid(in.readInt());
            builder.setBroadcastId(in.readInt());
            builder.setPaSyncInterval(in.readInt());
            builder.setEncrypted(in.readBoolean());
            int codeLen = in.readInt();
            byte[] broadcastCode = null;
            if (codeLen != -1) {
                broadcastCode = new byte[codeLen];
                if (codeLen > 0) {
                    in.readByteArray(broadcastCode);
                }
            }
            builder.setBroadcastCode(broadcastCode);
            builder.setPresentationDelayMicros(in.readInt());
            ArrayList<BluetoothLeBroadcastSubgroup> arrayList = new ArrayList();
            in.readTypedList(arrayList, BluetoothLeBroadcastSubgroup.CREATOR);
            for (BluetoothLeBroadcastSubgroup subgroup : arrayList) {
                builder.addSubgroup(subgroup);
            }
            return builder.build();
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public BluetoothLeBroadcastMetadata[] newArray(int size) {
            return new BluetoothLeBroadcastMetadata[size];
        }
    };

    @SystemApi
    public static final int PA_SYNC_INTERVAL_UNKNOWN = 65535;
    private static final int UNKNOWN_VALUE_PLACEHOLDER = -1;
    private final byte[] mBroadcastCode;
    private final int mBroadcastId;
    private final boolean mIsEncrypted;
    private final int mPaSyncInterval;
    private final int mPresentationDelayMicros;
    private final int mSourceAddressType;
    private final int mSourceAdvertisingSid;
    private final BluetoothDevice mSourceDevice;
    private final List<BluetoothLeBroadcastSubgroup> mSubgroups;

    private BluetoothLeBroadcastMetadata(int sourceAddressType, BluetoothDevice sourceDevice, int sourceAdvertisingSid, int broadcastId, int paSyncInterval, boolean isEncrypted, byte[] broadcastCode, int presentationDelay, List<BluetoothLeBroadcastSubgroup> subgroups) {
        this.mSourceAddressType = sourceAddressType;
        this.mSourceDevice = sourceDevice;
        this.mSourceAdvertisingSid = sourceAdvertisingSid;
        this.mBroadcastId = broadcastId;
        this.mPaSyncInterval = paSyncInterval;
        this.mIsEncrypted = isEncrypted;
        this.mBroadcastCode = broadcastCode;
        this.mPresentationDelayMicros = presentationDelay;
        this.mSubgroups = subgroups;
    }

    public boolean equals(Object o) {
        if (!(o instanceof BluetoothLeBroadcastMetadata)) {
            return false;
        }
        BluetoothLeBroadcastMetadata other = (BluetoothLeBroadcastMetadata) o;
        return this.mSourceAddressType == other.getSourceAddressType() && this.mSourceDevice.equals(other.getSourceDevice()) && this.mSourceAdvertisingSid == other.getSourceAdvertisingSid() && this.mBroadcastId == other.getBroadcastId() && this.mPaSyncInterval == other.getPaSyncInterval() && this.mIsEncrypted == other.isEncrypted() && Arrays.equals(this.mBroadcastCode, other.getBroadcastCode()) && this.mPresentationDelayMicros == other.getPresentationDelayMicros() && this.mSubgroups.equals(other.getSubgroups());
    }

    public int hashCode() {
        return Objects.hash(Integer.valueOf(this.mSourceAddressType), this.mSourceDevice, Integer.valueOf(this.mSourceAdvertisingSid), Integer.valueOf(this.mBroadcastId), Integer.valueOf(this.mPaSyncInterval), Boolean.valueOf(this.mIsEncrypted), Integer.valueOf(Arrays.hashCode(this.mBroadcastCode)), Integer.valueOf(this.mPresentationDelayMicros), this.mSubgroups);
    }

    @SystemApi
    public int getSourceAddressType() {
        return this.mSourceAddressType;
    }

    @SystemApi
    public BluetoothDevice getSourceDevice() {
        return this.mSourceDevice;
    }

    @SystemApi
    public int getSourceAdvertisingSid() {
        return this.mSourceAdvertisingSid;
    }

    @SystemApi
    public int getBroadcastId() {
        return this.mBroadcastId;
    }

    @SystemApi
    public int getPaSyncInterval() {
        return this.mPaSyncInterval;
    }

    @SystemApi
    public boolean isEncrypted() {
        return this.mIsEncrypted;
    }

    @SystemApi
    public byte[] getBroadcastCode() {
        return this.mBroadcastCode;
    }

    @SystemApi
    public int getPresentationDelayMicros() {
        return this.mPresentationDelayMicros;
    }

    @SystemApi
    public List<BluetoothLeBroadcastSubgroup> getSubgroups() {
        return this.mSubgroups;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel out, int flags) {
        out.writeInt(this.mSourceAddressType);
        if (this.mSourceDevice != null) {
            out.writeInt(1);
            out.writeTypedObject(this.mSourceDevice, 0);
        } else {
            out.writeInt(0);
        }
        out.writeInt(this.mSourceAdvertisingSid);
        out.writeInt(this.mBroadcastId);
        out.writeInt(this.mPaSyncInterval);
        out.writeBoolean(this.mIsEncrypted);
        byte[] bArr = this.mBroadcastCode;
        if (bArr != null) {
            out.writeInt(bArr.length);
            out.writeByteArray(this.mBroadcastCode);
        } else {
            out.writeInt(-1);
        }
        out.writeInt(this.mPresentationDelayMicros);
        out.writeTypedList(this.mSubgroups);
    }

    @SystemApi
    public static final class Builder {
        private byte[] mBroadcastCode;
        private int mBroadcastId;
        private boolean mIsEncrypted;
        private int mPaSyncInterval;
        private int mPresentationDelayMicros;
        private int mSourceAddressType;
        private int mSourceAdvertisingSid;
        private BluetoothDevice mSourceDevice;
        private List<BluetoothLeBroadcastSubgroup> mSubgroups;

        @SystemApi
        public Builder() {
            this.mSourceAddressType = 65535;
            this.mSourceDevice = null;
            this.mSourceAdvertisingSid = -1;
            this.mBroadcastId = -1;
            this.mPaSyncInterval = -1;
            this.mIsEncrypted = false;
            this.mBroadcastCode = null;
            this.mPresentationDelayMicros = -1;
            this.mSubgroups = new ArrayList();
        }

        @SystemApi
        public Builder(BluetoothLeBroadcastMetadata original) {
            this.mSourceAddressType = 65535;
            this.mSourceDevice = null;
            this.mSourceAdvertisingSid = -1;
            this.mBroadcastId = -1;
            this.mPaSyncInterval = -1;
            this.mIsEncrypted = false;
            this.mBroadcastCode = null;
            this.mPresentationDelayMicros = -1;
            this.mSubgroups = new ArrayList();
            this.mSourceAddressType = original.getSourceAddressType();
            this.mSourceDevice = original.getSourceDevice();
            this.mSourceAdvertisingSid = original.getSourceAdvertisingSid();
            this.mBroadcastId = original.getBroadcastId();
            this.mPaSyncInterval = original.getPaSyncInterval();
            this.mIsEncrypted = original.isEncrypted();
            this.mBroadcastCode = original.getBroadcastCode();
            this.mPresentationDelayMicros = original.getPresentationDelayMicros();
            this.mSubgroups = original.getSubgroups();
        }

        @SystemApi
        public Builder setSourceDevice(BluetoothDevice sourceDevice, int sourceAddressType) {
            if (sourceAddressType == 65535) {
                throw new IllegalArgumentException("sourceAddressType cannot be ADDRESS_TYPE_UNKNOWN");
            }
            if (sourceAddressType != 1 && sourceAddressType != 0) {
                throw new IllegalArgumentException("sourceAddressType " + sourceAddressType + " is invalid");
            }
            Objects.requireNonNull(sourceDevice, "sourceDevice cannot be null");
            this.mSourceAddressType = sourceAddressType;
            this.mSourceDevice = sourceDevice;
            return this;
        }

        @SystemApi
        public Builder setSourceAdvertisingSid(int sourceAdvertisingSid) {
            this.mSourceAdvertisingSid = sourceAdvertisingSid;
            return this;
        }

        @SystemApi
        public Builder setBroadcastId(int broadcastId) {
            this.mBroadcastId = broadcastId;
            return this;
        }

        @SystemApi
        public Builder setPaSyncInterval(int paSyncInterval) {
            this.mPaSyncInterval = paSyncInterval;
            return this;
        }

        @SystemApi
        public Builder setEncrypted(boolean isEncrypted) {
            this.mIsEncrypted = isEncrypted;
            return this;
        }

        @SystemApi
        public Builder setBroadcastCode(byte[] broadcastCode) {
            this.mBroadcastCode = broadcastCode;
            return this;
        }

        @SystemApi
        public Builder setPresentationDelayMicros(int presentationDelayMicros) {
            if (presentationDelayMicros < 0 || presentationDelayMicros >= 16777215) {
                throw new IllegalArgumentException("presentationDelayMicros " + presentationDelayMicros + " does not fall in [0, 0xFFFFFF]");
            }
            this.mPresentationDelayMicros = presentationDelayMicros;
            return this;
        }

        @SystemApi
        public Builder addSubgroup(BluetoothLeBroadcastSubgroup subgroup) {
            Objects.requireNonNull(subgroup, "subgroup cannot be null");
            this.mSubgroups.add(subgroup);
            return this;
        }

        @SystemApi
        public Builder clearSubgroup() {
            this.mSubgroups.clear();
            return this;
        }

        @SystemApi
        public BluetoothLeBroadcastMetadata build() {
            int i = this.mSourceAddressType;
            if (i == 65535) {
                throw new IllegalArgumentException("SourceAddressTyp cannot be unknown");
            }
            if (i != 1 && i != 0) {
                throw new IllegalArgumentException("sourceAddressType " + this.mSourceAddressType + " is invalid");
            }
            Objects.requireNonNull(this.mSourceDevice, "mSourceDevice cannot be null");
            if (this.mSubgroups.isEmpty()) {
                throw new IllegalArgumentException("Must contain at least one subgroup");
            }
            return new BluetoothLeBroadcastMetadata(this.mSourceAddressType, this.mSourceDevice, this.mSourceAdvertisingSid, this.mBroadcastId, this.mPaSyncInterval, this.mIsEncrypted, this.mBroadcastCode, this.mPresentationDelayMicros, this.mSubgroups);
        }
    }
}

package android.bluetooth;

import android.annotation.SystemApi;
import android.os.Parcel;
import android.os.Parcelable;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

@SystemApi
/* loaded from: classes.dex */
public final class BluetoothLeBroadcastReceiveState implements Parcelable {

    @SystemApi
    public static final int BIG_ENCRYPTION_STATE_BAD_CODE = 3;

    @SystemApi
    public static final int BIG_ENCRYPTION_STATE_CODE_REQUIRED = 1;

    @SystemApi
    public static final int BIG_ENCRYPTION_STATE_DECRYPTING = 2;
    public static final int BIG_ENCRYPTION_STATE_INVALID = 65535;

    @SystemApi
    public static final int BIG_ENCRYPTION_STATE_NOT_ENCRYPTED = 0;

    @SystemApi
    public static final Parcelable.Creator<BluetoothLeBroadcastReceiveState> CREATOR = new Parcelable.Creator<BluetoothLeBroadcastReceiveState>() { // from class: android.bluetooth.BluetoothLeBroadcastReceiveState.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public BluetoothLeBroadcastReceiveState createFromParcel(Parcel in) {
            byte[] badCode;
            int sourceId = in.readInt();
            int sourceAddressType = in.readInt();
            BluetoothDevice sourceDevice = (BluetoothDevice) in.readTypedObject(BluetoothDevice.CREATOR);
            int sourceAdvertisingSid = in.readInt();
            int broadcastId = in.readInt();
            int paSyncState = in.readInt();
            int bigEncryptionState = in.readInt();
            int badCodeLen = in.readInt();
            if (badCodeLen == -1) {
                badCode = null;
            } else {
                byte[] badCode2 = new byte[badCodeLen];
                if (badCodeLen > 0) {
                    in.readByteArray(badCode2);
                }
                badCode = badCode2;
            }
            byte numSubGroups = in.readByte();
            List<Long> bisSyncState = in.readArrayList(Long.class.getClassLoader(), Long.class);
            ArrayList arrayList = new ArrayList();
            in.readTypedList(arrayList, BluetoothLeAudioContentMetadata.CREATOR);
            return new BluetoothLeBroadcastReceiveState(sourceId, sourceAddressType, sourceDevice, sourceAdvertisingSid, broadcastId, paSyncState, bigEncryptionState, badCode, numSubGroups, bisSyncState, arrayList);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public BluetoothLeBroadcastReceiveState[] newArray(int size) {
            return new BluetoothLeBroadcastReceiveState[size];
        }
    };

    @SystemApi
    public static final int PA_SYNC_STATE_FAILED_TO_SYNCHRONIZE = 3;

    @SystemApi
    public static final int PA_SYNC_STATE_IDLE = 0;
    public static final int PA_SYNC_STATE_INVALID = 65535;

    @SystemApi
    public static final int PA_SYNC_STATE_NO_PAST = 4;

    @SystemApi
    public static final int PA_SYNC_STATE_SYNCHRONIZED = 2;

    @SystemApi
    public static final int PA_SYNC_STATE_SYNCINFO_REQUEST = 1;
    private final byte[] mBadCode;
    private final int mBigEncryptionState;
    private final List<Long> mBisSyncState;
    private final int mBroadcastId;
    private final int mNumSubgroups;
    private final int mPaSyncState;
    private final int mSourceAddressType;
    private final int mSourceAdvertisingSid;
    private final BluetoothDevice mSourceDevice;
    private final int mSourceId;
    private final List<BluetoothLeAudioContentMetadata> mSubgroupMetadata;

    @Retention(RetentionPolicy.SOURCE)
    public @interface BigEncryptionState {
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface PaSyncState {
    }

    public BluetoothLeBroadcastReceiveState(int sourceId, int sourceAddressType, BluetoothDevice sourceDevice, int sourceAdvertisingSid, int broadcastId, int paSyncState, int bigEncryptionState, byte[] badCode, int numSubgroups, List<Long> bisSyncState, List<BluetoothLeAudioContentMetadata> subgroupMetadata) {
        if (sourceId < 0 || sourceId > 255) {
            throw new IllegalArgumentException("sourceId " + sourceId + " does not fall between 0x00 and 0xFF");
        }
        Objects.requireNonNull(sourceDevice, "sourceDevice cannot be null");
        if (sourceAddressType == 65535) {
            throw new IllegalArgumentException("sourceAddressType cannot be ADDRESS_TYPE_UNKNOWN");
        }
        if (sourceAddressType != 1 && sourceAddressType != 0) {
            throw new IllegalArgumentException("sourceAddressType " + sourceAddressType + " is invalid");
        }
        Objects.requireNonNull(bisSyncState, "bisSyncState cannot be null");
        if (bisSyncState.size() != numSubgroups) {
            throw new IllegalArgumentException("bisSyncState.size() " + bisSyncState.size() + " must be equal to numSubgroups " + numSubgroups);
        }
        Objects.requireNonNull(subgroupMetadata, "subgroupMetadata cannot be null");
        if (subgroupMetadata.size() == numSubgroups) {
            if (paSyncState != 0 && paSyncState != 1 && paSyncState != 2 && paSyncState != 3 && paSyncState != 4 && paSyncState != 65535) {
                throw new IllegalArgumentException("unrecognized paSyncState " + paSyncState);
            }
            if (bigEncryptionState != 0 && bigEncryptionState != 1 && bigEncryptionState != 2 && bigEncryptionState != 3 && bigEncryptionState != 65535) {
                throw new IllegalArgumentException("unrecognized bigEncryptionState " + bigEncryptionState);
            }
            if (badCode != null && badCode.length != 16) {
                throw new IllegalArgumentException("badCode must be 16 bytes long of null, but is " + badCode.length + " + bytes long");
            }
            this.mSourceId = sourceId;
            this.mSourceAddressType = sourceAddressType;
            this.mSourceDevice = sourceDevice;
            this.mSourceAdvertisingSid = sourceAdvertisingSid;
            this.mBroadcastId = broadcastId;
            this.mPaSyncState = paSyncState;
            this.mBigEncryptionState = bigEncryptionState;
            this.mBadCode = badCode;
            this.mNumSubgroups = numSubgroups;
            this.mBisSyncState = bisSyncState;
            this.mSubgroupMetadata = subgroupMetadata;
            return;
        }
        throw new IllegalArgumentException("subgroupMetadata.size()  " + subgroupMetadata.size() + " must be equal to numSubgroups " + numSubgroups);
    }

    @SystemApi
    public int getSourceId() {
        return this.mSourceId;
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
    public int getPaSyncState() {
        return this.mPaSyncState;
    }

    @SystemApi
    public int getBigEncryptionState() {
        return this.mBigEncryptionState;
    }

    @SystemApi
    public byte[] getBadCode() {
        return this.mBadCode;
    }

    public int getNumSubgroups() {
        return this.mNumSubgroups;
    }

    @SystemApi
    public List<Long> getBisSyncState() {
        return this.mBisSyncState;
    }

    @SystemApi
    public List<BluetoothLeAudioContentMetadata> getSubgroupMetadata() {
        return this.mSubgroupMetadata;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel out, int flags) {
        out.writeInt(this.mSourceId);
        out.writeInt(this.mSourceAddressType);
        out.writeTypedObject(this.mSourceDevice, 0);
        out.writeInt(this.mSourceAdvertisingSid);
        out.writeInt(this.mBroadcastId);
        out.writeInt(this.mPaSyncState);
        out.writeInt(this.mBigEncryptionState);
        byte[] bArr = this.mBadCode;
        if (bArr != null) {
            out.writeInt(bArr.length);
            out.writeByteArray(this.mBadCode);
        } else {
            out.writeInt(-1);
        }
        out.writeInt(this.mNumSubgroups);
        out.writeList(this.mBisSyncState);
        out.writeTypedList(this.mSubgroupMetadata);
    }
}

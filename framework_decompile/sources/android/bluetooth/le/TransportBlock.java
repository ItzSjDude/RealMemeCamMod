package android.bluetooth.le;

import android.os.Parcel;
import android.os.Parcelable;
import android.util.Log;
import java.nio.BufferOverflowException;
import java.nio.ByteBuffer;
import java.util.Arrays;

/* loaded from: classes.dex */
public final class TransportBlock implements Parcelable {
    public static final Parcelable.Creator<TransportBlock> CREATOR = new Parcelable.Creator<TransportBlock>() { // from class: android.bluetooth.le.TransportBlock.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public TransportBlock createFromParcel(Parcel in) {
            return new TransportBlock(in);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public TransportBlock[] newArray(int size) {
            return new TransportBlock[size];
        }
    };
    private static final String TAG = "TransportBlock";
    private final int mOrgId;
    private final int mTdsFlags;
    private final byte[] mTransportData;
    private final int mTransportDataLength;

    public TransportBlock(int orgId, int tdsFlags, int transportDataLength, byte[] transportData) {
        this.mOrgId = orgId;
        this.mTdsFlags = tdsFlags;
        this.mTransportDataLength = transportDataLength;
        this.mTransportData = transportData;
    }

    private TransportBlock(Parcel in) {
        this.mOrgId = in.readInt();
        this.mTdsFlags = in.readInt();
        int i = in.readInt();
        this.mTransportDataLength = i;
        if (i > 0) {
            byte[] bArr = new byte[i];
            this.mTransportData = bArr;
            in.readByteArray(bArr);
            return;
        }
        this.mTransportData = null;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        dest.writeInt(this.mOrgId);
        dest.writeInt(this.mTdsFlags);
        dest.writeInt(this.mTransportDataLength);
        byte[] bArr = this.mTransportData;
        if (bArr != null) {
            dest.writeByteArray(bArr);
        }
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        TransportBlock other = (TransportBlock) obj;
        return Arrays.equals(toByteArray(), other.toByteArray());
    }

    public int getOrgId() {
        return this.mOrgId;
    }

    public int getTdsFlags() {
        return this.mTdsFlags;
    }

    public int getTransportDataLength() {
        return this.mTransportDataLength;
    }

    public byte[] getTransportData() {
        return this.mTransportData;
    }

    public byte[] toByteArray() {
        try {
            ByteBuffer buffer = ByteBuffer.allocate(totalBytes());
            buffer.put((byte) this.mOrgId);
            buffer.put((byte) this.mTdsFlags);
            buffer.put((byte) this.mTransportDataLength);
            byte[] bArr = this.mTransportData;
            if (bArr != null) {
                buffer.put(bArr);
            }
            return buffer.array();
        } catch (BufferOverflowException e) {
            Log.e(TAG, "Error converting to byte array: " + e.toString());
            return null;
        }
    }

    public int totalBytes() {
        int size = this.mTransportDataLength + 3;
        return size;
    }
}

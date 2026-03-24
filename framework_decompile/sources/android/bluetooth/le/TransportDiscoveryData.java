package android.bluetooth.le;

import android.os.Parcel;
import android.os.Parcelable;
import android.util.Log;
import java.nio.BufferOverflowException;
import java.nio.BufferUnderflowException;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

/* loaded from: classes.dex */
public final class TransportDiscoveryData implements Parcelable {
    public static final Parcelable.Creator<TransportDiscoveryData> CREATOR = new Parcelable.Creator<TransportDiscoveryData>() { // from class: android.bluetooth.le.TransportDiscoveryData.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public TransportDiscoveryData createFromParcel(Parcel in) {
            return new TransportDiscoveryData(in);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public TransportDiscoveryData[] newArray(int size) {
            return new TransportDiscoveryData[size];
        }
    };
    private static final String TAG = "TransportDiscoveryData";
    private final List<TransportBlock> mTransportBlocks;
    private final int mTransportDataType;

    public TransportDiscoveryData(int transportDataType, List<TransportBlock> transportBlocks) {
        this.mTransportDataType = transportDataType;
        this.mTransportBlocks = transportBlocks;
    }

    public TransportDiscoveryData(byte[] transportDiscoveryData) {
        ByteBuffer byteBuffer = ByteBuffer.wrap(transportDiscoveryData);
        this.mTransportBlocks = new ArrayList();
        if (byteBuffer.remaining() > 0) {
            this.mTransportDataType = byteBuffer.get();
        } else {
            this.mTransportDataType = -1;
        }
        while (byteBuffer.remaining() > 0) {
            try {
                int orgId = byteBuffer.get();
                int tdsFlags = byteBuffer.get();
                int transportDataLength = byteBuffer.get();
                byte[] transportData = new byte[transportDataLength];
                byteBuffer.get(transportData, 0, transportDataLength);
                this.mTransportBlocks.add(new TransportBlock(orgId, tdsFlags, transportDataLength, transportData));
            } catch (BufferUnderflowException e) {
                Log.e(TAG, "Error while parsing data: " + e.toString());
                return;
            }
        }
    }

    private TransportDiscoveryData(Parcel in) {
        this.mTransportDataType = in.readInt();
        this.mTransportBlocks = in.createTypedArrayList(TransportBlock.CREATOR);
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
        TransportDiscoveryData other = (TransportDiscoveryData) obj;
        return Arrays.equals(toByteArray(), other.toByteArray());
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        dest.writeInt(this.mTransportDataType);
        dest.writeTypedList(this.mTransportBlocks);
    }

    public int getTransportDataType() {
        return this.mTransportDataType;
    }

    public List<TransportBlock> getTransportBlocks() {
        List<TransportBlock> list = this.mTransportBlocks;
        if (list == null) {
            return Collections.emptyList();
        }
        return list;
    }

    public byte[] toByteArray() {
        try {
            ByteBuffer buffer = ByteBuffer.allocate(totalBytes());
            buffer.put((byte) this.mTransportDataType);
            for (TransportBlock transportBlock : getTransportBlocks()) {
                buffer.put(transportBlock.toByteArray());
            }
            return buffer.array();
        } catch (BufferOverflowException e) {
            Log.e(TAG, "Error converting to byte array: " + e.toString());
            return null;
        }
    }

    public int totalBytes() {
        int size = 1;
        for (TransportBlock transportBlock : getTransportBlocks()) {
            size += transportBlock.totalBytes();
        }
        return size;
    }
}

package android.bluetooth;

import android.content.AttributionSource;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.SystemClock;
import java.util.UUID;

/* loaded from: classes.dex */
public final class BluetoothHeadsetClientCall implements Parcelable, Attributable {
    public static final int CALL_STATE_ACTIVE = 0;
    public static final int CALL_STATE_ALERTING = 3;
    public static final int CALL_STATE_DIALING = 2;
    public static final int CALL_STATE_HELD = 1;
    public static final int CALL_STATE_HELD_BY_RESPONSE_AND_HOLD = 6;
    public static final int CALL_STATE_INCOMING = 4;
    public static final int CALL_STATE_TERMINATED = 7;
    public static final int CALL_STATE_WAITING = 5;
    public static final Parcelable.Creator<BluetoothHeadsetClientCall> CREATOR = new Parcelable.Creator<BluetoothHeadsetClientCall>() { // from class: android.bluetooth.BluetoothHeadsetClientCall.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public BluetoothHeadsetClientCall createFromParcel(Parcel in) {
            return new BluetoothHeadsetClientCall((BluetoothDevice) in.readParcelable(null), in.readInt(), UUID.fromString(in.readString()), in.readInt(), in.readString(), in.readInt() == 1, in.readInt() == 1, in.readInt() == 1);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public BluetoothHeadsetClientCall[] newArray(int size) {
            return new BluetoothHeadsetClientCall[size];
        }
    };
    private final long mCreationElapsedMilli;
    private final BluetoothDevice mDevice;
    private final int mId;
    private final boolean mInBandRing;
    private boolean mMultiParty;
    private String mNumber;
    private final boolean mOutgoing;
    private int mState;
    private final UUID mUUID;

    public BluetoothHeadsetClientCall(BluetoothDevice device, int id, int state, String number, boolean multiParty, boolean outgoing, boolean inBandRing) {
        this(device, id, UUID.randomUUID(), state, number, multiParty, outgoing, inBandRing);
    }

    public BluetoothHeadsetClientCall(BluetoothDevice device, int id, UUID uuid, int state, String number, boolean multiParty, boolean outgoing, boolean inBandRing) {
        this.mDevice = device;
        this.mId = id;
        this.mUUID = uuid;
        this.mState = state;
        this.mNumber = number != null ? number : "";
        this.mMultiParty = multiParty;
        this.mOutgoing = outgoing;
        this.mInBandRing = inBandRing;
        this.mCreationElapsedMilli = SystemClock.elapsedRealtime();
    }

    @Override // android.bluetooth.Attributable
    public void setAttributionSource(AttributionSource attributionSource) {
        Attributable.setAttributionSource(this.mDevice, attributionSource);
    }

    public void setState(int state) {
        this.mState = state;
    }

    public void setNumber(String number) {
        this.mNumber = number;
    }

    public void setMultiParty(boolean multiParty) {
        this.mMultiParty = multiParty;
    }

    public BluetoothDevice getDevice() {
        return this.mDevice;
    }

    public int getId() {
        return this.mId;
    }

    public UUID getUUID() {
        return this.mUUID;
    }

    public int getState() {
        return this.mState;
    }

    public String getNumber() {
        return this.mNumber;
    }

    public long getCreationElapsedMilli() {
        return this.mCreationElapsedMilli;
    }

    public boolean isMultiParty() {
        return this.mMultiParty;
    }

    public boolean isOutgoing() {
        return this.mOutgoing;
    }

    public boolean isInBandRing() {
        return this.mInBandRing;
    }

    public String toString() {
        return toString(false);
    }

    public String toString(boolean z) {
        StringBuilder sb = new StringBuilder("BluetoothHeadsetClientCall{mDevice: ");
        BluetoothDevice bluetoothDevice = this.mDevice;
        Object objValueOf = bluetoothDevice;
        if (!z) {
            objValueOf = Integer.valueOf(bluetoothDevice.hashCode());
        }
        sb.append(objValueOf);
        sb.append(", mId: ");
        sb.append(this.mId);
        sb.append(", mUUID: ");
        sb.append(this.mUUID);
        sb.append(", mState: ");
        int i = this.mState;
        switch (i) {
            case 0:
                sb.append("ACTIVE");
                break;
            case 1:
                sb.append("HELD");
                break;
            case 2:
                sb.append("DIALING");
                break;
            case 3:
                sb.append("ALERTING");
                break;
            case 4:
                sb.append("INCOMING");
                break;
            case 5:
                sb.append("WAITING");
                break;
            case 6:
                sb.append("HELD_BY_RESPONSE_AND_HOLD");
                break;
            case 7:
                sb.append("TERMINATED");
                break;
            default:
                sb.append(i);
                break;
        }
        sb.append(", mNumber: ");
        String str = this.mNumber;
        Object objValueOf2 = str;
        if (!z) {
            objValueOf2 = Integer.valueOf(str.hashCode());
        }
        sb.append(objValueOf2);
        sb.append(", mMultiParty: ");
        sb.append(this.mMultiParty);
        sb.append(", mOutgoing: ");
        sb.append(this.mOutgoing);
        sb.append(", mInBandRing: ");
        sb.append(this.mInBandRing);
        sb.append("}");
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeParcelable(this.mDevice, 0);
        parcel.writeInt(this.mId);
        parcel.writeString(this.mUUID.toString());
        parcel.writeInt(this.mState);
        parcel.writeString(this.mNumber);
        parcel.writeInt(this.mMultiParty ? 1 : 0);
        parcel.writeInt(this.mOutgoing ? 1 : 0);
        parcel.writeInt(this.mInBandRing ? 1 : 0);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }
}

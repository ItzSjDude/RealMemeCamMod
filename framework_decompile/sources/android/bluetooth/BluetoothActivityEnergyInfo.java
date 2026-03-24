package android.bluetooth;

import android.annotation.SystemApi;
import android.os.Parcel;
import android.os.Parcelable;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.Collections;
import java.util.List;

@SystemApi(client = SystemApi.Client.PRIVILEGED_APPS)
/* loaded from: classes.dex */
public final class BluetoothActivityEnergyInfo implements Parcelable {
    public static final int BT_STACK_STATE_INVALID = 0;
    public static final int BT_STACK_STATE_STATE_ACTIVE = 1;
    public static final int BT_STACK_STATE_STATE_IDLE = 3;
    public static final int BT_STACK_STATE_STATE_SCANNING = 2;
    public static final Parcelable.Creator<BluetoothActivityEnergyInfo> CREATOR = new Parcelable.Creator<BluetoothActivityEnergyInfo>() { // from class: android.bluetooth.BluetoothActivityEnergyInfo.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public BluetoothActivityEnergyInfo createFromParcel(Parcel in) {
            return new BluetoothActivityEnergyInfo(in);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public BluetoothActivityEnergyInfo[] newArray(int size) {
            return new BluetoothActivityEnergyInfo[size];
        }
    };
    private int mBluetoothStackState;
    private long mControllerEnergyUsed;
    private long mControllerIdleTimeMs;
    private long mControllerRxTimeMs;
    private long mControllerTxTimeMs;
    private final long mTimestamp;
    private List<UidTraffic> mUidTraffic;

    @Retention(RetentionPolicy.SOURCE)
    public @interface BluetoothStackState {
    }

    public BluetoothActivityEnergyInfo(long timestamp, int stackState, long txTime, long rxTime, long idleTime, long energyUsed) {
        this.mTimestamp = timestamp;
        this.mBluetoothStackState = stackState;
        this.mControllerTxTimeMs = txTime;
        this.mControllerRxTimeMs = rxTime;
        this.mControllerIdleTimeMs = idleTime;
        this.mControllerEnergyUsed = energyUsed;
    }

    private BluetoothActivityEnergyInfo(Parcel in) {
        this.mTimestamp = in.readLong();
        this.mBluetoothStackState = in.readInt();
        this.mControllerTxTimeMs = in.readLong();
        this.mControllerRxTimeMs = in.readLong();
        this.mControllerIdleTimeMs = in.readLong();
        this.mControllerEnergyUsed = in.readLong();
        this.mUidTraffic = in.createTypedArrayList(UidTraffic.CREATOR);
    }

    public String toString() {
        return "BluetoothActivityEnergyInfo{ mTimestamp=" + this.mTimestamp + " mBluetoothStackState=" + this.mBluetoothStackState + " mControllerTxTimeMs=" + this.mControllerTxTimeMs + " mControllerRxTimeMs=" + this.mControllerRxTimeMs + " mControllerIdleTimeMs=" + this.mControllerIdleTimeMs + " mControllerEnergyUsed=" + this.mControllerEnergyUsed + " mUidTraffic=" + this.mUidTraffic + " }";
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel out, int flags) {
        out.writeLong(this.mTimestamp);
        out.writeInt(this.mBluetoothStackState);
        out.writeLong(this.mControllerTxTimeMs);
        out.writeLong(this.mControllerRxTimeMs);
        out.writeLong(this.mControllerIdleTimeMs);
        out.writeLong(this.mControllerEnergyUsed);
        out.writeTypedList(this.mUidTraffic);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public int getBluetoothStackState() {
        return this.mBluetoothStackState;
    }

    public long getControllerTxTimeMillis() {
        return this.mControllerTxTimeMs;
    }

    public long getControllerRxTimeMillis() {
        return this.mControllerRxTimeMs;
    }

    public long getControllerIdleTimeMillis() {
        return this.mControllerIdleTimeMs;
    }

    public long getControllerEnergyUsed() {
        return this.mControllerEnergyUsed;
    }

    public long getTimestampMillis() {
        return this.mTimestamp;
    }

    public List<UidTraffic> getUidTraffic() {
        List<UidTraffic> list = this.mUidTraffic;
        if (list == null) {
            return Collections.emptyList();
        }
        return list;
    }

    public void setUidTraffic(List<UidTraffic> traffic) {
        this.mUidTraffic = traffic;
    }

    public boolean isValid() {
        return this.mControllerTxTimeMs >= 0 && this.mControllerRxTimeMs >= 0 && this.mControllerIdleTimeMs >= 0;
    }
}

package android.bluetooth.le;

import android.inputmethodservice.navigationbar.NavigationBarInflaterView;
import android.os.Parcel;
import android.os.ParcelUuid;
import android.os.Parcelable;
import android.util.ArrayMap;
import android.util.SparseArray;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;

/* loaded from: classes.dex */
public final class AdvertiseData implements Parcelable {
    public static final Parcelable.Creator<AdvertiseData> CREATOR = new Parcelable.Creator<AdvertiseData>() { // from class: android.bluetooth.le.AdvertiseData.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public AdvertiseData[] newArray(int size) {
            return new AdvertiseData[size];
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public AdvertiseData createFromParcel(Parcel in) {
            Builder builder = new Builder();
            ArrayList<ParcelUuid> uuids = in.createTypedArrayList(ParcelUuid.CREATOR);
            Iterator<ParcelUuid> it = uuids.iterator();
            while (it.hasNext()) {
                ParcelUuid uuid = it.next();
                builder.addServiceUuid(uuid);
            }
            ArrayList<ParcelUuid> solicitationUuids = in.createTypedArrayList(ParcelUuid.CREATOR);
            Iterator<ParcelUuid> it2 = solicitationUuids.iterator();
            while (it2.hasNext()) {
                ParcelUuid uuid2 = it2.next();
                builder.addServiceSolicitationUuid(uuid2);
            }
            List<TransportDiscoveryData> transportDiscoveryData = in.createTypedArrayList(TransportDiscoveryData.CREATOR);
            for (TransportDiscoveryData tdd : transportDiscoveryData) {
                builder.addTransportDiscoveryData(tdd);
            }
            int manufacturerSize = in.readInt();
            for (int i = 0; i < manufacturerSize; i++) {
                int manufacturerId = in.readInt();
                byte[] manufacturerData = in.createByteArray();
                builder.addManufacturerData(manufacturerId, manufacturerData);
            }
            int serviceDataSize = in.readInt();
            for (int i2 = 0; i2 < serviceDataSize; i2++) {
                ParcelUuid serviceDataUuid = (ParcelUuid) in.readTypedObject(ParcelUuid.CREATOR);
                byte[] serviceData = in.createByteArray();
                builder.addServiceData(serviceDataUuid, serviceData);
            }
            int i3 = in.readByte();
            builder.setIncludeTxPowerLevel(i3 == 1);
            builder.setIncludeDeviceName(in.readByte() == 1);
            return builder.build();
        }
    };
    private final boolean mIncludeDeviceName;
    private final boolean mIncludeTxPowerLevel;
    private final SparseArray<byte[]> mManufacturerSpecificData;
    private final Map<ParcelUuid, byte[]> mServiceData;
    private final List<ParcelUuid> mServiceSolicitationUuids;
    private final List<ParcelUuid> mServiceUuids;
    private final List<TransportDiscoveryData> mTransportDiscoveryData;

    private AdvertiseData(List<ParcelUuid> serviceUuids, List<ParcelUuid> serviceSolicitationUuids, List<TransportDiscoveryData> transportDiscoveryData, SparseArray<byte[]> manufacturerData, Map<ParcelUuid, byte[]> serviceData, boolean includeTxPowerLevel, boolean includeDeviceName) {
        this.mServiceUuids = serviceUuids;
        this.mServiceSolicitationUuids = serviceSolicitationUuids;
        this.mTransportDiscoveryData = transportDiscoveryData;
        this.mManufacturerSpecificData = manufacturerData;
        this.mServiceData = serviceData;
        this.mIncludeTxPowerLevel = includeTxPowerLevel;
        this.mIncludeDeviceName = includeDeviceName;
    }

    public List<ParcelUuid> getServiceUuids() {
        return this.mServiceUuids;
    }

    public List<ParcelUuid> getServiceSolicitationUuids() {
        return this.mServiceSolicitationUuids;
    }

    public List<TransportDiscoveryData> getTransportDiscoveryData() {
        List<TransportDiscoveryData> list = this.mTransportDiscoveryData;
        if (list == null) {
            return Collections.emptyList();
        }
        return list;
    }

    public SparseArray<byte[]> getManufacturerSpecificData() {
        return this.mManufacturerSpecificData;
    }

    public Map<ParcelUuid, byte[]> getServiceData() {
        return this.mServiceData;
    }

    public boolean getIncludeTxPowerLevel() {
        return this.mIncludeTxPowerLevel;
    }

    public boolean getIncludeDeviceName() {
        return this.mIncludeDeviceName;
    }

    public int hashCode() {
        return Objects.hash(this.mServiceUuids, this.mServiceSolicitationUuids, this.mTransportDiscoveryData, this.mManufacturerSpecificData, this.mServiceData, Boolean.valueOf(this.mIncludeDeviceName), Boolean.valueOf(this.mIncludeTxPowerLevel));
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        AdvertiseData other = (AdvertiseData) obj;
        if (Objects.equals(this.mServiceUuids, other.mServiceUuids) && Objects.equals(this.mServiceSolicitationUuids, other.mServiceSolicitationUuids) && Objects.equals(this.mTransportDiscoveryData, other.mTransportDiscoveryData) && BluetoothLeUtils.equals(this.mManufacturerSpecificData, other.mManufacturerSpecificData) && BluetoothLeUtils.equals(this.mServiceData, other.mServiceData) && this.mIncludeDeviceName == other.mIncludeDeviceName && this.mIncludeTxPowerLevel == other.mIncludeTxPowerLevel) {
            return true;
        }
        return false;
    }

    public String toString() {
        return "AdvertiseData [mServiceUuids=" + this.mServiceUuids + ", mServiceSolicitationUuids=" + this.mServiceSolicitationUuids + ", mTransportDiscoveryData=" + this.mTransportDiscoveryData + ", mManufacturerSpecificData=" + BluetoothLeUtils.toString(this.mManufacturerSpecificData) + ", mServiceData=" + BluetoothLeUtils.toString(this.mServiceData) + ", mIncludeTxPowerLevel=" + this.mIncludeTxPowerLevel + ", mIncludeDeviceName=" + this.mIncludeDeviceName + NavigationBarInflaterView.SIZE_MOD_END;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        List<ParcelUuid> list = this.mServiceUuids;
        parcel.writeTypedArray((ParcelUuid[]) list.toArray(new ParcelUuid[list.size()]), i);
        List<ParcelUuid> list2 = this.mServiceSolicitationUuids;
        parcel.writeTypedArray((ParcelUuid[]) list2.toArray(new ParcelUuid[list2.size()]), i);
        parcel.writeTypedList(this.mTransportDiscoveryData);
        parcel.writeInt(this.mManufacturerSpecificData.size());
        for (int i2 = 0; i2 < this.mManufacturerSpecificData.size(); i2++) {
            parcel.writeInt(this.mManufacturerSpecificData.keyAt(i2));
            parcel.writeByteArray(this.mManufacturerSpecificData.valueAt(i2));
        }
        parcel.writeInt(this.mServiceData.size());
        for (ParcelUuid parcelUuid : this.mServiceData.keySet()) {
            parcel.writeTypedObject(parcelUuid, i);
            parcel.writeByteArray(this.mServiceData.get(parcelUuid));
        }
        parcel.writeByte(getIncludeTxPowerLevel() ? (byte) 1 : (byte) 0);
        parcel.writeByte(getIncludeDeviceName() ? (byte) 1 : (byte) 0);
    }

    public static final class Builder {
        private boolean mIncludeDeviceName;
        private boolean mIncludeTxPowerLevel;
        private List<ParcelUuid> mServiceUuids = new ArrayList();
        private List<ParcelUuid> mServiceSolicitationUuids = new ArrayList();
        private List<TransportDiscoveryData> mTransportDiscoveryData = new ArrayList();
        private SparseArray<byte[]> mManufacturerSpecificData = new SparseArray<>();
        private Map<ParcelUuid, byte[]> mServiceData = new ArrayMap();

        public Builder addServiceUuid(ParcelUuid serviceUuid) {
            if (serviceUuid == null) {
                throw new IllegalArgumentException("serviceUuid is null");
            }
            this.mServiceUuids.add(serviceUuid);
            return this;
        }

        public Builder addServiceSolicitationUuid(ParcelUuid serviceSolicitationUuid) {
            if (serviceSolicitationUuid == null) {
                throw new IllegalArgumentException("serviceSolicitationUuid is null");
            }
            this.mServiceSolicitationUuids.add(serviceSolicitationUuid);
            return this;
        }

        public Builder addServiceData(ParcelUuid serviceDataUuid, byte[] serviceData) {
            if (serviceDataUuid == null || serviceData == null) {
                throw new IllegalArgumentException("serviceDataUuid or serviceDataUuid is null");
            }
            this.mServiceData.put(serviceDataUuid, serviceData);
            return this;
        }

        public Builder addTransportDiscoveryData(TransportDiscoveryData transportDiscoveryData) {
            if (transportDiscoveryData == null) {
                throw new IllegalArgumentException("transportDiscoveryData is null");
            }
            this.mTransportDiscoveryData.add(transportDiscoveryData);
            return this;
        }

        public Builder addManufacturerData(int manufacturerId, byte[] manufacturerSpecificData) {
            if (manufacturerId < 0) {
                throw new IllegalArgumentException("invalid manufacturerId - " + manufacturerId);
            }
            if (manufacturerSpecificData == null) {
                throw new IllegalArgumentException("manufacturerSpecificData is null");
            }
            this.mManufacturerSpecificData.put(manufacturerId, manufacturerSpecificData);
            return this;
        }

        public Builder setIncludeTxPowerLevel(boolean includeTxPowerLevel) {
            this.mIncludeTxPowerLevel = includeTxPowerLevel;
            return this;
        }

        public Builder setIncludeDeviceName(boolean includeDeviceName) {
            this.mIncludeDeviceName = includeDeviceName;
            return this;
        }

        public AdvertiseData build() {
            return new AdvertiseData(this.mServiceUuids, this.mServiceSolicitationUuids, this.mTransportDiscoveryData, this.mManufacturerSpecificData, this.mServiceData, this.mIncludeTxPowerLevel, this.mIncludeDeviceName);
        }
    }
}

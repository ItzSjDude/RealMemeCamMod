package android.bluetooth.le;

import android.annotation.SystemApi;
import android.bluetooth.BluetoothAdapter;
import android.os.Parcel;
import android.os.ParcelUuid;
import android.os.Parcelable;
import java.util.Arrays;
import java.util.List;
import java.util.Objects;
import java.util.UUID;

/* loaded from: classes.dex */
public final class ScanFilter implements Parcelable {
    private static final int GROUP_DATA_LEN = 6;
    public static final int WIFI_ALLIANCE_ORG_ID = 2;
    private final int mAddressType;
    private final byte[] mAdvertisingData;
    private final byte[] mAdvertisingDataMask;
    private int mAdvertisingDataType;
    private final String mDeviceAddress;
    private final String mDeviceName;
    private final boolean mGroupBasedFiltering;
    private final byte[] mIrk;
    private final byte[] mManufacturerData;
    private final byte[] mManufacturerDataMask;
    private final int mManufacturerId;
    private final int mOrgId;
    private final byte[] mServiceData;
    private final byte[] mServiceDataMask;
    private final ParcelUuid mServiceDataUuid;
    private final ParcelUuid mServiceSolicitationUuid;
    private final ParcelUuid mServiceSolicitationUuidMask;
    private final ParcelUuid mServiceUuid;
    private final ParcelUuid mServiceUuidMask;
    private final int mTDSFlags;
    private final int mTDSFlagsMask;
    private final byte[] mWifiNANHash;
    public static final ScanFilter EMPTY = new Builder().build();
    public static final Parcelable.Creator<ScanFilter> CREATOR = new Parcelable.Creator<ScanFilter>() { // from class: android.bluetooth.le.ScanFilter.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ScanFilter[] newArray(int size) {
            return new ScanFilter[size];
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ScanFilter createFromParcel(Parcel in) {
            Builder builder = new Builder();
            if (in.readInt() == 1) {
                builder.setDeviceName(in.readString());
            }
            String address = null;
            if (in.readInt() == 1) {
                address = in.readString();
            }
            if (in.readInt() == 1) {
                ParcelUuid uuid = (ParcelUuid) in.readParcelable(ParcelUuid.class.getClassLoader());
                builder.setServiceUuid(uuid);
                if (in.readInt() == 1) {
                    ParcelUuid uuidMask = (ParcelUuid) in.readParcelable(ParcelUuid.class.getClassLoader());
                    builder.setServiceUuid(uuid, uuidMask);
                }
            }
            if (in.readInt() == 1) {
                ParcelUuid solicitationUuid = (ParcelUuid) in.readParcelable(ParcelUuid.class.getClassLoader());
                builder.setServiceSolicitationUuid(solicitationUuid);
                if (in.readInt() == 1) {
                    ParcelUuid solicitationUuidMask = (ParcelUuid) in.readParcelable(ParcelUuid.class.getClassLoader());
                    builder.setServiceSolicitationUuid(solicitationUuid, solicitationUuidMask);
                }
            }
            if (in.readInt() == 1) {
                ParcelUuid servcieDataUuid = (ParcelUuid) in.readParcelable(ParcelUuid.class.getClassLoader());
                if (in.readInt() == 1) {
                    int serviceDataLength = in.readInt();
                    byte[] serviceData = new byte[serviceDataLength];
                    in.readByteArray(serviceData);
                    if (in.readInt() == 0) {
                        builder.setServiceData(servcieDataUuid, serviceData);
                    } else {
                        int serviceDataMaskLength = in.readInt();
                        byte[] serviceDataMask = new byte[serviceDataMaskLength];
                        in.readByteArray(serviceDataMask);
                        builder.setServiceData(servcieDataUuid, serviceData, serviceDataMask);
                    }
                }
            }
            int manufacturerId = in.readInt();
            if (in.readInt() == 1) {
                int manufacturerDataLength = in.readInt();
                byte[] manufacturerData = new byte[manufacturerDataLength];
                in.readByteArray(manufacturerData);
                if (in.readInt() == 0) {
                    builder.setManufacturerData(manufacturerId, manufacturerData);
                } else {
                    int manufacturerDataMaskLength = in.readInt();
                    byte[] manufacturerDataMask = new byte[manufacturerDataMaskLength];
                    in.readByteArray(manufacturerDataMask);
                    builder.setManufacturerData(manufacturerId, manufacturerData, manufacturerDataMask);
                }
            }
            if (address != null) {
                int addressType = in.readInt();
                if (in.readInt() == 1) {
                    byte[] irk = new byte[16];
                    in.readByteArray(irk);
                    builder.setDeviceAddress(address, addressType, irk);
                } else {
                    builder.setDeviceAddress(address, addressType);
                }
            }
            int advertisingDataType = in.readInt();
            if (in.readInt() == 1) {
                byte[] advertisingDataMask = null;
                int advertisingDataLength = in.readInt();
                byte[] advertisingData = new byte[advertisingDataLength];
                in.readByteArray(advertisingData);
                if (in.readInt() == 1) {
                    int advertisingDataMaskLength = in.readInt();
                    advertisingDataMask = new byte[advertisingDataMaskLength];
                    in.readByteArray(advertisingDataMask);
                }
                builder.setAdvertisingDataTypeWithData(advertisingDataType, advertisingData, advertisingDataMask);
            }
            int orgId = in.readInt();
            if (in.readInt() == 1) {
                int tdsFlags = in.readInt();
                int tdsFlagsMask = in.readInt();
                if (in.readInt() == 1) {
                    int wifiNANHashLength = in.readInt();
                    byte[] wifiNanHash = new byte[wifiNANHashLength];
                    in.readByteArray(wifiNanHash);
                    builder.setTransportDiscoveryData(orgId, tdsFlags, tdsFlagsMask, wifiNanHash);
                } else {
                    builder.setTransportDiscoveryData(orgId, tdsFlags, tdsFlagsMask, null);
                }
            }
            boolean groupBasedFiltering = in.readBoolean();
            builder.setGroupBasedFiltering(groupBasedFiltering);
            return builder.build();
        }
    };

    private ScanFilter(String name, String deviceAddress, ParcelUuid uuid, ParcelUuid uuidMask, ParcelUuid solicitationUuid, ParcelUuid solicitationUuidMask, ParcelUuid serviceDataUuid, byte[] serviceData, byte[] serviceDataMask, int manufacturerId, byte[] manufacturerData, byte[] manufacturerDataMask, int addressType, byte[] irk, int advertisingDataType, byte[] advertisingData, byte[] advertisingDataMask, int orgId, int TDSFlags, int TDSFlagsMask, byte[] wifiNANHash, boolean groupBasedFiltering) {
        this.mAdvertisingDataType = -1;
        this.mDeviceName = name;
        this.mServiceUuid = uuid;
        this.mServiceUuidMask = uuidMask;
        this.mServiceSolicitationUuid = solicitationUuid;
        this.mServiceSolicitationUuidMask = solicitationUuidMask;
        this.mDeviceAddress = deviceAddress;
        this.mServiceDataUuid = serviceDataUuid;
        this.mServiceData = serviceData;
        this.mServiceDataMask = serviceDataMask;
        this.mManufacturerId = manufacturerId;
        this.mManufacturerData = manufacturerData;
        this.mManufacturerDataMask = manufacturerDataMask;
        this.mAddressType = addressType;
        this.mIrk = irk;
        this.mAdvertisingDataType = advertisingDataType;
        this.mAdvertisingData = advertisingData;
        this.mAdvertisingDataMask = advertisingDataMask;
        this.mOrgId = orgId;
        this.mTDSFlags = TDSFlags;
        this.mTDSFlagsMask = TDSFlagsMask;
        this.mWifiNANHash = wifiNANHash;
        this.mGroupBasedFiltering = groupBasedFiltering;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        dest.writeInt(this.mDeviceName == null ? 0 : 1);
        String str = this.mDeviceName;
        if (str != null) {
            dest.writeString(str);
        }
        dest.writeInt(this.mDeviceAddress == null ? 0 : 1);
        String str2 = this.mDeviceAddress;
        if (str2 != null) {
            dest.writeString(str2);
        }
        dest.writeInt(this.mServiceUuid == null ? 0 : 1);
        ParcelUuid parcelUuid = this.mServiceUuid;
        if (parcelUuid != null) {
            dest.writeParcelable(parcelUuid, flags);
            dest.writeInt(this.mServiceUuidMask == null ? 0 : 1);
            ParcelUuid parcelUuid2 = this.mServiceUuidMask;
            if (parcelUuid2 != null) {
                dest.writeParcelable(parcelUuid2, flags);
            }
        }
        dest.writeInt(this.mServiceSolicitationUuid == null ? 0 : 1);
        ParcelUuid parcelUuid3 = this.mServiceSolicitationUuid;
        if (parcelUuid3 != null) {
            dest.writeParcelable(parcelUuid3, flags);
            dest.writeInt(this.mServiceSolicitationUuidMask == null ? 0 : 1);
            ParcelUuid parcelUuid4 = this.mServiceSolicitationUuidMask;
            if (parcelUuid4 != null) {
                dest.writeParcelable(parcelUuid4, flags);
            }
        }
        dest.writeInt(this.mServiceDataUuid == null ? 0 : 1);
        ParcelUuid parcelUuid5 = this.mServiceDataUuid;
        if (parcelUuid5 != null) {
            dest.writeParcelable(parcelUuid5, flags);
            dest.writeInt(this.mServiceData == null ? 0 : 1);
            byte[] bArr = this.mServiceData;
            if (bArr != null) {
                dest.writeInt(bArr.length);
                dest.writeByteArray(this.mServiceData);
                dest.writeInt(this.mServiceDataMask == null ? 0 : 1);
                byte[] bArr2 = this.mServiceDataMask;
                if (bArr2 != null) {
                    dest.writeInt(bArr2.length);
                    dest.writeByteArray(this.mServiceDataMask);
                }
            }
        }
        dest.writeInt(this.mManufacturerId);
        dest.writeInt(this.mManufacturerData == null ? 0 : 1);
        byte[] bArr3 = this.mManufacturerData;
        if (bArr3 != null) {
            dest.writeInt(bArr3.length);
            dest.writeByteArray(this.mManufacturerData);
            dest.writeInt(this.mManufacturerDataMask == null ? 0 : 1);
            byte[] bArr4 = this.mManufacturerDataMask;
            if (bArr4 != null) {
                dest.writeInt(bArr4.length);
                dest.writeByteArray(this.mManufacturerDataMask);
            }
        }
        if (this.mDeviceAddress != null) {
            dest.writeInt(this.mAddressType);
            dest.writeInt(this.mIrk == null ? 0 : 1);
            byte[] bArr5 = this.mIrk;
            if (bArr5 != null) {
                dest.writeByteArray(bArr5);
            }
        }
        dest.writeInt(this.mAdvertisingDataType);
        dest.writeInt(this.mAdvertisingData == null ? 0 : 1);
        byte[] bArr6 = this.mAdvertisingData;
        if (bArr6 != null) {
            dest.writeInt(bArr6.length);
            dest.writeByteArray(this.mAdvertisingData);
            dest.writeInt(this.mAdvertisingDataMask == null ? 0 : 1);
            byte[] bArr7 = this.mAdvertisingDataMask;
            if (bArr7 != null) {
                dest.writeInt(bArr7.length);
                dest.writeByteArray(this.mAdvertisingDataMask);
            }
        }
        dest.writeInt(this.mOrgId);
        dest.writeInt(this.mOrgId < 0 ? 0 : 1);
        if (this.mOrgId >= 0) {
            dest.writeInt(this.mTDSFlags);
            dest.writeInt(this.mTDSFlagsMask);
            dest.writeInt(this.mWifiNANHash != null ? 1 : 0);
            byte[] bArr8 = this.mWifiNANHash;
            if (bArr8 != null) {
                dest.writeInt(bArr8.length);
                dest.writeByteArray(this.mWifiNANHash);
            }
        }
        dest.writeBoolean(this.mGroupBasedFiltering);
    }

    public String getDeviceName() {
        return this.mDeviceName;
    }

    public ParcelUuid getServiceUuid() {
        return this.mServiceUuid;
    }

    public ParcelUuid getServiceUuidMask() {
        return this.mServiceUuidMask;
    }

    public ParcelUuid getServiceSolicitationUuid() {
        return this.mServiceSolicitationUuid;
    }

    public ParcelUuid getServiceSolicitationUuidMask() {
        return this.mServiceSolicitationUuidMask;
    }

    public String getDeviceAddress() {
        return this.mDeviceAddress;
    }

    @SystemApi
    public int getAddressType() {
        return this.mAddressType;
    }

    @SystemApi
    public byte[] getIrk() {
        return this.mIrk;
    }

    public byte[] getServiceData() {
        return this.mServiceData;
    }

    public byte[] getServiceDataMask() {
        return this.mServiceDataMask;
    }

    public ParcelUuid getServiceDataUuid() {
        return this.mServiceDataUuid;
    }

    public int getManufacturerId() {
        return this.mManufacturerId;
    }

    public byte[] getManufacturerData() {
        return this.mManufacturerData;
    }

    public byte[] getManufacturerDataMask() {
        return this.mManufacturerDataMask;
    }

    public int getOrgId() {
        return this.mOrgId;
    }

    public int getTDSFlags() {
        return this.mTDSFlags;
    }

    public int getTDSFlagsMask() {
        return this.mTDSFlagsMask;
    }

    public byte[] getWifiNANHash() {
        return this.mWifiNANHash;
    }

    public boolean getGroupFilteringValue() {
        return this.mGroupBasedFiltering;
    }

    public int getAdvertisingDataType() {
        return this.mAdvertisingDataType;
    }

    public byte[] getAdvertisingData() {
        return this.mAdvertisingData;
    }

    public byte[] getAdvertisingDataMask() {
        return this.mAdvertisingDataMask;
    }

    /* JADX WARN: Code restructure failed: missing block: B:67:0x00cc, code lost:
    
        if ((r5 & r6) != (r6 & r3[1])) goto L68;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean matches(android.bluetooth.le.ScanResult r9) {
        /*
            Method dump skipped, instructions count: 223
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: android.bluetooth.le.ScanFilter.matches(android.bluetooth.le.ScanResult):boolean");
    }

    public static boolean matchesServiceUuids(ParcelUuid uuid, ParcelUuid parcelUuidMask, List<ParcelUuid> uuids) {
        if (uuid == null) {
            return true;
        }
        if (uuids == null) {
            return false;
        }
        for (ParcelUuid parcelUuid : uuids) {
            UUID uuidMask = parcelUuidMask == null ? null : parcelUuidMask.getUuid();
            if (matchesServiceUuid(uuid.getUuid(), uuidMask, parcelUuid.getUuid())) {
                return true;
            }
        }
        return false;
    }

    private static boolean matchesServiceUuid(UUID uuid, UUID mask, UUID data) {
        return BluetoothLeUtils.maskedEquals(data, uuid, mask);
    }

    private static boolean matchesServiceSolicitationUuids(ParcelUuid solicitationUuid, ParcelUuid parcelSolicitationUuidMask, List<ParcelUuid> solicitationUuids) {
        if (solicitationUuid == null) {
            return true;
        }
        if (solicitationUuids == null) {
            return false;
        }
        for (ParcelUuid parcelSolicitationUuid : solicitationUuids) {
            UUID solicitationUuidMask = parcelSolicitationUuidMask == null ? null : parcelSolicitationUuidMask.getUuid();
            if (matchesServiceUuid(solicitationUuid.getUuid(), solicitationUuidMask, parcelSolicitationUuid.getUuid())) {
                return true;
            }
        }
        return false;
    }

    private static boolean matchesServiceSolicitationUuid(UUID solicitationUuid, UUID solicitationUuidMask, UUID data) {
        return BluetoothLeUtils.maskedEquals(data, solicitationUuid, solicitationUuidMask);
    }

    private boolean matchesPartialData(byte[] data, byte[] dataMask, byte[] parsedData) {
        if (parsedData == null || parsedData.length < data.length) {
            return false;
        }
        if (dataMask == null) {
            for (int i = 0; i < data.length; i++) {
                if (parsedData[i] != data[i]) {
                    return false;
                }
            }
            return true;
        }
        for (int i2 = 0; i2 < data.length; i2++) {
            if ((dataMask[i2] & parsedData[i2]) != (dataMask[i2] & data[i2])) {
                return false;
            }
        }
        return true;
    }

    public String toString() {
        return "BluetoothLeScanFilter [mDeviceName=" + this.mDeviceName + ", mDeviceAddress=" + this.mDeviceAddress + ", mUuid=" + this.mServiceUuid + ", mUuidMask=" + this.mServiceUuidMask + ", mServiceSolicitationUuid=" + this.mServiceSolicitationUuid + ", mServiceSolicitationUuidMask=" + this.mServiceSolicitationUuidMask + ", mServiceDataUuid=" + Objects.toString(this.mServiceDataUuid) + ", mServiceData=" + Arrays.toString(this.mServiceData) + ", mServiceDataMask=" + Arrays.toString(this.mServiceDataMask) + ", mManufacturerId=" + this.mManufacturerId + ", mManufacturerData=" + Arrays.toString(this.mManufacturerData) + ", mManufacturerDataMask=" + Arrays.toString(this.mManufacturerDataMask) + ", mAdvertisingDataType=" + this.mAdvertisingDataType + ", mAdvertisingData=" + Arrays.toString(this.mAdvertisingData) + ", mAdvertisingDataMask=" + Arrays.toString(this.mAdvertisingDataMask) + ", mOrganizationId=" + this.mOrgId + ", mTDSFlags=" + this.mTDSFlags + ", mTDSFlagsMask=" + this.mTDSFlagsMask + ", mWifiNANHash=" + Arrays.toString(this.mWifiNANHash) + "], mGroupBasedFiltering=" + this.mGroupBasedFiltering;
    }

    public int hashCode() {
        return Objects.hash(this.mDeviceName, this.mDeviceAddress, Integer.valueOf(this.mManufacturerId), Integer.valueOf(Arrays.hashCode(this.mManufacturerData)), Integer.valueOf(Arrays.hashCode(this.mManufacturerDataMask)), this.mServiceDataUuid, Integer.valueOf(Arrays.hashCode(this.mServiceData)), Integer.valueOf(Arrays.hashCode(this.mServiceDataMask)), this.mServiceUuid, this.mServiceUuidMask, this.mServiceSolicitationUuid, this.mServiceSolicitationUuidMask, Integer.valueOf(this.mAdvertisingDataType), Integer.valueOf(Arrays.hashCode(this.mAdvertisingData)), Integer.valueOf(Arrays.hashCode(this.mAdvertisingDataMask)), this.mServiceSolicitationUuid, this.mServiceSolicitationUuidMask, Integer.valueOf(this.mOrgId), Integer.valueOf(this.mTDSFlags), Integer.valueOf(this.mTDSFlagsMask), Integer.valueOf(Arrays.hashCode(this.mWifiNANHash)), Boolean.valueOf(this.mGroupBasedFiltering));
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        ScanFilter other = (ScanFilter) obj;
        if (Objects.equals(this.mDeviceName, other.mDeviceName) && Objects.equals(this.mDeviceAddress, other.mDeviceAddress) && this.mManufacturerId == other.mManufacturerId && Objects.deepEquals(this.mManufacturerData, other.mManufacturerData) && Objects.deepEquals(this.mManufacturerDataMask, other.mManufacturerDataMask) && Objects.equals(this.mServiceDataUuid, other.mServiceDataUuid) && Objects.deepEquals(this.mServiceData, other.mServiceData) && Objects.deepEquals(this.mServiceDataMask, other.mServiceDataMask) && Objects.equals(this.mServiceUuid, other.mServiceUuid) && Objects.equals(this.mServiceUuidMask, other.mServiceUuidMask) && Objects.equals(this.mServiceSolicitationUuid, other.mServiceSolicitationUuid) && Objects.equals(this.mServiceSolicitationUuidMask, other.mServiceSolicitationUuidMask) && this.mAdvertisingDataType == other.mAdvertisingDataType && Objects.deepEquals(this.mAdvertisingData, other.mAdvertisingData) && Objects.deepEquals(this.mAdvertisingDataMask, other.mAdvertisingDataMask) && this.mOrgId == other.mOrgId && this.mTDSFlags == other.mTDSFlags && this.mTDSFlagsMask == other.mTDSFlagsMask && Objects.deepEquals(this.mWifiNANHash, other.mWifiNANHash) && this.mGroupBasedFiltering == other.mGroupBasedFiltering) {
            return true;
        }
        return false;
    }

    public boolean isAllFieldsEmpty() {
        return EMPTY.equals(this);
    }

    public static final class Builder {

        @SystemApi
        public static final int LEN_IRK_OCTETS = 16;
        private byte[] mAdvertisingData;
        private byte[] mAdvertisingDataMask;
        private String mDeviceAddress;
        private String mDeviceName;
        private boolean mGroupBasedFiltering;
        private byte[] mIrk;
        private byte[] mManufacturerData;
        private byte[] mManufacturerDataMask;
        private byte[] mServiceData;
        private byte[] mServiceDataMask;
        private ParcelUuid mServiceDataUuid;
        private ParcelUuid mServiceSolicitationUuid;
        private ParcelUuid mServiceSolicitationUuidMask;
        private ParcelUuid mServiceUuid;
        private ParcelUuid mUuidMask;
        private byte[] mWifiNANHash;
        private int mAddressType = 0;
        private int mManufacturerId = -1;
        private int mAdvertisingDataType = -1;
        private int mOrgId = -1;
        private int mTDSFlags = -1;
        private int mTDSFlagsMask = -1;

        public Builder setDeviceName(String deviceName) {
            this.mDeviceName = deviceName;
            return this;
        }

        public Builder setDeviceAddress(String deviceAddress) {
            if (deviceAddress == null) {
                this.mDeviceAddress = deviceAddress;
                return this;
            }
            return setDeviceAddress(deviceAddress, 0);
        }

        @SystemApi
        public Builder setDeviceAddress(String deviceAddress, int addressType) {
            return setDeviceAddressInternal(deviceAddress, addressType, null);
        }

        @SystemApi
        public Builder setDeviceAddress(String deviceAddress, int addressType, byte[] irk) {
            Objects.requireNonNull(irk);
            if (irk.length != 16) {
                throw new IllegalArgumentException("'irk' is invalid length!");
            }
            return setDeviceAddressInternal(deviceAddress, addressType, irk);
        }

        private Builder setDeviceAddressInternal(String deviceAddress, int addressType, byte[] irk) {
            Objects.requireNonNull(deviceAddress);
            if (!BluetoothAdapter.checkBluetoothAddress(deviceAddress)) {
                throw new IllegalArgumentException("invalid device address " + deviceAddress);
            }
            if (addressType < 0 || addressType > 1) {
                throw new IllegalArgumentException("'addressType' is invalid!");
            }
            if (addressType == 1 && irk != null && !BluetoothAdapter.isAddressRandomStatic(deviceAddress)) {
                throw new IllegalArgumentException("Invalid combination: IRK requires either a PUBLIC or RANDOM (STATIC) Address");
            }
            this.mDeviceAddress = deviceAddress;
            this.mAddressType = addressType;
            this.mIrk = irk;
            return this;
        }

        public Builder setServiceUuid(ParcelUuid serviceUuid) {
            this.mServiceUuid = serviceUuid;
            this.mUuidMask = null;
            return this;
        }

        public Builder setServiceUuid(ParcelUuid serviceUuid, ParcelUuid uuidMask) {
            if (this.mUuidMask != null && this.mServiceUuid == null) {
                throw new IllegalArgumentException("uuid is null while uuidMask is not null!");
            }
            this.mServiceUuid = serviceUuid;
            this.mUuidMask = uuidMask;
            return this;
        }

        public Builder setServiceSolicitationUuid(ParcelUuid serviceSolicitationUuid) {
            this.mServiceSolicitationUuid = serviceSolicitationUuid;
            if (serviceSolicitationUuid == null) {
                this.mServiceSolicitationUuidMask = null;
            }
            return this;
        }

        public Builder setServiceSolicitationUuid(ParcelUuid serviceSolicitationUuid, ParcelUuid solicitationUuidMask) {
            if (solicitationUuidMask != null && serviceSolicitationUuid == null) {
                throw new IllegalArgumentException("SolicitationUuid is null while SolicitationUuidMask is not null!");
            }
            this.mServiceSolicitationUuid = serviceSolicitationUuid;
            this.mServiceSolicitationUuidMask = solicitationUuidMask;
            return this;
        }

        public Builder setServiceData(ParcelUuid serviceDataUuid, byte[] serviceData) {
            if (serviceDataUuid == null) {
                throw new IllegalArgumentException("serviceDataUuid is null");
            }
            this.mServiceDataUuid = serviceDataUuid;
            this.mServiceData = serviceData;
            this.mServiceDataMask = null;
            return this;
        }

        public Builder setServiceData(ParcelUuid serviceDataUuid, byte[] serviceData, byte[] serviceDataMask) {
            if (serviceDataUuid == null) {
                throw new IllegalArgumentException("serviceDataUuid is null");
            }
            byte[] bArr = this.mServiceDataMask;
            if (bArr != null) {
                byte[] bArr2 = this.mServiceData;
                if (bArr2 == null) {
                    throw new IllegalArgumentException("serviceData is null while serviceDataMask is not null");
                }
                if (bArr2.length != bArr.length) {
                    throw new IllegalArgumentException("size mismatch for service data and service data mask");
                }
            }
            this.mServiceDataUuid = serviceDataUuid;
            this.mServiceData = serviceData;
            this.mServiceDataMask = serviceDataMask;
            return this;
        }

        public Builder setManufacturerData(int manufacturerId, byte[] manufacturerData) {
            if (manufacturerData != null && manufacturerId < 0) {
                throw new IllegalArgumentException("invalid manufacture id");
            }
            this.mManufacturerId = manufacturerId;
            this.mManufacturerData = manufacturerData;
            this.mManufacturerDataMask = null;
            return this;
        }

        public Builder setManufacturerData(int manufacturerId, byte[] manufacturerData, byte[] manufacturerDataMask) {
            if (manufacturerData != null && manufacturerId < 0) {
                throw new IllegalArgumentException("invalid manufacture id");
            }
            byte[] bArr = this.mManufacturerDataMask;
            if (bArr != null) {
                byte[] bArr2 = this.mManufacturerData;
                if (bArr2 == null) {
                    throw new IllegalArgumentException("manufacturerData is null while manufacturerDataMask is not null");
                }
                if (bArr2.length != bArr.length) {
                    throw new IllegalArgumentException("size mismatch for manufacturerData and manufacturerDataMask");
                }
            }
            this.mManufacturerId = manufacturerId;
            this.mManufacturerData = manufacturerData;
            this.mManufacturerDataMask = manufacturerDataMask;
            return this;
        }

        public Builder setTransportDiscoveryData(int orgId, int TDSFlags, int TDSFlagsMask, byte[] wifiNANHash) {
            if (orgId < 0) {
                throw new IllegalArgumentException("invalid organization id");
            }
            if (orgId != 2 && wifiNANHash != null) {
                throw new IllegalArgumentException("Wifi NAN Hash is not null for non-Wifi Org Id");
            }
            this.mOrgId = orgId;
            this.mTDSFlags = TDSFlags;
            this.mTDSFlagsMask = TDSFlagsMask;
            this.mWifiNANHash = wifiNANHash;
            return this;
        }

        public Builder setGroupBasedFiltering(boolean enable) {
            this.mGroupBasedFiltering = enable;
            return this;
        }

        public Builder setAdvertisingDataTypeWithData(int advertisingDataType, byte[] advertisingData, byte[] advertisingDataMask) {
            if (advertisingDataType < 0) {
                throw new IllegalArgumentException("invalid advertising data type");
            }
            byte[] bArr = this.mAdvertisingDataMask;
            if (bArr != null) {
                byte[] bArr2 = this.mAdvertisingData;
                if (bArr2 == null) {
                    throw new IllegalArgumentException("mAdvertisingData is null while mAdvertisingDataMask is not null");
                }
                if (bArr2.length != bArr.length) {
                    throw new IllegalArgumentException("size mismatch for mAdvertisingData and mAdvertisingDataMask");
                }
            }
            this.mAdvertisingDataType = advertisingDataType;
            this.mAdvertisingData = advertisingData;
            this.mAdvertisingDataMask = advertisingDataMask;
            return this;
        }

        public Builder setAdvertisingDataType(int advertisingDataType) {
            if (advertisingDataType < 0) {
                throw new IllegalArgumentException("invalid advertising data type");
            }
            this.mAdvertisingDataType = advertisingDataType;
            return this;
        }

        public ScanFilter build() {
            return new ScanFilter(this.mDeviceName, this.mDeviceAddress, this.mServiceUuid, this.mUuidMask, this.mServiceSolicitationUuid, this.mServiceSolicitationUuidMask, this.mServiceDataUuid, this.mServiceData, this.mServiceDataMask, this.mManufacturerId, this.mManufacturerData, this.mManufacturerDataMask, this.mAddressType, this.mIrk, this.mAdvertisingDataType, this.mAdvertisingData, this.mAdvertisingDataMask, this.mOrgId, this.mTDSFlags, this.mTDSFlagsMask, this.mWifiNANHash, this.mGroupBasedFiltering);
        }
    }
}

package android.bluetooth.le;

import android.bluetooth.BluetoothUuid;
import android.inputmethodservice.navigationbar.NavigationBarInflaterView;
import android.os.ParcelUuid;
import android.util.SparseArray;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.function.Predicate;

/* loaded from: classes.dex */
public final class ScanRecord {
    public static final int DATA_TYPE_3D_INFORMATION_DATA = 61;
    public static final int DATA_TYPE_ADVERTISING_INTERVAL = 26;
    public static final int DATA_TYPE_ADVERTISING_INTERVAL_LONG = 47;
    public static final int DATA_TYPE_APPEARANCE = 25;
    public static final int DATA_TYPE_BIG_INFO = 44;
    public static final int DATA_TYPE_BROADCAST_CODE = 45;
    public static final int DATA_TYPE_CHANNEL_MAP_UPDATE_INDICATION = 40;
    public static final int DATA_TYPE_CLASS_OF_DEVICE = 13;
    public static final int DATA_TYPE_DEVICE_ID = 16;
    public static final int DATA_TYPE_FLAGS = 1;
    public static int DATA_TYPE_GROUP_AD_TYPE = 0;
    public static final int DATA_TYPE_INDOOR_POSITIONING = 37;
    public static final int DATA_TYPE_LE_BLUETOOTH_DEVICE_ADDRESS = 27;
    public static final int DATA_TYPE_LE_ROLE = 28;
    public static final int DATA_TYPE_LE_SECURE_CONNECTIONS_CONFIRMATION_VALUE = 34;
    public static final int DATA_TYPE_LE_SECURE_CONNECTIONS_RANDOM_VALUE = 35;
    public static final int DATA_TYPE_LE_SUPPORTED_FEATURES = 39;
    public static final int DATA_TYPE_LOCAL_NAME_COMPLETE = 9;
    public static final int DATA_TYPE_LOCAL_NAME_SHORT = 8;
    public static final int DATA_TYPE_MANUFACTURER_SPECIFIC_DATA = 255;
    public static final int DATA_TYPE_MESH_BEACON = 43;
    public static final int DATA_TYPE_MESH_MESSAGE = 42;
    public static final int DATA_TYPE_NONE = -1;
    public static final int DATA_TYPE_PB_ADV = 41;
    public static final int DATA_TYPE_PUBLIC_TARGET_ADDRESS = 23;
    public static final int DATA_TYPE_RANDOM_TARGET_ADDRESS = 24;
    public static final int DATA_TYPE_RESOLVABLE_SET_IDENTIFIER = 46;
    public static final int DATA_TYPE_SECURITY_MANAGER_OUT_OF_BAND_FLAGS = 17;
    public static final int DATA_TYPE_SERVICE_DATA_128_BIT = 33;
    public static final int DATA_TYPE_SERVICE_DATA_16_BIT = 22;
    public static final int DATA_TYPE_SERVICE_DATA_32_BIT = 32;
    public static final int DATA_TYPE_SERVICE_SOLICITATION_UUIDS_128_BIT = 21;
    public static final int DATA_TYPE_SERVICE_SOLICITATION_UUIDS_16_BIT = 20;
    public static final int DATA_TYPE_SERVICE_SOLICITATION_UUIDS_32_BIT = 31;
    public static final int DATA_TYPE_SERVICE_UUIDS_128_BIT_COMPLETE = 7;
    public static final int DATA_TYPE_SERVICE_UUIDS_128_BIT_PARTIAL = 6;
    public static final int DATA_TYPE_SERVICE_UUIDS_16_BIT_COMPLETE = 3;
    public static final int DATA_TYPE_SERVICE_UUIDS_16_BIT_PARTIAL = 2;
    public static final int DATA_TYPE_SERVICE_UUIDS_32_BIT_COMPLETE = 5;
    public static final int DATA_TYPE_SERVICE_UUIDS_32_BIT_PARTIAL = 4;
    public static final int DATA_TYPE_SIMPLE_PAIRING_HASH_C = 14;
    public static final int DATA_TYPE_SIMPLE_PAIRING_HASH_C_256 = 29;
    public static final int DATA_TYPE_SIMPLE_PAIRING_RANDOMIZER_R = 15;
    public static final int DATA_TYPE_SIMPLE_PAIRING_RANDOMIZER_R_256 = 30;
    public static final int DATA_TYPE_SLAVE_CONNECTION_INTERVAL_RANGE = 18;
    public static final int DATA_TYPE_TRANSPORT_DISCOVERY_DATA = 38;
    public static final int DATA_TYPE_TX_POWER_LEVEL = 10;
    public static final int DATA_TYPE_URI = 36;
    private static final String TAG = "ScanRecord";
    private final int mAdvertiseFlags;
    private final HashMap<Integer, byte[]> mAdvertisingDataMap;
    private final byte[] mBytes;
    private final String mDeviceName;
    private final byte[] mGroupIdentifierData;
    private final SparseArray<byte[]> mManufacturerSpecificData;
    private final Map<ParcelUuid, byte[]> mServiceData;
    private final List<ParcelUuid> mServiceSolicitationUuids;
    private final List<ParcelUuid> mServiceUuids;
    private final byte[] mTDSData;
    private final int mTxPowerLevel;

    @Retention(RetentionPolicy.SOURCE)
    public @interface AdvertisingDataType {
    }

    public int getAdvertiseFlags() {
        return this.mAdvertiseFlags;
    }

    public List<ParcelUuid> getServiceUuids() {
        return this.mServiceUuids;
    }

    public List<ParcelUuid> getServiceSolicitationUuids() {
        return this.mServiceSolicitationUuids;
    }

    public SparseArray<byte[]> getManufacturerSpecificData() {
        return this.mManufacturerSpecificData;
    }

    public byte[] getManufacturerSpecificData(int manufacturerId) {
        SparseArray<byte[]> sparseArray = this.mManufacturerSpecificData;
        if (sparseArray == null) {
            return null;
        }
        return sparseArray.get(manufacturerId);
    }

    public Map<ParcelUuid, byte[]> getServiceData() {
        return this.mServiceData;
    }

    public byte[] getServiceData(ParcelUuid serviceDataUuid) {
        Map<ParcelUuid, byte[]> map;
        if (serviceDataUuid == null || (map = this.mServiceData) == null) {
            return null;
        }
        return map.get(serviceDataUuid);
    }

    public int getTxPowerLevel() {
        return this.mTxPowerLevel;
    }

    public String getDeviceName() {
        return this.mDeviceName;
    }

    public Map<Integer, byte[]> getAdvertisingDataMap() {
        return this.mAdvertisingDataMap;
    }

    public byte[] getTDSData() {
        return this.mTDSData;
    }

    public byte[] getGroupIdentifierData() {
        return this.mGroupIdentifierData;
    }

    public byte[] getBytes() {
        return this.mBytes;
    }

    public boolean matchesAnyField(Predicate<byte[]> matcher) {
        int length;
        int pos = 0;
        while (true) {
            byte[] bArr = this.mBytes;
            if (pos < bArr.length && (length = bArr[pos] & 255) != 0) {
                if (matcher.test(Arrays.copyOfRange(bArr, pos, pos + length + 1))) {
                    return true;
                }
                pos += length + 1;
            } else {
                return false;
            }
        }
    }

    private ScanRecord(List<ParcelUuid> serviceUuids, List<ParcelUuid> serviceSolicitationUuids, SparseArray<byte[]> manufacturerData, Map<ParcelUuid, byte[]> serviceData, int advertiseFlags, int txPowerLevel, String localName, HashMap<Integer, byte[]> advertisingDataMap, byte[] tdsData, byte[] groupIdentifierData, byte[] bytes) {
        this.mServiceSolicitationUuids = serviceSolicitationUuids;
        this.mServiceUuids = serviceUuids;
        this.mManufacturerSpecificData = manufacturerData;
        this.mServiceData = serviceData;
        this.mDeviceName = localName;
        this.mAdvertiseFlags = advertiseFlags;
        this.mTxPowerLevel = txPowerLevel;
        this.mAdvertisingDataMap = advertisingDataMap;
        this.mTDSData = tdsData;
        this.mGroupIdentifierData = groupIdentifierData;
        this.mBytes = bytes;
    }

    public static ScanRecord cloneAndUpateRecord(ScanRecord record, SparseArray<byte[]> manufacturerData, Map<ParcelUuid, byte[]> serviceData) {
        if (record == null) {
            return null;
        }
        return new ScanRecord(record.mServiceUuids, record.mServiceSolicitationUuids, manufacturerData, serviceData, record.mAdvertiseFlags, record.mTxPowerLevel, record.mDeviceName, record.mAdvertisingDataMap, record.mTDSData, record.mGroupIdentifierData, record.mBytes);
    }

    /* JADX WARN: Can't wrap try/catch for region: R(13:6|(7:9|63|10|11|(11:76|13|73|45|(1:47)(1:48)|67|49|50|69|51|52)(8:14|71|15|16|40|41|61|62)|65|7)|75|44|73|45|(0)(0)|67|49|50|69|51|52) */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x014b, code lost:
    
        r23 = r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x0153, code lost:
    
        r23 = r5;
     */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0123  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0127  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.bluetooth.le.ScanRecord parseFromBytes(byte[] r26) {
        /*
            Method dump skipped, instructions count: 482
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: android.bluetooth.le.ScanRecord.parseFromBytes(byte[]):android.bluetooth.le.ScanRecord");
    }

    public String toString() {
        return "ScanRecord [mAdvertiseFlags=" + this.mAdvertiseFlags + ", mServiceUuids=" + this.mServiceUuids + ", mServiceSolicitationUuids=" + this.mServiceSolicitationUuids + ", mManufacturerSpecificData=" + BluetoothLeUtils.toString(this.mManufacturerSpecificData) + ", mServiceData=" + BluetoothLeUtils.toString(this.mServiceData) + ", mTxPowerLevel=" + this.mTxPowerLevel + ", mDeviceName=" + this.mDeviceName + ", mTDSData=" + BluetoothLeUtils.toString(this.mTDSData) + NavigationBarInflaterView.SIZE_MOD_END;
    }

    private static int parseServiceUuid(byte[] scanRecord, int currentPos, int dataLength, int uuidLength, List<ParcelUuid> serviceUuids) {
        while (dataLength > 0) {
            byte[] uuidBytes = extractBytes(scanRecord, currentPos, uuidLength);
            serviceUuids.add(BluetoothUuid.parseUuidFrom(uuidBytes));
            dataLength -= uuidLength;
            currentPos += uuidLength;
        }
        return currentPos;
    }

    private static int parseServiceSolicitationUuid(byte[] scanRecord, int currentPos, int dataLength, int uuidLength, List<ParcelUuid> serviceSolicitationUuids) {
        while (dataLength > 0) {
            byte[] uuidBytes = extractBytes(scanRecord, currentPos, uuidLength);
            serviceSolicitationUuids.add(BluetoothUuid.parseUuidFrom(uuidBytes));
            dataLength -= uuidLength;
            currentPos += uuidLength;
        }
        return currentPos;
    }

    private static byte[] extractBytes(byte[] scanRecord, int start, int length) {
        byte[] bytes = new byte[length];
        System.arraycopy(scanRecord, start, bytes, 0, length);
        return bytes;
    }
}

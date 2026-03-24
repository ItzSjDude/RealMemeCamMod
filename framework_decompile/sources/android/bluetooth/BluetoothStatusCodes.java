package android.bluetooth;

import android.annotation.SystemApi;

/* loaded from: classes.dex */
public final class BluetoothStatusCodes {

    @SystemApi
    public static final int ALLOWED = 400;

    @SystemApi
    public static final int ERROR_ALREADY_IN_TARGET_STATE = 26;

    @SystemApi
    public static final int ERROR_ANOTHER_ACTIVE_OOB_REQUEST = 1000;

    @SystemApi
    public static final int ERROR_AUDIO_DEVICE_ALREADY_CONNECTED = 1116;

    @SystemApi
    public static final int ERROR_AUDIO_DEVICE_ALREADY_DISCONNECTED = 1117;

    @SystemApi
    public static final int ERROR_AUDIO_ROUTE_BLOCKED = 1118;

    @SystemApi
    public static final int ERROR_BAD_PARAMETERS = 21;
    public static final int ERROR_BLUETOOTH_NOT_ALLOWED = 2;
    public static final int ERROR_BLUETOOTH_NOT_ENABLED = 1;

    @SystemApi
    public static final int ERROR_CALL_ACTIVE = 1119;

    @SystemApi
    public static final int ERROR_CSIP_GROUP_LOCKED_BY_OTHER = 1208;

    @SystemApi
    public static final int ERROR_CSIP_INVALID_GROUP_ID = 1207;

    @SystemApi
    public static final int ERROR_CSIP_LOCKED_GROUP_MEMBER_LOST = 1209;
    public static final int ERROR_DEVICE_NOT_BONDED = 3;
    public static final int ERROR_DEVICE_NOT_CONNECTED = 4;
    public static final int ERROR_DISCONNECT_REASON_BAD_PARAMETERS = 1109;
    public static final int ERROR_DISCONNECT_REASON_CONNECTION_ALREADY_EXISTS = 1108;
    public static final int ERROR_DISCONNECT_REASON_LOCAL = 1102;
    public static final int ERROR_DISCONNECT_REASON_LOCAL_REQUEST = 1100;
    public static final int ERROR_DISCONNECT_REASON_REMOTE = 1103;
    public static final int ERROR_DISCONNECT_REASON_REMOTE_REQUEST = 1101;
    public static final int ERROR_DISCONNECT_REASON_RESOURCE_LIMIT_REACHED = 1107;
    public static final int ERROR_DISCONNECT_REASON_SECURITY = 1105;
    public static final int ERROR_DISCONNECT_REASON_SYSTEM_POLICY = 1106;
    public static final int ERROR_DISCONNECT_REASON_TIMEOUT = 1104;
    public static final int ERROR_GATT_WRITE_NOT_ALLOWED = 200;
    public static final int ERROR_GATT_WRITE_REQUEST_BUSY = 201;

    @SystemApi
    public static final int ERROR_HAP_INVALID_PRESET_INDEX = 1211;

    @SystemApi
    public static final int ERROR_HAP_PRESET_NAME_TOO_LONG = 1210;

    @SystemApi
    public static final int ERROR_HARDWARE_GENERIC = 20;

    @SystemApi
    public static final int ERROR_LE_BROADCAST_ASSISTANT_DUPLICATE_ADDITION = 1203;

    @SystemApi
    public static final int ERROR_LE_BROADCAST_ASSISTANT_INVALID_SOURCE_ID = 1202;

    @SystemApi
    public static final int ERROR_LE_BROADCAST_INVALID_BROADCAST_ID = 1200;

    @SystemApi
    public static final int ERROR_LE_BROADCAST_INVALID_CODE = 1201;

    @SystemApi
    public static final int ERROR_LE_CONTENT_METADATA_INVALID_LANGUAGE = 1205;

    @SystemApi
    public static final int ERROR_LE_CONTENT_METADATA_INVALID_OTHER = 1206;

    @SystemApi
    public static final int ERROR_LE_CONTENT_METADATA_INVALID_PROGRAM_INFO = 1204;

    @SystemApi
    public static final int ERROR_LOCAL_NOT_ENOUGH_RESOURCES = 22;
    public static final int ERROR_MISSING_BLUETOOTH_CONNECT_PERMISSION = 6;
    public static final int ERROR_MISSING_BLUETOOTH_SCAN_PERMISSION = 7;

    @SystemApi
    public static final int ERROR_NOT_ACTIVE_DEVICE = 12;

    @SystemApi
    public static final int ERROR_NO_ACTIVE_DEVICES = 13;

    @SystemApi
    public static final int ERROR_PROFILE_NOT_CONNECTED = 14;
    public static final int ERROR_PROFILE_SERVICE_NOT_BOUND = 9;

    @SystemApi
    public static final int ERROR_REMOTE_LINK_ERROR = 25;

    @SystemApi
    public static final int ERROR_REMOTE_NOT_ENOUGH_RESOURCES = 23;

    @SystemApi
    public static final int ERROR_REMOTE_OPERATION_NOT_SUPPORTED = 27;

    @SystemApi
    public static final int ERROR_REMOTE_OPERATION_REJECTED = 24;

    @SystemApi
    public static final int ERROR_TIMEOUT = 15;
    public static final int ERROR_UNKNOWN = Integer.MAX_VALUE;
    public static final int FEATURE_NOT_SUPPORTED = 11;
    public static final int FEATURE_SUPPORTED = 10;

    @SystemApi
    public static final int NOT_ALLOWED = 401;

    @SystemApi
    public static final int REASON_LOCAL_APP_REQUEST = 16;

    @SystemApi
    public static final int REASON_LOCAL_STACK_REQUEST = 17;

    @SystemApi
    public static final int REASON_REMOTE_REQUEST = 18;

    @SystemApi
    public static final int REASON_SYSTEM_POLICY = 19;

    @SystemApi
    public static final int RFCOMM_LISTENER_FAILED_TO_CLOSE_SERVER_SOCKET = 2004;

    @SystemApi
    public static final int RFCOMM_LISTENER_FAILED_TO_CREATE_SERVER_SOCKET = 2003;

    @SystemApi
    public static final int RFCOMM_LISTENER_NO_SOCKET_AVAILABLE = 2005;

    @SystemApi
    public static final int RFCOMM_LISTENER_OPERATION_FAILED_DIFFERENT_APP = 2002;

    @SystemApi
    public static final int RFCOMM_LISTENER_OPERATION_FAILED_NO_MATCHING_SERVICE_RECORD = 2001;

    @SystemApi
    public static final int RFCOMM_LISTENER_START_FAILED_UUID_IN_USE = 2000;
    public static final int SUCCESS = 0;

    private BluetoothStatusCodes() {
    }
}

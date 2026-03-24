package android.bluetooth;

import android.annotation.SystemApi;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.List;

/* loaded from: classes.dex */
public interface BluetoothProfile {
    public static final int A2DP = 2;

    @SystemApi
    public static final int A2DP_SINK = 11;
    public static final int AVRCP = 13;

    @SystemApi
    public static final int AVRCP_CONTROLLER = 12;
    public static final int BATTERY = 30;
    public static final int BC_PROFILE = 35;
    public static final int BROADCAST = 33;
    public static final int CC_SERVER = 37;

    @SystemApi
    public static final int CONNECTION_POLICY_ALLOWED = 100;

    @SystemApi
    public static final int CONNECTION_POLICY_FORBIDDEN = 0;

    @SystemApi
    public static final int CONNECTION_POLICY_UNKNOWN = -1;
    public static final int COORDINATED_AUDIO_UNICAST = 38;
    public static final int CSIP_SET_COORDINATOR = 25;
    public static final int DUN = 31;
    public static final String EXTRA_PREVIOUS_STATE = "android.bluetooth.profile.extra.PREVIOUS_STATE";
    public static final String EXTRA_STATE = "android.bluetooth.profile.extra.STATE";
    public static final int GATT = 7;
    public static final int GATT_SERVER = 8;
    public static final int GROUP_CLIENT = 32;
    public static final int HAP_CLIENT = 28;
    public static final int HEADSET = 1;

    @SystemApi
    public static final int HEADSET_CLIENT = 16;

    @Deprecated
    public static final int HEALTH = 3;
    public static final int HEARING_AID = 21;
    public static final int HID_DEVICE = 19;

    @SystemApi
    public static final int HID_HOST = 4;
    public static final int LE_AUDIO = 22;

    @SystemApi
    public static final int LE_AUDIO_BROADCAST = 26;

    @SystemApi
    public static final int LE_AUDIO_BROADCAST_ASSISTANT = 29;
    public static final int LE_CALL_CONTROL = 27;

    @SystemApi
    public static final int MAP = 9;

    @SystemApi
    public static final int MAP_CLIENT = 18;
    public static final int MAX_PROFILE_ID = 38;
    public static final int MCP_SERVER = 24;

    @SystemApi
    public static final int OPP = 20;

    @SystemApi
    public static final int PAN = 5;

    @SystemApi
    public static final int PBAP = 6;

    @SystemApi
    public static final int PBAP_CLIENT = 17;
    public static final int PC_PROFILE = 36;
    public static final int PRIORITY_AUTO_CONNECT = 1000;

    @SystemApi
    @Deprecated
    public static final int PRIORITY_OFF = 0;

    @SystemApi
    @Deprecated
    public static final int PRIORITY_ON = 100;
    public static final int PRIORITY_UNDEFINED = -1;
    public static final int SAP = 10;
    public static final int STATE_CONNECTED = 2;
    public static final int STATE_CONNECTING = 1;
    public static final int STATE_DISCONNECTED = 0;
    public static final int STATE_DISCONNECTING = 3;
    public static final int VCP = 34;

    @SystemApi
    public static final int VOLUME_CONTROL = 23;

    @Retention(RetentionPolicy.SOURCE)
    public @interface BtProfileState {
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface ConnectionPolicy {
    }

    public interface ServiceListener {
        void onServiceConnected(int i, BluetoothProfile bluetoothProfile);

        void onServiceDisconnected(int i);
    }

    List<BluetoothDevice> getConnectedDevices();

    int getConnectionState(BluetoothDevice bluetoothDevice);

    List<BluetoothDevice> getDevicesMatchingConnectionStates(int[] iArr);

    @SystemApi
    static String getConnectionStateName(int connectionState) {
        switch (connectionState) {
            case 0:
                return "STATE_DISCONNECTED";
            case 1:
                return "STATE_CONNECTING";
            case 2:
                return "STATE_CONNECTED";
            case 3:
                return "STATE_DISCONNECTING";
            default:
                return "STATE_UNKNOWN";
        }
    }

    @SystemApi
    static String getProfileName(int profile) {
        switch (profile) {
            case 1:
                return "HEADSET";
            case 2:
                return "A2DP";
            case 3:
            case 14:
            case 15:
            default:
                return "UNKNOWN_PROFILE";
            case 4:
                return "HID_HOST";
            case 5:
                return "PAN";
            case 6:
                return "PBAP";
            case 7:
                return "GATT";
            case 8:
                return "GATT_SERVER";
            case 9:
                return "MAP";
            case 10:
                return "SAP";
            case 11:
                return "A2DP_SINK";
            case 12:
                return "AVRCP_CONTROLLER";
            case 13:
                return "AVRCP";
            case 16:
                return "HEADSET_CLIENT";
            case 17:
                return "PBAP_CLIENT";
            case 18:
                return "MAP_CLIENT";
            case 19:
                return "HID_DEVICE";
            case 20:
                return "OPP";
            case 21:
                return "HEARING_AID";
            case 22:
                return "LE_AUDIO";
            case 23:
                return "VOLUME_CONTROL";
            case 24:
                return "MCP_SERVER";
            case 25:
                return "CSIP_SET_COORDINATOR";
            case 26:
                return "LE_AUDIO_BROADCAST";
            case 27:
                return "LE_CALL_CONTROL";
            case 28:
                return "HAP_CLIENT";
            case 29:
                return "LE_AUDIO_BROADCAST_ASSISTANT";
            case 30:
                return BluetoothHeadset.VENDOR_SPECIFIC_HEADSET_EVENT_XEVENT_BATTERY_LEVEL;
            case 31:
                return "DUN";
            case 32:
                return "GROUP_CLIENT";
            case 33:
                return "BROADCAST";
            case 34:
                return "VCP";
            case 35:
                return "BC_PROFILE";
            case 36:
                return "PC_PROFILE";
            case 37:
                return "CC_SERVER";
        }
    }
}

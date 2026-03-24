package android.bluetooth;

import android.annotation.SystemApi;
import android.bluetooth.BluetoothProfile;
import android.bluetooth.IBluetoothA2dp;
import android.content.AttributionSource;
import android.content.Context;
import android.inputmethodservice.navigationbar.NavigationBarInflaterView;
import android.os.IBinder;
import android.os.ParcelUuid;
import android.os.RemoteException;
import android.telephony.ims.ImsConferenceState;
import android.util.Log;
import com.android.modules.utils.SynchronousResultReceiver;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.TimeoutException;
import system.ext.loader.core.ExtLoader;

/* loaded from: classes.dex */
public final class BluetoothA2dp implements BluetoothProfile {

    @SystemApi
    public static final String ACTION_ACTIVE_DEVICE_CHANGED = "android.bluetooth.a2dp.profile.action.ACTIVE_DEVICE_CHANGED";
    public static final String ACTION_AVRCP_CONNECTION_STATE_CHANGED = "android.bluetooth.a2dp.profile.action.AVRCP_CONNECTION_STATE_CHANGED";

    @SystemApi
    public static final String ACTION_CODEC_CONFIG_CHANGED = "android.bluetooth.a2dp.profile.action.CODEC_CONFIG_CHANGED";
    public static final String ACTION_CONNECTION_STATE_CHANGED = "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED";
    public static final String ACTION_PLAYING_STATE_CHANGED = "android.bluetooth.a2dp.profile.action.PLAYING_STATE_CHANGED";
    private static final boolean DBG = true;

    @SystemApi
    public static final int DYNAMIC_BUFFER_SUPPORT_A2DP_OFFLOAD = 1;

    @SystemApi
    public static final int DYNAMIC_BUFFER_SUPPORT_A2DP_SOFTWARE_ENCODING = 2;

    @SystemApi
    public static final int DYNAMIC_BUFFER_SUPPORT_NONE = 0;

    @SystemApi
    public static final int OPTIONAL_CODECS_NOT_SUPPORTED = 0;

    @SystemApi
    public static final int OPTIONAL_CODECS_PREF_DISABLED = 0;

    @SystemApi
    public static final int OPTIONAL_CODECS_PREF_ENABLED = 1;

    @SystemApi
    public static final int OPTIONAL_CODECS_PREF_UNKNOWN = -1;

    @SystemApi
    public static final int OPTIONAL_CODECS_SUPPORTED = 1;

    @SystemApi
    public static final int OPTIONAL_CODECS_SUPPORT_UNKNOWN = -1;
    public static final int STATE_NOT_PLAYING = 11;
    public static final int STATE_PLAYING = 10;
    private static final String TAG = "BluetoothA2dp";
    private static final boolean VDBG = false;
    private final BluetoothAdapter mAdapter;
    private final AttributionSource mAttributionSource;
    private final BluetoothProfileConnector<IBluetoothA2dp> mProfileConnector;

    @Retention(RetentionPolicy.SOURCE)
    public @interface OptionalCodecsPreferenceStatus {
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface OptionalCodecsSupportStatus {
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface Type {
    }

    BluetoothA2dp(Context context, BluetoothProfile.ServiceListener listener, BluetoothAdapter adapter) {
        BluetoothProfileConnector<IBluetoothA2dp> bluetoothProfileConnector = new BluetoothProfileConnector(this, 2, TAG, IBluetoothA2dp.class.getName()) { // from class: android.bluetooth.BluetoothA2dp.1
            @Override // android.bluetooth.BluetoothProfileConnector
            public IBluetoothA2dp getServiceInterface(IBinder service) {
                return IBluetoothA2dp.Stub.asInterface(service);
            }
        };
        this.mProfileConnector = bluetoothProfileConnector;
        this.mAdapter = adapter;
        this.mAttributionSource = adapter.getAttributionSource();
        bluetoothProfileConnector.connect(context, listener);
    }

    void close() {
        this.mProfileConnector.disconnect();
    }

    private IBluetoothA2dp getService() {
        return this.mProfileConnector.getService();
    }

    public void finalize() {
    }

    public boolean connect(BluetoothDevice device) {
        log("connect(" + device + NavigationBarInflaterView.KEY_CODE_END);
        IBluetoothA2dp service = getService();
        if (service == null) {
            Log.w(TAG, "Proxy not attached to service");
            log(Log.getStackTraceString(new Throwable()));
        } else if (isEnabled() && isValidDevice(device)) {
            try {
                SynchronousResultReceiver<Boolean> recv = SynchronousResultReceiver.get();
                service.connectWithAttribution(device, this.mAttributionSource, recv);
                return recv.awaitResultNoInterrupt(BluetoothUtils.getSyncTimeout()).getValue(false).booleanValue();
            } catch (RemoteException | TimeoutException e) {
                Log.e(TAG, e.toString() + "\n" + Log.getStackTraceString(new Throwable()));
            }
        }
        return false;
    }

    public boolean disconnect(BluetoothDevice device) {
        log("disconnect(" + device + NavigationBarInflaterView.KEY_CODE_END);
        IBluetoothA2dp service = getService();
        if (service == null) {
            Log.w(TAG, "Proxy not attached to service");
            log(Log.getStackTraceString(new Throwable()));
        } else if (isEnabled() && isValidDevice(device)) {
            try {
                SynchronousResultReceiver<Boolean> recv = SynchronousResultReceiver.get();
                service.disconnectWithAttribution(device, this.mAttributionSource, recv);
                return recv.awaitResultNoInterrupt(BluetoothUtils.getSyncTimeout()).getValue(false).booleanValue();
            } catch (RemoteException | TimeoutException e) {
                Log.e(TAG, e.toString() + "\n" + Log.getStackTraceString(new Throwable()));
            }
        }
        return false;
    }

    @Override // android.bluetooth.BluetoothProfile
    public List<BluetoothDevice> getConnectedDevices() {
        IBluetoothA2dp service = getService();
        List<BluetoothDevice> arrayList = new ArrayList<>();
        if (service == null) {
            Log.w(TAG, "Proxy not attached to service");
            log(Log.getStackTraceString(new Throwable()));
        } else if (isEnabled()) {
            try {
                SynchronousResultReceiver<List<BluetoothDevice>> recv = SynchronousResultReceiver.get();
                service.getConnectedDevicesWithAttribution(this.mAttributionSource, recv);
                return Attributable.setAttributionSource(recv.awaitResultNoInterrupt(BluetoothUtils.getSyncTimeout()).getValue(arrayList), this.mAttributionSource);
            } catch (RemoteException | TimeoutException e) {
                Log.e(TAG, e.toString() + "\n" + Log.getStackTraceString(new Throwable()));
            }
        }
        return arrayList;
    }

    @Override // android.bluetooth.BluetoothProfile
    public List<BluetoothDevice> getDevicesMatchingConnectionStates(int[] states) {
        IBluetoothA2dp service = getService();
        List<BluetoothDevice> arrayList = new ArrayList<>();
        if (service == null) {
            Log.w(TAG, "Proxy not attached to service");
            log(Log.getStackTraceString(new Throwable()));
        } else if (isEnabled()) {
            try {
                SynchronousResultReceiver<List<BluetoothDevice>> recv = SynchronousResultReceiver.get();
                service.getDevicesMatchingConnectionStatesWithAttribution(states, this.mAttributionSource, recv);
                return Attributable.setAttributionSource(recv.awaitResultNoInterrupt(BluetoothUtils.getSyncTimeout()).getValue(arrayList), this.mAttributionSource);
            } catch (RemoteException | TimeoutException e) {
                Log.e(TAG, e.toString() + "\n" + Log.getStackTraceString(new Throwable()));
            }
        }
        return arrayList;
    }

    @Override // android.bluetooth.BluetoothProfile
    public int getConnectionState(BluetoothDevice device) {
        IBluetoothA2dp service = getService();
        if (service == null) {
            Log.w(TAG, "Proxy not attached to service");
            log(Log.getStackTraceString(new Throwable()));
        } else if (isEnabled() && isValidDevice(device)) {
            try {
                SynchronousResultReceiver<Integer> recv = SynchronousResultReceiver.get();
                service.getConnectionStateWithAttribution(device, this.mAttributionSource, recv);
                return recv.awaitResultNoInterrupt(BluetoothUtils.getSyncTimeout()).getValue(0).intValue();
            } catch (RemoteException | TimeoutException e) {
                Log.e(TAG, e.toString() + "\n" + Log.getStackTraceString(new Throwable()));
            }
        }
        return 0;
    }

    public boolean setActiveDevice(BluetoothDevice device) {
        log("setActiveDevice(" + device + NavigationBarInflaterView.KEY_CODE_END);
        IBluetoothA2dp service = getService();
        if (service == null) {
            Log.w(TAG, "Proxy not attached to service");
            log(Log.getStackTraceString(new Throwable()));
        } else if (isEnabled() && (device == null || isValidDevice(device))) {
            try {
                SynchronousResultReceiver<Boolean> recv = SynchronousResultReceiver.get();
                service.setActiveDevice(device, this.mAttributionSource, recv);
                return recv.awaitResultNoInterrupt(BluetoothUtils.getSyncTimeout()).getValue(false).booleanValue();
            } catch (RemoteException | TimeoutException e) {
                Log.e(TAG, e.toString() + "\n" + Log.getStackTraceString(new Throwable()));
            }
        }
        return false;
    }

    public BluetoothDevice getActiveDevice() {
        IBluetoothA2dp service = getService();
        if (service == null) {
            Log.w(TAG, "Proxy not attached to service");
            log(Log.getStackTraceString(new Throwable()));
        } else if (isEnabled()) {
            try {
                SynchronousResultReceiver<BluetoothDevice> recv = SynchronousResultReceiver.get();
                service.getActiveDevice(this.mAttributionSource, recv);
                return (BluetoothDevice) Attributable.setAttributionSource(recv.awaitResultNoInterrupt(BluetoothUtils.getSyncTimeout()).getValue(null), this.mAttributionSource);
            } catch (RemoteException | TimeoutException e) {
                Log.e(TAG, e.toString() + "\n" + Log.getStackTraceString(new Throwable()));
            }
        }
        return null;
    }

    public boolean isNextAutoSwtichActiveDevice() {
        IBluetoothA2dp service = getService();
        if (service == null) {
            Log.w(TAG, "Proxy not attached to service");
            log(Log.getStackTraceString(new Throwable()));
            return false;
        }
        IBluetoothA2dpSocExt bluetoothA2dpExt = (IBluetoothA2dpSocExt) ExtLoader.type(IBluetoothA2dpSocExt.class).base(this).create();
        return bluetoothA2dpExt.isNextAutoSwtichActiveDevice(service, this.mAttributionSource);
    }

    public boolean setPriority(BluetoothDevice device, int priority) {
        log("setPriority(" + device + ", " + priority + NavigationBarInflaterView.KEY_CODE_END);
        return setConnectionPolicy(device, BluetoothAdapter.priorityToConnectionPolicy(priority));
    }

    @SystemApi
    public boolean setConnectionPolicy(BluetoothDevice device, int connectionPolicy) {
        log("setConnectionPolicy(" + device + ", " + connectionPolicy + NavigationBarInflaterView.KEY_CODE_END);
        IBluetoothA2dp service = getService();
        if (service == null) {
            Log.w(TAG, "Proxy not attached to service");
            log(Log.getStackTraceString(new Throwable()));
        } else if (isEnabled() && isValidDevice(device) && (connectionPolicy == 0 || connectionPolicy == 100)) {
            try {
                SynchronousResultReceiver<Boolean> recv = SynchronousResultReceiver.get();
                service.setConnectionPolicy(device, connectionPolicy, this.mAttributionSource, recv);
                return recv.awaitResultNoInterrupt(BluetoothUtils.getSyncTimeout()).getValue(false).booleanValue();
            } catch (RemoteException | TimeoutException e) {
                Log.e(TAG, e.toString() + "\n" + Log.getStackTraceString(new Throwable()));
            }
        }
        return false;
    }

    public int getPriority(BluetoothDevice device) {
        return BluetoothAdapter.connectionPolicyToPriority(getConnectionPolicy(device));
    }

    @SystemApi
    public int getConnectionPolicy(BluetoothDevice device) {
        IBluetoothA2dp service = getService();
        if (service == null) {
            Log.w(TAG, "Proxy not attached to service");
            log(Log.getStackTraceString(new Throwable()));
        } else if (isEnabled() && isValidDevice(device)) {
            try {
                SynchronousResultReceiver<Integer> recv = SynchronousResultReceiver.get();
                service.getConnectionPolicy(device, this.mAttributionSource, recv);
                return recv.awaitResultNoInterrupt(BluetoothUtils.getSyncTimeout()).getValue(0).intValue();
            } catch (RemoteException | TimeoutException e) {
                Log.e(TAG, e.toString() + "\n" + Log.getStackTraceString(new Throwable()));
            }
        }
        return 0;
    }

    public boolean isAvrcpAbsoluteVolumeSupported() {
        Log.d(TAG, "isAvrcpAbsoluteVolumeSupported");
        IBluetoothA2dp service = getService();
        if (service == null) {
            Log.w(TAG, "Proxy not attached to service");
            log(Log.getStackTraceString(new Throwable()));
        } else if (isEnabled()) {
            try {
                SynchronousResultReceiver<Boolean> recv = SynchronousResultReceiver.get();
                service.isAvrcpAbsoluteVolumeSupported(recv);
                return recv.awaitResultNoInterrupt(BluetoothUtils.getSyncTimeout()).getValue(false).booleanValue();
            } catch (RemoteException | TimeoutException e) {
                Log.e(TAG, e.toString() + "\n" + Log.getStackTraceString(new Throwable()));
            }
        }
        return false;
    }

    @SystemApi
    public void setAvrcpAbsoluteVolume(int volume) {
        Log.d(TAG, "setAvrcpAbsoluteVolume");
        IBluetoothA2dp service = getService();
        if (service == null) {
            Log.w(TAG, "Proxy not attached to service");
            log(Log.getStackTraceString(new Throwable()));
        } else if (isEnabled()) {
            try {
                service.setAvrcpAbsoluteVolume(volume, this.mAttributionSource);
            } catch (RemoteException e) {
                Log.e(TAG, e.toString() + "\n" + Log.getStackTraceString(new Throwable()));
            }
        }
    }

    public boolean isA2dpPlaying(BluetoothDevice device) {
        log("isA2dpPlaying(" + device + NavigationBarInflaterView.KEY_CODE_END);
        IBluetoothA2dp service = getService();
        if (service == null) {
            Log.w(TAG, "Proxy not attached to service");
            log(Log.getStackTraceString(new Throwable()));
        } else if (isEnabled() && isValidDevice(device)) {
            try {
                SynchronousResultReceiver<Boolean> recv = SynchronousResultReceiver.get();
                service.isA2dpPlaying(device, this.mAttributionSource, recv);
                return recv.awaitResultNoInterrupt(BluetoothUtils.getSyncTimeout()).getValue(false).booleanValue();
            } catch (RemoteException | TimeoutException e) {
                Log.e(TAG, e.toString() + "\n" + Log.getStackTraceString(new Throwable()));
            }
        }
        return false;
    }

    public boolean shouldSendVolumeKeys(BluetoothDevice device) {
        ParcelUuid[] uuids;
        if (!isEnabled() || !isValidDevice(device) || (uuids = device.getUuids()) == null) {
            return false;
        }
        for (ParcelUuid uuid : uuids) {
            if (uuid.equals(BluetoothUuid.AVRCP_TARGET)) {
                return true;
            }
        }
        return false;
    }

    @SystemApi
    public BluetoothCodecStatus getCodecStatus(BluetoothDevice device) {
        Log.d(TAG, "getCodecStatus(" + device + NavigationBarInflaterView.KEY_CODE_END);
        verifyDeviceNotNull(device, "getCodecStatus");
        IBluetoothA2dp service = getService();
        if (service == null) {
            Log.w(TAG, "Proxy not attached to service");
            log(Log.getStackTraceString(new Throwable()));
        } else if (isEnabled() && isValidDevice(device)) {
            try {
                SynchronousResultReceiver<BluetoothCodecStatus> recv = SynchronousResultReceiver.get();
                service.getCodecStatus(device, this.mAttributionSource, recv);
                return recv.awaitResultNoInterrupt(BluetoothUtils.getSyncTimeout()).getValue(null);
            } catch (RemoteException | TimeoutException e) {
                Log.e(TAG, e.toString() + "\n" + Log.getStackTraceString(new Throwable()));
            }
        }
        return null;
    }

    @SystemApi
    public void setCodecConfigPreference(BluetoothDevice device, BluetoothCodecConfig codecConfig) {
        Log.d(TAG, "setCodecConfigPreference(" + device + NavigationBarInflaterView.KEY_CODE_END);
        verifyDeviceNotNull(device, "setCodecConfigPreference");
        if (codecConfig == null) {
            Log.e(TAG, "setCodecConfigPreference: Codec config can't be null");
            throw new IllegalArgumentException("codecConfig cannot be null");
        }
        IBluetoothA2dp service = getService();
        if (service == null) {
            Log.w(TAG, "Proxy not attached to service");
            log(Log.getStackTraceString(new Throwable()));
        } else if (isEnabled()) {
            try {
                service.setCodecConfigPreference(device, codecConfig, this.mAttributionSource);
            } catch (RemoteException e) {
                Log.e(TAG, e.toString() + "\n" + Log.getStackTraceString(new Throwable()));
            }
        }
    }

    @SystemApi
    public void enableOptionalCodecs(BluetoothDevice device) {
        Log.d(TAG, "enableOptionalCodecs(" + device + NavigationBarInflaterView.KEY_CODE_END);
        verifyDeviceNotNull(device, "enableOptionalCodecs");
        enableDisableOptionalCodecs(device, true);
    }

    @SystemApi
    public void disableOptionalCodecs(BluetoothDevice device) {
        Log.d(TAG, "disableOptionalCodecs(" + device + NavigationBarInflaterView.KEY_CODE_END);
        verifyDeviceNotNull(device, "disableOptionalCodecs");
        enableDisableOptionalCodecs(device, false);
    }

    private void enableDisableOptionalCodecs(BluetoothDevice device, boolean enable) {
        IBluetoothA2dp service = getService();
        if (service == null) {
            Log.w(TAG, "Proxy not attached to service");
            log(Log.getStackTraceString(new Throwable()));
        } else if (isEnabled() && isValidDevice(device)) {
            try {
                if (enable) {
                    service.enableOptionalCodecs(device, this.mAttributionSource);
                } else {
                    service.disableOptionalCodecs(device, this.mAttributionSource);
                }
            } catch (RemoteException e) {
                Log.e(TAG, e.toString() + "\n" + Log.getStackTraceString(new Throwable()));
            }
        }
    }

    @SystemApi
    public int isOptionalCodecsSupported(BluetoothDevice device) {
        log("isOptionalCodecsSupported(" + device + NavigationBarInflaterView.KEY_CODE_END);
        verifyDeviceNotNull(device, "isOptionalCodecsSupported");
        IBluetoothA2dp service = getService();
        if (service == null) {
            Log.w(TAG, "Proxy not attached to service");
            log(Log.getStackTraceString(new Throwable()));
        } else if (isEnabled() && isValidDevice(device)) {
            try {
                SynchronousResultReceiver<Integer> recv = SynchronousResultReceiver.get();
                service.isOptionalCodecsSupported(device, this.mAttributionSource, recv);
                return recv.awaitResultNoInterrupt(BluetoothUtils.getSyncTimeout()).getValue(-1).intValue();
            } catch (RemoteException | TimeoutException e) {
                Log.e(TAG, e.toString() + "\n" + Log.getStackTraceString(new Throwable()));
            }
        }
        return -1;
    }

    @SystemApi
    public int isOptionalCodecsEnabled(BluetoothDevice device) {
        log("isOptionalCodecsEnabled(" + device + NavigationBarInflaterView.KEY_CODE_END);
        verifyDeviceNotNull(device, "isOptionalCodecsEnabled");
        IBluetoothA2dp service = getService();
        if (service == null) {
            Log.w(TAG, "Proxy not attached to service");
            log(Log.getStackTraceString(new Throwable()));
        } else if (isEnabled() && isValidDevice(device)) {
            try {
                SynchronousResultReceiver<Integer> recv = SynchronousResultReceiver.get();
                service.isOptionalCodecsEnabled(device, this.mAttributionSource, recv);
                return recv.awaitResultNoInterrupt(BluetoothUtils.getSyncTimeout()).getValue(-1).intValue();
            } catch (RemoteException | TimeoutException e) {
                Log.e(TAG, e.toString() + "\n" + Log.getStackTraceString(new Throwable()));
            }
        }
        return -1;
    }

    @SystemApi
    public void setOptionalCodecsEnabled(BluetoothDevice device, int value) {
        log("setOptionalCodecsEnabled(" + device + NavigationBarInflaterView.KEY_CODE_END);
        verifyDeviceNotNull(device, "setOptionalCodecsEnabled");
        if (value != -1 && value != 0 && value != 1) {
            Log.e(TAG, "Invalid value passed to setOptionalCodecsEnabled: " + value);
            return;
        }
        IBluetoothA2dp service = getService();
        if (service == null) {
            Log.w(TAG, "Proxy not attached to service");
            log(Log.getStackTraceString(new Throwable()));
        } else if (isEnabled() && isValidDevice(device)) {
            try {
                service.setOptionalCodecsEnabled(device, value, this.mAttributionSource);
            } catch (RemoteException e) {
                Log.e(TAG, e.toString() + "\n" + Log.getStackTraceString(new Throwable()));
            }
        }
    }

    @SystemApi
    public int getDynamicBufferSupport() {
        IBluetoothA2dp service = getService();
        if (service == null) {
            Log.w(TAG, "Proxy not attached to service");
            log(Log.getStackTraceString(new Throwable()));
        } else if (isEnabled()) {
            try {
                SynchronousResultReceiver<Integer> recv = SynchronousResultReceiver.get();
                service.getDynamicBufferSupport(this.mAttributionSource, recv);
                return recv.awaitResultNoInterrupt(BluetoothUtils.getSyncTimeout()).getValue(0).intValue();
            } catch (RemoteException | TimeoutException e) {
                Log.e(TAG, e.toString() + "\n" + Log.getStackTraceString(new Throwable()));
            }
        }
        return 0;
    }

    @SystemApi
    public BufferConstraints getBufferConstraints() {
        IBluetoothA2dp service = getService();
        if (service == null) {
            Log.w(TAG, "Proxy not attached to service");
            log(Log.getStackTraceString(new Throwable()));
        } else if (isEnabled()) {
            try {
                SynchronousResultReceiver<BufferConstraints> recv = SynchronousResultReceiver.get();
                service.getBufferConstraints(this.mAttributionSource, recv);
                return recv.awaitResultNoInterrupt(BluetoothUtils.getSyncTimeout()).getValue(null);
            } catch (RemoteException | TimeoutException e) {
                Log.e(TAG, e.toString() + "\n" + Log.getStackTraceString(new Throwable()));
            }
        }
        return null;
    }

    @SystemApi
    public boolean setBufferLengthMillis(int codec, int value) {
        if (value < 0) {
            Log.e(TAG, "Trying to set audio buffer length to a negative value: " + value);
            return false;
        }
        IBluetoothA2dp service = getService();
        if (service == null) {
            Log.w(TAG, "Proxy not attached to service");
            log(Log.getStackTraceString(new Throwable()));
        } else if (isEnabled()) {
            try {
                SynchronousResultReceiver<Boolean> recv = SynchronousResultReceiver.get();
                service.setBufferLengthMillis(codec, value, this.mAttributionSource, recv);
                return recv.awaitResultNoInterrupt(BluetoothUtils.getSyncTimeout()).getValue(false).booleanValue();
            } catch (RemoteException | TimeoutException e) {
                Log.e(TAG, e.toString() + "\n" + Log.getStackTraceString(new Throwable()));
            }
        }
        return false;
    }

    public static String stateToString(int state) {
        switch (state) {
            case 0:
                return "disconnected";
            case 1:
                return "connecting";
            case 2:
                return "connected";
            case 3:
                return ImsConferenceState.STATUS_DISCONNECTING;
            case 10:
                return "playing";
            case 11:
                return "not playing";
            default:
                return "<unknown state " + state + ">";
        }
    }

    private boolean isEnabled() {
        return this.mAdapter.getState() == 12;
    }

    private void verifyDeviceNotNull(BluetoothDevice device, String methodName) {
        if (device == null) {
            Log.e(TAG, methodName + ": device param is null");
            throw new IllegalArgumentException("Device cannot be null");
        }
    }

    private boolean isValidDevice(BluetoothDevice device) {
        return device != null && BluetoothAdapter.checkBluetoothAddress(device.getAddress());
    }

    private static void log(String msg) {
        Log.d(TAG, msg);
    }
}

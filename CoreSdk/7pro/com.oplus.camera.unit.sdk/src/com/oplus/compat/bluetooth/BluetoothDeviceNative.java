package com.oplus.compat.bluetooth;

import android.bluetooth.BluetoothDevice;
import android.os.Bundle;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import com.oplus.compat.annotation.Blocked;
import com.oplus.compat.annotation.Grey;
import com.oplus.compat.annotation.Oem;
import com.oplus.compat.annotation.Permission;
import com.oplus.compat.utils.util.UnSupportedApiVersionException;
import com.oplus.compat.utils.util.VersionUtils;
import com.oplus.compatsdk.annotation.OplusCompatibleMethod;
import com.oplus.epona.Epona;
import com.oplus.epona.Request;
import com.oplus.epona.Response;
import com.oplus.inner.bluetooth.BluetoothDeviceWrapper;
import com.oplus.ocs.camera.common.util.ApsConstant;
import com.oplus.utils.reflect.RefClass;
import com.oplus.utils.reflect.RefMethod;
/* loaded from: classes.dex */
public class BluetoothDeviceNative {
    private static final String BLUETOOTH_DEVICE = "BLUETOOTH_DEVICE";
    private static final String COMPONENT_NAME = "bluetooth.BluetoothDevice";
    private static final String KEY_RESULT = "result";
    private static final String SETTINGS_VALUE = "SETTINGS_VALUE";
    private static final String TAG = "BluetoothDeviceNative";
    private static final String TRANSPORT = "transport";

    @OplusCompatibleMethod
    private static Object cancelBondProcessForCompat(BluetoothDevice bluetoothDevice) {
        return null;
    }

    @OplusCompatibleMethod
    private static Object getAliasNameForCompat(BluetoothDevice bluetoothDevice) {
        return null;
    }

    @OplusCompatibleMethod
    private static Object getBatteryLevelForCompat(BluetoothDevice bluetoothDevice) {
        return null;
    }

    @OplusCompatibleMethod
    private static Object getMessageAccessPermissionForCompat(BluetoothDevice bluetoothDevice) {
        return null;
    }

    @OplusCompatibleMethod
    private static Object getPhonebookAccessPermissionForCompat(BluetoothDevice bluetoothDevice) {
        return null;
    }

    @OplusCompatibleMethod
    private static Object isBluetoothDockForCompat(BluetoothDevice bluetoothDevice) {
        return null;
    }

    @OplusCompatibleMethod
    private static Object isBondingInitiatedLocallyForCompat(BluetoothDevice bluetoothDevice) {
        return null;
    }

    @OplusCompatibleMethod
    private static Object isConnectedForCompat(BluetoothDevice bluetoothDevice) {
        return null;
    }

    @OplusCompatibleMethod
    private static Object removeBondForCompat(BluetoothDevice bluetoothDevice) {
        return null;
    }

    @OplusCompatibleMethod
    private static Object setAliasForCompat(BluetoothDevice bluetoothDevice, String str) {
        return null;
    }

    @OplusCompatibleMethod
    private static Object setMessageAccessPermissionForCompat(BluetoothDevice bluetoothDevice, int i) {
        return null;
    }

    @OplusCompatibleMethod
    private static Object setPhonebookAccessPermissionForCompat(BluetoothDevice bluetoothDevice, int i) {
        return null;
    }

    private BluetoothDeviceNative() {
    }

    @Grey
    @Permission(authStr = "cancelBondProcess", type = "epona")
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public static boolean cancelBondProcess(@NonNull BluetoothDevice bluetoothDevice) throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            Request build = new Request.Builder().setComponentName(COMPONENT_NAME).setActionName("cancelBondProcess").build();
            Bundle bundle = new Bundle();
            bundle.putParcelable(BLUETOOTH_DEVICE, bluetoothDevice);
            build.putBundle(bundle);
            Response execute = Epona.newCall(build).execute();
            if (execute.isSuccessful()) {
                return execute.getBundle().getBoolean(KEY_RESULT);
            }
            return false;
        } else if (VersionUtils.isQ()) {
            try {
                return ((Boolean) cancelBondProcessForCompat(bluetoothDevice)).booleanValue();
            } catch (Exception unused) {
                return false;
            }
        } else {
            throw new UnSupportedApiVersionException("not supported before R");
        }
    }

    @Grey
    @Permission(authStr = "createBond", type = "epona")
    @RequiresApi(api = 30)
    public static boolean createBond(@NonNull BluetoothDevice bluetoothDevice, int i) throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            Request build = new Request.Builder().setComponentName(COMPONENT_NAME).setActionName("createBond").build();
            Bundle bundle = new Bundle();
            bundle.putParcelable(BLUETOOTH_DEVICE, bluetoothDevice);
            bundle.putInt(TRANSPORT, i);
            build.putBundle(bundle);
            Response execute = Epona.newCall(build).execute();
            if (execute.isSuccessful()) {
                return execute.getBundle().getBoolean(KEY_RESULT);
            }
            return false;
        }
        throw new UnSupportedApiVersionException("not supported before R");
    }

    @Grey
    @Permission(authStr = "removeBond", type = "epona")
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public static boolean removeBond(@NonNull BluetoothDevice bluetoothDevice) throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            Request build = new Request.Builder().setComponentName(COMPONENT_NAME).setActionName("removeBond").build();
            Bundle bundle = new Bundle();
            bundle.putParcelable(BLUETOOTH_DEVICE, bluetoothDevice);
            build.putBundle(bundle);
            Response execute = Epona.newCall(build).execute();
            if (execute.isSuccessful()) {
                return execute.getBundle().getBoolean(KEY_RESULT);
            }
            return false;
        } else if (VersionUtils.isQ()) {
            try {
                return ((Boolean) removeBondForCompat(bluetoothDevice)).booleanValue();
            } catch (Exception unused) {
                return false;
            }
        } else {
            throw new UnSupportedApiVersionException("not supported before R");
        }
    }

    @Grey
    @Permission(authStr = "setPairingConfirmation", type = "epona")
    @RequiresApi(api = 30)
    public static boolean setPairingConfirmation(@NonNull BluetoothDevice bluetoothDevice, boolean z) throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            Request build = new Request.Builder().setComponentName(COMPONENT_NAME).setActionName("setPairingConfirmation").build();
            Bundle bundle = new Bundle();
            bundle.putBoolean(SETTINGS_VALUE, z);
            bundle.putParcelable(BLUETOOTH_DEVICE, bluetoothDevice);
            build.putBundle(bundle);
            Response execute = Epona.newCall(build).execute();
            if (execute.isSuccessful()) {
                return execute.getBundle().getBoolean(KEY_RESULT);
            }
            return false;
        }
        throw new UnSupportedApiVersionException("not supported before R");
    }

    @Grey
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public static boolean isConnected(@NonNull BluetoothDevice bluetoothDevice) {
        try {
            if (VersionUtils.isS()) {
                return bluetoothDevice.isConnected();
            }
            if (VersionUtils.isOsVersion11_3()) {
                return BluetoothDeviceWrapper.isConnected(bluetoothDevice);
            }
            if (VersionUtils.isQ()) {
                return ((Boolean) isConnectedForCompat(bluetoothDevice)).booleanValue();
            }
            return false;
        } catch (Exception unused) {
            return false;
        }
    }

    @Grey
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public static String getAliasName(@NonNull BluetoothDevice bluetoothDevice) {
        try {
            if (VersionUtils.isS()) {
                return bluetoothDevice.getAlias();
            }
            if (VersionUtils.isOsVersion11_3()) {
                return BluetoothDeviceWrapper.getAliasName(bluetoothDevice);
            }
            return VersionUtils.isQ() ? (String) getAliasNameForCompat(bluetoothDevice) : "";
        } catch (Exception unused) {
            return "";
        }
    }

    @Grey
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public static int getBatteryLevel(@NonNull BluetoothDevice bluetoothDevice) {
        try {
            if (VersionUtils.isS()) {
                return bluetoothDevice.getBatteryLevel();
            }
            if (VersionUtils.isOsVersion11_3()) {
                return BluetoothDeviceWrapper.getBatteryLevel(bluetoothDevice);
            }
            if (VersionUtils.isQ()) {
                return ((Integer) getBatteryLevelForCompat(bluetoothDevice)).intValue();
            }
            return -1;
        } catch (Exception unused) {
            return -1;
        }
    }

    @Blocked
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public static boolean setAlias(@NonNull BluetoothDevice bluetoothDevice, String str) throws UnSupportedApiVersionException {
        if (VersionUtils.isS()) {
            try {
                return bluetoothDevice.setAlias(str) == 0;
            } catch (NoSuchMethodError e) {
                Log.e(TAG, e.toString());
                throw new UnSupportedApiVersionException("no permission to access the blocked method", e);
            }
        }
        try {
            if (VersionUtils.isOsVersion11_3()) {
                return BluetoothDeviceWrapper.setAlias(bluetoothDevice, str);
            }
            if (VersionUtils.isQ()) {
                return ((Boolean) setAliasForCompat(bluetoothDevice, str)).booleanValue();
            }
            return false;
        } catch (Exception unused) {
            return false;
        }
    }

    @Grey
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public static boolean isBluetoothDock(BluetoothDevice bluetoothDevice) {
        try {
            if (!VersionUtils.isR() && VersionUtils.isQ()) {
                return ((Boolean) isBluetoothDockForCompat(bluetoothDevice)).booleanValue();
            }
            return false;
        } catch (Exception unused) {
            return false;
        }
    }

    @Grey
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public static boolean isBondingInitiatedLocally(@NonNull BluetoothDevice bluetoothDevice) {
        try {
            if (VersionUtils.isS()) {
                return bluetoothDevice.isBondingInitiatedLocally();
            }
            if (VersionUtils.isOsVersion11_3()) {
                return BluetoothDeviceWrapper.isBondingInitiatedLocally(bluetoothDevice);
            }
            if (VersionUtils.isQ()) {
                return ((Boolean) isBondingInitiatedLocallyForCompat(bluetoothDevice)).booleanValue();
            }
            return false;
        } catch (Exception unused) {
            return false;
        }
    }

    @Grey
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public static int getPhonebookAccessPermission(@NonNull BluetoothDevice bluetoothDevice) {
        try {
            if (VersionUtils.isS()) {
                return bluetoothDevice.getPhonebookAccessPermission();
            }
            if (VersionUtils.isOsVersion11_3()) {
                return BluetoothDeviceWrapper.getPhonebookAccessPermission(bluetoothDevice);
            }
            if (VersionUtils.isQ()) {
                return ((Integer) getPhonebookAccessPermissionForCompat(bluetoothDevice)).intValue();
            }
            return 0;
        } catch (Exception unused) {
            return 0;
        }
    }

    @Grey
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public static boolean setPhonebookAccessPermission(@NonNull BluetoothDevice bluetoothDevice, int i) {
        try {
            if (VersionUtils.isS()) {
                return bluetoothDevice.setPhonebookAccessPermission(i);
            }
            if (VersionUtils.isOsVersion11_3()) {
                return BluetoothDeviceWrapper.setPhonebookAccessPermission(bluetoothDevice, i);
            }
            if (VersionUtils.isQ()) {
                return ((Boolean) setPhonebookAccessPermissionForCompat(bluetoothDevice, i)).booleanValue();
            }
            return false;
        } catch (Exception unused) {
            return false;
        }
    }

    @Grey
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public static int getMessageAccessPermission(@NonNull BluetoothDevice bluetoothDevice) {
        try {
            if (VersionUtils.isS()) {
                return bluetoothDevice.getMessageAccessPermission();
            }
            if (VersionUtils.isOsVersion11_3()) {
                return BluetoothDeviceWrapper.getMessageAccessPermission(bluetoothDevice);
            }
            if (VersionUtils.isQ()) {
                return ((Integer) getMessageAccessPermissionForCompat(bluetoothDevice)).intValue();
            }
            return 0;
        } catch (Exception unused) {
            return 0;
        }
    }

    @Grey
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public static boolean setMessageAccessPermission(@NonNull BluetoothDevice bluetoothDevice, int i) {
        try {
            if (VersionUtils.isS()) {
                return bluetoothDevice.setMessageAccessPermission(i);
            }
            if (VersionUtils.isOsVersion11_3()) {
                return BluetoothDeviceWrapper.setMessageAccessPermission(bluetoothDevice, i);
            }
            if (VersionUtils.isQ()) {
                return ((Boolean) setMessageAccessPermissionForCompat(bluetoothDevice, i)).booleanValue();
            }
            return false;
        } catch (Exception unused) {
            return false;
        }
    }

    @Oem
    @RequiresApi(api = 30)
    public static boolean isTwsPlusDevice(@NonNull BluetoothDevice bluetoothDevice) throws UnSupportedApiVersionException {
        try {
            if (!VersionUtils.isR()) {
                throw new UnSupportedApiVersionException("Not supported before R");
            }
            return ((Boolean) ReflectInfo.isTwsPlusDevice.callWithException(bluetoothDevice, new Object[0])).booleanValue();
        } catch (Throwable th) {
            throw new UnSupportedApiVersionException(th);
        }
    }

    /* loaded from: classes.dex */
    private static class ReflectInfo {
        private static RefMethod<Boolean> isTwsPlusDevice;

        private ReflectInfo() {
        }

        static {
            RefClass.load(ReflectInfo.class, BluetoothDevice.class);
        }
    }
}

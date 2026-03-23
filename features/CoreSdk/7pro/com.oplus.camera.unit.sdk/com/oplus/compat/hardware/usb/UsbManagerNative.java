package com.oplus.compat.hardware.usb;

import android.hardware.usb.UsbDevice;
import android.hardware.usb.UsbManager;
import android.os.Bundle;
import android.util.Log;
import androidx.annotation.RequiresApi;
import com.oplus.compat.annotation.Permission;
import com.oplus.compat.annotation.System;
import com.oplus.compat.utils.util.UnSupportedApiVersionException;
import com.oplus.compat.utils.util.VersionUtils;
import com.oplus.epona.Epona;
import com.oplus.epona.Request;
import com.oplus.epona.Response;
/* loaded from: classes.dex */
public class UsbManagerNative {
    private static final String COMPONENT_NAME = "android.hardware.usb.UsbManagerNative";
    private static final String EXTRA_FUNCTION = "EXTRA_FUNCTION";
    private static final String EXTRA_FUNCTION_ACCESSORY = "EXTRA_FUNCTION_ACCESSORY";
    private static final String EXTRA_FUNCTION_ADB = "EXTRA_FUNCTION_ADB";
    private static final String EXTRA_FUNCTION_AUDIO_SOURCE = "EXTRA_FUNCTION_AUDIO_SOURCE";
    private static final String EXTRA_FUNCTION_MIDI = "EXTRA_FUNCTION_MIDI";
    private static final String EXTRA_FUNCTION_MTP = "EXTRA_FUNCTION_MTP";
    private static final String EXTRA_FUNCTION_NCM = "EXTRA_FUNCTION_NCM";
    private static final String EXTRA_FUNCTION_NONE = "EXTRA_FUNCTION_NONE";
    private static final String EXTRA_FUNCTION_PTP = "EXTRA_FUNCTION_PTP";
    private static final String EXTRA_FUNCTION_RNDIS = "EXTRA_FUNCTION_RNDIS";
    private static final String EXTRA_PACKAGE_NAME = "EXTRA_PACKAGE_NAME";
    private static final String EXTRA_USB_DEVICE = "EXTRA_USB_DEVICE";
    public static Long FUNCTION_ACCESSORY = null;
    public static Long FUNCTION_ADB = null;
    public static Long FUNCTION_AUDIO_SOURCE = null;
    public static Long FUNCTION_MIDI = null;
    public static Long FUNCTION_MTP = null;
    public static Long FUNCTION_NCM = null;
    public static Long FUNCTION_NONE = null;
    public static Long FUNCTION_PTP = null;
    public static Long FUNCTION_RNDIS = null;
    private static final String KEY_RESULT = "result";
    private static final String TAG = "UsbManagerNative";

    private UsbManagerNative() {
    }

    static {
        initFunctions();
    }

    @Permission(authStr = "setCurrentFunctions", type = "epona")
    @RequiresApi(api = 28)
    @System
    public static void setCurrentFunctions(Long l) throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            Epona.newCall(new Request.Builder().setComponentName(COMPONENT_NAME).setActionName("setCurrentFunctions").withLong(EXTRA_FUNCTION, l.longValue()).build()).execute();
        } else if (VersionUtils.isP()) {
            ((UsbManager) Epona.getContext().getSystemService("usb")).setCurrentFunctions(l.longValue());
        } else {
            throw new UnSupportedApiVersionException("not supported before P");
        }
    }

    @Permission(authStr = "grantPermission", type = "epona")
    @RequiresApi(api = 28)
    @System
    public static void grantPermission(UsbDevice usbDevice, String str) throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            Epona.newCall(new Request.Builder().setComponentName(COMPONENT_NAME).setActionName("grantPermission").withParcelable(EXTRA_USB_DEVICE, usbDevice).withString(EXTRA_PACKAGE_NAME, str).build()).execute();
        } else if (VersionUtils.isP()) {
            ((UsbManager) Epona.getContext().getSystemService("usb")).grantPermission(usbDevice, str);
        } else {
            throw new UnSupportedApiVersionException("not supported before P");
        }
    }

    @Permission(authStr = "initFunctions", type = "epona")
    @RequiresApi(api = 28)
    @System
    private static void initFunctions() {
        if (VersionUtils.isR()) {
            Response execute = Epona.newCall(new Request.Builder().setComponentName(COMPONENT_NAME).setActionName("initFunctions").build()).execute();
            if (execute.isSuccessful()) {
                Bundle bundle = execute.getBundle();
                if (bundle != null) {
                    FUNCTION_NONE = Long.valueOf(bundle.getLong(EXTRA_FUNCTION_NONE));
                    FUNCTION_MTP = Long.valueOf(bundle.getLong(EXTRA_FUNCTION_MTP));
                    FUNCTION_PTP = Long.valueOf(bundle.getLong(EXTRA_FUNCTION_PTP));
                    FUNCTION_RNDIS = Long.valueOf(bundle.getLong(EXTRA_FUNCTION_RNDIS));
                    FUNCTION_MIDI = Long.valueOf(bundle.getLong(EXTRA_FUNCTION_MIDI));
                    FUNCTION_ACCESSORY = Long.valueOf(bundle.getLong(EXTRA_FUNCTION_ACCESSORY));
                    FUNCTION_AUDIO_SOURCE = Long.valueOf(bundle.getLong(EXTRA_FUNCTION_AUDIO_SOURCE));
                    FUNCTION_ADB = Long.valueOf(bundle.getLong(EXTRA_FUNCTION_ADB));
                    FUNCTION_NCM = Long.valueOf(bundle.getLong(EXTRA_FUNCTION_NCM));
                    return;
                }
                Log.e(TAG, "[initFunctions] failed! initFunctions result is null!");
            }
        } else if (VersionUtils.isP()) {
            FUNCTION_NONE = 0L;
            FUNCTION_MTP = 4L;
            FUNCTION_PTP = 16L;
            FUNCTION_RNDIS = 32L;
            FUNCTION_MIDI = 8L;
            FUNCTION_ACCESSORY = 2L;
            FUNCTION_AUDIO_SOURCE = 64L;
            FUNCTION_ADB = 1L;
            FUNCTION_NCM = 1024L;
        } else {
            Log.e(TAG, "[initFunctions] failed! not supported before P!");
        }
    }
}

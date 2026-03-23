package com.oplus.compat.nfc;

import android.content.Context;
import android.nfc.NfcAdapter;
import android.util.Log;
import androidx.annotation.RequiresApi;
import com.oplus.compat.annotation.Grey;
import com.oplus.compat.annotation.Oem;
import com.oplus.compat.annotation.Permission;
import com.oplus.compat.annotation.System;
import com.oplus.compat.utils.util.UnSupportedApiVersionException;
import com.oplus.compat.utils.util.VersionUtils;
import com.oplus.compatsdk.annotation.OplusCompatibleMethod;
import com.oplus.epona.Epona;
import com.oplus.epona.Request;
import com.oplus.epona.Response;
import com.oplus.utils.reflect.RefClass;
import com.oplus.utils.reflect.RefMethod;
/* loaded from: classes.dex */
public class NfcAdapterNative {
    private static final String ACTION_DISABLE = "disable";
    private static final String ACTION_ENABLE = "enable";
    private static final String COMPONENT_NAME = "android.nfc.NfcAdapter";
    private static final String RESULT = "result";

    @OplusCompatibleMethod
    private static Object disableQCompat(Context context) {
        return null;
    }

    @OplusCompatibleMethod
    private static Object enableQCompat(Context context) {
        return null;
    }

    private NfcAdapterNative() {
    }

    /* loaded from: classes.dex */
    private static class ReflectInfo {
        public static RefMethod<Boolean> setABFListenTechMask;

        private ReflectInfo() {
        }

        static {
            RefClass.load(ReflectInfo.class, NfcAdapter.class);
        }
    }

    @Grey
    @RequiresApi(api = 26)
    public static NfcAdapter getNfcAdapter(Context context) throws UnSupportedApiVersionException {
        if (VersionUtils.isO()) {
            return NfcAdapter.getNfcAdapter(context);
        }
        throw new UnSupportedApiVersionException("not supported before O");
    }

    @Grey
    @RequiresApi(api = 26)
    @System
    public static boolean disable(NfcAdapter nfcAdapter, boolean z) throws UnSupportedApiVersionException {
        if (VersionUtils.isO()) {
            return nfcAdapter.disable(z);
        }
        throw new UnSupportedApiVersionException("not supported before O");
    }

    @Oem
    @RequiresApi(api = 28)
    public static boolean setABFListenTechMask(NfcAdapter nfcAdapter, int i) throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            throw new UnSupportedApiVersionException("not supported in R, because of not exist");
        }
        if (VersionUtils.isP()) {
            return ReflectInfo.setABFListenTechMask.call(nfcAdapter, Integer.valueOf(i)).booleanValue();
        }
        throw new UnSupportedApiVersionException("not supported before O");
    }

    @Permission(authStr = "NfcAdapter", type = "epona")
    @Grey
    @RequiresApi(api = 26)
    @System
    public static boolean enable() throws UnSupportedApiVersionException {
        if (!VersionUtils.appPlatformExists()) {
            if (VersionUtils.isQ()) {
                return NfcAdapter.getNfcAdapter(Epona.getContext()).enable();
            }
            throw new UnSupportedApiVersionException("not supported before O");
        } else if (VersionUtils.isR()) {
            Response execute = Epona.newCall(new Request.Builder().setComponentName(COMPONENT_NAME).setActionName(ACTION_ENABLE).build()).execute();
            if (execute.isSuccessful()) {
                return execute.getBundle().getBoolean(RESULT);
            }
            Log.e("NfcAdapterNative", execute.getMessage());
            return false;
        } else if (VersionUtils.isQ()) {
            return ((Boolean) enableQCompat(Epona.getContext())).booleanValue();
        } else {
            if (VersionUtils.isO()) {
                return NfcAdapter.getNfcAdapter(Epona.getContext()).enable();
            }
            throw new UnSupportedApiVersionException("not supported before O");
        }
    }

    @Permission(authStr = "NfcAdapter", type = "epona")
    @Grey
    @RequiresApi(api = 26)
    @System
    public static boolean disable() throws UnSupportedApiVersionException {
        if (!VersionUtils.appPlatformExists()) {
            if (VersionUtils.isQ()) {
                return NfcAdapter.getNfcAdapter(Epona.getContext()).disable();
            }
            throw new UnSupportedApiVersionException("not supported before O");
        } else if (VersionUtils.isR()) {
            Response execute = Epona.newCall(new Request.Builder().setComponentName(COMPONENT_NAME).setActionName(ACTION_DISABLE).build()).execute();
            if (execute.isSuccessful()) {
                return execute.getBundle().getBoolean(RESULT);
            }
            Log.e("NfcAdapterNative", execute.getMessage());
            return false;
        } else if (VersionUtils.isQ()) {
            return ((Boolean) disableQCompat(Epona.getContext())).booleanValue();
        } else {
            if (VersionUtils.isO()) {
                return NfcAdapter.getNfcAdapter(Epona.getContext()).disable();
            }
            throw new UnSupportedApiVersionException("not supported before O");
        }
    }
}

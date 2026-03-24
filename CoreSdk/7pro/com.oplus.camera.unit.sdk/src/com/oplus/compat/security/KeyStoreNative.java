package com.oplus.compat.security;

import android.security.KeyStore;
import androidx.annotation.RequiresApi;
import com.oplus.compat.annotation.Blocked;
import com.oplus.compat.annotation.Permission;
import com.oplus.compat.annotation.System;
import com.oplus.compat.utils.util.UnSupportedApiVersionException;
import com.oplus.compat.utils.util.VersionUtils;
import com.oplus.compatsdk.annotation.OplusCompatibleMethod;
import com.oplus.epona.Epona;
import com.oplus.epona.Request;
import com.oplus.epona.Response;
import com.oplus.ocs.camera.common.util.ApsConstant;
import com.oplus.utils.reflect.RefClass;
import com.oplus.utils.reflect.RefMethod;
/* loaded from: classes.dex */
public class KeyStoreNative {
    private static final String ACTION_GET_GATE_KEEPER_AUTH_TOKEN = "getGateKeeperAuthToken";
    private static final String NAME = "android.security.KeyStore";
    private static final String RESULT = "result";

    @OplusCompatibleMethod
    private static Object getGateKeeperAuthTokenQCompat() {
        return null;
    }

    /* loaded from: classes.dex */
    private static class ReflectInfo {
        private static RefMethod<byte[]> getGateKeeperAuthToken;

        private ReflectInfo() {
        }

        static {
            RefClass.load(ReflectInfo.class, KeyStore.class);
        }
    }

    private KeyStoreNative() {
    }

    @Permission(authStr = ACTION_GET_GATE_KEEPER_AUTH_TOKEN, type = "epona")
    @Blocked
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_MULTI_FRAME_DENOISE_HDR)
    @System
    public static byte[] getGateKeeperAuthToken() throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            Response execute = Epona.newCall(new Request.Builder().setComponentName(NAME).setActionName(ACTION_GET_GATE_KEEPER_AUTH_TOKEN).build()).execute();
            if (execute.isSuccessful()) {
                return execute.getBundle().getByteArray(RESULT);
            }
            return null;
        } else if (VersionUtils.isQ()) {
            return (byte[]) getGateKeeperAuthTokenQCompat();
        } else {
            if (VersionUtils.isN()) {
                return (byte[]) ReflectInfo.getGateKeeperAuthToken.call(KeyStore.getInstance(), new Object[0]);
            }
            throw new UnSupportedApiVersionException("not supported before N");
        }
    }
}

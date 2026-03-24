package com.oplus.compat.cryptoeng;

import android.os.Bundle;
import androidx.annotation.RequiresApi;
import com.oplus.compat.annotation.Oem;
import com.oplus.compat.annotation.Permission;
import com.oplus.compat.annotation.System;
import com.oplus.compat.utils.util.UnSupportedApiVersionException;
import com.oplus.compat.utils.util.VersionUtils;
import com.oplus.compatsdk.annotation.OplusCompatibleMethod;
import com.oplus.epona.Epona;
import com.oplus.epona.Request;
import com.oplus.epona.Response;
/* loaded from: classes.dex */
public class CryptoengNative {
    private static final String COMPONENT_NAME;
    private static final String PARAMS_KEY = "PARAMS_KEY";
    private static final String RESULT_KEY = "result";
    private static final String TAG = "CryptoengNative";

    @OplusCompatibleMethod
    private static Object cryptoengInvokeCommand(byte[] bArr) {
        return null;
    }

    @OplusCompatibleMethod
    private static Object initComponentName() {
        return null;
    }

    private CryptoengNative() {
    }

    static {
        if (VersionUtils.isOsVersion11_3()) {
            COMPONENT_NAME = "com.oplus.appplatform.CryptoengProvider";
        } else {
            COMPONENT_NAME = (String) initComponentName();
        }
    }

    @Permission(authStr = "CryptoengProvider", type = "epona")
    @Oem
    @RequiresApi(api = 28)
    @System
    public static byte[] processCmdV2(byte[] bArr) throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            Request build = new Request.Builder().setComponentName(COMPONENT_NAME).build();
            Bundle bundle = new Bundle();
            bundle.putByteArray(PARAMS_KEY, bArr);
            build.putBundle(bundle);
            Response execute = Epona.newCall(build).execute();
            if (execute.isSuccessful()) {
                return execute.getBundle().getByteArray(RESULT_KEY);
            }
            return null;
        } else if (VersionUtils.isP()) {
            return (byte[]) cryptoengInvokeCommand(bArr);
        } else {
            throw new UnSupportedApiVersionException();
        }
    }
}

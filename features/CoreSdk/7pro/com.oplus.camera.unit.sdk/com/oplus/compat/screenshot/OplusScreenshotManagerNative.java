package com.oplus.compat.screenshot;

import android.os.Bundle;
import androidx.annotation.RequiresApi;
import com.oplus.compat.annotation.Grey;
import com.oplus.compat.annotation.Permission;
import com.oplus.compat.annotation.System;
import com.oplus.compat.utils.util.UnSupportedApiVersionException;
import com.oplus.compat.utils.util.VersionUtils;
import com.oplus.compatsdk.annotation.OplusCompatibleMethod;
import com.oplus.epona.Epona;
import com.oplus.epona.Request;
/* loaded from: classes.dex */
public class OplusScreenshotManagerNative {
    private static final String COMPONENT_NAME = getComponentName();

    @OplusCompatibleMethod
    private static Object getComponentNameForCompat() {
        return null;
    }

    private OplusScreenshotManagerNative() {
    }

    private static String getComponentName() {
        return VersionUtils.isOsVersion11_3() ? "com.oplus.screenshot.OplusScreenshotManager" : (String) getComponentNameForCompat();
    }

    @Permission(authStr = "takeScreenshot", type = "epona")
    @Grey
    @RequiresApi(api = 30)
    @System
    public static void takeScreenshot(Bundle bundle) throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            Epona.newCall(new Request.Builder().setComponentName(COMPONENT_NAME).setActionName("takeScreenshot").withBundle("extras", bundle).build()).execute();
            return;
        }
        throw new UnSupportedApiVersionException("not supported before R");
    }
}

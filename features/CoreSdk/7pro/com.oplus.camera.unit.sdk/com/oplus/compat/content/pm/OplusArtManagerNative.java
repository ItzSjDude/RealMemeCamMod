package com.oplus.compat.content.pm;

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
import com.oplus.ocs.camera.common.util.ApsConstant;
import com.oplus.utils.reflect.RefClass;
import com.oplus.utils.reflect.RefMethod;
/* loaded from: classes.dex */
public class OplusArtManagerNative {
    private static final String COMPONENT_NAME = getComponentName();

    @OplusCompatibleMethod
    private static Object getComponentNameForCompat() {
        return null;
    }

    private OplusArtManagerNative() {
    }

    /* loaded from: classes.dex */
    private static class ReflectInfo {
        private static RefMethod<Boolean> runSnapshotApplicationProfile;

        private ReflectInfo() {
        }

        static {
            RefClass.load(ReflectInfo.class, OplusArtManagerNative.COMPONENT_NAME);
        }
    }

    private static String getComponentName() {
        return VersionUtils.isOsVersion11_3() ? "android.content.pm.dex.OplusArtManager" : (String) getComponentNameForCompat();
    }

    @Permission(authStr = "runSnapshotApplicationProfile", type = "epona")
    @Oem
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    @System
    public static boolean runSnapshotApplicationProfile(String str, String str2) throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            Response execute = Epona.newCall(new Request.Builder().setComponentName(COMPONENT_NAME).setActionName("runSnapshotApplicationProfile").withString("packageName", str).withString("outputProfilePath", str2).build()).execute();
            if (execute.isSuccessful()) {
                return execute.getBundle().getBoolean("result");
            }
            return false;
        } else if (VersionUtils.isQ()) {
            return ((Boolean) ReflectInfo.runSnapshotApplicationProfile.call(null, str, Epona.getContext().getPackageName(), str2)).booleanValue();
        } else {
            throw new UnSupportedApiVersionException("not supported before Q");
        }
    }
}

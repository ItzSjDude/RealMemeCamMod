package com.oplus.compat.splitscreen;

import android.util.Log;
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
import com.oplus.ocs.camera.common.util.CameraConstant;
import com.oplus.utils.reflect.RefClass;
import com.oplus.utils.reflect.RefMethod;
/* loaded from: classes.dex */
public class OplusSplitScreenManagerNative {
    private static final String COMPONENT_NAME = getComponentName();
    private static final String RESULT = "result";
    private static final String TAG = "OplusSplitScreenManagerNative";

    @OplusCompatibleMethod
    private static Object getComponentNameForCompat() {
        return null;
    }

    private OplusSplitScreenManagerNative() {
    }

    /* loaded from: classes.dex */
    private static class ReflectInfo {
        public static RefMethod<Object> getInstance;

        private ReflectInfo() {
        }

        static {
            RefClass.load(ReflectInfo.class, OplusSplitScreenManagerNative.COMPONENT_NAME);
        }
    }

    private static String getComponentName() {
        return VersionUtils.isOsVersion11_3() ? "com.oplus.splitscreen.OplusSplitScreenManager" : (String) getComponentNameForCompat();
    }

    @Permission(authStr = "splitScreenForTopApp", type = "epona")
    @Oem
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    @System
    public static boolean splitScreenForTopApp(int i) throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            Response execute = Epona.newCall(new Request.Builder().setComponentName(COMPONENT_NAME).setActionName("splitScreenForTopApp").withInt(CameraConstant.TiltShiftParamKeys.TYPE, i).build()).execute();
            if (execute.isSuccessful()) {
                return execute.getBundle().getBoolean(RESULT);
            }
        } else if (VersionUtils.isQ()) {
            try {
                Object call = ReflectInfo.getInstance.call(null, new Object[0]);
                return ((Boolean) call.getClass().getMethod("splitScreenForTopApp", Integer.TYPE).invoke(call, Integer.valueOf(i))).booleanValue();
            } catch (ReflectiveOperationException e) {
                if (e.getCause() instanceof RuntimeException) {
                    throw ((RuntimeException) e.getCause());
                }
                Log.e(TAG, e.getCause().toString());
            }
        } else {
            throw new UnSupportedApiVersionException("not supported before Q");
        }
        return false;
    }
}

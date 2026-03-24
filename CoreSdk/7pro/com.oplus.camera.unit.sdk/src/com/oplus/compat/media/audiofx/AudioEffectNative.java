package com.oplus.compat.media.audiofx;

import android.util.Log;
import androidx.annotation.RequiresApi;
import com.oplus.compat.annotation.Blocked;
import com.oplus.compat.annotation.Permission;
import com.oplus.compat.annotation.System;
import com.oplus.compat.utils.util.UnSupportedApiVersionException;
import com.oplus.compat.utils.util.VersionUtils;
import com.oplus.epona.Epona;
import com.oplus.epona.Request;
import com.oplus.epona.Response;
import com.oplus.ocs.camera.common.util.CameraConstant;
import java.util.UUID;
/* loaded from: classes.dex */
public class AudioEffectNative {
    private static final String COMPONENT_NAME = "android.media.audiofx.AudioEffect";
    private static final String RESULT = "result";
    private static final String TAG = "AudioEffectNative";

    @Permission(authStr = "setParameter", type = "epona")
    @Blocked
    @RequiresApi(api = 30)
    @System
    public static int setParameter(int i, int i2) throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            Response execute = Epona.newCall(new Request.Builder().setComponentName(COMPONENT_NAME).setActionName("setParameter").withInt("param", i).withInt("value", i2).build()).execute();
            if (execute.isSuccessful()) {
                return execute.getBundle().getInt(RESULT);
            }
            return -1;
        }
        throw new UnSupportedApiVersionException("not supported before R");
    }

    @Permission(authStr = "setEnabled", type = "epona")
    @RequiresApi(api = 30)
    @System
    public static int setEnabled(UUID uuid, UUID uuid2, int i, int i2, Boolean bool) throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            Response execute = Epona.newCall(new Request.Builder().setComponentName(COMPONENT_NAME).setActionName("setEnabled").withSerializable(CameraConstant.TiltShiftParamKeys.TYPE, uuid).withSerializable("uuid", uuid2).withInt("priority", i).withInt("audioSession", i2).withBoolean("enabled", bool.booleanValue()).build()).execute();
            if (execute.isSuccessful()) {
                return execute.getBundle().getInt(RESULT);
            }
            return -1;
        }
        throw new UnSupportedApiVersionException("not supported before R");
    }

    @Permission(authStr = "release", type = "epona")
    @RequiresApi(api = 30)
    @System
    public static void release() throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            Response execute = Epona.newCall(new Request.Builder().setComponentName(COMPONENT_NAME).setActionName("release").build()).execute();
            if (execute.isSuccessful()) {
                return;
            }
            Log.e(TAG, "response code error:" + execute.getMessage());
            return;
        }
        throw new UnSupportedApiVersionException("not supported before R");
    }
}

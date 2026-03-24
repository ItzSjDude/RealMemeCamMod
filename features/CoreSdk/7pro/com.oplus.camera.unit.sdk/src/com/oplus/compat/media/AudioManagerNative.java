package com.oplus.compat.media;

import android.media.AudioManager;
import android.os.Bundle;
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
import com.oplus.exif.OplusExifTag;
import com.oplus.ocs.camera.common.util.ApsConstant;
import com.oplus.utils.reflect.RefClass;
import com.oplus.utils.reflect.RefMethod;
/* loaded from: classes.dex */
public class AudioManagerNative {
    private static final String ACTION_SET_RINGER_MODE_INTERNAL = "setRingerModeInternal";
    @Grey
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public static int FLAG_FROM_KEY = 0;
    private static final String NAME = "android.media.AudioManager";
    private static final String RINGER_MODE = "ringerMode";
    @Grey
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public static int STREAM_SYSTEM_ENFORCED = 0;
    private static final String TAG = "AudioManagerNative";
    @Grey
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public static String VOLUME_CHANGED_ACTION;

    @OplusCompatibleMethod
    private static Object getRingerModeInternalCompat(AudioManager audioManager) {
        return null;
    }

    @OplusCompatibleMethod
    private static void setRingerModeInternalCompat(AudioManager audioManager, int i) {
    }

    /* loaded from: classes.dex */
    private static class ReflectInfo {
        private static RefMethod<Integer> getDevicesForStream;
        private static RefMethod<Integer> getRingerModeInternal;

        private ReflectInfo() {
        }

        static {
            RefClass.load(ReflectInfo.class, AudioManager.class);
        }
    }

    static {
        try {
            if (VersionUtils.isQ()) {
                STREAM_SYSTEM_ENFORCED = 7;
                VOLUME_CHANGED_ACTION = "android.media.VOLUME_CHANGED_ACTION";
                FLAG_FROM_KEY = OplusExifTag.EXIF_TAG_ENHANCE_TEXT;
            }
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
        }
    }

    private AudioManagerNative() {
    }

    @Permission(authStr = ACTION_SET_RINGER_MODE_INTERNAL, type = "epona")
    @Grey
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    @System
    public static void setRingerModeInternal(int i) throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            Request build = new Request.Builder().setComponentName(NAME).setActionName(ACTION_SET_RINGER_MODE_INTERNAL).build();
            Bundle bundle = new Bundle();
            bundle.putInt(RINGER_MODE, i);
            build.putBundle(bundle);
            Response execute = Epona.newCall(build).execute();
            if (execute.isSuccessful()) {
                return;
            }
            Log.e(TAG, "response code error:" + execute.getCode());
        } else if (VersionUtils.isQ()) {
            try {
                setRingerModeInternalCompat((AudioManager) Epona.getContext().getSystemService("audio"), i);
            } catch (Throwable th) {
                Log.e(TAG, th.toString());
            }
        } else {
            throw new UnSupportedApiVersionException("not supported before Q");
        }
    }

    @Grey
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public static int getRingerModeInternal(AudioManager audioManager) throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            return ((Integer) ReflectInfo.getRingerModeInternal.call(audioManager, new Object[0])).intValue();
        }
        if (VersionUtils.isQ()) {
            return ((Integer) getRingerModeInternalCompat(audioManager)).intValue();
        }
        throw new UnSupportedApiVersionException("not supported before Q");
    }

    @Oem
    @RequiresApi(api = 30)
    public static int getDevicesForStream(AudioManager audioManager, int i) throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            return ((Integer) ReflectInfo.getDevicesForStream.call(audioManager, Integer.valueOf(i))).intValue();
        }
        throw new UnSupportedApiVersionException("not supported before R");
    }
}

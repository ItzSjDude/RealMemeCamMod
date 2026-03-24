package com.oplus.compat.os;

import android.media.AudioAttributes;
import android.os.VibrationEffect;
import android.os.Vibrator;
import androidx.annotation.RequiresApi;
import com.oplus.compat.annotation.Oem;
import com.oplus.compat.annotation.Permission;
import com.oplus.compat.annotation.System;
import com.oplus.compat.utils.util.UnSupportedApiVersionException;
import com.oplus.compat.utils.util.VersionUtils;
import com.oplus.compatsdk.annotation.OplusCompatibleMethod;
import com.oplus.epona.Call;
import com.oplus.epona.Epona;
import com.oplus.epona.Request;
import com.oplus.epona.Response;
import com.oplus.ocs.camera.common.util.ApsConstant;
import com.oplus.os.OplusVibratorConstant;
/* loaded from: classes.dex */
public class VibratorNative {
    private static final String COMPONENT_NAME = "android.os.Vibrator";
    private static final String TAG = "VibratorNative";
    @Oem
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public static int WEAK_AMPLITUDE = ((Integer) getWeakAmplitudeCompat()).intValue();
    @Oem
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public static int MIDDLE_AMPLITUDE = ((Integer) getMiddleAmplitudeCompat()).intValue();
    @Oem
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public static int STRONG_AMPLITUDE = ((Integer) getStrongAmplitudeCompat()).intValue();
    @Oem
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public static long RAPID_WEAK_ONESHOT_TIME = ((Long) getRapidWeakOneshotTimeCompat()).longValue();
    @Oem
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public static long RAPID_MIDDLE_ONESHOT_TIME = ((Long) getRapidMiddleOneshotTimeCompat()).longValue();
    @Oem
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public static long LONG_MIDDLE_ONESHOT_TIME = ((Long) getLongMiddleOneshotTimeCompat()).longValue();
    @Oem
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public static long LONG_STRONG_ONESHOT_TIME = ((Long) getLongStrongOneshotTimeCompat()).longValue();
    @Oem
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public static long[] RAPID_MIDDLE_WAVEFORM_TIME = (long[]) getRapidMiddleWaveformTimeCompat();
    @Oem
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public static int[] RAPID_MIDDLE_WAVEFORM_AMPLITUDE = (int[]) getRapidMiddleWaveformAmplitudeCompat();
    @Oem
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public static long[] RAPID_STRONG_WAVEFORM_TIME = (long[]) getRapidStrongWaveformTimeCompat();
    @Oem
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public static int[] RAPID_STRONG_WAVEFORM_AMPLITUDE = (int[]) getRapidStrongWaveformAmplitudeCompat();

    @OplusCompatibleMethod
    private static void linerMotorVibrateQCompat(Vibrator vibrator, VibrationEffect vibrationEffect) {
    }

    @OplusCompatibleMethod
    private static void linerMotorVibrateQCompat(Vibrator vibrator, VibrationEffect vibrationEffect, AudioAttributes audioAttributes) {
    }

    @OplusCompatibleMethod
    private static Object getWeakAmplitudeCompat() {
        return VersionUtils.isOsVersion11_3() ? 100 : null;
    }

    @OplusCompatibleMethod
    private static Object getMiddleAmplitudeCompat() {
        return VersionUtils.isOsVersion11_3() ? 175 : null;
    }

    @OplusCompatibleMethod
    private static Object getStrongAmplitudeCompat() {
        return VersionUtils.isOsVersion11_3() ? 250 : null;
    }

    @OplusCompatibleMethod
    private static Object getRapidWeakOneshotTimeCompat() {
        return VersionUtils.isOsVersion11_3() ? 25L : null;
    }

    @OplusCompatibleMethod
    private static Object getRapidMiddleOneshotTimeCompat() {
        return VersionUtils.isOsVersion11_3() ? 50L : null;
    }

    @OplusCompatibleMethod
    private static Object getLongMiddleOneshotTimeCompat() {
        return VersionUtils.isOsVersion11_3() ? 150L : null;
    }

    @OplusCompatibleMethod
    private static Object getLongStrongOneshotTimeCompat() {
        return VersionUtils.isOsVersion11_3() ? 400L : null;
    }

    @OplusCompatibleMethod
    private static Object getRapidMiddleWaveformTimeCompat() {
        if (VersionUtils.isOsVersion11_3()) {
            return OplusVibratorConstant.RAPID_MIDDLE_WAVEFORM_TIME;
        }
        return null;
    }

    @OplusCompatibleMethod
    private static Object getRapidMiddleWaveformAmplitudeCompat() {
        if (VersionUtils.isOsVersion11_3()) {
            return OplusVibratorConstant.RAPID_MIDDLE_WAVEFORM_AMPLITUDE;
        }
        return null;
    }

    @OplusCompatibleMethod
    private static Object getRapidStrongWaveformTimeCompat() {
        if (VersionUtils.isOsVersion11_3()) {
            return OplusVibratorConstant.RAPID_STRONG_WAVEFORM_TIME;
        }
        return null;
    }

    @OplusCompatibleMethod
    private static Object getRapidStrongWaveformAmplitudeCompat() {
        if (VersionUtils.isOsVersion11_3()) {
            return OplusVibratorConstant.RAPID_STRONG_WAVEFORM_AMPLITUDE;
        }
        return null;
    }

    private VibratorNative() {
    }

    @Oem
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public static void linerMotorVibrate(Vibrator vibrator, VibrationEffect vibrationEffect) throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            throw new UnSupportedApiVersionException("not supported in R because of not exist");
        }
        if (VersionUtils.isQ()) {
            linerMotorVibrateQCompat(vibrator, vibrationEffect);
            return;
        }
        throw new UnSupportedApiVersionException("not supported before Q");
    }

    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    private static void linerMotorVibrate(Vibrator vibrator, VibrationEffect vibrationEffect, AudioAttributes audioAttributes) throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            throw new UnSupportedApiVersionException("not supported in R because of not exist");
        }
        if (VersionUtils.isQ()) {
            linerMotorVibrateQCompat(vibrator, vibrationEffect, audioAttributes);
            return;
        }
        throw new UnSupportedApiVersionException("not supported before Q");
    }

    @Permission(authStr = "addVibratorStateListener", type = "epona")
    @RequiresApi(api = 30)
    @System
    public static void addVibratorStateListener(final OnVibratorStateChangedListenerNative onVibratorStateChangedListenerNative) throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            Request build = new Request.Builder().setComponentName(COMPONENT_NAME).setActionName("addVibratorStateListener").build();
            Epona.newCall(build).asyncExecute(new Call.Callback() { // from class: com.oplus.compat.os.VibratorNative.1
                @Override // com.oplus.epona.Call.Callback
                public void onReceive(Response response) {
                    if (response.isSuccessful()) {
                        OnVibratorStateChangedListenerNative.this.onVibratorStateChanged(response.getBundle().getBoolean("isVibrating"));
                    }
                }
            });
            return;
        }
        throw new UnSupportedApiVersionException("not supported before R");
    }

    @Permission(authStr = "removeVibratorStateListener", type = "epona")
    @RequiresApi(api = 30)
    @System
    public static void removeVibratorStateListener() throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            Epona.newCall(new Request.Builder().setComponentName(COMPONENT_NAME).setActionName("removeVibratorStateListener").build()).asyncExecute(null);
            return;
        }
        throw new UnSupportedApiVersionException("not supported before R");
    }

    @Permission(authStr = "isVibrating", type = "epona")
    @RequiresApi(api = 30)
    @System
    public static boolean isVibrating() throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            Response execute = Epona.newCall(new Request.Builder().setComponentName(COMPONENT_NAME).setActionName("isVibrating").build()).execute();
            if (execute.isSuccessful()) {
                return execute.getBundle().getBoolean("isVibrating");
            }
            return false;
        }
        throw new UnSupportedApiVersionException("not supported before R");
    }
}

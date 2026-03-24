package com.oplus.inner.os;

import android.media.AudioAttributes;
import android.os.VibrationEffect;
import android.os.Vibrator;
import android.util.Log;
import com.oplus.os.OplusVibratorConstant;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* loaded from: classes.dex */
public class VibratorWrapper {
    public static final long LONG_MIDDLE_ONESHOT_TIME = 150;
    public static final long LONG_STRONG_ONESHOT_TIME = 400;
    public static final int MIDDLE_AMPLITUDE = 175;
    public static final long RAPID_MIDDLE_ONESHOT_TIME = 50;
    public static final long RAPID_WEAK_ONESHOT_TIME = 25;
    public static final int STRONG_AMPLITUDE = 250;
    private static final String TAG = "VibratorWrapper";
    public static final int WEAK_AMPLITUDE = 100;
    public static final long[] RAPID_MIDDLE_WAVEFORM_TIME = OplusVibratorConstant.RAPID_MIDDLE_WAVEFORM_TIME;
    public static final int[] RAPID_MIDDLE_WAVEFORM_AMPLITUDE = OplusVibratorConstant.RAPID_MIDDLE_WAVEFORM_AMPLITUDE;
    public static final long[] RAPID_STRONG_WAVEFORM_TIME = OplusVibratorConstant.RAPID_STRONG_WAVEFORM_TIME;
    public static final int[] RAPID_STRONG_WAVEFORM_AMPLITUDE = OplusVibratorConstant.RAPID_STRONG_WAVEFORM_AMPLITUDE;

    private VibratorWrapper() {
    }

    public static void linerMotorVibrate(Vibrator vibrator, VibrationEffect effect, AudioAttributes attributes) throws IllegalAccessException, NoSuchMethodException, ClassNotFoundException, SecurityException, IllegalArgumentException, InvocationTargetException {
        try {
            Class<?> cls = Class.forName("android.os.Vibrator");
            Method md = cls.getDeclaredMethod("linerMotorVibrate", VibrationEffect.class, AudioAttributes.class);
            md.invoke(vibrator, effect, attributes);
        } catch (ClassNotFoundException e) {
            Log.i(TAG, "ClassNotFoundException " + e.getStackTrace().toString());
        } catch (IllegalAccessException e2) {
            Log.i(TAG, "IllegalAccessException " + e2.getStackTrace().toString());
        } catch (NoSuchMethodException e3) {
            Log.i(TAG, "NoSuchMethodException " + e3.getStackTrace().toString());
        } catch (InvocationTargetException e4) {
            Log.i(TAG, "InvocationTargetException " + e4.getStackTrace().toString());
        }
    }
}

package com.oppo.inner.os;

import android.media.AudioAttributes;
import android.os.VibrationEffect;
import android.os.Vibrator;
import android.util.Log;
import com.oplus.os.OplusVibratorConstant;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import com.oplus.inner.os.VibratorWrapper;

public class VibratorWrapper {
    public static void linerMotorVibrate(Vibrator vibrator, VibrationEffect effect, AudioAttributes attributes) {
        VibratorWrapper.linerMotorVibrate(vibrator, effect, attributes);
    }

}
package android.os;

import android.media.AudioAttributes;

/* loaded from: classes3.dex */
public interface IVibratorExt {
    default boolean vibrate(VibrationEffect vibe) {
        return false;
    }

    default boolean vibrate(VibrationEffect vibe, AudioAttributes attributes) {
        return false;
    }
}

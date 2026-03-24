package android.os;

/* loaded from: classes3.dex */
public interface IVibrationEffectExt {
    default boolean getVibratorStatus() {
        return false;
    }

    default VibrationEffect createExtendedEffect(Parcel in) {
        return null;
    }
}

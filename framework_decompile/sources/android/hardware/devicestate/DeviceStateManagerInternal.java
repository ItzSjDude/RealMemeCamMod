package android.hardware.devicestate;

/* loaded from: classes.dex */
public abstract class DeviceStateManagerInternal {
    public abstract void enableDeviceStateAfterBoot(boolean z);

    public abstract int[] getSupportedStateIdentifiers();

    public abstract void notifyKeyguardShowOrSleep(boolean z);
}

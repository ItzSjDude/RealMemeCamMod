package com.anc.humansdk.retain;
/* loaded from: classes.dex */
public enum SdkPowerMode {
    ANC_HUM_POWER_DEFAULT,
    ANC_HUM_POWER_LOW,
    ANC_HUM_POWER_MEDIUM,
    ANC_HUM_POWER_HIGH;

    public static SdkPowerMode getObject(int i) {
        try {
            return values()[i];
        } catch (IndexOutOfBoundsException unused) {
            throw new IllegalArgumentException("Invalid sdk power state: " + i);
        }
    }

    public int getValue() {
        return ordinal();
    }
}

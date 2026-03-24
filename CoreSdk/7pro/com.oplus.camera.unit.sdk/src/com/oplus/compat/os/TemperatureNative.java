package com.oplus.compat.os;
/* loaded from: classes.dex */
public class TemperatureNative {
    private String mName;
    private float mValue;

    public TemperatureNative(String str, float f) {
        this.mName = str;
        this.mValue = f;
    }

    public String getmName() {
        return this.mName;
    }

    public void setmName(String str) {
        this.mName = str;
    }

    public float getmValue() {
        return this.mValue;
    }

    public void setmValue(float f) {
        this.mValue = f;
    }
}

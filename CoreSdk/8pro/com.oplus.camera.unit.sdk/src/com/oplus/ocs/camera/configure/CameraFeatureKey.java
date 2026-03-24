package com.oplus.ocs.camera.configure;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
public class CameraFeatureKey<T> {
    private final String mKeyName;
    private final Class<T> mType;

    public CameraFeatureKey(@NonNull String str, @NonNull Class<T> cls) {
        this.mKeyName = str;
        this.mType = cls;
    }

    @NonNull
    public Class<T> getType() {
        return this.mType;
    }

    @NonNull
    public String getName() {
        return this.mKeyName;
    }

    public int hashCode() {
        return this.mKeyName.hashCode();
    }

    public boolean equals(@Nullable Object obj) {
        if (obj == null) {
            return false;
        }
        return this.mKeyName.equals(((CameraFeatureKey) obj).mKeyName);
    }

    public String toString() {
        return "mKeyName: " + this.mKeyName + ", mType: " + this.mType;
    }
}

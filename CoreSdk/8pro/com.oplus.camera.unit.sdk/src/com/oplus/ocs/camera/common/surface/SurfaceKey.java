package com.oplus.ocs.camera.common.surface;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
public final class SurfaceKey {
    private static final String SPLITTER = "&";
    private String mCameraType;
    private int mFormat;
    private String mUsage;

    public SurfaceKey(String str, String str2, int i) {
        this.mCameraType = str;
        this.mUsage = str2;
        this.mFormat = i;
    }

    public String getCameraType() {
        return this.mCameraType;
    }

    public String getUsage() {
        return this.mUsage;
    }

    public int getFormat() {
        return this.mFormat;
    }

    public int hashCode() {
        return toString().hashCode();
    }

    public boolean equals(@Nullable Object obj) {
        return obj != null && obj.toString().equals(toString());
    }

    public static String formatKey(String str, String str2, int i) {
        return str + SPLITTER + str2 + SPLITTER + i;
    }

    @NonNull
    public String toString() {
        return formatKey(this.mCameraType, this.mUsage, this.mFormat);
    }
}

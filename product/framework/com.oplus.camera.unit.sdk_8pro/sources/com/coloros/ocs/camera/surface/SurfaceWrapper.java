package com.coloros.ocs.camera.surface;

import android.util.Size;
import android.view.Surface;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
/* loaded from: classes.dex */
public final class SurfaceWrapper {
    private com.oplus.ocs.camera.common.surface.SurfaceWrapper mSurfaceWrapper;

    @Deprecated
    public SurfaceWrapper(Surface surface, String str, @NonNull Size size, int i, int i2) {
        this.mSurfaceWrapper = null;
        this.mSurfaceWrapper = new com.oplus.ocs.camera.common.surface.SurfaceWrapper(surface, str, size, i, i2);
    }

    public SurfaceWrapper(String str, String str2, @NonNull Size size, Size size2, int i, int i2) {
        this.mSurfaceWrapper = null;
        this.mSurfaceWrapper = new com.oplus.ocs.camera.common.surface.SurfaceWrapper(str, str2, size, size2, i, i2);
    }

    public com.oplus.ocs.camera.common.surface.SurfaceWrapper getSurfaceWrapper() {
        return this.mSurfaceWrapper;
    }

    public int hashCode() {
        return this.mSurfaceWrapper.hashCode();
    }

    public boolean equals(@Nullable Object obj) {
        if (obj instanceof SurfaceWrapper) {
            return this.mSurfaceWrapper.equals(((SurfaceWrapper) obj).getSurfaceWrapper());
        }
        return false;
    }

    public Surface getSurface() {
        return this.mSurfaceWrapper.getSurface();
    }

    public void setSurface(@NonNull Surface surface) {
        this.mSurfaceWrapper.setSurface(surface);
    }

    public int getSurfaceType() {
        return this.mSurfaceWrapper.getSurfaceType();
    }

    public void setIntention(long j) {
        this.mSurfaceWrapper.setIntention(j);
    }

    public long getIntention() {
        return this.mSurfaceWrapper.getIntention();
    }

    public void setSurfaceUsage(String str) {
        this.mSurfaceWrapper.setSurfaceUsage(str);
    }

    public String getSurfaceUsage() {
        return this.mSurfaceWrapper.getSurfaceUsage();
    }

    public String getCameraType() {
        return this.mSurfaceWrapper.getCameraType();
    }

    public int getPhysicalCameraId() {
        return this.mSurfaceWrapper.getPhysicalCameraId();
    }

    public void setPhysicalCameraId(int i) {
        this.mSurfaceWrapper.setPhysicalCameraId(i);
    }

    public Size getAppSurfaceSize() {
        return this.mSurfaceWrapper.getAppSurfaceSize();
    }

    public void setHalSurfaceSize(Size size) {
        this.mSurfaceWrapper.setHalSurfaceSize(size);
    }

    public Size getHalSurfaceSize() {
        return this.mSurfaceWrapper.getHalSurfaceSize();
    }

    public int getFormat() {
        return this.mSurfaceWrapper.getFormat();
    }

    public void setFormat(int i) {
        this.mSurfaceWrapper.setFormat(i);
    }

    public static Class getSurfaceClass(int i) {
        return com.oplus.ocs.camera.common.surface.SurfaceWrapper.getSurfaceClass(i);
    }

    public int getMaxImageNumber() {
        return this.mSurfaceWrapper.getMaxImageNumber();
    }

    public void setMaxImageNumber(int i) {
        this.mSurfaceWrapper.setMaxImageNumber(i);
    }

    public Class getSurfaceClass() {
        return this.mSurfaceWrapper.getSurfaceClass();
    }

    public String toString() {
        return this.mSurfaceWrapper.toString();
    }
}

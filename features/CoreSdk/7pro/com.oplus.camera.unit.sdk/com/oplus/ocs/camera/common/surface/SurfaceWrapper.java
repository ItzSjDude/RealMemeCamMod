package com.oplus.ocs.camera.common.surface;

import android.graphics.SurfaceTexture;
import android.media.ImageReader;
import android.util.Size;
import android.view.Surface;
import android.view.SurfaceHolder;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.oplus.ocs.camera.common.util.CameraUnitLog;
/* loaded from: classes.dex */
public final class SurfaceWrapper {
    private static final String TAG = "SurfaceWrapper";
    private Size mAppSurfaceSize;
    private String mCameraType;
    private int mFormat;
    private Size mHalSurfaceSize;
    private long mIntention;
    private int mMaxImageNumber;
    private int mPhysicalCameraId;
    private Surface mSurface;
    private int mSurfaceType;
    private String mSurfaceUsage;

    @Deprecated
    public SurfaceWrapper(Surface surface, String str, @NonNull Size size, int i, int i2) {
        this(str, null, size, null, i, i2);
        this.mSurface = surface;
    }

    public SurfaceWrapper(String str, String str2, @NonNull Size size, Size size2, int i, int i2) {
        this.mSurface = null;
        this.mCameraType = null;
        this.mAppSurfaceSize = null;
        this.mHalSurfaceSize = null;
        this.mPhysicalCameraId = -1;
        this.mFormat = 0;
        this.mIntention = 0L;
        this.mSurfaceUsage = null;
        this.mSurfaceType = 0;
        this.mMaxImageNumber = 20;
        if (size == null) {
            CameraUnitLog.e(TAG, "appSurfaceSize is null! there is not allow size to null");
        }
        this.mCameraType = str;
        this.mSurfaceUsage = str2;
        this.mAppSurfaceSize = size;
        this.mHalSurfaceSize = size2;
        this.mFormat = i;
        this.mSurfaceType = i2;
        CameraUnitLog.d(TAG, "SurfaceWrapper, mSurface: " + this.mSurface + ", mCameraType: " + this.mCameraType + ", mSurfaceUsage: " + this.mSurfaceUsage + ", mAppSurfaceSize: " + this.mAppSurfaceSize + ", mHalSurfaceSize: " + this.mHalSurfaceSize + ", mFormat: " + this.mFormat + ", mSurfaceType: " + this.mSurfaceType);
    }

    public int hashCode() {
        return super.hashCode();
    }

    public boolean equals(@Nullable Object obj) {
        if (obj instanceof SurfaceWrapper) {
            SurfaceWrapper surfaceWrapper = (SurfaceWrapper) obj;
            if (this.mCameraType.equals(surfaceWrapper.mCameraType) && getAppSurfaceSize().equals(surfaceWrapper.getAppSurfaceSize()) && getHalSurfaceSize().equals(surfaceWrapper.getHalSurfaceSize()) && this.mFormat == surfaceWrapper.mFormat && this.mSurface == surfaceWrapper.mSurface && this.mIntention == surfaceWrapper.mIntention) {
                return ((this.mSurfaceUsage == null && surfaceWrapper.mSurfaceUsage == null) || (this.mSurfaceUsage != null && this.mSurfaceUsage.equals(surfaceWrapper.mSurfaceUsage))) && this.mSurfaceType == surfaceWrapper.mSurfaceType;
            }
            return false;
        }
        return false;
    }

    public Surface getSurface() {
        return this.mSurface;
    }

    public void setSurface(@NonNull Surface surface) {
        CameraUnitLog.d(TAG, "setSurface, setSurface: " + surface);
        this.mSurface = surface;
    }

    public int getSurfaceType() {
        return this.mSurfaceType;
    }

    public void setIntention(long j) {
        this.mIntention = j;
    }

    public long getIntention() {
        return this.mIntention;
    }

    public void setSurfaceUsage(String str) {
        this.mSurfaceUsage = str;
    }

    public String getSurfaceUsage() {
        return this.mSurfaceUsage;
    }

    public String getCameraType() {
        return this.mCameraType;
    }

    public int getPhysicalCameraId() {
        return this.mPhysicalCameraId;
    }

    public void setPhysicalCameraId(int i) {
        this.mPhysicalCameraId = i;
    }

    public Size getAppSurfaceSize() {
        return this.mAppSurfaceSize;
    }

    public void setHalSurfaceSize(Size size) {
        this.mHalSurfaceSize = size;
    }

    public Size getHalSurfaceSize() {
        return this.mHalSurfaceSize != null ? this.mHalSurfaceSize : this.mAppSurfaceSize;
    }

    public int getFormat() {
        return this.mFormat;
    }

    public void setFormat(int i) {
        this.mFormat = i;
    }

    public static Class getSurfaceClass(int i) {
        if (i != 11) {
            switch (i) {
                case 1:
                case 5:
                case 6:
                    return SurfaceHolder.class;
                case 2:
                    return SurfaceTexture.class;
                case 3:
                    return ImageReader.class;
                case 4:
                    return Surface.class;
                default:
                    return null;
            }
        }
        return ImageReader.class;
    }

    public int getMaxImageNumber() {
        return this.mMaxImageNumber;
    }

    public void setMaxImageNumber(int i) {
        this.mMaxImageNumber = i;
    }

    public Class getSurfaceClass() {
        return getSurfaceClass(this.mSurfaceType);
    }

    public String toString() {
        return "{cameraType: " + this.mCameraType + ", surface: " + this.mSurface + ", surfaceType: " + this.mSurfaceType + ", appSurfaceSize: " + this.mAppSurfaceSize + ", halSurfaceSize: " + this.mHalSurfaceSize + ", mPhysicalCameraId: " + this.mPhysicalCameraId + ", format: " + this.mFormat + ", usage: " + this.mSurfaceUsage + ", maxImageNumber: " + this.mMaxImageNumber + "}";
    }
}

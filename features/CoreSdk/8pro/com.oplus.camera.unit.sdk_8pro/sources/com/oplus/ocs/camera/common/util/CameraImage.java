package com.oplus.ocs.camera.common.util;
/* loaded from: classes.dex */
public final class CameraImage {
    private String mCameraType;
    private int mFormat;
    private int mHeight;
    private byte[] mImage;
    private int mOrientation;
    private int mScanline;
    private int mSourceType;
    private int mStride;
    private long mTimestamp;
    private int mWidth;
    private boolean mbHeifProcessInAps;

    public CameraImage(byte[] bArr, int i, int i2, int i3, int i4, int i5, int i6, long j, boolean z, String str, int i7) {
        this.mImage = bArr;
        this.mFormat = i;
        this.mWidth = i2;
        this.mHeight = i3;
        this.mStride = i4;
        this.mScanline = i5;
        this.mOrientation = i6;
        this.mTimestamp = j;
        this.mbHeifProcessInAps = z;
        this.mCameraType = str;
        this.mSourceType = i7;
    }

    public byte[] getImage() {
        return this.mImage;
    }

    public int getFormat() {
        return this.mFormat;
    }

    public int getWidth() {
        return this.mWidth;
    }

    public int getHeight() {
        return this.mHeight;
    }

    public int getStride() {
        return this.mStride;
    }

    public int getScanline() {
        return this.mScanline;
    }

    public int getOrientation() {
        return this.mOrientation;
    }

    public long getTimestamp() {
        return this.mTimestamp;
    }

    public boolean isHeifProcessInAps() {
        return this.mbHeifProcessInAps;
    }

    public String getCameraType() {
        return this.mCameraType;
    }

    public int getSourceType() {
        return this.mSourceType;
    }
}

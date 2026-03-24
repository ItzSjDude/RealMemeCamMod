package com.coloros.ocs.camera.util;
/* loaded from: classes.dex */
public final class CameraImage {
    private com.oplus.ocs.camera.common.util.CameraImage mCameraImage;

    public CameraImage(com.oplus.ocs.camera.common.util.CameraImage cameraImage) {
        this.mCameraImage = null;
        this.mCameraImage = cameraImage;
    }

    public byte[] getImage() {
        return this.mCameraImage.getImage();
    }

    public int getFormat() {
        return this.mCameraImage.getFormat();
    }

    public int getWidth() {
        return this.mCameraImage.getWidth();
    }

    public int getHeight() {
        return this.mCameraImage.getHeight();
    }

    public int getStride() {
        return this.mCameraImage.getStride();
    }

    public int getScanline() {
        return this.mCameraImage.getScanline();
    }

    public int getOrientation() {
        return this.mCameraImage.getOrientation();
    }

    public long getTimestamp() {
        return this.mCameraImage.getTimestamp();
    }

    public String getCameraType() {
        return this.mCameraImage.getCameraType();
    }

    public int getSourceType() {
        return this.mCameraImage.getSourceType();
    }
}

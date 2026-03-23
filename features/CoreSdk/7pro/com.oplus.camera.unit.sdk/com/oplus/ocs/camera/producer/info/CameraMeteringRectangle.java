package com.oplus.ocs.camera.producer.info;

import android.graphics.Rect;
import android.hardware.camera2.params.MeteringRectangle;
import android.util.Size;
/* loaded from: classes.dex */
public final class CameraMeteringRectangle {
    private final int mHeight;
    private final int mWeight;
    private final int mWidth;
    private final int mX;
    private final int mY;

    public CameraMeteringRectangle(MeteringRectangle meteringRectangle) {
        this.mX = meteringRectangle.getX();
        this.mY = meteringRectangle.getY();
        this.mWidth = meteringRectangle.getWidth();
        this.mHeight = meteringRectangle.getHeight();
        this.mWeight = meteringRectangle.getMeteringWeight();
    }

    public CameraMeteringRectangle(int i, int i2, int i3, int i4, int i5) {
        this.mX = i;
        this.mY = i2;
        this.mWidth = i3;
        this.mHeight = i4;
        this.mWeight = i5;
    }

    public CameraMeteringRectangle(Rect rect, int i) {
        this.mX = rect.left;
        this.mY = rect.top;
        this.mWidth = rect.width();
        this.mHeight = rect.height();
        this.mWeight = i;
    }

    public int getX() {
        return this.mX;
    }

    public int getY() {
        return this.mY;
    }

    public int getWidth() {
        return this.mWidth;
    }

    public int getHeight() {
        return this.mHeight;
    }

    public Size getSize() {
        return new Size(this.mWidth, this.mHeight);
    }

    public Rect getRect() {
        return new Rect(this.mX, this.mY, this.mX + this.mWidth, this.mY + this.mHeight);
    }

    public int[] getValue() {
        return new int[]{this.mX, this.mY, this.mX + this.mWidth, this.mY + this.mHeight, this.mWeight};
    }

    public String toString() {
        return String.format("(x:%d, y:%d, w:%d, h:%d, wt:%d)", Integer.valueOf(this.mX), Integer.valueOf(this.mY), Integer.valueOf(this.mWidth), Integer.valueOf(this.mHeight), Integer.valueOf(this.mWeight));
    }
}

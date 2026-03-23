package com.oplus.ocs.camera.consumer.apsAdapter.adapter;

import android.graphics.Bitmap;
import androidx.annotation.NonNull;
/* loaded from: classes.dex */
public class ApsWatermarkParam {
    private Bitmap mBitmap;
    private int mRefWidth;
    private byte[] mWatermarkBuffer;
    private int mWatermarkHeight;
    private int mWatermarkWidth;

    public ApsWatermarkParam(int i, int i2, int i3, byte[] bArr, Bitmap bitmap) {
        this.mRefWidth = i;
        this.mWatermarkHeight = i2;
        this.mWatermarkWidth = i3;
        this.mWatermarkBuffer = bArr;
        this.mBitmap = bitmap;
    }

    @NonNull
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("ApsWatermarkParam: {mRefWidth: ");
        sb.append(this.mRefWidth);
        sb.append(", mWatermarkHeight: ");
        sb.append(this.mWatermarkHeight);
        sb.append(", mWatermarkWidth: ");
        sb.append(this.mWatermarkWidth);
        sb.append(", mWatermarkBuffer size : ");
        byte[] bArr = this.mWatermarkBuffer;
        sb.append(bArr != null ? bArr.length : 0);
        sb.append(", mBitmap: ");
        sb.append(this.mBitmap);
        sb.append("}");
        return sb.toString();
    }

    public byte[] getWatermarkBuffer() {
        return this.mWatermarkBuffer;
    }

    public Bitmap getBitmap() {
        return this.mBitmap;
    }

    public int getRefWidth() {
        return this.mRefWidth;
    }

    public int getWatermarkHeight() {
        return this.mWatermarkHeight;
    }

    public int getWatermarkWidth() {
        return this.mWatermarkWidth;
    }
}

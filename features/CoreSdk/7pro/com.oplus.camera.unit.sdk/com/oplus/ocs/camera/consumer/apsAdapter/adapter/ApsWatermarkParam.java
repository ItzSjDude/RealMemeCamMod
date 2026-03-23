package com.oplus.ocs.camera.consumer.apsAdapter.adapter;

import androidx.annotation.NonNull;
/* loaded from: classes.dex */
public class ApsWatermarkParam {
    private int mRefWidth;
    private byte[] mWatermarkBuffer;
    private int mWatermarkHeight;
    private int mWatermarkWidth;

    public ApsWatermarkParam(int i, int i2, int i3, byte[] bArr) {
        this.mRefWidth = 0;
        this.mWatermarkHeight = 0;
        this.mWatermarkWidth = 0;
        this.mWatermarkBuffer = null;
        this.mRefWidth = i;
        this.mWatermarkHeight = i2;
        this.mWatermarkWidth = i3;
        this.mWatermarkBuffer = bArr;
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
        sb.append(this.mWatermarkBuffer != null ? this.mWatermarkBuffer.length : 0);
        sb.append("}");
        return sb.toString();
    }

    public byte[] getWatermarkBuffer() {
        return this.mWatermarkBuffer;
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

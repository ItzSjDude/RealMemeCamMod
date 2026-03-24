package com.youtu.ocr.docprocess;

import android.util.Log;

/* JADX INFO: loaded from: classes.dex */
public class GussianBlur {
    private double[] mGussianWeight;
    private int mKernelSize;

    public GussianBlur(int i, int i2) {
        this.mKernelSize = i;
        this.mGussianWeight = new double[i];
        int i3 = 0;
        double d = 0.0d;
        while (true) {
            int i4 = this.mKernelSize;
            if (i3 < i4) {
                double d2 = (i4 - 1) - i3;
                double d3 = i2;
                double d4 = d;
                this.mGussianWeight[i3] = (Math.exp(Math.pow(d2 / d3, 2.0d) * (-0.5d)) / Math.sqrt(6.283185307179586d)) / d3;
                if (d2 > 0.0d) {
                    double[] dArr = this.mGussianWeight;
                    dArr[i3] = dArr[i3] * 2.0d;
                }
                d = this.mGussianWeight[i3] + d4;
                Log.e("xlab", " " + i3 + " " + this.mGussianWeight[i3]);
                i3++;
            } else {
                Log.e("xlab", "sum: " + d);
                return;
            }
        }
    }

    public double[] getmGussianWeight() {
        return this.mGussianWeight;
    }
}

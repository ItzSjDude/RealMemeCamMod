package com.youtu.ocr.docprocess;

import android.graphics.Bitmap;
import android.graphics.Point;

/* JADX INFO: loaded from: classes.dex */
public interface IText {
    int FindAutoType();

    DetectResult FindQuadByTexture(boolean z);

    boolean SetOESTextureID(int i, int i2, int i3, int i4);

    DetectResult detectTextByByte(byte[] bArr, int i, int i2, int i3);

    DetectResult detectTextByTexture(int i, int i2, int i3, int i4, boolean z);

    byte[] enhance(byte[] bArr, int i, int i2, int i3);

    Bitmap enhanceByBitmap(Bitmap bitmap, int i);

    RectifyResult rectify(byte[] bArr, int i, int i2, Point[] pointArr, int i3);

    Bitmap rectifyByBitmap(Bitmap bitmap, int[] iArr);

    public static class DetectResult {
        public boolean hasResult;
        public Point[] pointArr;

        public DetectResult() {
        }

        public DetectResult(boolean z) {
            this.hasResult = z;
        }

        public DetectResult(boolean z, Point[] pointArr) {
            this.hasResult = z;
            this.pointArr = pointArr;
        }

        public void setHasResult(boolean z) {
            this.hasResult = z;
        }

        public void setPointArr(Point[] pointArr) {
            this.pointArr = pointArr;
        }

        public boolean getHasResult() {
            return this.hasResult;
        }

        public Point[] getPointArr() {
            return this.pointArr;
        }

        public void clearPointArr() {
            int i = 0;
            while (true) {
                Point[] pointArr = this.pointArr;
                if (i >= pointArr.length) {
                    return;
                }
                pointArr[i].x = -1;
                this.pointArr[i].y = -1;
                i++;
            }
        }
    }
}

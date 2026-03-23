package com.youtu.ocr.docprocess;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Point;
import com.common.Util;
import com.youtu.ocr.docprocess.IText;
/* loaded from: classes.dex */
public class DocDetector implements IText {
    public static void init(Context context) {
    }

    @Override // com.youtu.ocr.docprocess.IText
    public IText.DetectResult FindQuadByTexture(boolean z) {
        return null;
    }

    public native String FindQuadByTextureNative(boolean z);

    public native boolean SetOESTextureIDNative(int i, int i2, int i3, int i4);

    public native byte[] bitmapToYUV(Bitmap bitmap);

    @Override // com.youtu.ocr.docprocess.IText
    public IText.DetectResult detectTextByByte(byte[] bArr, int i, int i2, int i3) {
        return null;
    }

    public native String detectTextByByteNative(byte[] bArr, int i, int i2, int i3);

    @Override // com.youtu.ocr.docprocess.IText
    public IText.DetectResult detectTextByTexture(int i, int i2, int i3, int i4, boolean z) {
        return null;
    }

    public native String detectTextByTextureNative(int i, int i2, int i3, int i4, boolean z);

    public native byte[] enhanceNative(byte[] bArr, int i, int i2, int i3);

    public native String getDetectorProfileValue();

    public native String getTextureProfileTime();

    public native String profileDetectorApplyTime(Bitmap bitmap, int i, int i2);

    public native String profileEnhance(Bitmap bitmap, int i, int i2);

    public native String profileQuad(Bitmap bitmap, Point[] pointArr);

    public native String profilexnnInitedByByteGPU(byte[] bArr, String str, int i, int i2);

    public native RectifyResult rectifyNative(byte[] bArr, int i, int i2, Point[] pointArr, int i3);

    public native String xnnApply(Bitmap bitmap);

    public native String xnnApplyByByte(byte[] bArr, int i, int i2, int i3);

    public native void xnnApplyByTexture(int i, int i2, int i3, int i4, int i5, boolean z);

    public native void xnnDestory();

    public DetectorPoint[] xnnDetectorApply(Bitmap bitmap) {
        return null;
    }

    public DetectorPoint[] xnnDetectorApply(byte[] bArr, int i, int i2, int i3) {
        return null;
    }

    public native Bitmap xnnEnhance(Bitmap bitmap, int i);

    public native int xnnFindAutoType();

    public native boolean xnnInited(String str);

    public native boolean xnnInitedByByte(byte[] bArr);

    public native boolean xnnInitedByByteGPU(byte[] bArr, String str);

    public native boolean xnnInitedGPU(String str, String str2);

    public native Bitmap xnnQuad(Bitmap bitmap, Point[] pointArr);

    public native void xnnReleaseGLSource();

    @Override // com.youtu.ocr.docprocess.IText
    public boolean SetOESTextureID(int i, int i2, int i3, int i4) {
        return SetOESTextureIDNative(i, i2, i3, i4);
    }

    private double angle(Point point, Point point2, Point point3) {
        Point point4 = new Point(point2.x - point.x, point2.y - point.y);
        Point point5 = new Point(point3.x - point.x, point3.y - point.y);
        return Math.acos(dot(point4, point5) / (length(point4) * length(point5)));
    }

    private double dot(Point point, Point point2) {
        return (point.x * point2.x) + (point.y * point2.y);
    }

    private double length(Point point) {
        return (int) Math.sqrt(dot(point, point));
    }

    @Override // com.youtu.ocr.docprocess.IText
    public int FindAutoType() {
        return xnnFindAutoType();
    }

    public void coordinateTransform(DetectorPoint[] detectorPointArr, int i) {
        for (int i2 = 0; i2 < detectorPointArr.length; i2++) {
            detectorPointArr[i2] = standardCoordinate2RealCoordinate(i, detectorPointArr[i2]);
        }
    }

    public void coordinateTransform2(Point[] pointArr, int i) {
        for (int i2 = 0; i2 < pointArr.length; i2++) {
            DetectorPoint standardCoordinate2RealCoordinate = standardCoordinate2RealCoordinate(i, new DetectorPoint(pointArr[i2].x, pointArr[i2].y));
            pointArr[i2] = new Point((int) standardCoordinate2RealCoordinate.x, (int) standardCoordinate2RealCoordinate.y);
        }
    }

    public DetectorPoint standardCoordinate2RealCoordinate(int i, DetectorPoint detectorPoint) {
        DetectorPoint detectorPoint2;
        if (i == 0) {
            detectorPoint2 = new DetectorPoint(1.0f - detectorPoint.y, detectorPoint.x);
        } else if (i == 90) {
            return new DetectorPoint(detectorPoint.x, detectorPoint.y);
        } else {
            if (i == 180) {
                detectorPoint2 = new DetectorPoint(detectorPoint.y, 1.0f - detectorPoint.x);
            } else if (i != 270) {
                return detectorPoint;
            } else {
                detectorPoint2 = new DetectorPoint(1.0f - detectorPoint.x, 1.0f - detectorPoint.y);
            }
        }
        return detectorPoint2;
    }

    public Point standardCoordinate2RealCoordinateByInt(int i, int i2, int i3, Point point) {
        Point point2;
        if (i == 0) {
            point2 = new Point(point.y, i2 - point.x);
        } else if (i == 90) {
            point2 = new Point(point.x, point.y);
        } else if (i == 180) {
            point2 = new Point(i3 - point.y, point.x);
        } else if (i != 270) {
            return point;
        } else {
            point2 = new Point(i3 - point.x, i2 - point.y);
        }
        return point2;
    }

    @Override // com.youtu.ocr.docprocess.IText
    public RectifyResult rectify(byte[] bArr, int i, int i2, Point[] pointArr, int i3) {
        return rectifyNative(bArr, i, i2, pointArr, i3);
    }

    @Override // com.youtu.ocr.docprocess.IText
    public byte[] enhance(byte[] bArr, int i, int i2, int i3) {
        return enhanceNative(bArr, i, i2, i3);
    }

    @Override // com.youtu.ocr.docprocess.IText
    public Bitmap enhanceByBitmap(Bitmap bitmap, int i) {
        if (bitmap == null) {
            return null;
        }
        return xnnEnhance(bitmap, i);
    }

    @Override // com.youtu.ocr.docprocess.IText
    public Bitmap rectifyByBitmap(Bitmap bitmap, int[] iArr) {
        if (bitmap == null) {
            return null;
        }
        return xnnQuad(bitmap, new Point[]{new Point(iArr[0], iArr[1]), new Point(iArr[2], iArr[3]), new Point(iArr[4], iArr[5]), new Point(iArr[6], iArr[7])});
    }

    static {
        Util.loadJNILibrary("XDocProcessSDK-jni");
    }

    /* loaded from: classes.dex */
    public static class DetectorPoint {
        public float x;
        public float y;

        public DetectorPoint(float f, float f2) {
            this.x = f;
            this.y = f2;
        }
    }
}

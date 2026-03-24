package com.oplus.ocs.camera.producer.device;

import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.RectF;
import android.hardware.camera2.params.MeteringRectangle;
import android.util.Size;
import com.oplus.ocs.camera.common.util.CameraUnitLog;
import com.oplus.ocs.camera.common.util.Util;

/* JADX INFO: loaded from: classes.dex */
public class AEAFHelp {
    private static final int EXPOSURE_METERING_WEIGHT = 1;
    private static final int FOCUS_METERING_WEIGHT = 1;
    private static final String TAG = "AEAFHelp";
    private static final MeteringRectangle[] DEFAULT_WEIGHT_3A_REGION = {new MeteringRectangle(0, 0, 0, 0, 0)};
    private static final RectF DEFAULT_FOCUS_AREA = new RectF(-1.0f, -1.0f, -1.0f, -1.0f);

    public static int getExposureMeteringWeight() {
        return 1;
    }

    public static int getFocusMeteringWeight() {
        return 1;
    }

    public static RectF getDefaultFocusArea() {
        return DEFAULT_FOCUS_AREA;
    }

    public static MeteringRectangle[] getDefaultWeightRegion() {
        return DEFAULT_WEIGHT_3A_REGION;
    }

    private static PointF getSensorCoordsRatioPoint(float f, float f2, int i) {
        if (i == 90) {
            return new PointF(f2, 1.0f - f);
        }
        if (i == 180) {
            return new PointF(1.0f - f, 1.0f - f2);
        }
        if (i == 270) {
            return new PointF(1.0f - f2, 1.0f - f);
        }
        return new PointF(f, f2);
    }

    public static Rect calculateTapArea(RectF rectF, Size size, int i, Rect rect) {
        if (rect == null) {
            CameraUnitLog.e(TAG, "calculateTapArea, cropRegion is null");
            return null;
        }
        float fCenterY = rectF.centerY();
        PointF sensorCoordsRatioPoint = getSensorCoordsRatioPoint(new float[]{rectF.centerX(), fCenterY}[0], fCenterY, i);
        int width = size.getWidth();
        int height = size.getHeight();
        Rect rectTransformPreviewToSensor = transformPreviewToSensor(width > height ? ((double) width) / ((double) height) : ((double) height) / ((double) width), rectF.width(), sensorCoordsRatioPoint, rect);
        CameraUnitLog.v(TAG, "calculateTapArea, meteringRectangle: " + rectTransformPreviewToSensor.toString());
        return rectTransformPreviewToSensor;
    }

    private static Rect transformPreviewToSensor(double d, float f, PointF pointF, Rect rect) {
        int iMin = (int) ((f * Math.min(rect.width(), rect.height())) / 2.0f);
        double dWidth = ((double) rect.width()) / ((double) rect.height());
        int iWidth = rect.width();
        int iHeight = rect.height();
        if (d > dWidth) {
            iHeight = (int) (((double) iWidth) / d);
        } else {
            iWidth = (int) (((double) iHeight) * d);
        }
        int iWidth2 = (rect.width() - iWidth) / 2;
        int iHeight2 = (rect.height() - iHeight) / 2;
        int i = (int) (rect.left + (pointF.x * iWidth) + iWidth2);
        int i2 = (int) (rect.top + (pointF.y * iHeight) + iHeight2);
        Rect rect2 = new Rect(rect.left + iWidth2, rect.top + iHeight2, rect.right - iWidth2, rect.bottom - iHeight2);
        return new Rect(Util.clamp(i - iMin, rect2.left, rect2.right), Util.clamp(i2 - iMin, rect2.top, rect2.bottom), Util.clamp(i + iMin, rect2.left, rect2.right), Util.clamp(i2 + iMin, rect2.top, rect2.bottom));
    }
}

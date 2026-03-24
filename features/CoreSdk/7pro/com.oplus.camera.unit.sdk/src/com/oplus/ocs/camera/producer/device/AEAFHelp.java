package com.oplus.ocs.camera.producer.device;

import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.RectF;
import android.hardware.camera2.params.MeteringRectangle;
import android.util.Size;
import com.oplus.ocs.camera.common.util.CameraUnitLog;
import com.oplus.ocs.camera.common.util.Util;
/* loaded from: classes.dex */
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
        if (i != 90) {
            if (i != 180) {
                if (i == 270) {
                    return new PointF(1.0f - f2, f);
                }
                return new PointF(f, f2);
            }
            return new PointF(1.0f - f, 1.0f - f2);
        }
        return new PointF(f2, 1.0f - f);
    }

    public static Rect calculateTapArea(RectF rectF, Size size, int i, Rect rect) {
        if (rect == null) {
            CameraUnitLog.e(TAG, "calculateTapArea, cropRegion is null");
            return null;
        }
        float[] fArr = {rectF.centerX(), rectF.centerY()};
        PointF sensorCoordsRatioPoint = getSensorCoordsRatioPoint(fArr[0], fArr[1], i);
        int width = size.getWidth();
        int height = size.getHeight();
        Rect transformPreviewToSensor = transformPreviewToSensor(width > height ? width / height : height / width, rectF.width(), sensorCoordsRatioPoint, rect);
        CameraUnitLog.v(TAG, "calculateTapArea, meteringRectangle: " + transformPreviewToSensor.toString());
        return transformPreviewToSensor;
    }

    private static Rect transformPreviewToSensor(double d, float f, PointF pointF, Rect rect) {
        int min = (int) ((f * Math.min(rect.width(), rect.height())) / 2.0f);
        double width = rect.width() / rect.height();
        int width2 = rect.width();
        int height = rect.height();
        if (d > width) {
            height = (int) (width2 / d);
        } else {
            width2 = (int) (height * d);
        }
        int width3 = (rect.width() - width2) / 2;
        int height2 = (rect.height() - height) / 2;
        int i = (int) (rect.left + (pointF.x * width2) + width3);
        int i2 = (int) (rect.top + (pointF.y * height) + height2);
        Rect rect2 = new Rect(rect.left + width3, rect.top + height2, rect.right - width3, rect.bottom - height2);
        return new Rect(Util.clamp(i - min, rect2.left, rect2.right), Util.clamp(i2 - min, rect2.top, rect2.bottom), Util.clamp(i + min, rect2.left, rect2.right), Util.clamp(i2 + min, rect2.top, rect2.bottom));
    }
}

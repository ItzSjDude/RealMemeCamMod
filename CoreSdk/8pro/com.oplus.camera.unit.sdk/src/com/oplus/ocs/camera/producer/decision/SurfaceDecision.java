package com.oplus.ocs.camera.producer.decision;

import android.util.Size;
import android.view.Surface;
import com.oplus.ocs.camera.common.surface.SurfaceKey;
import com.oplus.ocs.camera.common.surface.SurfacePool;
import com.oplus.ocs.camera.common.surface.SurfaceWrapper;
import com.oplus.ocs.camera.common.util.CameraUnitLog;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
public class SurfaceDecision {
    private static final String TAG = "SurfaceDecision";

    public SurfaceWrapper createRecorderVideoSurface(int i, String str, String str2, Size size, Size size2, int i2, Surface surface) {
        CameraUnitLog.d(TAG, String.format(Locale.ENGLISH, "createRecorderVideoSurface, physicalCameraId: %d, usage: %s, cameraType: %s, appSize: %s, halSize: %s, imageFormat: %d", Integer.valueOf(i), str, str2, size, size2, Integer.valueOf(i2)));
        SurfaceWrapper surfaceWrapper = new SurfaceWrapper(str2, str, size, size2, i2, 4);
        if (surface != null) {
            SurfacePool.getInstance().setVideoSurface(surface);
        } else {
            surface = SurfacePool.getInstance().createVideoSurface();
        }
        surfaceWrapper.setSurface(surface);
        return surfaceWrapper;
    }

    public SurfaceWrapper createReprocessSurface(int i, String str, String str2, Size size, Size size2, int i2) {
        CameraUnitLog.d(TAG, String.format(Locale.ENGLISH, "createReprocessSurface, physicalCameraId: %d, usage: %s, cameraType: %s, appSize: %s, halSize: %s, imageFormat: %d", Integer.valueOf(i), str, str2, size, size2, Integer.valueOf(i2)));
        return new SurfaceWrapper(str2, str, size, size2, i2, 7);
    }

    public SurfaceWrapper createReaderSurface(int i, String str, String str2, Size size, Size size2, int i2, int i3) {
        return createReaderSurface(i, str, str2, size, size2, i2, i3, null, null);
    }

    public SurfaceWrapper createReaderSurface(int i, String str, String str2, Size size, Size size2, int i2, int i3, Long l, Long l2) {
        CameraUnitLog.d(TAG, String.format(Locale.ENGLISH, "createReaderSurface, physicalCameraId: %d, usage: %s, cameraType: %s, appSize: %s, halSize: %s, imageFormat: %d, maxImages: %s, videoHwbUsage: %s", Integer.valueOf(i), str, str2, size, size2, Integer.valueOf(i2), Integer.valueOf(i3), l));
        SurfaceWrapper surfaceWrapper = new SurfaceWrapper(str2, str, size, size2, i2, 3);
        surfaceWrapper.setPhysicalCameraId(i);
        surfaceWrapper.setMaxImageNumber(i3);
        long jLongValue = 3;
        if (!"surface_key_picture".equals(str)) {
            if ("surface_key_preview".equals(str) || "surface_key_preview_in_preview".equals(str)) {
                jLongValue = l2 != null ? l2.longValue() : 259L;
            } else if ("surface_key_recording".equals(str)) {
                jLongValue = l != null ? l.longValue() : 128L;
            }
        }
        surfaceWrapper.setIntention(jLongValue);
        surfaceWrapper.setSurface(SurfacePool.getInstance().createImageReader(surfaceWrapper).getSurface());
        return surfaceWrapper;
    }

    public void closeReaderSurface(SurfaceKey surfaceKey) {
        SurfacePool.getInstance().closeImageReader(surfaceKey);
    }
}

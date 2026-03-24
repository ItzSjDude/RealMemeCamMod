package com.oplus.ocs.camera.producer.info;

import android.hardware.camera2.CameraCharacteristics;
import android.hardware.camera2.CaptureResult;
import androidx.annotation.NonNull;
import com.oplus.ocs.camera.common.util.CameraUnitLog;
/* loaded from: classes.dex */
public class CameraCharacteristicsWrapper {
    private static final String TAG = "CameraCharacteristicsWrapper";
    private CameraCharacteristics mCameraCharacteristics;
    public static final CameraCharacteristics.Key<int[]> KEY_CUSTOM_CAMERA_TYPE = new CameraCharacteristics.Key<>("com.oplus.supported.cameraid.type", int[].class);
    public static final CameraCharacteristics.Key<int[]> KEY_CUSTOM_JPEG_SIZE = new CameraCharacteristics.Key<>("com.oplus.custom.jpeg.size", int[].class);
    public static final CameraCharacteristics.Key<float[]> KEY_ZOOM_RANGE = new CameraCharacteristics.Key<>("com.oplus.custom.zoom.range", float[].class);
    public static final CameraCharacteristics.Key<float[]> KEY_EXPERT_ZOOM_RANGE = new CameraCharacteristics.Key<>("com.oplus.expert.zoom.range", float[].class);
    public static final CameraCharacteristics.Key<int[]> KEY_BOKEH_PICTURE_SIZE = new CameraCharacteristics.Key<>("com.oplus.bokeh.picture.size", int[].class);
    public static final CameraCharacteristics.Key<int[]> KEY_QUALCOMM_COLOR_TEMPERATURE_RANGE = new CameraCharacteristics.Key<>("org.codeaurora.qcamera3.manualWB.color_temperature_range", int[].class);
    public static final CameraCharacteristics.Key<int[]> KEY_MTK_COLOR_TEMPERATURE_RANGE = new CameraCharacteristics.Key<>("com.oplus.manualWB.color_temperature_range", int[].class);
    public static final CameraCharacteristics.Key<int[]> KEY_MTK_TUNING_DATA_RAW_SIZE = new CameraCharacteristics.Key<>("com.mediatek.control.capture.ispMetaSizeForRaw", int[].class);
    public static final CameraCharacteristics.Key<int[]> KEY_LOGICAL_CAMERA_TYPE = new CameraCharacteristics.Key<>("org.codeaurora.qcamera3.logicalCameraType.logical_camera_type", int[].class);
    public static final CameraCharacteristics.Key<int[]> KEY_OPLUS_LOGICAL_CAMERA_TYPE = new CameraCharacteristics.Key<>("com.oplus.logical.camera.type", int[].class);
    public static final CameraCharacteristics.Key<int[]> KEY_VENDOR_TAG_COUNT = new CameraCharacteristics.Key<>("com.oplus.vendor.tag.count", int[].class);
    public static final CameraCharacteristics.Key<int[]> KEY_VENDOR_TAG_ID = new CameraCharacteristics.Key<>("com.oplus.vendor.tag.ids", int[].class);
    public static final CameraCharacteristics.Key<byte[]> KEY_VENDOR_TAG_NAME = new CameraCharacteristics.Key<>("com.oplus.vendor.tag.names", byte[].class);
    public static final CameraCharacteristics.Key<int[]> KEY_MTK_SMVR_FEATURE_AVAILABLE_SMVR_MODES = new CameraCharacteristics.Key<>("com.mediatek.smvrfeature.availableSmvrModes", int[].class);
    public static final CameraCharacteristics.Key<int[]> KEY_MTK_TUNING_DATA_YUV_SIZE = new CameraCharacteristics.Key<>("com.mediatek.control.capture.ispMetaSizeForYuv", int[].class);
    public static final CameraCharacteristics.Key<int[]> KEY_MTK_MULTI_CAM_FEATURE_AVAILABLE_MODE = new CameraCharacteristics.Key<>("com.mediatek.multicamfeature.availableMultiCamFeatureMode", int[].class);
    public static final CameraCharacteristics.Key<byte[]> KEY_EIS_END_OF_STREAM = new CameraCharacteristics.Key<>("com.oplus.custom.video.endofstream", byte[].class);
    public static final CameraCharacteristics.Key<int[]> KEY_MSNR_MOVE_RIGHT = new CameraCharacteristics.Key<>("com.oplus.msnr.move.right", int[].class);
    public static final CameraCharacteristics.Key<Integer> KEY_MTK_LOW_MEMORY = new CameraCharacteristics.Key<>("com.oplus.low.ram", Integer.TYPE);
    public static final CaptureResult.Key<Integer> KEY_AI_SCN_DATA_VIDEO = new CaptureResult.Key<>("com.oplus.ai.scene.app.data.video", Integer.class);
    public static final CameraCharacteristics.Key<int[]> KEY_STATIC_CSHOT_SUPPORT = new CameraCharacteristics.Key<>("com.mediatek.cshotfeature.availableCShotModes", int[].class);
    public static final CameraCharacteristics.Key<int[]> KEY_STATIC_SUPPORT_EARLY_NOTIFY = new CameraCharacteristics.Key<>("com.mediatek.control.capture.early.notification.support", int[].class);

    /* JADX INFO: Access modifiers changed from: package-private */
    public CameraCharacteristicsWrapper(CameraCharacteristics cameraCharacteristics) {
        this.mCameraCharacteristics = null;
        this.mCameraCharacteristics = cameraCharacteristics;
    }

    public CameraCharacteristics get() {
        return this.mCameraCharacteristics;
    }

    public <T> T get(@NonNull CameraCharacteristics.Key<T> key) {
        try {
            return (T) this.mCameraCharacteristics.get(key);
        } catch (Exception unused) {
            CameraUnitLog.e(TAG, "get CameraCharacteristics failed! tag: " + key.getName());
            return null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0044  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x004b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String[] getVendorTagAndId() {
        /*
            r7 = this;
            java.util.ArrayList r0 = new java.util.ArrayList
            r0.<init>()
            r1 = 0
            android.hardware.camera2.CameraCharacteristics r2 = r7.mCameraCharacteristics     // Catch: java.lang.IllegalArgumentException -> L2a
            android.hardware.camera2.CameraCharacteristics$Key<int[]> r3 = com.oplus.ocs.camera.producer.info.CameraCharacteristicsWrapper.KEY_VENDOR_TAG_ID     // Catch: java.lang.IllegalArgumentException -> L2a
            java.lang.Object r2 = r2.get(r3)     // Catch: java.lang.IllegalArgumentException -> L2a
            int[] r2 = (int[]) r2     // Catch: java.lang.IllegalArgumentException -> L2a
            android.hardware.camera2.CameraCharacteristics r3 = r7.mCameraCharacteristics     // Catch: java.lang.IllegalArgumentException -> L27
            android.hardware.camera2.CameraCharacteristics$Key<byte[]> r4 = com.oplus.ocs.camera.producer.info.CameraCharacteristicsWrapper.KEY_VENDOR_TAG_NAME     // Catch: java.lang.IllegalArgumentException -> L27
            java.lang.Object r3 = r3.get(r4)     // Catch: java.lang.IllegalArgumentException -> L27
            byte[] r3 = (byte[]) r3     // Catch: java.lang.IllegalArgumentException -> L27
            android.hardware.camera2.CameraCharacteristics r7 = r7.mCameraCharacteristics     // Catch: java.lang.IllegalArgumentException -> L25
            android.hardware.camera2.CameraCharacteristics$Key<int[]> r4 = com.oplus.ocs.camera.producer.info.CameraCharacteristicsWrapper.KEY_VENDOR_TAG_COUNT     // Catch: java.lang.IllegalArgumentException -> L25
            java.lang.Object r7 = r7.get(r4)     // Catch: java.lang.IllegalArgumentException -> L25
            int[] r7 = (int[]) r7     // Catch: java.lang.IllegalArgumentException -> L25
            goto L35
        L25:
            r7 = move-exception
            goto L2d
        L27:
            r7 = move-exception
            r3 = r1
            goto L2d
        L2a:
            r7 = move-exception
            r2 = r1
            r3 = r2
        L2d:
            java.lang.String r4 = "CameraCharacteristicsWrapper"
            java.lang.String r5 = "getVendorTagAndId"
            com.oplus.ocs.camera.common.util.CameraUnitLog.e(r4, r5, r7)
            r7 = r1
        L35:
            java.lang.String r4 = "CameraCharacteristicsWrapper"
            java.lang.StringBuilder r5 = new java.lang.StringBuilder
            r5.<init>()
            java.lang.String r6 = "getVendorTagAndId, count: "
            r5.append(r6)
            r6 = 0
            if (r7 == 0) goto L4b
            r7 = r7[r6]
            java.lang.Integer r7 = java.lang.Integer.valueOf(r7)
            goto L4c
        L4b:
            r7 = r1
        L4c:
            r5.append(r7)
            java.lang.String r7 = r5.toString()
            com.oplus.ocs.camera.common.util.CameraUnitLog.d(r4, r7)
            if (r2 == 0) goto Lc5
            if (r3 != 0) goto L5b
            goto Lc5
        L5b:
            java.lang.String r7 = new java.lang.String
            java.nio.charset.Charset r1 = java.nio.charset.StandardCharsets.UTF_8
            r7.<init>(r3, r1)
            java.lang.String r1 = ";"
            java.lang.String[] r7 = r7.split(r1)
            r1 = r6
        L69:
            int r3 = r7.length
            if (r1 >= r3) goto L87
            r3 = r7[r1]
            java.lang.String r4 = "\u0000"
            java.lang.String r5 = ""
            java.lang.String r3 = r3.replace(r4, r5)
            r7[r1] = r3
            r3 = r7[r1]
            java.lang.String r4 = " "
            java.lang.String r5 = ""
            java.lang.String r3 = r3.replace(r4, r5)
            r7[r1] = r3
            int r1 = r1 + 1
            goto L69
        L87:
            java.lang.String r1 = "CameraCharacteristicsWrapper"
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            r3.<init>()
            java.lang.String r4 = "getVendorTagAndId, names array length: "
            r3.append(r4)
            int r4 = r7.length
            r3.append(r4)
            java.lang.String r4 = ", ids array length: "
            r3.append(r4)
            int r4 = r2.length
            r3.append(r4)
            java.lang.String r3 = r3.toString()
            com.oplus.ocs.camera.common.util.CameraUnitLog.d(r1, r3)
            r1 = r6
        La8:
            int r3 = r2.length
            if (r1 >= r3) goto Lbc
            r3 = r7[r1]
            r0.add(r3)
            r3 = r2[r1]
            java.lang.String r3 = java.lang.Integer.toString(r3)
            r0.add(r3)
            int r1 = r1 + 1
            goto La8
        Lbc:
            java.lang.String[] r7 = new java.lang.String[r6]
            java.lang.Object[] r7 = r0.toArray(r7)
            java.lang.String[] r7 = (java.lang.String[]) r7
            return r7
        Lc5:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.oplus.ocs.camera.producer.info.CameraCharacteristicsWrapper.getVendorTagAndId():java.lang.String[]");
    }

    public int[] getIntArrayConfig(CameraCharacteristics.Key<?> key) {
        if (key == null) {
            return null;
        }
        try {
            return (int[]) this.mCameraCharacteristics.get(key);
        } catch (Exception e) {
            CameraUnitLog.d(TAG, "getIntArrayConfig, e: " + e.getMessage());
            return null;
        }
    }
}

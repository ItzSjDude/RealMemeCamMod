package com.oplus.ocs.camera.producer.info;

import android.hardware.camera2.CameraCharacteristics;
import android.hardware.camera2.CaptureResult;
import android.hardware.camera2.params.StreamConfigurationMap;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.oplus.ocs.camera.common.util.CameraUnitLog;
/* loaded from: classes.dex */
public class CameraCharacteristicsWrapper {
    private static final String TAG = "CameraCharacteristicsWrapper";
    private CameraCharacteristics mCameraCharacteristics;
    private StreamConfigurationMap mStreamConfigurationMap = null;
    public static final CameraCharacteristics.Key<int[]> KEY_CUSTOM_CAMERA_TYPE = new CameraCharacteristics.Key<>("com.oplus.supported.cameraid.type", int[].class);
    public static final CameraCharacteristics.Key<int[]> KEY_AVAILABLE_STREAM_FPS_RANGES = new CameraCharacteristics.Key<>("com.oplus.available.stream.fps.ranges", int[].class);
    public static final CameraCharacteristics.Key<int[]> KEY_CUSTOM_JPEG_SIZE = new CameraCharacteristics.Key<>("com.oplus.custom.jpeg.size", int[].class);
    public static final CameraCharacteristics.Key<float[]> KEY_ZOOM_RANGE = new CameraCharacteristics.Key<>("com.oplus.custom.zoom.range", float[].class);
    public static final CameraCharacteristics.Key<float[]> KEY_EXPERT_ZOOM_RANGE = new CameraCharacteristics.Key<>("com.oplus.expert.zoom.range", float[].class);
    public static final CameraCharacteristics.Key<int[]> KEY_BOKEH_PICTURE_SIZE = new CameraCharacteristics.Key<>("com.oplus.bokeh.picture.size", int[].class);
    public static final CameraCharacteristics.Key<int[]> KEY_QUALCOMM_COLOR_TEMPERATURE_RANGE = new CameraCharacteristics.Key<>("org.codeaurora.qcamera3.manualWB.color_temperature_range", int[].class);
    public static final CameraCharacteristics.Key<int[]> KEY_MTK_COLOR_TEMPERATURE_RANGE = new CameraCharacteristics.Key<>("com.oplus.manualWB.color_temperature_range", int[].class);
    public static final CameraCharacteristics.Key<int[]> KEY_FEATURE_AVAILABLE_MULTI_CAMERA_MODE = new CameraCharacteristics.Key<>("com.mediatek.multicamfeature.availableMultiCamFeatureMode", int[].class);
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
    public static final CameraCharacteristics.Key<int[]> KEY_CUSTOM_MOVIE_STREAM_CONFIGURATION_MAP = new CameraCharacteristics.Key<>("com.oplus.custom.movie.stream.map", int[].class);
    public static final CameraCharacteristics.Key<int[]> KEY_MSNR_MOVE_RIGHT = new CameraCharacteristics.Key<>("com.oplus.msnr.move.right", int[].class);
    public static final CameraCharacteristics.Key<Integer> KEY_MTK_LOW_MEMORY = new CameraCharacteristics.Key<>("com.oplus.low.ram", Integer.TYPE);
    public static final CaptureResult.Key<Integer> KEY_AI_SCN_DATA_VIDEO = new CaptureResult.Key<>("com.oplus.ai.scene.app.data.video", Integer.class);
    public static final CameraCharacteristics.Key<int[]> KEY_STATIC_CSHOT_SUPPORT = new CameraCharacteristics.Key<>("com.mediatek.cshotfeature.availableCShotModes", int[].class);
    public static final CameraCharacteristics.Key<int[]> KEY_STATIC_SUPPORT_EARLY_NOTIFY = new CameraCharacteristics.Key<>("com.mediatek.control.capture.early.notification.support", int[].class);
    public static final CameraCharacteristics.Key<int[]> KEY_BOKEH_FORCE_UPSCALE_SIZE = new CameraCharacteristics.Key<>("com.oplus.custom.front.portrait.size", int[].class);
    public static final CameraCharacteristics.Key<Integer> KEY_STREAMING_HDR_TYPE = new CameraCharacteristics.Key<>("com.oplus.streaming.hdr.type", Integer.class);

    /* JADX INFO: Access modifiers changed from: package-private */
    public CameraCharacteristicsWrapper(CameraCharacteristics cameraCharacteristics) {
        this.mCameraCharacteristics = cameraCharacteristics;
    }

    public CameraCharacteristics get() {
        return this.mCameraCharacteristics;
    }

    public <T> T get(@NonNull CameraCharacteristics.Key<T> key) {
        try {
            return (T) this.mCameraCharacteristics.get(key);
        } catch (Exception unused) {
            return null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0042  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0049  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String[] getVendorTagAndId() {
        /*
            r8 = this;
            java.lang.String r0 = "CameraCharacteristicsWrapper"
            java.util.ArrayList r1 = new java.util.ArrayList
            r1.<init>()
            r2 = 0
            android.hardware.camera2.CameraCharacteristics r3 = r8.mCameraCharacteristics     // Catch: java.lang.IllegalArgumentException -> L2c
            android.hardware.camera2.CameraCharacteristics$Key<int[]> r4 = com.oplus.ocs.camera.producer.info.CameraCharacteristicsWrapper.KEY_VENDOR_TAG_ID     // Catch: java.lang.IllegalArgumentException -> L2c
            java.lang.Object r3 = r3.get(r4)     // Catch: java.lang.IllegalArgumentException -> L2c
            int[] r3 = (int[]) r3     // Catch: java.lang.IllegalArgumentException -> L2c
            android.hardware.camera2.CameraCharacteristics r4 = r8.mCameraCharacteristics     // Catch: java.lang.IllegalArgumentException -> L29
            android.hardware.camera2.CameraCharacteristics$Key<byte[]> r5 = com.oplus.ocs.camera.producer.info.CameraCharacteristicsWrapper.KEY_VENDOR_TAG_NAME     // Catch: java.lang.IllegalArgumentException -> L29
            java.lang.Object r4 = r4.get(r5)     // Catch: java.lang.IllegalArgumentException -> L29
            byte[] r4 = (byte[]) r4     // Catch: java.lang.IllegalArgumentException -> L29
            android.hardware.camera2.CameraCharacteristics r8 = r8.mCameraCharacteristics     // Catch: java.lang.IllegalArgumentException -> L27
            android.hardware.camera2.CameraCharacteristics$Key<int[]> r5 = com.oplus.ocs.camera.producer.info.CameraCharacteristicsWrapper.KEY_VENDOR_TAG_COUNT     // Catch: java.lang.IllegalArgumentException -> L27
            java.lang.Object r8 = r8.get(r5)     // Catch: java.lang.IllegalArgumentException -> L27
            int[] r8 = (int[]) r8     // Catch: java.lang.IllegalArgumentException -> L27
            goto L35
        L27:
            r8 = move-exception
            goto L2f
        L29:
            r8 = move-exception
            r4 = r2
            goto L2f
        L2c:
            r8 = move-exception
            r3 = r2
            r4 = r3
        L2f:
            java.lang.String r5 = "getVendorTagAndId"
            com.oplus.ocs.camera.common.util.CameraUnitLog.e(r0, r5, r8)
            r8 = r2
        L35:
            java.lang.StringBuilder r5 = new java.lang.StringBuilder
            r5.<init>()
            java.lang.String r6 = "getVendorTagAndId, count: "
            r5.append(r6)
            r6 = 0
            if (r8 == 0) goto L49
            r8 = r8[r6]
            java.lang.Integer r8 = java.lang.Integer.valueOf(r8)
            goto L4a
        L49:
            r8 = r2
        L4a:
            r5.append(r8)
            java.lang.String r8 = r5.toString()
            com.oplus.ocs.camera.common.util.CameraUnitLog.d(r0, r8)
            if (r3 == 0) goto Lc0
            if (r4 != 0) goto L59
            goto Lc0
        L59:
            java.lang.String r8 = new java.lang.String
            java.nio.charset.Charset r2 = java.nio.charset.StandardCharsets.UTF_8
            r8.<init>(r4, r2)
            java.lang.String r2 = ";"
            java.lang.String[] r8 = r8.split(r2)
            r2 = r6
        L67:
            int r4 = r8.length
            if (r2 >= r4) goto L81
            r4 = r8[r2]
            java.lang.String r5 = "\u0000"
            java.lang.String r7 = ""
            java.lang.String r4 = r4.replace(r5, r7)
            r8[r2] = r4
            java.lang.String r5 = " "
            java.lang.String r4 = r4.replace(r5, r7)
            r8[r2] = r4
            int r2 = r2 + 1
            goto L67
        L81:
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            java.lang.String r4 = "getVendorTagAndId, names array length: "
            r2.append(r4)
            int r4 = r8.length
            r2.append(r4)
            java.lang.String r4 = ", ids array length: "
            r2.append(r4)
            int r4 = r3.length
            r2.append(r4)
            java.lang.String r2 = r2.toString()
            com.oplus.ocs.camera.common.util.CameraUnitLog.d(r0, r2)
            r0 = r6
        La0:
            int r2 = r3.length
            if (r0 >= r2) goto Lb7
            int r2 = r8.length
            if (r0 >= r2) goto Lb4
            r2 = r8[r0]
            r1.add(r2)
            r2 = r3[r0]
            java.lang.String r2 = java.lang.Integer.toString(r2)
            r1.add(r2)
        Lb4:
            int r0 = r0 + 1
            goto La0
        Lb7:
            java.lang.String[] r8 = new java.lang.String[r6]
            java.lang.Object[] r8 = r1.toArray(r8)
            java.lang.String[] r8 = (java.lang.String[]) r8
            return r8
        Lc0:
            return r2
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

    @Nullable
    public synchronized StreamConfigurationMap getStreamConfigurationMap() {
        if (this.mStreamConfigurationMap == null) {
            try {
                this.mStreamConfigurationMap = (StreamConfigurationMap) this.mCameraCharacteristics.get(CameraCharacteristics.SCALER_STREAM_CONFIGURATION_MAP);
            } catch (Exception e) {
                CameraUnitLog.d(TAG, "getStreamConfigurationMap, e: " + e.getMessage());
            }
        }
        return this.mStreamConfigurationMap;
    }
}

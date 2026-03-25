package com.oplus.ocs.camera.producer.info;

import android.hardware.camera2.CameraCharacteristics;
import android.hardware.camera2.CaptureResult;
import android.hardware.camera2.params.StreamConfigurationMap;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.oplus.ocs.camera.common.util.CameraUnitLog;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class CameraCharacteristicsWrapper {
        private static final String TAG = "CameraCharacteristicsWrapper";
        private CameraCharacteristics mCameraCharacteristics;
        private StreamConfigurationMap mStreamConfigurationMap = null;
        public static final CameraCharacteristics.Key<int[]> KEY_CUSTOM_CAMERA_TYPE = new CameraCharacteristics.Key<>(
                        "com.oplus.supported.cameraid.type", int[].class);
        public static final CameraCharacteristics.Key<int[]> KEY_AVAILABLE_STREAM_FPS_RANGES = new CameraCharacteristics.Key<>(
                        "com.oplus.available.stream.fps.ranges", int[].class);
        public static final CameraCharacteristics.Key<int[]> KEY_CUSTOM_JPEG_SIZE = new CameraCharacteristics.Key<>(
                        "com.oplus.custom.jpeg.size", int[].class);
        public static final CameraCharacteristics.Key<float[]> KEY_ZOOM_RANGE = new CameraCharacteristics.Key<>(
                        "com.oplus.custom.zoom.range", float[].class);
        public static final CameraCharacteristics.Key<float[]> KEY_EXPERT_ZOOM_RANGE = new CameraCharacteristics.Key<>(
                        "com.oplus.expert.zoom.range", float[].class);
        public static final CameraCharacteristics.Key<int[]> KEY_BOKEH_PICTURE_SIZE = new CameraCharacteristics.Key<>(
                        "com.oplus.bokeh.picture.size", int[].class);
        public static final CameraCharacteristics.Key<int[]> KEY_QUALCOMM_COLOR_TEMPERATURE_RANGE = new CameraCharacteristics.Key<>(
                        "org.codeaurora.qcamera3.manualWB.color_temperature_range", int[].class);
        public static final CameraCharacteristics.Key<int[]> KEY_MTK_COLOR_TEMPERATURE_RANGE = new CameraCharacteristics.Key<>(
                        "com.oplus.manualWB.color_temperature_range", int[].class);
        public static final CameraCharacteristics.Key<int[]> KEY_FEATURE_AVAILABLE_MULTI_CAMERA_MODE = new CameraCharacteristics.Key<>(
                        "com.mediatek.multicamfeature.availableMultiCamFeatureMode", int[].class);
        public static final CameraCharacteristics.Key<int[]> KEY_MTK_TUNING_DATA_RAW_SIZE = new CameraCharacteristics.Key<>(
                        "com.mediatek.control.capture.ispMetaSizeForRaw", int[].class);
        public static final CameraCharacteristics.Key<int[]> KEY_LOGICAL_CAMERA_TYPE = new CameraCharacteristics.Key<>(
                        "org.codeaurora.qcamera3.logicalCameraType.logical_camera_type", int[].class);
        public static final CameraCharacteristics.Key<int[]> KEY_OPLUS_LOGICAL_CAMERA_TYPE = new CameraCharacteristics.Key<>(
                        "com.oplus.logical.camera.type", int[].class);
        public static final CameraCharacteristics.Key<int[]> KEY_VENDOR_TAG_COUNT = new CameraCharacteristics.Key<>(
                        "com.oplus.vendor.tag.count", int[].class);
        public static final CameraCharacteristics.Key<int[]> KEY_VENDOR_TAG_ID = new CameraCharacteristics.Key<>(
                        "com.oplus.vendor.tag.ids", int[].class);
        public static final CameraCharacteristics.Key<byte[]> KEY_VENDOR_TAG_NAME = new CameraCharacteristics.Key<>(
                        "com.oplus.vendor.tag.names", byte[].class);
        public static final CameraCharacteristics.Key<int[]> KEY_MTK_SMVR_FEATURE_AVAILABLE_SMVR_MODES = new CameraCharacteristics.Key<>(
                        "com.mediatek.smvrfeature.availableSmvrModes", int[].class);
        public static final CameraCharacteristics.Key<int[]> KEY_MTK_TUNING_DATA_YUV_SIZE = new CameraCharacteristics.Key<>(
                        "com.mediatek.control.capture.ispMetaSizeForYuv", int[].class);
        public static final CameraCharacteristics.Key<int[]> KEY_MTK_MULTI_CAM_FEATURE_AVAILABLE_MODE = new CameraCharacteristics.Key<>(
                        "com.mediatek.multicamfeature.availableMultiCamFeatureMode", int[].class);
        public static final CameraCharacteristics.Key<byte[]> KEY_EIS_END_OF_STREAM = new CameraCharacteristics.Key<>(
                        "com.oplus.custom.video.endofstream", byte[].class);
        public static final CameraCharacteristics.Key<int[]> KEY_CUSTOM_MOVIE_STREAM_CONFIGURATION_MAP = new CameraCharacteristics.Key<>(
                        "com.oplus.custom.movie.stream.map", int[].class);
        public static final CameraCharacteristics.Key<int[]> KEY_MSNR_MOVE_RIGHT = new CameraCharacteristics.Key<>(
                        "com.oplus.msnr.move.right", int[].class);
        public static final CameraCharacteristics.Key<Integer> KEY_MTK_LOW_MEMORY = new CameraCharacteristics.Key<>(
                        "com.oplus.low.ram", Integer.class);
        public static final CaptureResult.Key<Integer> KEY_AI_SCN_DATA_VIDEO = new CaptureResult.Key<>(
                        "com.oplus.ai.scene.app.data.video", Integer.class);
        public static final CameraCharacteristics.Key<int[]> KEY_STATIC_CSHOT_SUPPORT = new CameraCharacteristics.Key<>(
                        "com.mediatek.cshotfeature.availableCShotModes", int[].class);
        public static final CameraCharacteristics.Key<int[]> KEY_STATIC_SUPPORT_EARLY_NOTIFY = new CameraCharacteristics.Key<>(
                        "com.mediatek.control.capture.early.notification.support", int[].class);
        public static final CameraCharacteristics.Key<int[]> KEY_BOKEH_FORCE_UPSCALE_SIZE = new CameraCharacteristics.Key<>(
                        "com.oplus.custom.front.portrait.size", int[].class);
        public static final CameraCharacteristics.Key<Integer> KEY_STREAMING_HDR_TYPE = new CameraCharacteristics.Key<>(
                        "com.oplus.streaming.hdr.type", Integer.class);

        CameraCharacteristicsWrapper(CameraCharacteristics cameraCharacteristics) {
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

        public String[] getVendorTagAndId() {
                int[] iArr;
                byte[] bArr;
                int[] iArr2;
                ArrayList arrayList = new ArrayList();
                try {
                        iArr = (int[]) this.mCameraCharacteristics.get(KEY_VENDOR_TAG_ID);
                        try {
                                bArr = (byte[]) this.mCameraCharacteristics.get(KEY_VENDOR_TAG_NAME);
                                try {
                                        iArr2 = (int[]) this.mCameraCharacteristics.get(KEY_VENDOR_TAG_COUNT);
                                } catch (IllegalArgumentException e) {
                                        CameraUnitLog.e(TAG, "getVendorTagAndId", e);
                                        iArr2 = null;
                                }
                        } catch (IllegalArgumentException e2) {
                                bArr = null;
                                iArr2 = null;
                        }
                } catch (IllegalArgumentException e3) {
                        iArr = null;
                        bArr = null;
                        iArr2 = null;
                }
                StringBuilder sb = new StringBuilder();
                sb.append("getVendorTagAndId, count: ");
                sb.append(iArr2 != null ? Integer.valueOf(iArr2[0]) : null);
                CameraUnitLog.d(TAG, sb.toString());
                if (iArr == null || bArr == null) {
                        return null;
                }
                String[] strArrSplit = new String(bArr, StandardCharsets.UTF_8).split(";");
                for (int i = 0; i < strArrSplit.length; i++) {
                        String strReplace = strArrSplit[i].replace("\u0000", "");
                        strArrSplit[i] = strReplace;
                        strArrSplit[i] = strReplace.replace(" ", "");
                }
                CameraUnitLog.d(TAG,
                                "getVendorTagAndId, names array length: " + strArrSplit.length + ", ids array length: "
                                                + iArr.length);
                for (int i2 = 0; i2 < iArr.length; i2++) {
                        if (i2 < strArrSplit.length) {
                                arrayList.add(strArrSplit[i2]);
                                arrayList.add(Integer.toString(iArr[i2]));
                        }
                }
                return (String[]) arrayList.toArray(new String[0]);
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
                                this.mStreamConfigurationMap = (StreamConfigurationMap) this.mCameraCharacteristics
                                                .get(CameraCharacteristics.SCALER_STREAM_CONFIGURATION_MAP);
                        } catch (Exception e) {
                                CameraUnitLog.d(TAG, "getStreamConfigurationMap, e: " + e.getMessage());
                        }
                }
                return this.mStreamConfigurationMap;
        }
}

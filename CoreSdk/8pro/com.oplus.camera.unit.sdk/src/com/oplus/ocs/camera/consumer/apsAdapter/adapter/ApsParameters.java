package com.oplus.ocs.camera.consumer.apsAdapter.adapter;

import android.hardware.camera2.CameraCharacteristics;
import android.hardware.camera2.CameraMetadata;
import android.hardware.camera2.CaptureResult;
import android.util.ArrayMap;
import android.util.Size;
import android.view.Surface;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.oplus.ocs.camera.common.util.CameraConstant;
import com.oplus.ocs.camera.consumer.apsAdapter.APSClient;
import com.oplus.ocs.camera.consumer.apsAdapter.ApsAdapterLog;
import com.oplus.ocs.camera.consumer.apsAdapter.ApsCameraRequestTag;
import com.oplus.ocs.camera.consumer.apsAdapter.adapter.ImageCategory;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;

/* loaded from: classes.dex */
public class ApsParameters {
    public static final String ALGO_NAME_FRC = "preview_video_frc";
    public static final String ALGO_NAME_NONE = "aps_algo_none";
    public static final String APS_ALGO_AINR = "aps_algo_ainr";
    public static final String APS_ALGO_MFLL = "aps_algo_mfll";
    public static final int APS_HDR4_REQUEST_NUM = 3;
    public static final int APS_HDR_BRIGHT_DEFAUlT_INDEX = -1;
    public static final String APS_PIPELINE_NAME_AUTO_SCENE_DETECT = "pipeline_asd";
    public static final String APS_PIPELINE_NAME_CAPTURE = "pipeline_capture";
    public static final String APS_PIPELINE_NAME_DEFAULT = "pipeline_default";
    public static final String APS_PIPELINE_NAME_PREVIEW = "pipeline_preview";
    public static final String APS_PIPELINE_NAME_VIDEO = "pipeline_video";
    public static final int APS_SEQUENCE_ID_DEFAUT = -1;
    public static final int APS_SPECIFIC_PROCESS_ALGO_DEFAUT = 0;
    public static final int APS_SPECIFIC_PROCESS_ALGO_HDR5_0 = 1;
    public static final int APS_SPECIFIC_PROCESS_ALGO_HDR5_0_AINR = 3;
    public static final int APS_SPECIFIC_PROCESS_ALGO_HDR5_0_MFLL = 2;
    public static final int APS_SPECIFIC_PROCESS_ALGO_NONE = 0;
    public static final int CATEGORY_AUTO = 1;
    public static final int CATEGORY_MANUAL = 2;
    public static final int DEFAULT_MAP_SIZE = 128;
    public static final int DOUBLE_MAP_SIZE = 2;
    public static final String FLAG_OFF = "0";
    public static final String FLAG_ON = "1";
    public static final int FORCE_STOP_SLOW_VIDEO_RECORD = 1;
    public static final String KEY_HEIF_FILE_FD = "heif_fd";
    public static final String KEY_PACKAGE_NAME = "package_name";
    public static final String KEY_PIPELINE = "pipeline";
    public static final String KEY_PROCESS_IMAGE_IDENTITY = "identity";
    public static final int PREFER_ADD_FRAME_WITH_COPY = 1;
    public static final int PREFER_ADD_FRAME_WITH_DETACH = 0;
    private static final String TAG = "ApsParameters";
    private HashMap<String, String> mMap;
    public static final Key<Integer> KEY_IMAGE_FORMAT = new Key<>("image_format", 2, 0);
    public static final Key<Integer> KEY_IMAGE_ROLE = new Key<>("image_role", 2, 0);
    public static final Key<Integer> KEY_ISO_VALUE_FROM_APP = new Key<>("iso_value_from_app", 1, -1);
    public static final Key<Long> KEY_EXPOSURE_TIME_FROM_APP = new Key<>("exposure_time_from_app", 1, -1L);
    public static final Key<Integer> KEY_EXPOSURE_COMPOSITION_FROM_APP = new Key<>("exposure_composition_from_app", 1,
            0);
    public static final Key<Long> KEY_TIME_STAMP = new Key<>("time_stamp", 2, 0L);
    public static final Key<Boolean> KEY_SUPPORT_MAKEUP = new Key<>("support_makeup", 1, false);
    public static final Key<Integer> KEY_BURST_COUNT = new Key<>("burst_count", 2, 0);
    public static final Key<Boolean> KEY_BURST_SHOT = new Key<>("burst_shot", 2, false);
    public static final Key<Long> KEY_BURST_SHOT_FLAG_ID = new Key<>("burst_shot_flag_id", 2, -1L);
    public static final Key<String> KEY_CSHOT_PATH = new Key<>("cshot_path", 2, "");
    public static final Key<Integer> KEY_REC_BURST_NUMBER = new Key<>("rec_burst_number", 2, -1);
    public static final Key<Boolean> KEY_VALID_BURST_SHOT_IMAGE = new Key<>("valid_burst_shot_image", 2, false);
    public static final Key<Long> KEY_DATE = new Key<>("date", 2, 0L);
    public static final Key<ImageCategory.ItemInfoType> KEY_ITEM_INFO_TYPE = new Key<>("item_info_type", 2,
            ImageCategory.ItemInfoType.CAPTURE);
    public static final Key<Surface> KEY_SURFACE = new Key<>("surface", 2);
    public static final Key<Boolean> KEY_NEED_META_DATA = new Key<>("needMetadata", 2, true);
    public static final Key<Boolean> KEY_NEED_VIDEO_META_DATA = new Key<>("needvideometadata", 2, true);
    public static final Key<Integer> KEY_LOGIC_CAMERA_ID = new Key<>("logic_camera_id", 1, 0);
    public static final Key<Integer> KEY_SPECIFIC_APS_PROCESS_ALGO = new Key<>("specific_aps_process_algo", 1, 0);
    public static final Key<String> KEY_10BITS_ENABLE = new Key<>("10bits_enable", 1, "0");
    public static final Key<Boolean> KEY_REQUEST_MIXED_FORMAT = new Key<>("request_mixed_format", 1, false);
    public static final Key<String> KEY_INPUT_EVLIST = new Key<>("input_ev_list:", 1);
    public static final Key<String> KEY_CROP_WIDTH = new Key<>("crop_width", 1, "0");
    public static final Key<String> KEY_CROP_HEIGHT = new Key<>("crop_height", 1, "0");
    public static final Key<Boolean> KEY_RAW_SYNC_PROCESS_FLAG = new Key<>("raw_sync_process_flag", 1, false);
    public static final Key<Integer> KEY_IMAGE_FORMAT_HINT = new Key<>("image_format_hint", 1, 0);
    public static final Key<String> KEY_TUNING_SURFACE_USAGE = new Key<>("tuning_surface_usage", 1, "");
    public static final Key<Long> KEY_MERGE_IDENTITY = new Key<>("mergeIdentity", 2, -1L);
    public static final Key<Integer> KEY_MERGE_INDEX = new Key<>("mergeIndex", 2, 0);
    public static final Key<Integer> KEY_MERGE_NUMBER = new Key<>("mergeNumber", 2, 1);
    public static final Key<Integer> KEY_PREVIEW_STREAM_NUMBER = new Key<>("previewStreamNumber", 2, 1);
    public static final Key<Integer> KEY_CAPTURE_STREAM_NUMBER = new Key<>("captureStreamNumber", 1, 1);
    public static final Key<Integer> KEY_YUV_TUNING_STREAM_NUMBER = new Key<>("yuvTuningStreamNumber", 2, 1);
    public static final Key<Integer> KEY_RAW_TUNING_STREAM_NUMBER = new Key<>("rawTuningStreamNumber", 2, 1);
    public static final Key<CaptureResult> KEY_CAPTURE_RESULT = new Key<>("captureResult", 2);
    public static final Key<String[]> KEY_APS_PROCESS_ALGO_TYPE = new Key<>("apsProcessAlgoType", 2);
    public static final Key<ApsCameraRequestTag> KEY_CAMERA_REQUEST_TAG = new Key<>("cameraRequestTag", 2);
    public static final Key<Boolean> KEY_REPROCESS_META_DATA = new Key<>("reprocessMetadata", 2, false);
    public static final Key<Integer> KEY_CSHOT_REQUEST_NUMER = new Key<>("cShotRequestNum", 2, 0);
    public static final Key<Integer> KEY_MAX_BURST_SHOT_NUMBER = new Key<>("maxBurstShotNumber", 2, 20);
    public static final Key<Long> KEY_FRAME_NUMBER = new Key<>("frameNumber", 2, 0L);
    public static final Key<String> KEY_STAR_VIDEO_ENABLE = new Key<>("star_video_enable", 1);
    public static final Key<Integer> KEY_OUTPUT_FORMAT = new Key<>("output_format", 1, 0);
    public static final Key<Integer> KEY_FRAME_FLAG = new Key<>("frame_flag", 1, 0);
    public static final Key<Boolean> KEY_CAPTURE_FOR_VIDEO = new Key<>("capture_for_video", 1, false);
    public static final Key<int[]> KEY_INPUT_SIZE = new Key<>("input_size", 2);
    public static final Key<ArrayMap<String, CameraMetadata>> KEY_META_MAP = new Key<>("metaMap", 2);
    public static final Key<String> KEY_CAPTURE_MODE = new Key<>("capture_mode", 1);
    public static final Key<Size> KEY_PREVIEW_SIZE = new Key<>(CameraConstant.TiltShiftParamKeys.PREVIEW_SIZE, 2);
    public static final Key<CameraCharacteristics> KEY_CAMERA_CHARACTERISTICS = new Key<>("cameraCharacteristics", 2);
    public static final Key<Boolean> KEY_NEED_MATCH_TIME_STAMP = new Key<>("needMatchTimeStamp", 2, true);
    public static final Key<ApsWatermarkParam> KEY_APS_WATERMARK_PARAM = new Key<>("watermarkParam", 2);
    public static final Key<Integer> KEY_WATERAMRK_BORDER_X = new Key<>(
            CameraConstant.WaterMarkParamKeys.WATERMARK_BORDER_X, 1);
    public static final Key<Integer> KEY_WATERAMRK_BORDER_Y = new Key<>("watermark_border_Y", 1);
    public static final Key<String> KEY_WATERAMRK_MAKEUP_ENABLE = new Key<>("watermark_makeup_enable", 1);
    public static final Key<Integer> KEY_WATERAMRK_MAKEUP_WIDTH = new Key<>("watermark_makeup_width", 1);
    public static final Key<Integer> KEY_WATERAMRK_MAKEUP_HEIGHT = new Key<>("watermark_makeup_height", 1);
    public static final Key<Integer> KEY_WATERAMRK_MAKEUP_START_X = new Key<>("watermark_makeup_x", 1);
    public static final Key<Integer> KEY_WATERAMRK_MAKEUP_START_Y = new Key<>("watermark_makeup_y", 1);
    public static final Key<Boolean> KEY_IS_DETACHED = new Key<>("isDetached", 2, false);
    public static final Key<Boolean> KEY_USE_TUNING_DATA = new Key<>("use_tuning_data", 2, false);
    public static final Key<String> KEY_SUPER_RAW_ENABLE = new Key<>("super_raw_enable", 1);
    public static final Key<String> KEY_RAW_SR_ENABLE = new Key<>("rawsr_enable", 1);
    public static final Key<String[]> KEY_CAPTURE_ALGO_LIST = new Key<>(APSClient.KEY_CAPTURE_ALGO_LIST, 1);
    public static final Key<Boolean> KEY_END_OF_CAPTURE = new Key<>("end_of_capture", 1);
    public static final Key<Integer> KEY_STREET_RAW_ENABLE = new Key<>("street_raw_enable", 1);
    public static final Key<Integer> KEY_SIZE_MODE = new Key<>("size_mode", 1, -1);
    public static final Key<Integer> KEY_PREFER_ADD_FRAME_TYPE = new Key<>("prefer_add_frame_type", 2, 0);
    public static final Key<Integer> KEY_MAX_HOLD_IMAGES = new Key<>("max_hold_images", 2, 0);
    public static final Key<Boolean> KEY_VIDEO_SNAPSHOT = new Key<>("video_snapshot", 2, false);
    public static final Key<Boolean> KEY_SKIP_PROCESS = new Key<>("skip_process", 1, false);
    public static final Key<Set<Long>> KEY_FRAMES_CAN_NOT_SKIP = new Key<>("frames_can_not_skip", 2);
    public static final Key<Boolean> KEY_CAN_NOT_DROP = new Key<>("can_not_drop", 1, false);
    public static final Key<String> KEY_PORTRAIT_HDR_TYPE = new Key<>("portrait_hdr_type", 1);
    public static final Key<String> KEY_TILT_SHIFT = new Key<>("tilt_shift", 1);
    public static final Key<String> KEY_TILT_SHIFT_PREVIEW_SIZE = new Key<>("tilt_shift_preview_size", 1);
    public static final Key<String> KEY_TILT_SHIFT_TYPE = new Key<>("tilt_shift_type", 1);
    public static final Key<String> KEY_TILT_SHIFT_CENTER_POSITION = new Key<>("tilt_shift_center_position", 1);
    public static final Key<String> KEY_TILT_SHIFT_CLEAR_DISTANCE = new Key<>("tilt_shift_clear_distance", 1);
    public static final Key<String> KEY_TILT_SHIFT_ROTATE_ANGLE = new Key<>("tilt_shift_rotate_angle", 1);
    public static final Key<Boolean> KEY_IS_LONG_EXPOSURE_CAPTURE_ENABLE = new Key<>("long_exposure_capture_enable", 1,
            false);
    public static final Key<Boolean> KEY_IS_CAPTURE_LAST_FRAME = new Key<>("capture_last_frame", 1, false);
    public static final Key<Boolean> KEY_RAW_ON_REPROCESS = new Key<>("raw_on_reprocess", 1, false);
    public static final Key<String> KEY_AIS_STATE = new Key<>("ais_state", 1);
    public static final Key<String> KEY_AIS_DCT_SUPPORT = new Key<>("ais_dct_support", 1);
    public static final Key<String> KEY_AIS_DCT_AINR_SUPPORT = new Key<>("ais_dct_ainr_support", 1);
    public static final Key<String> KEY_AIS_BRACKET = new Key<>("ais_bracket", 1);
    public static final Key<String> KEY_RUNTIME_MEMORY_SIZE = new Key<>("runtime_memory_size", 1);
    public static final Key<String> KEY_RUNTIME_HAL_MEMORY_SIZE = new Key<>("runtime_hal_memory_size", 1);
    public static final String KEY_AVAI_MEMORY = "avai_memory";
    public static final Key<String> KEY_AVAILABLE_MEMORY = new Key<>(KEY_AVAI_MEMORY, 1);
    public static final String KEY_TOTAL_MEMORY = "total_memory";
    public static final Key<String> KEY_TOTAL_MEMORY_SIZE = new Key<>(KEY_TOTAL_MEMORY, 1);
    public static final Key<String> KEY_2DOL_CAPTURE_STREAM_NUMBER = new Key<>("2dol_capture_stream_number", 1);
    public static final Key<String> KEY_TURBO_RAW_SENCE = new Key<>("turbo_raw_sence", 1);
    public static final Key<Integer> KEY_SAT_OPEN = new Key<>("sat_open", 1);
    public static final Key<String> KEY_CAMERA_TYPE = new Key<>("camera_type", 1);
    public static final Key<Integer> KEY_FACE_RECTIFY_OPEN = new Key<>("facerectify_open", 1);
    public static final Key<String> KEY_SINGLE_BLUR_NAME = new Key<>("singlebluralgo_name", 1);
    public static final Key<Integer> KEY_DERED_EYS = new Key<>("dered_eys", 1);
    public static final Key<String> KEY_MAKEUP_TYPE = new Key<>("makeup_type", 1);
    public static final Key<Integer> KEY_SUPPORT_FACEINFO = new Key<>("support_faceinfo", 1);
    public static final Key<Integer> KEY_FACEBASE_RETOUCH_ENABLE = new Key<>("facebase_retouch_enable", 1);
    public static final Key<Integer> KEY_FACE_BEAUTY_ENABLE = new Key<>("face_beauty_enable", 1);
    public static final Key<Integer> KEY_VIDEO_BLUR_OPEN = new Key<>("videoblur_open", 1);
    public static final Key<Integer> KEY_VIDEO_NEON_OPEN = new Key<>("videoneon_open", 1);
    public static final Key<Integer> KEY_FILTER_OPEN = new Key<>("filter_open", 1);
    public static final Key<Integer> KEY_ENHANCE_EYS = new Key<>("enhance_eys", 1);
    public static final Key<Integer> KEY_OPEN_SUPERTEXT = new Key<>("open_supertext", 1);
    public static final Key<Integer> KEY_START_BURST_ENABLE = new Key<>("startburst_enable", 1);
    public static final Key<Integer> KEY_CAPTURE_REPROCESS = new Key<>("capture_reprocess", 1);
    public static final Key<Integer> KEY_FISH_EYS_ENABLE = new Key<>("fisheye_enable", 1);
    public static final Key<Integer> KEY_TILTSHIFT_OPEN = new Key<>("tiltshift_open", 1);
    public static final Key<Integer> KEY_MIRROR_OPEN = new Key<>("mirror_open", 1);
    public static final Key<Integer> KEY_VIDEO_CAPTURE = new Key<>("video_capture", 1);
    public static final Key<Integer> KEY_UPSCALE_OPEN = new Key<>("upscale_open", 1);
    public static final Key<Integer> KEY_FACE_RESTORE_ENABLE = new Key<>("face_restore_enable", 1);
    public static final Key<Integer> KEY_WATER_MARK_ENABLE = new Key<>("watermark_enable", 1);
    public static final Key<Integer> KEY_3D_PHOTO_OPEN = new Key<>("3dphoto_open", 1);
    public static final Key<Integer> KEY_VIDEO_RETENTION_OPEN = new Key<>("videoretention_open", 1);
    public static final Key<Integer> KEY_BURST_CAPTURE = new Key<>("burst_capture", 1);
    public static final Key<String> KEY_APS_MODE_NAME = new Key<>("mode_name", 1);
    public static final Key<Integer> KEY_FACE_BEAUTY_OPEN = new Key<>("facebeauty_open", 1);
    public static final Key<Integer> KEY_SUPPORT_FULL_PROFESSIONAL = new Key<>("support_fullProfessional", 1);
    public static final Key<Integer> KEY_SUPPORT_RAW2YUV = new Key<>("support_raw2yuv", 1);
    public static final Key<Boolean> KEY_IS_TUNING_DATA = new Key<>("is_tuning_data", 1, false);
    public static final Key<Boolean> KEY_OVERHEAT_SKIP_FRAME = new Key<>("overheat.skip.frame", 1, false);
    public static final Key<String> KEY_THERMAL_ALGO_MASK = new Key<>("thermal_algo_mask", 1);
    public static final Key<Boolean> KEY_FAST_SHOT_ENABLE = new Key<>("fast_shot_enable", 1);
    public static final Key<Integer> KEY_MICROSCOPE_CAPTURE_PREVIEW_STATE = new Key<>(
            "microscope_capture_preview_state", 1);
    public static final Key<Integer> KEY_REQUEST_NUM = new Key<>("capture_request_num", 1, 0);
    public static final Key<Boolean> KEY_IS_FACE_DETECTED = new Key<>("is_face_detected", 1, false);
    public static final Key<Boolean> KEY_DECISION_REQUEST_MIXED_FORMAT = new Key<>(
            "previewdecision_request_mixed_format", 1, false);
    public static final Key<String> KEY_HDR_STATE = new Key<>("previewdecision_hdr_state", 1);

    /* loaded from: classes.dex */
    public interface Supplier<T> {
        T get();
    }

    public ApsParameters() {
        this.mMap = null;
        this.mMap = new HashMap<>(128);
    }

    public void set(String str, String str2) {
        if (str2 == null) {
            ApsAdapterLog.e(TAG, "set, key: " + str);
            return;
        }
        this.mMap.remove(str);
        this.mMap.put(str, str2);
    }

    public void remove(String str) {
        ApsAdapterLog.e(TAG, "remove, key: " + str);
        this.mMap.remove(str);
    }

    public void setAll(HashMap<String, String> hashMap) {
        if (hashMap == null) {
            return;
        }
        for (Map.Entry<String, String> entry : hashMap.entrySet()) {
            set(entry.getKey(), entry.getValue());
        }
    }

    public String get(String str) {
        HashMap<String, String> hashMap = this.mMap;
        if (hashMap == null) {
            return null;
        }
        return hashMap.get(str);
    }

    public String[] getParameters() {
        int size = this.mMap.size();
        if (size == 0) {
            return null;
        }
        String[] strArr = new String[size * 2];
        int i = 0;
        for (String str : this.mMap.keySet()) {
            int i2 = i + 1;
            strArr[i] = str;
            i = i2 + 1;
            strArr[i2] = this.mMap.get(str);
        }
        return strArr;
    }

    /* loaded from: classes.dex */
    public static class ParameterModel {
        public Map<Key<?>, ValueWrapper<?>> mParameterMap = new ConcurrentHashMap();

        public <T> void setParameter(@NonNull Key<T> key, final T t) {
            this.mParameterMap.put(key, new ValueWrapper<>(new Supplier<T>() { // from class:
                                                                               // com.oplus.ocs.camera.consumer.apsAdapter.adapter.ApsParameters.ParameterModel.1
                @Override // com.oplus.ocs.camera.consumer.apsAdapter.adapter.ApsParameters.Supplier
                public T get() {
                    return (T) t;
                }
            }));
        }

        public <T> T get(@NonNull Key<T> key) {
            ValueWrapper<?> valueWrapper = this.mParameterMap.get(key);
            return valueWrapper != null ? (T) valueWrapper.getValue().get() : key.getDefault();
        }

        public Map<Key<?>, ValueWrapper<?>> copy(Map<Key<?>, ValueWrapper<?>> map) {
            Object obj;
            for (Map.Entry<Key<?>, ValueWrapper<?>> entry : this.mParameterMap.entrySet()) {
                Key<?> key = entry.getKey();
                Key<?> key2 = new Key<>(key.getName(), key.getCategory(), key.getDefault());
                Object obj2 = entry.getValue().getValue().get();
                if (obj2 instanceof String[]) {
                    obj2 = ((String[]) obj2).clone();
                } else if (obj2 instanceof int[]) {
                    obj2 = ((int[]) obj2).clone();
                } else {
                    if (obj2 instanceof ArrayMap) {
                        obj = new ArrayMap((ArrayMap) obj2);
                    } else if (obj2 instanceof float[]) {
                        float[] fArr = (float[]) obj2;
                        obj = new float[fArr.length];
                        System.arraycopy(fArr, 0, obj, 0, fArr.length);
                    }
                    obj2 = obj;
                }
                map.put(key2, new ValueWrapper<>(new Supplier() { // from class:
                                                                  // com.oplus.ocs.camera.consumer.apsAdapter.adapter.ApsParameters.ParameterModel.2
                    @Override // com.oplus.ocs.camera.consumer.apsAdapter.adapter.ApsParameters.Supplier
                    public Object get() {
                        return obj2;
                    }
                }));
            }
            return map;
        }

        public String toString() {
            StringBuilder sb = new StringBuilder();
            for (Map.Entry<Key<?>, ValueWrapper<?>> entry : this.mParameterMap.entrySet()) {
                Object obj = entry.getValue().getValue().get();
                if (obj instanceof String[]) {
                    sb.append(entry.getKey().getName());
                    sb.append(": ");
                    sb.append(Arrays.toString((String[]) entry.getValue().getValue().get()));
                    sb.append(", ");
                } else if (obj instanceof int[]) {
                    sb.append(entry.getKey().getName());
                    sb.append(": ");
                    sb.append(Arrays.toString((int[]) entry.getValue().getValue().get()));
                    sb.append(", ");
                } else if (obj instanceof float[]) {
                    sb.append(entry.getKey().getName());
                    sb.append(": ");
                    sb.append(Arrays.toString((float[]) entry.getValue().getValue().get()));
                    sb.append(", ");
                } else {
                    sb.append(entry.getKey().getName());
                    sb.append(": ");
                    sb.append(entry.getValue().getValue().get());
                    sb.append(", ");
                }
            }
            sb.replace(sb.length() - 1, sb.length(), "");
            return sb.toString();
        }
    }

    /* loaded from: classes.dex */
    public static final class Key<T> {
        private int mCategory;
        private T mDefault;
        private String mKeyName;

        public Key(String str, int i) {
            this.mKeyName = str;
            this.mCategory = i;
        }

        public Key(String str, int i, T t) {
            this.mKeyName = str;
            this.mCategory = i;
            this.mDefault = t;
        }

        public String getName() {
            return this.mKeyName;
        }

        public int getCategory() {
            return this.mCategory;
        }

        public T getDefault() {
            return this.mDefault;
        }

        public int hashCode() {
            return this.mKeyName.hashCode();
        }

        public boolean equals(@Nullable Object obj) {
            if (obj == null) {
                return false;
            }
            return this.mKeyName.equals(((Key) obj).mKeyName);
        }

        public String toString() {
            return "mKeyName: " + this.mKeyName + ", mCategory: " + this.mCategory + ", mDefault: " + this.mDefault;
        }
    }

    /* loaded from: classes.dex */
    public static final class ValueWrapper<T> {
        private Supplier<T> mValue;

        public ValueWrapper(Supplier<T> supplier) {
            this.mValue = supplier;
        }

        public Supplier<T> getValue() {
            return this.mValue;
        }
    }
}

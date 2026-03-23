package com.oplus.ocs.camera.common.util;

import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.math.BigDecimal;
/* loaded from: classes.dex */
public final class CameraConstant {
    public static final int ALPHA_FULL = 255;
    public static final int APERTURE_VALUE_2400 = 2400;
    public static final int APS_SUPPORT_ZOOM_FEATURE_IZOOM = 4;
    public static final int BLUR_VALUE_DEFAULT = 60;
    public static final int BLUR_VALUE_MAX = 100;
    public static final int BLUR_VALUE_MIN = 1;
    public static final int BOKEH_MAIN_PICTURE_HEIGHT_INDEX = 1;
    public static final int BOKEH_MAIN_PICTURE_WIDTH_INDEX = 0;
    public static final int BOKEH_SUB_PICTURE_HEIGHT_INDEX = 3;
    public static final int BOKEH_SUB_PICTURE_WIDTH_INDEX = 2;
    public static final int CAMERA_HAL_RECT_COORDINATE_LENGTH = 1000;
    public static final int CAPTURE_BRACKET_MODE_ELEVEN = 11;
    public static final int CAPTURE_BRACKET_MODE_ONE = 1;
    public static final int CAPTURE_BRACKET_MODE_SEVENTEEN = 17;
    public static final int CAPTURE_BRACKET_MODE_ZERO = 0;
    public static final int CAPTURE_RAW10_BAYER = 1;
    public static final int CAPTURE_RAW10_MIPI = 0;
    public static final int CLOSING_CAMERA = 4;
    public static final int COLOR_TEMPERATURE_AUTO = -1;
    public static final double COMPARE_LIMIT = 0.01d;
    public static final String DNG_DESCRIPTION = "this is from oplus camera";
    public static final int EXPOSURE_TIME_AUTO_VALUE = -1;
    public static final String FEATURE_EXPLORER = "explorer";
    public static final int FLAG_ALL = 2047;
    public static final int FLAG_ANIMOJI = 16;
    public static final int FLAG_BLUR = 1;
    public static final int FLAG_DOUBLE_EXPOSURE = 1024;
    public static final int FLAG_FACE_SLENDER = 4;
    public static final int FLAG_FILTER = 2;
    public static final int FLAG_STICKER = 8;
    public static final int FLAG_SUPER_TEXT = 64;
    public static final int FLAG_TILTSHIFT = 512;
    public static final int FLAG_VIDEO_BLUR = 32;
    public static final int FLAG_VIDEO_RETENTION = 256;
    public static final int FLAG_VIDEO_WATERMARK = 128;
    public static final int FRONT_CAMERA = 1;
    public static final int HEX_RADIX = 16;
    public static final int INVAILD_NUM = -1;
    public static final int IN_SENSOR_ZOOM_FIRST_FRAME = 1;
    public static final int IN_SENSOR_ZOOM_LAST_FRAME = 3;
    public static final int IN_SENSOR_ZOOM_MIDDLE_FRAME = 2;
    public static final int IN_SENSOR_ZOOM_MIN_PICTURE_NUM = 3;
    public static final int IN_SENSOR_ZOOM_SINGLE_FRAME = 4;
    public static final int ISO_AUTO_VALUE = -1;
    public static final int JPEG_QUALITY_BURST = 75;
    public static final int JPEG_QUALITY_FULL = 100;
    public static final int JPEG_QUALITY_NORMAL = 95;
    public static final String JSON_CONNECTOR_COMMA = ",";
    public static final String JSON_CONNECTOR_X = "X";
    public static final String KEY_BOKEH_STATE = "BOKEH_STATE";
    public static final String KEY_PLATFORM = "platform";
    public static final int LOGIC_CAMERA_TYPE_RTB = 1;
    public static final int LOGIC_CAMERA_TYPE_SAT = 2;
    public static final int LOGIC_CAMERA_TYPE_SINGLE = 0;
    public static final String MAKEUP_TYPE_NONE = "none";
    public static final int MAX_IMAGE_NUMBER = 20;
    public static final int MAX_IMAGE_NUMBER_META = 40;
    public static final int MAX_IMAGE_NUMBER_SLOW_MODE = 16;
    public static final int MAX_IMAGE_NUMBER_SUPER_EIS = 40;
    public static final String MAX_VIDEO_SIZE_DEFAULT_TAG = "default";
    public static final long MEMORY_GB_4G = 4294967296L;
    public static final long MEMORY_GB_5G = 5368709120L;
    public static final long MEMORY_GB_7G = 7516192768L;
    public static final long MEMORY_GB_9G = 9663676416L;
    public static final int MEMORY_MB_TO_BYTE = 1048576;
    public static final byte MFNR_DEFAULT_VALUE = 0;
    public static final byte MFNR_VALUE = 102;
    public static final long MTK_CAMERA_FLEXIBLE_CAPABILITIES_INPUT_FORMAT_IMPDEFINED = 0;
    public static final long MTK_CAMERA_FLEXIBLE_CAPABILITIES_INPUT_FORMAT_YCBCR420888 = 1;
    public static final long MTK_CAMERA_FLEXIBLE_CAPABILITIES_OUTPUT_DATSPACE_DISPLAYP3 = 1;
    public static final long MTK_CAMERA_FLEXIBLE_CAPABILITIES_OUTPUT_DATSPACE_IGNORE = 0;
    public static final long MTK_CAMERA_FLEXIBLE_CAPABILITIES_OUTPUT_FORMAT_IGNORE = 0;
    public static final long MTK_CAMERA_FLEXIBLE_CAPABILITIES_OUTPUT_FORMAT_YUVP010 = 1;
    public static final long MTK_CAMERA_FLEXIBLE_CAPABILITIES_UNSUPPORTED = 0;
    public static final long MTK_CAMERA_FLEXIBLE_CAPABILITIES_USAGE_CAPTURE = 1;
    public static final long MTK_CAMERA_FLEXIBLE_CAPABILITIES_USAGE_PREVIEW = 0;
    public static final long MTK_CAMERA_FLEXIBLE_CAPABILITIES_USAGE_VIDEO = 2;
    public static final int MTK_CONTROL_AWB_SHADE = 10;
    public static final int MTK_CONTROL_CAPTURE_HINT_FOR_CUSTOM_TUNING_SUPER_NIGHT = 14;
    public static final int MTK_CONTROL_CAPTURE_HINT_FOR_ISP_TUNING_AINR = 2;
    public static final int MTK_CONTROL_CAPTURE_HINT_FOR_ISP_TUNING_DEFAULT_NONE = 0;
    public static final int MTK_CONTROL_CAPTURE_HINT_FOR_ISP_TUNING_HDR = 3;
    public static final int MTK_CONTROL_CAPTURE_HINT_FOR_ISP_TUNING_MFNR = 1;
    public static final int MTK_CONTROL_CAPTURE_HINT_FOR_ISP_TUNING_SUPER_END = 5;
    public static final int MTK_CONTROL_CAPTURE_HINT_FOR_ISP_TUNING_SUPER_NIGHT = 4;
    public static final int MTK_FRAME_INDEX_REQUEST_RAW_AND_YUV = 1;
    public static final int MTK_MFNR_DOZIP_WITH_BSS_VALUE = 1;
    public static final int MULTI_CAM_FEATURE_MODE_RTB = 1;
    public static final int MULTI_CAM_FEATURE_MODE_SAT = 0;
    public static final int OPLUS_CONTROL_CAPTURE_HINT_FOR_ISP_TUNING_CUSTOMER_MAIN_HDR = 5007;
    public static final int OPLUS_META_STREAM_HEIGHT = 1024;
    public static final int OPLUS_META_STREAM_WIDTH = 300;
    public static final int ORIENTATION_0 = 0;
    public static final int ORIENTATION_180 = 180;
    public static final int ORIENTATION_270 = 270;
    public static final int ORIENTATION_360 = 360;
    public static final int ORIENTATION_45 = 45;
    public static final int ORIENTATION_90 = 90;
    public static final String PLATFORM_QCOM = "qcom";
    public static final int PREVIEW_STARTED = 1;
    public static final int PREVIEW_STARTTING = 5;
    public static final int PREVIEW_STOPPED = 0;
    public static final float RAW_LENGTH_RATIO = 2.0f;
    public static final int REAR_CAMERA = 0;
    public static final int REPROCESS_MAX_IMAGE_NUM = 20;
    public static final int SAT_CAMERA_NUMBER = 3;
    public static final int SENSOR_NUMBER_DEFAULT = 1;
    public static final double SENSOR_RAW_RATIO = 1.3333333333333333d;
    public static final int SLOW_SHUTTER_THRESHOLD_TIME = 40000000;
    public static final int SNAPSHOT_IN_PROGRESS = 2;
    public static final int STARBURST_INFO_LENGTH = 3006;
    public static final int SWITCHING_CAMERA = 3;
    public static final long TIME_LIMIT = 25000;
    public static final int TIME_RATIO_MS_TO_NS = 1000000;
    public static final int TIME_RATIO_S_TO_NS = 1000000000;
    public static final String TYPE_NONE = "default";
    public static final String VARIABLE_CAMERA = "var_camera";
    public static final long VIDEO_FRAME_DEFAULT_USAGE = 128;
    public static final int VSDOF_OPTICAL_ZOOM_1X = 0;
    public static final int VSDOF_OPTICAL_ZOOM_2X = 1;
    public static final float YUV_420SP_LENGTH_RATIO = 1.5f;
    public static final BigDecimal BLUR_VALUE_INDEX_TO_ALGORITHM = new BigDecimal("0.01");
    public static final Byte STATUS_ON = (byte) 1;
    public static final Byte STATUS_OFF = (byte) 0;

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes.dex */
    public @interface AiNightVideoValues {
        public static final int AI_NIGHT_VIDEO_OFF = 0;
        public static final int AI_NIGHT_VIDEO_ON = 1;
    }

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes.dex */
    public @interface ApsPreviewCallbackType {
        public static final String KEY_PREVIEW_CALLBACK_TYPE_HARDWARE_BUFFER = "0";
        public static final String KEY_PREVIEW_CALLBACK_TYPE_IMAGE_NV12 = "1";
        public static final String KEY_PREVIEW_CALLBACK_TYPE_IMAGE_NV21 = "2";
    }

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes.dex */
    public @interface BokehState {
        public static final int CAMERA_CALIBRATION = 8;
        public static final int CAMERA_COVERGED_MAIN = 10;
        public static final int CAMERA_COVERGED_SUB = 7;
        public static final int CAMERA_SINGLE = 9;
        public static final int DEPTH_EFFECT_SUCCESS = 1;
        public static final int INVALID = -1;
        public static final int LOW_LIGHT = 4;
        public static final int NO_DEPTH_EFFECT = 0;
        public static final int SUBJECT_NOT_FOUND = 5;
        public static final int TOO_FAR = 3;
        public static final int TOO_NEAR = 2;
        public static final int TOUCH_TO_FOCUS = 6;
    }

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes.dex */
    public @interface BokehType {
        public static final String DUAL_BOKEH = "dual_bokeh";
        public static final String SINGLE_BOKEH = "single_bokeh";
    }

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes.dex */
    public @interface CameraIdType {
        public static final int FRONT_AUX_RGB_CAMERA = 3;
        public static final int FRONT_PORTRAIT_MODE = 10;
        public static final int FRONT_RGB_CAMERA = 1;
        public static final int INVALID_CAMERA_ID = -1;
        public static final int REAR_AUX_RGB_CAMERA = 2;
        public static final int REAR_MACRO_RGB_CAMERA = 17;
        public static final int REAR_MICROSCOPE_CAMERA = 19;
        public static final int REAR_MONO_MODE_1 = 13;
        public static final int REAR_MONO_MODE_2 = 14;
        public static final int REAR_OCAM_SDK_MODE_MAIN_TELE = 23;
        public static final int REAR_OCAM_SDK_MODE_MAIN_WIDE = 21;
        public static final int REAR_OCAM_SDK_MODE_REAR_FRONT = 20;
        public static final int REAR_OCAM_SDK_MODE_WIDE_TELE = 22;
        public static final int REAR_PORTRAIT_MODE = 8;
        public static final int REAR_PORTRAIT_MONO_MODE_1 = 15;
        public static final int REAR_PORTRAIT_MONO_MODE_2 = 16;
        public static final int REAR_RGB_CAMERA = 0;
        public static final int REAR_SAT_MODE = 12;
        public static final int REAR_SECOND_PORTRAIT_MODE = 11;
        public static final int REAR_TELE_RGB_CAMERA = 6;
        public static final int REAR_TOF_3D_MODE = 9;
    }

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes.dex */
    public @interface CameraType {
        public static final String FRONT_DUAL_CAMERA = "front_dual";
        public static final String FRONT_MAIN_CAMERA = "front_main";
        public static final String FRONT_WIDE_CAMERA = "front_wide";
        public static final String META_CAMERA = "meta";
        public static final String REAR_MACRO_CAMERA = "rear_macro";
        public static final String REAR_MAIN_CAMERA = "rear_main";
        public static final String REAR_MAIN_FRONT_MAIN_CAMERA = "rear_main_front_main";
        public static final String REAR_MAIN_FRONT_SUB_CAMERA = "rear_main_front_sub";
        public static final String REAR_MAIN_REAR_TELE_CAMERA = "rear_main_rear_tele";
        public static final String REAR_MAIN_REAR_WIDE_CAMERA = "rear_main_rear_wide";
        public static final String REAR_MICROSCOPE_CAMERA = "rear_microscope";
        public static final String REAR_MONO_CAMERA_1 = "rear_mono_1";
        public static final String REAR_MONO_CAMERA_2 = "rear_mono_2";
        public static final String REAR_PORTRAIT_CAMERA = "rear_portrait";
        public static final String REAR_PORTRAIT_MONO_1 = "rear_portrait_mono_1";
        public static final String REAR_PORTRAIT_MONO_2 = "rear_portrait_mono_2";
        public static final String REAR_SAT_CAMERA = "rear_sat";
        public static final String REAR_SECOND_PORTRAIT_CAMERA = "rear_second_portrait";
        public static final String REAR_TELE_CAMERA = "rear_tele";
        public static final String REAR_TOF_3D_CAMERA = "rear_tof_3d";
        public static final String REAR_WIDE_CAMERA = "rear_wide";
        public static final String REAR_WIDE_REAR_TELE_CAMERA = "rear_wide_rear_tele";
    }

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes.dex */
    public @interface CaptureFailCode {
        public static final int MEMORY_NOT_ENOUGH = 1;
    }

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes.dex */
    public @interface CommonStateValue {
        public static final String AUTO = "auto";
        public static final String OFF = "off";
        public static final String ON = "on";
    }

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes.dex */
    public @interface EIS {
        public static final int EIS_RECORD_STATE_START = 1;
        public static final int EIS_RECORD_STATE_STOP = 0;
    }

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes.dex */
    public @interface FlashMode {
        public static final String FLASH_AUTO = "auto";
        public static final String FLASH_OFF = "off";
        public static final String FLASH_ON = "on";
        public static final String FLASH_TORCH = "torch";
    }

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes.dex */
    public @interface FocusMode {
        public static final int AF_MODE_AUTO = 3;
        public static final int AF_MODE_CONTINUOUS_PICTURE = 1;
        public static final int AF_MODE_CONTINUOUS_VIDEO = 2;
        public static final int AF_MODE_LOCK = 4;
        public static final int AF_MODE_OFF = 0;
    }

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes.dex */
    public @interface FpsValue {
        public static final int FPS_120 = 120;
        public static final int FPS_240 = 240;
        public static final int FPS_30 = 30;
        public static final int FPS_480 = 480;
        public static final int FPS_60 = 60;
        public static final int FPS_960 = 960;
        public static final int MAX_FPS_COMPARE_VALUE = 300;
    }

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes.dex */
    public @interface HdrMode {
        public static final String AUTO = "auto";
        public static final String OFF = "off";
        public static final String ON = "on";
    }

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes.dex */
    public @interface HyperLapse {
        public static final String HYPER_LAPSE = "hyper_lapse";
        public static final String OFF = "off";
    }

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes.dex */
    public @interface ModeName {
        public static final String BASIC_CAPTURE_MODE = "basic_capture_mode";
        public static final String BASIC_PREVIEW_MODE = "basic_preview_mode";
        public static final String FAST_VIDEO_MODE = "fastvideo_mode";
        public static final String FISH_EYE_MODE = "fisheye_mode";
        public static final String HIGH_DEFINITION_MODE = "high_definition_mode";
        public static final String HIGH_PIXEL_MODE = "high_pixel_mode";
        public static final String ID_PHOTO_MODE = "id_photo_mode";
        public static final String LONG_EXPOSURE_MODE = "long_exposure_mode";
        public static final String MACRO_MODE = "macro_mode";
        public static final String MICROSCOPE_CAPTURE_MODE = "microscope_capture_mode";
        public static final String MICROSCOPE_VIDEO_MODE = "microscope_video_mode";
        public static final String MOVIE_MODE = "movie_mode";
        public static final String MULTI_CAMERA_MODE = "multi_camera_mode";
        public static final String NIGHT_MODE = "night_mode";
        public static final String PANORAMA_MODE = "panorama_mode";
        public static final String PHOTO_MODE = "photo_mode";
        public static final String PORTRAIT_MODE = "portrait_mode";
        public static final String PROFESSIONAL_MODE = "professional_mode";
        public static final String SLOW_VIDEO_MODE = "slowvideo_mode";
        public static final String STAR_CAPTURE_MODE = "star_capture_mode";
        public static final String STAR_VIDEO_MODE = "star_video_mode";
        public static final String STICKER_MODE = "sticker_mode";
        public static final String STREET_MODE = "street_mode";
        public static final String SUPER_TEXT_MODE = "super_text_mode";
        public static final String THREE_D_PHOTO_MODE = "3d_photo_mode";
        public static final String TIME_LAPSE_PRO_MODE = "time_lapse_pro_mode";
        public static final String ULTRA_HIGH_RESOLUTION_MODE = "ultraHD_mode";
        public static final String VIDEO_MODE = "video_mode";
        public static final String XPAN_MODE = "xpan_mode";
    }

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes.dex */
    public @interface MonoFilterType {
        public static final String BLACK_WHITE = "black_white";
    }

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes.dex */
    public @interface NightVideo {
        public static final String NORMAL_NIGHT_VIDEO = "normal_night_video";
        public static final String ULTRA_NIGHT_VIDEO = "ultra_night_video";
    }

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes.dex */
    public @interface Orientation {
        public static final int ORIENTATION_0 = 0;
        public static final int ORIENTATION_180 = 180;
        public static final int ORIENTATION_270 = 270;
        public static final int ORIENTATION_90 = 90;
    }

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes.dex */
    public @interface PortraitBodyType {
        public static final String FULL_BODY = "full_body";
        public static final String HALF_BODY = "half_body";
    }

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes.dex */
    public @interface RawValue {
        public static final String NONE = "none";
        public static final String RAW = "raw";
        public static final String SUPER_RAW = "super_raw";
    }

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes.dex */
    public @interface RecordingState {
        public static final int RECORDING_PAUSE = 2;
        public static final int RECORDING_RESUME = 3;
        public static final int RECORDING_START = 1;
        public static final int RECORDING_STOP = 4;
    }

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes.dex */
    public @interface SessionSurfaceType {
        public static final String JSON_KEY_STREAM_CAPTURE = "capture";
        public static final String JSON_KEY_STREAM_CAPTURE_RAW = "capture_raw";
        public static final String JSON_KEY_STREAM_CAPTURE_YUV = "capture_yuv";
        public static final String JSON_KEY_STREAM_CAPTURE_YUV_MFNR = "capture_yuv_mfnr";
        public static final String JSON_KEY_STREAM_PREVIEW = "preview";
        public static final String JSON_KEY_STREAM_PREVIEW_FRAME = "preview_frame";
        public static final String JSON_KEY_STREAM_PREVIEW_IN_PREVIEW = "preview_in_preview";
        public static final String JSON_KEY_STREAM_RAW_OUT = "raw_output";
        public static final String JSON_KEY_STREAM_REPROCESS_IN = "reprocess_input";
        public static final String JSON_KEY_STREAM_REPROCESS_YUV = "reprocess_yuv";
        public static final String JSON_KEY_STREAM_TUNING_DATA_RAW = "tuning_data_raw";
        public static final String JSON_KEY_STREAM_TUNING_DATA_YUV = "tuning_data_yuv";
        public static final String JSON_KEY_STREAM_VIDEO = "video";
        public static final String JSON_KEY_STREAM_VIDEO_RECORDER = "video_recorder";
    }

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes.dex */
    public @interface StreamerPortrait {
        public static final String STREAMER_PORTRAIT = "streamer_portrait";
    }

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes.dex */
    public @interface SurfaceType {
        public static final int IMAGE_READER = 3;
        public static final int IMAGE_READER_RAW = 8;
        public static final int IMAGE_READER_TUNING_RAW = 10;
        public static final int IMAGE_READER_TUNING_YUV = 9;
        public static final int PREVIEW_FRAME = 6;
        public static final int PREVIEW_IMAGE = 5;
        public static final int RECORDING_SURFACE = 4;
        public static final int REPROCESS_INPUT = 7;
        public static final int REPROCESS_YUV = 11;
        public static final int SURFACE_TEXTURE = 2;
        public static final int SURFACE_VIEW = 1;
    }

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes.dex */
    public @interface TiltShiftParamKeys {
        public static final String BLUR_VALUE = "blurValue";
        public static final String CENTER_POSITION = "centerPosition";
        public static final String CLEAR_DISTANCE = "clearDistance";
        public static final String PREVIEW_SIZE = "previewSize";
        public static final String ROTATE_ANGLE = "rotateAngle";
        public static final String TYPE = "type";
    }

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes.dex */
    public @interface UseCase {
        public static final String AI_HIGH_PIXEL_CASE = "ai_high_pixel_case";
        public static final String CODEC_VIDEO = "codec_video_case";
        public static final String EIS_PRO = "eis_pro_case";
        public static final String FISH_EYE = "fisheye_case";
        public static final String FRONT_DUAL_PORTRAIT = "front_dual_portrait_case";
        public static final String FRONT_MFNR_NIGHT = "front_mfnr_night_case";
        public static final String FRONT_NIGHT = "front_night_case";
        public static final String FRONT_SINGLE_MFNR_PHOTO = "front_single_mfnr_photo_case";
        public static final String FRONT_SINGLE_MFNR_PORTRAIT = "front_single_mfnr_portrait_case";
        public static final String FRONT_SINGLE_PHOTO = "front_single_photo_case";
        public static final String FRONT_SUB_NIGHT = "front_sub_night_case";
        public static final String HFR_SLOW_VIDEO = "hfr_video_case";
        public static final String HYPER_LAPSE = "hyper_lapse_case";
        public static final String ID_PHOTO_CASE = "id_photo_case";
        public static final String LONG_EXPOSURE = "long_exposure_case";
        public static final String MFNR_PHOTO = "mfnr_photo_case";
        public static final String MICROSCOPE_CAPTURE = "microscope_capture_case";
        public static final String MONO_CAMERA1 = "mono_camera1_case";
        public static final String MONO_CAMERA2 = "mono_camera2_case";
        public static final String MULTI_CAMERA_MAIN_TELE = "multi_case_main_tele";
        public static final String MULTI_CAMERA_MAIN_WIDE = "multi_case_main_wide";
        public static final String MULTI_CAMERA_WIDE_TELE = "multi_case_wide_tele";
        public static final String NONE_SAT_NIGHT = "none_sat_night_case";
        public static final String PANORAMA = "panorama_case";
        public static final String PORTRAIT_BOKEH = "portrait_bokeh_case";
        public static final String PORTRAIT_FULL_BODY_BOKEH = "portrait_full_body_bokeh_case";
        public static final String PORTRAIT_HALF_BODY_BOKEH = "portrait_half_body_bokeh_case";
        public static final String PORTRAIT_MONO1 = "portrait_mono1_case";
        public static final String PORTRAIT_MONO2 = "portrait_mono2_case";
        public static final String PREVIEW_FRAME = "preview_frame_case";
        public static final String PROFESSIONAL = "professional_case";
        public static final String RECORDER_VIDEO = "recorder_video_case";
        public static final String SAT_NIGHT = "sat_night_case";
        public static final String SAT_PHOTO = "sat_photo_case";
        public static final String SAT_STREET = "sat_street_case";
        public static final String SIMPLE_PHOTO = "simple_photo_case";
        public static final String SIMPLE_PREVIEW = "simple_preview_case";
        public static final String SINGLE_PHOTO = "single_photo_case";
        public static final String SINGLE_PORTRAIT = "single_portrait_case";
        public static final String STANDARD_PHOTO = "standard_photo_case";
        public static final String STAR_CAPTURE_CASE = "star_capture_case";
        public static final String STAR_VIDEO = "star_video_case";
        public static final String STREET = "street_case";
        public static final String ULTRA_HIGH_RESOLUTION_CASE = "ultra_high_resolution_case";
        public static final String VIDEO_FRAME_SNAPSHOT = "video_frame_snapshot_case";
        public static final String VIDEO_RECORDER_SNAPSHOT = "video_recorder_snapshot_case";
        public static final String WATERMARK_VIDEO = "video_watermark_case";
    }

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes.dex */
    public @interface UsecaseName {
        public static final String GESTURE = "gesture";
        public static final String PHOTO = "photo_mode";
        public static final String SAT = "sat";
        public static final String VIDEO = "video_mode";
    }

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes.dex */
    public @interface VideoEffectParamKeys {
        public static final String BLUR_LEVEL = "blur_level";
        public static final String BLUR_SHOW = "blur_show";
        public static final String RETENTION_PROCESS = "retention_process";
        public static final String VIDEO_ORIENTATION = "orientation";
    }

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes.dex */
    public @interface VideoEncoder {
        public static final String H264 = "H264";
        public static final String H265 = "H265";
    }

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes.dex */
    public @interface VideoFpsValue {
        public static final String VIDEO_FPS_120 = "video_120fps";
        public static final String VIDEO_FPS_240 = "video_240fps";
        public static final String VIDEO_FPS_30 = "video_30fps";
        public static final String VIDEO_FPS_480 = "video_480fps";
        public static final String VIDEO_FPS_60 = "video_60fps";
        public static final String VIDEO_FPS_960 = "video_960fps";
    }

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes.dex */
    public @interface VideoStabilizationMode {
        public static final String SUPER_STABILIZATION = "super_stabilization";
        public static final String SUPER_STABILIZATION_FRONT = "super_stabilization_front";
        public static final String VIDEO_STABILIZATION = "video_stabilization";
    }

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes.dex */
    public @interface WaterMarkParamKeys {
        public static final String FILE_PATH = "filePath";
        public static final String INPUT_WIDTH = "inputWidth";
        public static final String MAKEUP_ENABLE = "makeupEnable";
        public static final String MAKEUP_HEIGHT = "makeupHeight";
        public static final String MAKEUP_START_X = "makeupStartX";
        public static final String MAKEUP_START_Y = "makeupStartY";
        public static final String MAKEUP_WIDTH = "makeupWidth";
        public static final String NEED_SCALE = "needScale";
        public static final String ORIENTATION = "orientation";
        public static final String REF_WIDTH = "refWidth";
        public static final String SIZE = "size";
        public static final String WATERMARK_BORDER_X = "watermark_border_x";
        public static final String WATERMARK_BORDER_Y = "watermark_border_y";
        public static final String YUV_BUFFER = "buffer";
    }

    private CameraConstant() {
    }
}

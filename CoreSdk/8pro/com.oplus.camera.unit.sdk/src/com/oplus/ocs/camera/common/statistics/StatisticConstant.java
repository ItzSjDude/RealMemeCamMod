package com.oplus.ocs.camera.common.statistics;

/* JADX INFO: loaded from: classes.dex */
public class StatisticConstant {
    public static final String ALGO_PROCESS_ERROR = "algo_process_error";
    public static final int HDR_OFF = 0;
    public static final int HDR_ON = 1;
    public static final String KEY_AI_ENHANCE = "ai_enhance";
    public static final String KEY_AI_ENHANCE_CHANGE = "ai_enhance_change";
    public static final String KEY_AI_ENHANCE_END = "ai_enhance_end";
    public static final String KEY_AI_ENHANCE_START = "ai_enhance_start";
    public static final String KEY_CAMERA_ID = "camera_id";
    public static final String KEY_DUAL_CAMERA = "dual_camera";
    public static final String KEY_DURATION = "duration";
    public static final String KEY_ENTER_TIME = "enter_time";
    public static final String KEY_HDR_STATUS = "hdr_status";
    public static final String KEY_HEIGHT = "height";
    public static final String KEY_IS_CONNECT_GIMBAL = "is_connect_gimbal";
    public static final String KEY_IS_HDR = "hdr_mode";
    public static final String KEY_IS_RECTIFY = "is_rectify";
    public static final String KEY_IS_STABILIZED = "is_stabilized";
    public static final String KEY_IS_SUPER_STABILIZED = "ultra_steady";
    public static final String KEY_IS_WIDE = "is_wide_angle";
    public static final String KEY_MULTI_FRAME_DENOISE = "multi_frame_denoise";
    public static final String KEY_NIGHT_STATE = "night_state";
    public static final String KEY_PACK_NAME = "pack_name";
    public static final String KEY_PORTRAIT_MODE = "portrait_mode";
    public static final String KEY_PREVIEW_DURATION = "preview_duration";
    public static final String KEY_PREVIEW_START_TIME = "preview_start_time";
    public static final String KEY_PREVIEW_TYPE = "preview_type";
    public static final String KEY_REMOSAIC = "remosaic";
    public static final String KEY_SLOW_MOTION = "slow_motion";
    public static final String KEY_SMA_WIRE_BROKEN = "sma_wire_broken";
    public static final String KEY_SN_BUFFER = "sn_buffer";
    public static final String KEY_VIDEO_FPS = "video_fps";
    public static final String KEY_WIDTH = "width";
    public static final String KEY_ZOOM_VALUE = "zoom_value";
    public static final String STATISTIC_CAMERA_APP_CODE = "20009";
    public static final String STATISTIC_UNIT_APP_CODE = "20230";
    public static final String VALUE_OFF = "off";
    public static final String VALUE_ON = "on";

    public @interface AbnormalDisplayKeys {
        public static final String KEY_ABNORMAL_PREVIEW = "abnormal_preview";
    }

    public @interface AbnormalDisplayValues {
        public static final int KEY_PREVIEW_CONFIG_FAILED = 2;
        public static final int KEY_PREVIEW_DROP_FRAME = 4;
        public static final int KEY_PREVIEW_GL_ERROR = 6;
        public static final int KEY_PREVIEW_MISS_APS_PREVIEW_FRAME = 5;
        public static final int KEY_PREVIEW_MISS_HAL_PREVIEW_FRAME = 3;
        public static final int KEY_PREVIEW_OPEN_CAMERA_ERROR = 1;
    }

    public @interface FunctionalErrorKeys {
        public static final String KEY_CAPTURE_FAILED = "capture_failed";
        public static final String KEY_MODE_SWITCH_PROBLEM = "mode_switch_problem";
        public static final String KEY_PICTURE_FUNCTION_PROBLEM = "picture_function_problem";
        public static final String KEY_THUMBNAIL_CLICK_PROBLEM = "thumbnail_click_problem";
        public static final String KEY_VIDEO_RECORD_PROBLEM = "video_record_problem";
    }

    public @interface FunctionalErrorValues {
        public static final int CF_AE_STATE_CHECK = 23;
        public static final int CF_AF_STATE_CHECK = 1;
        public static final int CF_APS_FINISH_ADD_FRAME = 3;
        public static final int CF_CAPTURE_EXCEPTION = 8;
        public static final int CF_DECISION_RESULT_IS_NULL = 7;
        public static final int CF_LAST_CAPTURE_IS_NOT_FINISH = 4;
        public static final int CF_MEMORY_IS_NOT_ENOUGH = 2;
        public static final int CF_MEMORY_OR_STORAGE_IS_NOT_ENOUGH = 5;
        public static final int CF_SENSOR_MODE_SWITCH_TIMEOUT = 25;
        public static final int CF_SHUTTER_BUTTON_INACTIVE = 0;
        public static final int CF_SOUND_IS_NOT_LOADED = 6;
        public static final int CF_ZOOM_STATE_IS_CHANGING = 9;
        public static final int MSP_NOT_ALLOW_TO_SWITCH_MODE = 22;
        public static final int PFP_NO_LOCATION_DATA = 13;
        public static final int TCP_CAMERA_STATE_CAUSE = 11;
        public static final int TCP_THUMBNAIL_IS_NULL = 12;
        public static final int TCP_URI_INVALID = 10;
        public static final int VCP_CAN_NOT_RECORD = 14;
        public static final int VCP_CAN_NOT_RECORD_BATTERY = 16;
        public static final int VCP_CAN_NOT_RECORD_MEMORY = 15;
        public static final int VCP_FAILED_TO_ADD_VIDEO_TO_MEDIA_STORE = 21;
        public static final int VCP_RECORDER_ERROR = 20;
        public static final int VCP_RECORDER_PREPARE_FAILED = 17;
        public static final int VCP_RECORDER_STOP_FAILED = 18;
        public static final int VCP_RECORD_FILE_IS_INVALID = 19;
    }

    public static class EventType {
        public String mAppId;
        public String mCategory;
        public String mEventId;
        public static final EventType CAPTURE = new EventType(StatisticConstant.STATISTIC_UNIT_APP_CODE, "200", "portrait");
        public static final EventType RECORD = new EventType(StatisticConstant.STATISTIC_UNIT_APP_CODE, "202", "videoRecord");
        public static final EventType PREVIEW = new EventType(StatisticConstant.STATISTIC_UNIT_APP_CODE, "203", "preview");
        public static final EventType PREVIEW_END = new EventType(StatisticConstant.STATISTIC_UNIT_APP_CODE, "203", "preview_end");
        public static final EventType ENTER = new EventType(StatisticConstant.STATISTIC_UNIT_APP_CODE, "201", "start");
        public static final EventType EXIT = new EventType(StatisticConstant.STATISTIC_UNIT_APP_CODE, "201", "exit");
        public static final EventType FUNCTIONAL_ERROR = new EventType(StatisticConstant.STATISTIC_CAMERA_APP_CODE, "207", "functional_error");
        public static final EventType ABNORMAL_DISPLAY = new EventType(StatisticConstant.STATISTIC_CAMERA_APP_CODE, "207", "abnormal_display");
        public static final EventType ERROR_CODE = new EventType(StatisticConstant.STATISTIC_CAMERA_APP_CODE, "207", "error_code");

        public EventType(String str, String str2, String str3) {
            this.mAppId = str;
            this.mCategory = str2;
            this.mEventId = str3;
        }
    }
}

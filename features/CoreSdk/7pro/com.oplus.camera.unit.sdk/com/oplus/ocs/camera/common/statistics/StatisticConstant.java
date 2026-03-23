package com.oplus.ocs.camera.common.statistics;
/* loaded from: classes.dex */
public class StatisticConstant {
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
    public static final String STATISTIC_APP_CODE = "20230";
    public static final String VALUE_OFF = "off";
    public static final String VALUE_ON = "on";

    /* loaded from: classes.dex */
    public static class EventType {
        public String mCategory;
        public String mEventId;
        public static final EventType CAPTURE = new EventType("200", "portrait");
        public static final EventType RECORD = new EventType("202", "videoRecord");
        public static final EventType PREVIEW = new EventType("203", "preview");
        public static final EventType PREVIEW_END = new EventType("203", "preview_end");
        public static final EventType ENTER = new EventType("201", "start");
        public static final EventType EXIT = new EventType("201", "exit");

        EventType(String str, String str2) {
            this.mCategory = null;
            this.mEventId = null;
            this.mCategory = str;
            this.mEventId = str2;
        }
    }
}

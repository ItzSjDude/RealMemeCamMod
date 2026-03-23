package com.oplus.ocs.camera.common.parameter.apsadapter;

import com.oplus.ocs.camera.common.parameter.apsadapter.ApsBaseParameter;
/* loaded from: classes.dex */
public class ApsDecisionParameter extends ApsBaseParameter {
    public static final ApsBaseParameter.Key<Integer> KEY_PREVIEW_CAMERA_ID = new ApsBaseParameter.Key<>("com.oplus.preview.camera_id", Integer.class, -1);
    public static final ApsBaseParameter.Key<String> KEY_PREVIEW_CAPTURE_MODE = new ApsBaseParameter.Key<>("com.oplus.preview.capture_mode", String.class, null);
    public static final ApsBaseParameter.Key<Integer> KEY_PREVIEW_REQUEST_FORMAT = new ApsBaseParameter.Key<>("com.oplus.preview.request_format", Integer.class, 0);
    public static final ApsBaseParameter.Key<Integer> KEY_PREVIEW_MULTI_FRAME_COUNT = new ApsBaseParameter.Key<>("com.oplus.preview.multi_frame_count", Integer.class, 0);
    public static final ApsBaseParameter.Key<Integer> KEY_PREVIEW_THUMBNAIL_INDEX = new ApsBaseParameter.Key<>("com.oplus.preview.thumbnail_index", Integer.class, 1);
    public static final ApsBaseParameter.Key<Integer> KEY_PREVIEW_META_INDEX = new ApsBaseParameter.Key<>("com.oplus.preview.meta_index", Integer.class, 1);
    public static final ApsBaseParameter.Key<Integer> KEY_PREVIEW_SUPER_NIGHT_SCENE = new ApsBaseParameter.Key<>("com.oplus.preview.super_night_scene", Integer.class, 0);
    public static final ApsBaseParameter.Key<Integer> KEY_PREVIEW_NIGHT_TOTAL_EXPTIME = new ApsBaseParameter.Key<>("com.oplus.preview.night_total_exptime", Integer.class, 0);
    public static final ApsBaseParameter.Key<Integer> KEY_PREVIEW_SCENE_MODE = new ApsBaseParameter.Key<>("com.oplus.preview.scene_mode", Integer.class, 0);
    public static final ApsBaseParameter.Key<Integer> PREVIEW_RESULT_SHOW_HDR_ICON = new ApsBaseParameter.Key<>("com.oplus.preview.show_hdr_icon", Integer.class, 0);
    public static final ApsBaseParameter.Key<Integer> KEY_PREVIEW_FEATURE_TYPE = new ApsBaseParameter.Key<>("com.oplus.preview.feature_type", Integer.class, 0);
    public static final ApsBaseParameter.Key<String[]> KEY_PREVIEW_ALGO_FLAG = new ApsBaseParameter.Key<>("com.oplus.preview.algo_flag", String[].class, null);
    public static final ApsBaseParameter.Key<int[]> KEY_PREVIEW_CAPTURE_EV_LIST = new ApsBaseParameter.Key<>("com.oplus.preview.capture_ev_list", int[].class, null);
    public static final ApsBaseParameter.Key<long[]> KEY_PREVIEW_CAPTURE_ET_LIST = new ApsBaseParameter.Key<>("com.oplus.preview.capture_et_list", long[].class, null);
    public static final ApsBaseParameter.Key<int[]> KEY_PREVIEW_SENSOR_MASK = new ApsBaseParameter.Key<>("com.oplus.preview.sensor_mask", int[].class, null);
    public static final ApsBaseParameter.Key<Integer> KEY_PREVIEW_MASTER_PIPELINE = new ApsBaseParameter.Key<>("com.oplus.preview.master_pipeline", Integer.class, 0);
    public static final ApsBaseParameter.Key<Integer> KEY_PREVIEW_BRACKET_MODE = new ApsBaseParameter.Key<>("com.oplus.preview.bracket_mode", Integer.class, 0);
    public static final ApsBaseParameter.Key<String> KEY_DRAWTEXT_BRACKET_MODE = new ApsBaseParameter.Key<>("com.oplus.preview.drawtext_bracket_mode", String.class, null);
    public static final ApsBaseParameter.Key<String> KEY_DRAWTEXT_SCENE_MODE = new ApsBaseParameter.Key<>("com.oplus.preview.drawtext_scene_mode", String.class, null);
    public static final ApsBaseParameter.Key<String> KEY_DRAWTEXT_FEATURE_TYPE = new ApsBaseParameter.Key<>("com.oplus.preview.drawtext_feature_type", String.class, null);
    public static final ApsBaseParameter.Key<String> KEY_DRAWTEXT_HDR_TYPE = new ApsBaseParameter.Key<>("com.oplus.preview.drawtext_hdr_type", String.class, null);
    public static final ApsBaseParameter.Key<String> KEY_PREVIEW_ASD = new ApsBaseParameter.Key<>("com.oplus.preview.asd", String.class, null);
    public static final ApsBaseParameter.Key<String> KEY_PREVIEW_ANTIBANDING = new ApsBaseParameter.Key<>("com.oplus.preview.antibanding", String.class, null);
    public static final ApsBaseParameter.Key<String> KEY_PREVIEW_RECTIFY = new ApsBaseParameter.Key<>("com.oplus.preview.rectify", String.class, null);
    public static final ApsBaseParameter.Key<String> KEY_PREVIEW_PF = new ApsBaseParameter.Key<>("com.oplus.preview.pf", String.class, null);
    public static final ApsBaseParameter.Key<String> KEY_PREVIEW_LSD = new ApsBaseParameter.Key<>("com.oplus.preview.lsd", String.class, null);
    public static final ApsBaseParameter.Key<String> KEY_PREVIEW_RTB = new ApsBaseParameter.Key<>("com.oplus.preview.rtb", String.class, null);
    public static final ApsBaseParameter.Key<String> KEY_PREVIEW_AICOLOR = new ApsBaseParameter.Key<>("com.oplus.preview.aicolor", String.class, null);
    public static final ApsBaseParameter.Key<String> KEY_PREVIEW_VIDEO_HYPERLAPSE = new ApsBaseParameter.Key<>("com.oplus.preview.hyperlapse", String.class, null);
    public static final ApsBaseParameter.Key<String> KEY_ALGO_VISUALIZATION_KEY = new ApsBaseParameter.Key<>("com.oplus.preview.algo.visualization.key", String.class, null);
    public static final ApsBaseParameter.Key<String> KEY_ALGO_VISUALIZATION_VALUE = new ApsBaseParameter.Key<>("com.oplus.preview.algo.visualization.value", String.class, null);
    public static final ApsBaseParameter.Key<Integer> KEY_PREVIEW_MFSR_FRAME_COUNT = new ApsBaseParameter.Key<>("com.oplus.preview.mfsr_frame_count", Integer.class, 0);
    public static final ApsBaseParameter.Key<Integer> KEY_PREVIEW_SUPPORT_ZOOM_FEATURE = new ApsBaseParameter.Key<>("com.oplus.preview.support_zoom_feature", Integer.class, 0);
    public static final ApsBaseParameter.Key<Integer> KEY_PREVIEW_NO_NEED_MATCH_META = new ApsBaseParameter.Key<>("com.oplus.preview.no_need_match_meta", Integer.class, 0);
    public static final ApsBaseParameter.Key<Integer> KEY_PREVIEW_ASD_SCENE_VALUE = new ApsBaseParameter.Key<>("com.oplus.preview.asd_scene_value", Integer.class, 0);
    public static final ApsBaseParameter.Key<Boolean> KEY_PREVIEW_AI_SHUTTER = new ApsBaseParameter.Key<>("com.oplus.preview.ai_shutter", Boolean.class, false);
    public static final ApsBaseParameter.Key<Boolean> KEY_PREVIEW_REQUEST_MIXED_FORMAT = new ApsBaseParameter.Key<>("com.oplus.preview.request_mixed_format", Boolean.class, false);
    public static final ApsBaseParameter.Key<Integer> KEY_PREVIEW_AIS_STATE = new ApsBaseParameter.Key<>("com.oplus.preview.ais_state", Integer.class, 0);
    public static final ApsBaseParameter.Key<Integer> KEY_PREVIEW_CAPTURE_INTENT = new ApsBaseParameter.Key<>("com.oplus.preview.capture.intent", Integer.class, -1);
    public static final ApsBaseParameter.Key<Integer> KEY_PREVIEW_CAPTURE_SURFACE = new ApsBaseParameter.Key<>("com.oplus.preview.capture.surface", Integer.class, -1);
}

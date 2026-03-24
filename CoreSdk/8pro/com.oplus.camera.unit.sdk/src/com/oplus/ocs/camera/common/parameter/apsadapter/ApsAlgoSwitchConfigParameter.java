package com.oplus.ocs.camera.common.parameter.apsadapter;

import android.util.ArrayMap;
import com.oplus.ocs.camera.common.parameter.apsadapter.ApsBaseParameter;
import java.util.Set;
/* loaded from: classes.dex */
public class ApsAlgoSwitchConfigParameter extends ApsBaseParameter {
    public static final ApsBaseParameter.Key<String> KEY_CAPTURE_CONFIG_CAMERA_MODE = new ApsBaseParameter.Key<>("capture_config_camera_mode", String.class);
    public static final ApsBaseParameter.Key<Integer> KEY_CAPTURE_CONFIG_CAMERA_ID = new ApsBaseParameter.Key<>("capture_config_camera_id", Integer.class);
    public static final ApsBaseParameter.Key<Boolean> KEY_CAPTURE_CONFIG_ENABLE = new ApsBaseParameter.Key<>("capture_config_camera_enable", Boolean.class);
    public static final ApsBaseParameter.Key<Set> KEY_CAPTURE_CONFIG_ALGO = new ApsBaseParameter.Key<>("capture_config_camera_mode", Set.class);
    public static final ApsBaseParameter.Key<String> KEY_PREVIEW_CONFIG_CAMERA_MODE = new ApsBaseParameter.Key<>("preview_config_camera_mode", String.class);
    public static final ApsBaseParameter.Key<Integer> KEY_PREVIEW_CONFIG_CAMERA_ID = new ApsBaseParameter.Key<>("preview_config_camera_id", Integer.class);
    public static final ApsBaseParameter.Key<Integer> KEY_PREVIEW_CONFIG_CAMERA_NUM = new ApsBaseParameter.Key<>("preview_config_camera_num", Integer.class);
    public static final ApsBaseParameter.Key<Integer> KEY_PREVIEW_CONFIG_CAMERA_PREV_VIDEO = new ApsBaseParameter.Key<>("preview_config_camera_prev_video", Integer.class);
    public static final ApsBaseParameter.Key<ArrayMap> KEY_PREVIEW_CONFIG_CAMERA_COMPONENT_MAP = new ApsBaseParameter.Key<>("preview_config_camera_component_MAP", ArrayMap.class);
    public static final ApsBaseParameter.Key<Boolean> KEY_COMPONENT_ENABLE = new ApsBaseParameter.Key<>("component_enable", Boolean.class);
    public static final ApsBaseParameter.Key<Integer> KEY_COMPONENT_MASTER_INPUT_WIDTH = new ApsBaseParameter.Key<>("component_master_input_width", Integer.class);
    public static final ApsBaseParameter.Key<Integer> KEY_COMPONENT_MASTER_INPUT_HEIGHT = new ApsBaseParameter.Key<>("component_master_input_height", Integer.class);
    public static final ApsBaseParameter.Key<Integer> KEY_COMPONENT_SLAVE_INPUT_WIDTH = new ApsBaseParameter.Key<>("component_slave_input_width", Integer.class);
    public static final ApsBaseParameter.Key<Integer> KEY_COMPONENT_SLAVE_INPUT_HEIGHT = new ApsBaseParameter.Key<>("component_slave_input_height", Integer.class);
    public static final ApsBaseParameter.Key<Integer> KEY_COMPONENT_THIRD_INPUT_WIDTH = new ApsBaseParameter.Key<>("component_third_input_width", Integer.class);
    public static final ApsBaseParameter.Key<Integer> KEY_COMPONENT_THIRD_INPUT_HEIGHT = new ApsBaseParameter.Key<>("component_third_input_height", Integer.class);
    public static final ApsBaseParameter.Key<Integer> KEY_COMPONENT_OUTPUT_WIDTH = new ApsBaseParameter.Key<>("component_output_width", Integer.class);
    public static final ApsBaseParameter.Key<Integer> KEY_COMPONENT_OUTPUT_HEIGHT = new ApsBaseParameter.Key<>("component_output_height", Integer.class);
    public static final ApsBaseParameter.Key<Integer> KEY_COMPONENT_FRAME_SKIP_CNT = new ApsBaseParameter.Key<>("component_frame_skip_cnt", Integer.class);
    public static final ApsBaseParameter.Key<String> KEY_COMPONENT_PIPELINE_COPY_FROM = new ApsBaseParameter.Key<>("component_pipeline_copy_from", String.class);
    public static final ApsBaseParameter.Key<String> KEY_COMPONENT_ALGO_NODE_COPY_FROM = new ApsBaseParameter.Key<>("component_pipeline_copy_from", String.class);
    public static final ApsBaseParameter.Key<String[]> KEY_COMPONENT_ALGO_LIST = new ApsBaseParameter.Key<>("component_algo_list", String[].class);
}

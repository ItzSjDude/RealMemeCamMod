package com.oplus.ocs.camera.common.parameter.apsadapter;

import com.oplus.ocs.camera.common.parameter.apsadapter.ApsBaseParameter;

/* JADX INFO: loaded from: classes.dex */
public class ApsTotalResultParameter extends ApsBaseParameter {
    public static final ApsBaseParameter.Key<Integer> KEY_PREVIEW_BOKEN_STATE = new ApsBaseParameter.Key<>("com.oplus.preview.rtb_msg", Integer.class, -1);
    public static final ApsBaseParameter.Key<Integer> KEY_PREVIEW_AI_SCENE = new ApsBaseParameter.Key<>("com.oplus.preview.asd_scene_icon", Integer.class, 0);
    public static final ApsBaseParameter.Key<Integer> KEY_PREVIEW_TUNING_SCENE = new ApsBaseParameter.Key<>("com.oplus.preview.asd_tuning_scene", Integer.class, 0);
    public static final ApsBaseParameter.Key<Integer> KEY_PREVIEW_HDR_SCOPE = new ApsBaseParameter.Key<>("com.oplus.preview.asd_hdr_scope", Integer.class, 0);
    public static final ApsBaseParameter.Key<Integer> KEY_PREVIEW_MASTER_CAMERA_ID = new ApsBaseParameter.Key<>("com.oplus.preview.sat_master_camera_id", Integer.class, 0);
    public static final ApsBaseParameter.Key<Integer> KEY_PREVIEW_ACTIVE_MAP = new ApsBaseParameter.Key<>("com.oplus.preview.sat_active_map", Integer.class, 0);
    public static final ApsBaseParameter.Key<Integer> KEY_PREVIEW_LENS_DIRTY = new ApsBaseParameter.Key<>("com.oplus.preview.lsd_is_dirty", Integer.class, 0);
    public static final ApsBaseParameter.Key<Integer> KEY_PREVIEW_GESTURE_ACTION_TYPE = new ApsBaseParameter.Key<>("com.oplus.preview.gesture.action.type", Integer.class, 0);
    public static final ApsBaseParameter.Key<Integer> KEY_PREVIEW_VIDEO_EIS = new ApsBaseParameter.Key<>("com.oplus.preview.video_eis_on", Integer.class, 0);
    public static final ApsBaseParameter.Key<Integer> KEY_PREVIEW_FRAME_ID = new ApsBaseParameter.Key<>("com.oplus.preview.frame_id", Integer.class, 0);
    public static final ApsBaseParameter.Key<Long> KEY_PREVIEW_BUFFER_TIMESTAMP = new ApsBaseParameter.Key<>("com.oplus.preview.buffer.timestamp", Long.class, 0L);
}

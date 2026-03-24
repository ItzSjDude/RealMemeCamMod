package com.oplus.ocs.camera.common.parameter.apsadapter;

import android.hardware.HardwareBuffer;
import android.media.Image;
import com.oplus.ocs.camera.common.parameter.apsadapter.ApsBaseParameter;
import java.util.HashMap;

/* JADX INFO: loaded from: classes.dex */
public class ApsResultParameter extends ApsBaseParameter {
    public static final ApsBaseParameter.Key<Integer> KEY_CAMERA_RESULT_WIDTH = new ApsBaseParameter.Key<>("com.oplus.result.width", Integer.class, 0);
    public static final ApsBaseParameter.Key<Integer> KEY_CAMERA_RESULT_HEIGHT = new ApsBaseParameter.Key<>("com.oplus.result.height", Integer.class, 0);
    public static final ApsBaseParameter.Key<Integer> KEY_CAMERA_RESULT_STRIDE = new ApsBaseParameter.Key<>("com.oplus.result.stride", Integer.class, 0);
    public static final ApsBaseParameter.Key<Integer> KEY_CAMERA_RESULT_SCANLINE = new ApsBaseParameter.Key<>("com.oplus.result.scanline", Integer.class, 0);
    public static final ApsBaseParameter.Key<Long> KEY_CAMERA_RESULT_IDENTITY = new ApsBaseParameter.Key<>("com.oplus.picture.identity", Long.class, 0L);
    public static final ApsBaseParameter.Key<byte[]> KEY_CAMERA_RESULT_COPY_BUFFER = new ApsBaseParameter.Key<>("com.oplus.result.copy_buffer", byte[].class, null);
    public static final ApsBaseParameter.Key<Integer> KEY_CAMERA_RESULT_CROP_LEFT = new ApsBaseParameter.Key<>("com.oplus.result.crop_left", Integer.class, 0);
    public static final ApsBaseParameter.Key<Integer> KEY_CAMERA_RESULT_CROP_TOP = new ApsBaseParameter.Key<>("com.oplus.result.crop_top", Integer.class, 0);
    public static final ApsBaseParameter.Key<Integer> KEY_CAMERA_RESULT_CROP_RIGHT = new ApsBaseParameter.Key<>("com.oplus.result.crop_right", Integer.class, 0);
    public static final ApsBaseParameter.Key<Integer> KEY_CAMERA_RESULT_CROP_BOTTOM = new ApsBaseParameter.Key<>("com.oplus.result.crop_bottom", Integer.class, 0);
    public static final ApsBaseParameter.Key<Integer> KEY_CAMERA_RESULT_SUPER_TEXT_WIDTH = new ApsBaseParameter.Key<>("com.oplus.super.text.width", Integer.class, 0);
    public static final ApsBaseParameter.Key<Integer> KEY_CAMERA_RESULT_SUPER_TEXT_HEIGHT = new ApsBaseParameter.Key<>("com.oplus.super.text.height", Integer.class, 0);
    public static final ApsBaseParameter.Key<Boolean> KEY_CAMERA_RESULT_HAS_SUPER_TEXT_RESULT = new ApsBaseParameter.Key<>("com.oplus.super.text.has_result", Boolean.class, false);
    public static final ApsBaseParameter.Key<Integer> KEY_CAMERA_RESULT_MOTION_DETECTED = new ApsBaseParameter.Key<>("com.oplus.result.motion_detected", Integer.class, 0);
    public static final ApsBaseParameter.Key<Integer> KEY_CAMERA_RESULT_START_INTERPOLATION_FRAME = new ApsBaseParameter.Key<>("com.oplus.result.start_interpolation_frame", Integer.class, 0);
    public static final ApsBaseParameter.Key<Integer> KEY_CAMERA_RESULT_LAST_VDIEO_FRAME = new ApsBaseParameter.Key<>("com.oplus.result.last_video_frame", Integer.class, 0);
    public static final ApsBaseParameter.Key<Boolean> KEY_CAMERA_RESULT_NEED_DETACH = new ApsBaseParameter.Key<>("com.oplus.result.need_detach", Boolean.class, false);
    public static final ApsBaseParameter.Key<Boolean> KEY_CAMERA_RESULT_HEIF_PROCESS_IN_APS = new ApsBaseParameter.Key<>("com.oplus.result.heif_process_in_aps", Boolean.class, false);
    public static final ApsBaseParameter.Key<Integer> KEY_CAMERA_RESULT_NOISE_REDUCTION_STRENGTH = new ApsBaseParameter.Key<>("com.oplus.result.noise_reduction_strength", Integer.class, 0);
    public static final ApsBaseParameter.Key<String> KEY_CAMERA_RESULT_APS_INIT_FINISH = new ApsBaseParameter.Key<>("com.oplus.result.aps_init_finish", String.class, null);
    public static final ApsBaseParameter.Key<Long> KEY_CAMERA_RESULT_REF_TIMESTAMP = new ApsBaseParameter.Key<>("com.oplus.result.ref_timestamp", Long.class, 0L);
    public static final ApsBaseParameter.Key<Image> KEY_CAMERA_RESULT_IMAGE = new ApsBaseParameter.Key<>("com.oplus.result.image_buffer_image", Image.class, null);
    public static final ApsBaseParameter.Key<HardwareBuffer> KEY_CAMERA_RESULT_HARDWARE_BUFFER = new ApsBaseParameter.Key<>("com.oplus.result.image_buffer_hardware_buffer", HardwareBuffer.class, null);
    public static final ApsBaseParameter.Key<HardwareBuffer> KEY_CAMERA_RESULT_SUB_HARDWARE_BUFFER = new ApsBaseParameter.Key<>("com.oplus.result.image_buffer_sub_hardware_buffer", HardwareBuffer.class, null);
    public static final ApsBaseParameter.Key<Long> KEY_CAMERA_RESULT_IMAGE_TIME_STAMP = new ApsBaseParameter.Key<>("com.oplus.result.image_buffer_time_stamp", Long.class, 0L);
    public static final ApsBaseParameter.Key<Boolean> KEY_CAMERA_RESULT_IMAGE_IS_VALID = new ApsBaseParameter.Key<>("com.oplus.result.image_buffer_is_valid", Boolean.class, false);
    public static final ApsBaseParameter.Key<HashMap> KEY_CAMERA_APS_PROC_TIMER = new ApsBaseParameter.Key<>("com.oplus.result.aps_proc_timer", HashMap.class, new HashMap());
    public static final ApsBaseParameter.Key<Long> KEY_CAMERA_RESULT_MESH_PTR = new ApsBaseParameter.Key<>("com.oplus.result.mesh_ptr", Long.class, 0L);
}

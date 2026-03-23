package com.oplus.ocs.camera.common.parameter.apsadapter;

import com.oplus.ocs.camera.common.parameter.apsadapter.ApsBaseParameter;
/* loaded from: classes.dex */
public class ApsCaptureResultParameter extends ApsBaseParameter {
    public static final ApsBaseParameter.Key<Integer> KEY_CAPTURE_AWB_MODE;
    public static final ApsBaseParameter.Key<Float> KEY_CAPTURE_FOCAL_LENGTH;
    public static final ApsBaseParameter.Key<Float> KEY_CAPTURE_LENS_APERTURE;
    public static final ApsBaseParameter.Key<int[]> KEY_CAPTURE_MASTER_PIPELINE;
    public static final ApsBaseParameter.Key<int[]> KEY_CAPTURE_SENSOR_MASK;
    public static final ApsBaseParameter.Key<int[]> KEY_CAPTURE_UPSCALE_INPUT_SIZE;
    public static final ApsBaseParameter.Key<int[]> KEY_CAPTURE_UPSCALE_OUT_SIZE;
    public static final ApsBaseParameter.Key<Long> KEY_CAPTURE_FRAME_NUMBER = new ApsBaseParameter.Key<>("com.oplus.capture.frame_number", Long.class, 0L);
    public static final ApsBaseParameter.Key<Long> KEY_CAPTURE_TIME_STAMP = new ApsBaseParameter.Key<>("com.oplus.capture.time_stamp", Long.class, 0L);
    public static final ApsBaseParameter.Key<Integer> KEY_CAPTURE_SENSITIVITY = new ApsBaseParameter.Key<>("com.oplus.capture.sensor_sensitivity", Integer.class, 0);
    public static final ApsBaseParameter.Key<Long> KEY_CAPTURE_EXPOSURE_TIME = new ApsBaseParameter.Key<>("com.oplus.capture.exposure_time", Long.class, 0L);

    static {
        Float valueOf = Float.valueOf(0.0f);
        KEY_CAPTURE_FOCAL_LENGTH = new ApsBaseParameter.Key<>("com.oplus.capture.focal_length", Float.class, valueOf);
        KEY_CAPTURE_LENS_APERTURE = new ApsBaseParameter.Key<>("com.oplus.capture.lens_aperture", Float.class, valueOf);
        KEY_CAPTURE_AWB_MODE = new ApsBaseParameter.Key<>("com.oplus.capture.awb_mode", Integer.class, 0);
        KEY_CAPTURE_SENSOR_MASK = new ApsBaseParameter.Key<>("com.oplus.capture.sensor_mask", int[].class, null);
        KEY_CAPTURE_MASTER_PIPELINE = new ApsBaseParameter.Key<>("com.oplus.capture.master_pipeline", int[].class, null);
        KEY_CAPTURE_UPSCALE_INPUT_SIZE = new ApsBaseParameter.Key<>("com.oplus.capture.upscale_input_size", int[].class, null);
        KEY_CAPTURE_UPSCALE_OUT_SIZE = new ApsBaseParameter.Key<>("com.oplus.capture.upscale_out_size", int[].class, null);
    }
}

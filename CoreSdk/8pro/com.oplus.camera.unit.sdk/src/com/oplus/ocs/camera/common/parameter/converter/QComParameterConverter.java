package com.oplus.ocs.camera.common.parameter.converter;

import android.hardware.camera2.CaptureRequest;
import com.oplus.ocs.camera.common.parameter.ConfigureParameter;
import com.oplus.ocs.camera.common.parameter.PreviewParameter;

/* JADX INFO: loaded from: classes.dex */
class QComParameterConverter extends BaseParameterConverter {
    private static final CaptureRequest.Key<byte[]> KEY_END_OF_STREAM = new CaptureRequest.Key<>(
            "org.quic.camera.recording.endOfStream", byte[].class);
    private static final CaptureRequest.Key<int[]> KEY_VIDEO_FLIP_MODE = new CaptureRequest.Key<>(
            "com.oplus.mirror.enable", int[].class);
    private static final CaptureRequest.Key<Integer> KEY_VIDEO_EIS_RECORD_STATE = new CaptureRequest.Key<>(
            "com.oplus.eis.record.state", Integer.class);
    public static final CaptureRequest.Key<int[]> KEY_QUALCOMM_COLOR_TEMPERATURE = new CaptureRequest.Key<>(
            "com.qti.stats.awbwrapper.AWBCCT", int[].class);
    private static final CaptureRequest.Key<Integer> KEY_CAPTURE_REQUEST_IDX = new CaptureRequest.Key<>(
            "com.oplus.capture.request.idx", Integer.class);
    private static final CaptureRequest.Key<int[]> KEY_IZOOM_SNAPSHOT = new CaptureRequest.Key<>(
            "com.qti.izoom_control.state_izoom_snapshot", int[].class);
    private static final CaptureRequest.Key<int[]> KEY_IZOOM_PREVIEW = new CaptureRequest.Key<>(
            "com.oplus.opx.IZOOMenable", int[].class);
    private static final CaptureRequest.Key<Byte> KEY_ENABLE_HVXSHDR = new CaptureRequest.Key<>(
            "org.codeaurora.qcamera3.sessionParameters.enableHVXSHDRMode", Byte.class);
    private static final CaptureRequest.Key<float[]> KEY_STARBURST_INFO = new CaptureRequest.Key<>(
            "com.oplus.opx.StarburstInfo", float[].class);
    public static final CaptureRequest.Key<Float> KEY_CUSTOM_ZOOM_RATIO = new CaptureRequest.Key<>(
            "com.oplus.original.zoomRatio", Float.class);
    private static final CaptureRequest.Key<Integer> KEY_SUPER_TEXT_MODE = new CaptureRequest.Key<>(
            "com.oplus.preview.supertext.mode", Integer.class);

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    QComParameterConverter() {
        this.mCustomParameterMap.put(ConfigureParameter.KEY_HVXSHDR_ENABLE.getName(), KEY_ENABLE_HVXSHDR);
        this.mCustomParameterMap.put(ConfigureParameter.KEY_CUSTOM_ZOOM_RATIO.getName(), KEY_CUSTOM_ZOOM_RATIO);
        this.mCustomParameterMap.put(PreviewParameter.KEY_CAPTURE_FLIP_MODE.getName(),
                (CaptureRequest.Key<?>) KEY_VIDEO_FLIP_MODE);
        this.mCustomParameterMap.put(PreviewParameter.KEY_END_OF_STREAM.getName(),
                (CaptureRequest.Key<?>) KEY_END_OF_STREAM);
        this.mCustomParameterMap.put(PreviewParameter.KEY_VIDEO_EIS_RECORD_STATE.getName(), KEY_VIDEO_EIS_RECORD_STATE);
        this.mCustomParameterMap.put(PreviewParameter.KEY_IZOOM_PREVIEW.getName(),
                (CaptureRequest.Key<?>) KEY_IZOOM_PREVIEW);
        this.mCustomParameterMap.put(PreviewParameter.KEY_STARBURST_INFO.getName(),
                (CaptureRequest.Key<?>) KEY_STARBURST_INFO);
        this.mCustomParameterMap.put(PreviewParameter.KEY_COLOR_TEMPERATURE.getName(),
                (CaptureRequest.Key<?>) KEY_QUALCOMM_COLOR_TEMPERATURE);
        this.mCustomParameterMap.put(PreviewParameter.KEY_CAPTURE_REQUEST_IDX.getName(), KEY_CAPTURE_REQUEST_IDX);
        this.mCustomParameterMap.put(PreviewParameter.KEY_IZOOM_SNAPSHOT.getName(),
                (CaptureRequest.Key<?>) KEY_IZOOM_SNAPSHOT);
        this.mCustomParameterMap.put(PreviewParameter.KEY_SUPER_TEXT_MODE.getName(), KEY_SUPER_TEXT_MODE);
    }
}

package com.oplus.ocs.camera.consumer.apsAdapter;

import android.hardware.camera2.CaptureResult;
/* loaded from: classes.dex */
public class ApsCameraMetadataKey {
    public static final CaptureResult.Key<byte[]> KEY_APS_RESULT_DATA = new CaptureResult.Key<>("com.oplus.aps.result.data", byte[].class);
    public static final CaptureResult.Key<int[]> KEY_SENSOR_MASK = new CaptureResult.Key<>("com.oplus.aps.sat.snapshot.sensors.mask", int[].class);
    public static final CaptureResult.Key<int[]> KEY_SAT_SNAPSHOT_MASTER_PIPELINE = new CaptureResult.Key<>("com.oplus.aps.sat.snapshot.master.pipeline", int[].class);
    public static final CaptureResult.Key<int[]> KEY_UPSCALE_INPUT_SIZE = new CaptureResult.Key<>("com.oplus.upscale.input.size", int[].class);
    public static final CaptureResult.Key<int[]> KEY_UPSCALE_OUTPUT_SIZE = new CaptureResult.Key<>("com.oplus.upscale.output.size", int[].class);
    public static final CaptureResult.Key<int[]> KEY_MASTER_PIPELINE = new CaptureResult.Key<>("com.oplus.aps.sat.snapshot.master.pipeline", int[].class);
    public static final CaptureResult.Key<float[]> KEY_STARBURST_INFO = new CaptureResult.Key<>("com.oplus.opx.StarburstInfo", float[].class);
    public static final CaptureResult.Key<Integer> KEY_VIDEO_OVERHEAT_SKIP_FRAME = new CaptureResult.Key<>("com.oplus.overheat.skipframe", Integer.class);
    public static final CaptureResult.Key<int[]> KEY_CURRENT_SENSOR_MODE = new CaptureResult.Key<>("com.oplus.DolIsStaggerState", int[].class);
}

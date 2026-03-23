package com.oplus.ocs.camera.producer.device;

import android.graphics.Rect;
import android.hardware.camera2.CaptureRequest;
import android.hardware.camera2.CaptureResult;
/* loaded from: classes.dex */
class CameraMetadataKey {
    public static final CaptureRequest.Key<int[]> KEY_MTK_MFNR_FEATURE_ISP_TUNING_MODE = new CaptureRequest.Key<>("com.mediatek.control.capture.hintForIspTuning", int[].class);
    public static final CaptureRequest.Key<Integer> KEY_MTK_MFNR_FEATURE_ISP_FRAME_COUNT = new CaptureRequest.Key<>("com.mediatek.control.capture.hintForIspFrameCount", Integer.class);
    public static final CaptureRequest.Key<Integer> KEY_MTK_MFNR_FEATURE_ISP_FRAME_INDEX = new CaptureRequest.Key<>("com.mediatek.control.capture.hintForIspFrameIndex", Integer.class);
    public static final CaptureRequest.Key<int[]> KEY_MTK_CAPTURE_FEATURE_CUSTOM_TUNING_MODE = new CaptureRequest.Key<>("com.mediatek.control.capture.hintForCustomTuning", int[].class);
    public static final CaptureRequest.Key<Integer> KEY_MTK_MFNR_DOZIP_WITH_BSS = new CaptureRequest.Key<>("com.mediatek.mfnrfeature.dozipwithbss", Integer.class);
    public static final CaptureRequest.Key<int[]> KEY_MTK_CONTROL_CAPTURE_PRE_COLLECT_ENABLE = new CaptureRequest.Key<>("com.mediatek.control.capture.preCollectEnable", int[].class);
    public static final CaptureRequest.Key<int[]> KEY_AHEAD_CAPTURE_FRAME_NUM = new CaptureRequest.Key<>("com.oplus.ahead.capture.frame.num", int[].class);
    public static final CaptureRequest.Key<Integer> KEY_DECISION_CAPTURE_SEQUENCE_ID = new CaptureRequest.Key<>("com.oplus.aps.captureSequenceId", Integer.class);
    public static final CaptureRequest.Key<int[]> KEY_MTK_CAPTURE_PRIVATE_RAW_ENABLE = new CaptureRequest.Key<>("com.mediatek.control.capture.packedRaw.enable", int[].class);
    public static final CaptureRequest.Key<Integer> KEY_MTK_CAPTURE_PROCESS_RAW_ENABLE = new CaptureRequest.Key<>("com.mediatek.control.capture.processRaw.enable", Integer.class);
    public static final CaptureRequest.Key<int[]> KEY_MTK_CAPTURE_RAW_BITS_PER_PIXEL = new CaptureRequest.Key<>("com.mediatek.control.capture.raw.bpp", int[].class);
    public static final CaptureRequest.Key<int[]> KEY_BRACKET_MODE = new CaptureRequest.Key<>("com.oplus.BracketMode", int[].class);
    public static final CaptureRequest.Key<Integer> KEY_MTK_REQUEST_MSNR = new CaptureRequest.Key<>("com.mediatek.control.capture.singleYuvNr", Integer.class);
    public static final CaptureRequest.Key<Integer> KEY_AE_LOCK_BY_TOUCH = new CaptureRequest.Key<>("com.oplus.aelock.bytouch", Integer.class);
    public static final CaptureRequest.Key<Integer> KEY_ONLY_ZOOM_CHANGE = new CaptureRequest.Key<>("com.oplus.only.zoom.change", Integer.class);
    public static final CaptureRequest.Key<Float> KEY_NAME_ZOOM_SCALE = new CaptureRequest.Key<>("com.oplus.zoom.scale", Float.class);
    public static final CaptureRequest.Key<int[]> KEY_SOD_TOUCH_REGION = new CaptureRequest.Key<>("com.oplus.sod.touch.region", int[].class);
    public static final CaptureRequest.Key<int[]> KEY_MTK_3A_FEATURE_AISHUT_CAPTURE = new CaptureRequest.Key<>("com.mediatek.3afeature.aishutCapture", int[].class);
    public static final CaptureRequest.Key<Integer> KEY_MTK_HIGH_QUALITY_YUV = new CaptureRequest.Key<>("com.mediatek.control.capture.highQualityYuv", Integer.class);
    public static final CaptureRequest.Key<byte[]> KEY_MTK_TUNING_DATA_ENABLE = new CaptureRequest.Key<>("com.mediatek.control.capture.ispMetaEnable", byte[].class);
    public static final CaptureRequest.Key<int[]> KEY_MTK_IN_SENSOR_ZOOM_MODE = new CaptureRequest.Key<>("com.mediatek.control.capture.inSensorZoom.mode", int[].class);
    public static final CaptureRequest.Key<int[]> KEY_MTK_SEAMLESS_REMOSAIC_ENABLE = new CaptureRequest.Key<>("com.mediatek.control.capture.seamless.remosaicenable", int[].class);
    public static final CaptureRequest.Key<long[]> KEY_MTK_FLEXIBLE_CAPABILITIES = new CaptureRequest.Key<>("com.mediatek.cameraflex.flexibleCapabilities", long[].class);
    public static final CaptureRequest.Key<int[]> KEY_IZOOM_SNAPSHOT = new CaptureRequest.Key<>("com.qti.izoom_control.state_izoom_snapshot", int[].class);
    public static final CaptureRequest.Key<int[]> KEY_IZOOM_PREVIEW = new CaptureRequest.Key<>("com.oplus.opx.IZOOMenable", int[].class);
    public static final CaptureRequest.Key<Integer> KEY_CAPTURE_REQUEST_IDX = new CaptureRequest.Key<>("com.oplus.capture.request.idx", Integer.TYPE);
    public static final CaptureRequest.Key<int[]> KEY_APS_FEATURE_TYPE = new CaptureRequest.Key<>("com.oplus.aps.feature.type", int[].class);
    public static final CaptureRequest.Key<int[]> KEY_CAPTURE_REQUEST_NUM = new CaptureRequest.Key<>("com.oplus.capture.request.num", int[].class);
    public static final CaptureRequest.Key<Rect> REPROCESS_SCALER_CROP_REGION = new CaptureRequest.Key<>("com.oplus.supernight.reprocess.cropRegion", Rect.class);
    public static final CaptureRequest.Key<float[]> KEY_STARBURST_INFO = new CaptureRequest.Key<>("com.oplus.opx.StarburstInfo", float[].class);
    public static final CaptureRequest.Key<byte[]> KEY_IDEAL_RAW_INFO = new CaptureRequest.Key<>("com.qti.chi.rawcbinfo.IdealRaw", byte[].class);
    public static final CaptureRequest.Key<int[]> KEY_MFSR_FRAME_NUM = new CaptureRequest.Key<>("com.oplus.MFSRFrameNum", int[].class);
    public static final CaptureRequest.Key<int[]> KEY_MFSR_CAPTURE_EV_LIST = new CaptureRequest.Key<>("com.oplus.MFSRCaptureEVList", int[].class);
    public static final CaptureRequest.Key<Byte> KEY_CUSTOM_NOISE_REDUCTION = new CaptureRequest.Key<>("org.quic.camera.CustomNoiseReduction.CustomNoiseReduction", Byte.TYPE);
    public static final CaptureRequest.Key<byte[]> KEY_MTK_REQUEST_ZSL_MODE = new CaptureRequest.Key<>("com.mediatek.control.capture.zsl.mode", byte[].class);
    public static final CaptureRequest.Key<int[]> KEY_REQUEST_CSHOT_ENABLE = new CaptureRequest.Key<>("com.mediatek.cshotfeature.capture", int[].class);
    public static final CaptureRequest.Key<int[]> KEY_REQUEST_EARLY_NOTIFY = new CaptureRequest.Key<>("com.mediatek.control.capture.early.notification.trigger", int[].class);
    public static final CaptureResult.Key<int[]> KEY_RESULT_CSHOT_EARLY_NOTIFY = new CaptureResult.Key<>("com.mediatek.control.capture.next.ready", int[].class);
    public static final CaptureResult.Key<byte[]> KEY_DOUBLE_OIS_WIRECUTOFF = new CaptureResult.Key<>("com.oplus.double.ois.wirecutoff.detection.sn", byte[].class);
    public static final CaptureRequest.Key<int[]> KEY_AF_REGION = new CaptureRequest.Key<>("com.oplus.control.af.region", int[].class);
    public static final CaptureRequest.Key<int[]> KEY_AE_REGION = new CaptureRequest.Key<>("com.oplus.control.ae.region", int[].class);
    public static final CaptureRequest.Key<int[]> KEY_NIGHT_MODE = new CaptureRequest.Key<>("com.oplus.supernight.mode", int[].class);
    public static final CaptureRequest.Key<int[]> KEY_CAPTURE_REQUEST_PICTURE_SIZE_SCALE = new CaptureRequest.Key<>("com.oplus.capture.request.picture.size.scale", int[].class);
    public static final CaptureRequest.Key<int[]> KEY_IS_BURST_CAPTURE = new CaptureRequest.Key<>("com.oplus.burst.capture", int[].class);
    public static final CaptureRequest.Key<int[]> KEY_REQUEST_CAPTURE_NUM = new CaptureRequest.Key<>("com.oplus.capture.totalRequestNum", int[].class);

    CameraMetadataKey() {
    }
}

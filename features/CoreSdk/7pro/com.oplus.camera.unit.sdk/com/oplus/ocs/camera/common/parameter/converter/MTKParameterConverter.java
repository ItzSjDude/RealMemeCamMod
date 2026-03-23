package com.oplus.ocs.camera.common.parameter.converter;

import android.hardware.camera2.CaptureRequest;
import android.util.Size;
import com.oplus.ocs.camera.common.parameter.ConfigureParameter;
import com.oplus.ocs.camera.common.parameter.PreviewParameter;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class MTKParameterConverter extends BaseParameterConverter {
    private static final CaptureRequest.Key<int[]> KEY_MTK_MFNR_FEATURE_ISP_FRAME_COUNT = new CaptureRequest.Key<>("com.mediatek.control.capture.hintForIspFrameCount", int[].class);
    private static final CaptureRequest.Key<int[]> KEY_MTK_MFNR_FEATURE_ISP_FRAME_INDEX = new CaptureRequest.Key<>("com.mediatek.control.capture.hintForIspFrameIndex", int[].class);
    private static final CaptureRequest.Key<int[]> KEY_CAPTURE_FLIP_MODE = new CaptureRequest.Key<>("com.mediatek.control.capture.flipmode", int[].class);
    private static final CaptureRequest.Key<int[]> KEY_DUAL_CAMERA = new CaptureRequest.Key<>("com.mediatek.streamingfeature.pipDevices", int[].class);
    private static final CaptureRequest.Key<Integer> KEY_VIDEO_MTK_EIS_RECORD_STATE = new CaptureRequest.Key<>("com.mediatek.streamingfeature.recordState", Integer.class);
    private static final CaptureRequest.Key<int[]> KEY_MTK_SMVR_FEATURE_SMVR_MODES = new CaptureRequest.Key<>("com.mediatek.smvrfeature.smvrMode", int[].class);
    private static final CaptureRequest.Key<int[]> KEY_MTK_NAVIGATION_NAVIGATIONMODE = new CaptureRequest.Key<>("com.mediatek.navigation.navigationMode", int[].class);
    private static final CaptureRequest.Key<int[]> KEY_MTK_NAVIGATION_STREAMSIZE = new CaptureRequest.Key<>("com.mediatek.navigation.streamSize", int[].class);
    private static final CaptureRequest.Key<byte[]> KEY_MTK_TUNING_DATA_ENABLE = new CaptureRequest.Key<>("com.mediatek.control.capture.ispMetaEnable", byte[].class);
    private static final CaptureRequest.Key<byte[]> KEY_MTK_TUNING_DATA_REQUEST = new CaptureRequest.Key<>("com.mediatek.control.capture.ispTuningRequest", byte[].class);
    private static final CaptureRequest.Key<int[]> KEY_MTK_MFNR_FEATURE_ISP_TUNING_MODE = new CaptureRequest.Key<>("com.mediatek.control.capture.hintForIspTuning", int[].class);
    private static final CaptureRequest.Key<int[]> KEY_MTK_CAPTURE_PRIVATE_RAW_ENABLE = new CaptureRequest.Key<>("com.mediatek.control.capture.packedRaw.enable", int[].class);
    private static final CaptureRequest.Key<Integer> KEY_MTK_CAPTURE_PROCESS_RAW_ENABLE = new CaptureRequest.Key<>("com.mediatek.control.capture.processRaw.enable", Integer.class);
    private static final CaptureRequest.Key<int[]> KEY_MTK_CAPTURE_RAW_BITS_PER_PIXEL = new CaptureRequest.Key<>("com.mediatek.control.capture.raw.bpp", int[].class);
    private static final CaptureRequest.Key<int[]> KEY_MTK_3A_FEATURE_AISHUT_CAPTURE = new CaptureRequest.Key<>("com.mediatek.3afeature.aishutCapture", int[].class);
    public static final CaptureRequest.Key<int[]> KEY_MTK_MULTI_CAM_FEATURE_MODE = new CaptureRequest.Key<>("com.mediatek.multicamfeature.multiCamFeatureMode", int[].class);
    private static final CaptureRequest.Key<int[]> KEY_NAME_MTK_COLOR_TEMPERATURE = new CaptureRequest.Key<>("com.oplus.manualWB.color_temperature", int[].class);
    private static final CaptureRequest.Key<int[]> KEY_PICTURE_EXIF_FLAG = new CaptureRequest.Key<>("com.oplus.picture.exif.flag", int[].class);
    public static final CaptureRequest.Key<int[]> KEY_MTK_SESSION_REQUEST_CROP_REGION = new CaptureRequest.Key<>("com.mediatek.multicamfeature.multiCamConfigScalerCropRegion", int[].class);
    public static final CaptureRequest.Key<int[]> KEY_MTK_CAPTURE_RAW10 = new CaptureRequest.Key<>("com.mediatek.control.capture.raw10.convertfmt", int[].class);
    public static final CaptureRequest.Key<int[]> KEY_SESSION_REQUEST_FAST_LAUNCH = new CaptureRequest.Key<>("com.mediatek.configure.setting.initrequest", int[].class);
    public static final CaptureRequest.Key<int[]> KEY_MTK_REQUEST_MSNR_MODE = new CaptureRequest.Key<>("com.mediatek.control.capture.singleYuvNr.mode", int[].class);
    public static final CaptureRequest.Key<byte[]> KEY_MTK_REQUEST_ZSL_MODE = new CaptureRequest.Key<>("com.mediatek.control.capture.zsl.mode", byte[].class);
    public static final CaptureRequest.Key<Size> KEY_MTK_VSDOF_PREVIEW_SIZE = new CaptureRequest.Key<>("com.mediatek.vsdoffeature.vsdofFeaturePreviewSize", Size.class);
    public static final CaptureRequest.Key<int[]> KEY_MTK_VSDOF_OPTICAL_ZOOM = new CaptureRequest.Key<>("com.mediatek.vsdoffeature.vsdofFeatureOpticalZoomSet", int[].class);
    public static final CaptureRequest.Key<long[]> KEY_MTK_FLEXIBLE_CAPABILITIES = new CaptureRequest.Key<>("com.mediatek.cameraflex.flexibleCapabilities", long[].class);

    /* JADX INFO: Access modifiers changed from: package-private */
    public MTKParameterConverter() {
        this.mCustomParameterMap.put(ConfigureParameter.DUAL_CAMERA.getName(), KEY_DUAL_CAMERA);
        this.mCustomParameterMap.put(ConfigureParameter.KEY_TUNING_DATA_ENABLE.getName(), KEY_MTK_TUNING_DATA_ENABLE);
        this.mCustomParameterMap.put(ConfigureParameter.KEY_MTK_SMVR_FEATURE_SMVR_MODES.getName(), KEY_MTK_SMVR_FEATURE_SMVR_MODES);
        this.mCustomParameterMap.put(ConfigureParameter.KEY_MTK_NAVIGATION_NAVIGATIONMODE.getName(), KEY_MTK_NAVIGATION_NAVIGATIONMODE);
        this.mCustomParameterMap.put(ConfigureParameter.KEY_MTK_NAVIGATION_STREAMSIZE.getName(), KEY_MTK_NAVIGATION_STREAMSIZE);
        this.mCustomParameterMap.put(ConfigureParameter.KEY_MTK_MULTI_CAM_FEATURE_MODE.getName(), KEY_MTK_MULTI_CAM_FEATURE_MODE);
        this.mCustomParameterMap.put(ConfigureParameter.SESSION_REQUEST_CROP_REGION.getName(), KEY_MTK_SESSION_REQUEST_CROP_REGION);
        this.mCustomParameterMap.put(ConfigureParameter.KEY_MTK_CAPTURE_RAW10.getName(), KEY_MTK_CAPTURE_RAW10);
        this.mCustomParameterMap.put(ConfigureParameter.KEY_SESSION_REQUEST_FAST_LAUNCH.getName(), KEY_SESSION_REQUEST_FAST_LAUNCH);
        this.mCustomParameterMap.put(ConfigureParameter.KEY_SESSION_REQUEST_MSNR.getName(), KEY_MTK_REQUEST_MSNR_MODE);
        this.mCustomParameterMap.put(ConfigureParameter.KEY_REQUEST_ZSL_MODE.getName(), KEY_MTK_REQUEST_ZSL_MODE);
        this.mCustomParameterMap.put(ConfigureParameter.KEY_FLEXIBLE_CAPABILITIES.getName(), KEY_MTK_FLEXIBLE_CAPABILITIES);
        this.mCustomParameterMap.put(ConfigureParameter.KEY_VSDOF_PREVIEW_SIZE.getName(), KEY_MTK_VSDOF_PREVIEW_SIZE);
        this.mCustomParameterMap.put(ConfigureParameter.KEY_VSDOF_OPTICAL_ZOOM.getName(), KEY_MTK_VSDOF_OPTICAL_ZOOM);
        this.mCustomParameterMap.put(PreviewParameter.KEY_CAPTURE_FLIP_MODE.getName(), KEY_CAPTURE_FLIP_MODE);
        this.mCustomParameterMap.put(PreviewParameter.KEY_VIDEO_EIS_RECORD_STATE.getName(), KEY_VIDEO_MTK_EIS_RECORD_STATE);
        this.mCustomParameterMap.put(PreviewParameter.KEY_FRAME_COUNT.getName(), KEY_MTK_MFNR_FEATURE_ISP_FRAME_COUNT);
        this.mCustomParameterMap.put(PreviewParameter.KEY_FRAME_INDEX.getName(), KEY_MTK_MFNR_FEATURE_ISP_FRAME_INDEX);
        this.mCustomParameterMap.put(PreviewParameter.KEY_MFNR_FEATURE_ISP_TUNING_MODE.getName(), KEY_MTK_MFNR_FEATURE_ISP_TUNING_MODE);
        this.mCustomParameterMap.put(PreviewParameter.KEY_CAPTURE_PRIVATE_RAW_ENABLE.getName(), KEY_MTK_CAPTURE_PRIVATE_RAW_ENABLE);
        this.mCustomParameterMap.put(PreviewParameter.KEY_CAPTURE_PROCESS_RAW_ENABLE.getName(), KEY_MTK_CAPTURE_PROCESS_RAW_ENABLE);
        this.mCustomParameterMap.put(PreviewParameter.KEY_CAPTURE_RAW_BITS_PER_PIXEL.getName(), KEY_MTK_CAPTURE_RAW_BITS_PER_PIXEL);
        this.mCustomParameterMap.put(PreviewParameter.FEATURE_AI_SHUT_CAPTURE.getName(), KEY_MTK_3A_FEATURE_AISHUT_CAPTURE);
        this.mCustomParameterMap.put(PreviewParameter.KEY_TUNING_DATA_REQUEST.getName(), KEY_MTK_TUNING_DATA_REQUEST);
        this.mCustomParameterMap.put(PreviewParameter.KEY_PICTURE_EXIF_FLAG.getName(), KEY_PICTURE_EXIF_FLAG);
        this.mCustomParameterMap.put(PreviewParameter.KEY_COLOR_TEMPERATURE.getName(), KEY_NAME_MTK_COLOR_TEMPERATURE);
    }
}

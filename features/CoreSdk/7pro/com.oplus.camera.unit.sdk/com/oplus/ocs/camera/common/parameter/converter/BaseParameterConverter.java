package com.oplus.ocs.camera.common.parameter.converter;

import android.hardware.camera2.CaptureRequest;
import android.hardware.camera2.TotalCaptureResult;
import com.oplus.ocs.camera.common.parameter.ConfigureParameter;
import com.oplus.ocs.camera.common.parameter.Parameter;
import com.oplus.ocs.camera.common.parameter.PreviewParameter;
import com.oplus.ocs.camera.common.util.CameraUnitLog;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes.dex */
abstract class BaseParameterConverter implements ParameterConverterInterface {
    private static final String TAG = "BaseParameterConverter";
    Map<String, CaptureRequest.Key<?>> mCustomParameterMap = new HashMap();
    private static final CaptureRequest.Key<byte[]> KEY_OPLUS_SDK_CAMERA_PACKAGE = new CaptureRequest.Key<>("com.oplus.is.sdk.camera.package", byte[].class);
    private static final CaptureRequest.Key<Integer> KEY_VIDEO_EIS_RECORD_STATE = new CaptureRequest.Key<>("com.oplus.eis.record.state", Integer.class);
    private static final CaptureRequest.Key<Integer> KEY_MAKEUP_STATE = new CaptureRequest.Key<>("com.oplus.makeup.state", Integer.class);
    private static final CaptureRequest.Key<int[]> KEY_APS_FEATURE_TYPE = new CaptureRequest.Key<>("com.oplus.aps.feature.type", int[].class);
    private static final CaptureRequest.Key<int[]> KEY_NIGHT_MODE = new CaptureRequest.Key<>("com.oplus.supernight.mode", int[].class);
    private static final CaptureRequest.Key<int[]> KEY_APERTURE_VALUE = new CaptureRequest.Key<>("com.oplus.iris.aperture.value", int[].class);
    private static final CaptureRequest.Key<int[]> KEY_AE_REGION = new CaptureRequest.Key<>("com.oplus.control.ae.region", int[].class);
    private static final CaptureRequest.Key<int[]> KEY_AF_REGION = new CaptureRequest.Key<>("com.oplus.control.af.region", int[].class);
    private static final CaptureRequest.Key<int[]> KEY_BRACKET_MODE = new CaptureRequest.Key<>("com.oplus.BracketMode", int[].class);
    private static final CaptureRequest.Key<float[]> KEY_BLUR_LEVEL = new CaptureRequest.Key<>("com.oplus.bokeh.level", float[].class);
    private static final CaptureRequest.Key<Integer> KEY_AI_NIGHT_MODE = new CaptureRequest.Key<>("com.oplus.video.stabilization.mode", Integer.class);
    private static final CaptureRequest.Key<int[]> KEY_AUTO_HDR_ENABLE = new CaptureRequest.Key<>("com.oplus.auto.hdr.enable", int[].class);
    private static final CaptureRequest.Key<byte[]> KEY_VIDEO_WATERMARK_ENABLE = new CaptureRequest.Key<>("com.oplus.video.slogan.enable", byte[].class);
    private static final CaptureRequest.Key<int[]> KEY_VIDEO_WATERMARK_ORIENTATION = new CaptureRequest.Key<>("com.oplus.video.slogan.orientation", int[].class);
    private static final CaptureRequest.Key<byte[]> KEY_VIDEO_WATERMARK_PATH = new CaptureRequest.Key<>("com.oplus.video.slogan.path", byte[].class);
    private static final CaptureRequest.Key<int[]> KEY_PI_ENABLE = new CaptureRequest.Key<>("com.oplus.camera.pi.enable", int[].class);
    private static final CaptureRequest.Key<int[]> KEY_PI_ENABLE_LIST = new CaptureRequest.Key<>("com.oplus.camera.pi.enable_list", int[].class);
    private static final CaptureRequest.Key<int[]> KEY_AI_SCN_ENABLE = new CaptureRequest.Key<>("com.oplus.ai.scene.app.enable", int[].class);
    private static final CaptureRequest.Key<Long> KEY_MULTI_FRAME_EXPOSURE_TIME = new CaptureRequest.Key<>("com.oplus.sensor.exposureTime", Long.class);
    private static final CaptureRequest.Key<int[]> KEY_LONGSHOT_ENABLE = new CaptureRequest.Key<>("com.oplus.longshot.enable", int[].class);
    private static final CaptureRequest.Key<int[]> KEY_CONTROL_GYRO_ENABLE = new CaptureRequest.Key<>("com.oplus.camera.gyro.common.enable", int[].class);
    public static final CaptureRequest.Key<Integer> KEY_DUAL_SCENE_MASTER = new CaptureRequest.Key<>("com.oplus.dualscene.master", Integer.class);
    private static final CaptureRequest.Key<float[]> KEY_NAME_ZOOM_TARGET = new CaptureRequest.Key<>("com.oplus.zoom.target", float[].class);
    private static final CaptureRequest.Key<int[]> KEY_NAME_ZOOM_ACTIVE = new CaptureRequest.Key<>("com.oplus.zoom.active", int[].class);
    private static final CaptureRequest.Key<int[]> KEY_PRO_TORCH_MODE = new CaptureRequest.Key<>("com.oplus.ProTorchMode", int[].class);
    private static final CaptureRequest.Key<int[]> KEY_MFSR_FRAME_NUM = new CaptureRequest.Key<>("com.oplus.MFSRFrameNum", int[].class);
    private static final CaptureRequest.Key<Byte> KEY_CUSTOM_NOISE_REDUCTION = new CaptureRequest.Key<>("org.quic.camera.CustomNoiseReduction.CustomNoiseReduction", Byte.TYPE);
    private static final CaptureRequest.Key<Byte> KEY_MOVIE_HDR_ENABLE = new CaptureRequest.Key<>("com.oplus.movie.hdr.enable", Byte.TYPE);
    private static final CaptureRequest.Key<Byte> KEY_MOVIE_LOG_ENABLE = new CaptureRequest.Key<>("com.oplus.movie.log.enable", Byte.TYPE);
    private static final CaptureRequest.Key<byte[]> KEY_CALLER_PACKAGE_NAME = new CaptureRequest.Key<>("com.oplus.caller.package.name", byte[].class);
    private static final CaptureRequest.Key<Long> KEY_EXIF_TAG_DATETIME = new CaptureRequest.Key<>("com.oplus.exiftag.datetime", Long.class);

    @Override // com.oplus.ocs.camera.common.parameter.converter.ParameterConverterInterface
    public final <T> T convert(Parameter.Key<T> key, TotalCaptureResult totalCaptureResult) {
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public BaseParameterConverter() {
        this.mCustomParameterMap.clear();
        this.mCustomParameterMap.put(ConfigureParameter.IS_OPLUS_PACKAGE.getName(), KEY_OPLUS_SDK_CAMERA_PACKAGE);
        this.mCustomParameterMap.put(ConfigureParameter.AI_NIGHT_VIDEO_MODE.getName(), KEY_AI_NIGHT_MODE);
        this.mCustomParameterMap.put(ConfigureParameter.KEY_VIDEO_EIS_RECORD_STATE.getName(), KEY_VIDEO_EIS_RECORD_STATE);
        this.mCustomParameterMap.put(ConfigureParameter.KEY_MAKEUP_STATE.getName(), KEY_MAKEUP_STATE);
        this.mCustomParameterMap.put(ConfigureParameter.KEY_CALLER_PACKAGE_NAME.getName(), KEY_CALLER_PACKAGE_NAME);
        this.mCustomParameterMap.put(ConfigureParameter.KEY_DUAL_SCENE_MASTER.getName(), KEY_DUAL_SCENE_MASTER);
        this.mCustomParameterMap.put(PreviewParameter.KEY_BLUR_LEVEL.getName(), KEY_BLUR_LEVEL);
        this.mCustomParameterMap.put(PreviewParameter.KEY_AUTO_HDR_ENABLE.getName(), KEY_AUTO_HDR_ENABLE);
        this.mCustomParameterMap.put(PreviewParameter.KEY_NAME_ZOOM_TARGET.getName(), KEY_NAME_ZOOM_TARGET);
        this.mCustomParameterMap.put(PreviewParameter.KEY_NAME_ZOOM_ACTIVE.getName(), KEY_NAME_ZOOM_ACTIVE);
        this.mCustomParameterMap.put(PreviewParameter.KEY_VIDEO_WATERMARK_ENABLE.getName(), KEY_VIDEO_WATERMARK_ENABLE);
        this.mCustomParameterMap.put(PreviewParameter.KEY_VIDEO_WATERMARK_ORIENTATION.getName(), KEY_VIDEO_WATERMARK_ORIENTATION);
        this.mCustomParameterMap.put(PreviewParameter.KEY_VIDEO_WATERMARK_PATH.getName(), KEY_VIDEO_WATERMARK_PATH);
        this.mCustomParameterMap.put(PreviewParameter.KEY_PI_ENABLE.getName(), KEY_PI_ENABLE);
        this.mCustomParameterMap.put(PreviewParameter.KEY_PI_ENABLE_LIST.getName(), KEY_PI_ENABLE_LIST);
        this.mCustomParameterMap.put(PreviewParameter.KEY_AI_SCN_ENABLE.getName(), KEY_AI_SCN_ENABLE);
        this.mCustomParameterMap.put(PreviewParameter.KEY_CONTROL_GYRO_ENABLE.getName(), KEY_CONTROL_GYRO_ENABLE);
        this.mCustomParameterMap.put(PreviewParameter.KEY_NIGHT_MODE.getName(), KEY_NIGHT_MODE);
        this.mCustomParameterMap.put(PreviewParameter.KEY_APERTURE_VALUE.getName(), KEY_APERTURE_VALUE);
        this.mCustomParameterMap.put(PreviewParameter.KEY_MFSR_FRAME_NUM.getName(), KEY_MFSR_FRAME_NUM);
        this.mCustomParameterMap.put(PreviewParameter.KEY_CUSTOM_NOISE_REDUCTION.getName(), KEY_CUSTOM_NOISE_REDUCTION);
        this.mCustomParameterMap.put(PreviewParameter.KEY_EXIF_TAG_DATETIME.getName(), KEY_EXIF_TAG_DATETIME);
        this.mCustomParameterMap.put(PreviewParameter.KEY_APS_FEATURE_TYPE.getName(), KEY_APS_FEATURE_TYPE);
        this.mCustomParameterMap.put(PreviewParameter.KEY_AE_REGION.getName(), KEY_AE_REGION);
        this.mCustomParameterMap.put(PreviewParameter.KEY_AF_REGION.getName(), KEY_AF_REGION);
        this.mCustomParameterMap.put(PreviewParameter.KEY_BRACKET_MODE.getName(), KEY_BRACKET_MODE);
        this.mCustomParameterMap.put(PreviewParameter.KEY_MULTI_FRAME_EXPOSURE_TIME.getName(), KEY_MULTI_FRAME_EXPOSURE_TIME);
        this.mCustomParameterMap.put(PreviewParameter.KEY_LONGSHOT_ENABLE.getName(), KEY_LONGSHOT_ENABLE);
        this.mCustomParameterMap.put(PreviewParameter.KEY_PRO_TORCH_MODE.getName(), KEY_PRO_TORCH_MODE);
        this.mCustomParameterMap.put(PreviewParameter.KEY_MOVIE_HDR_ENABLE.getName(), KEY_MOVIE_HDR_ENABLE);
        this.mCustomParameterMap.put(PreviewParameter.KEY_MOVIE_LOG_ENABLE.getName(), KEY_MOVIE_LOG_ENABLE);
    }

    @Override // com.oplus.ocs.camera.common.parameter.converter.ParameterConverterInterface
    public final void convert(Map<Parameter.Key<?>, Parameter.ValueWrapper<?>> map, CaptureRequest.Builder builder, int i) {
        if (map == null || map.size() <= 0) {
            return;
        }
        for (Parameter.Key<?> key : map.keySet()) {
            String name = key.getName();
            CaptureRequest.Key<?> key2 = this.mCustomParameterMap.get(name);
            int category = key.getCategory();
            if (key2 != null) {
                CameraUnitLog.i(TAG, "convert, sdk key name: " + name + ", hal Key name: " + key2.getName() + ", sdkKeyCategory: " + category + ", parameterCategory: " + i);
                if (category == i || 3 == category || ((4 == category && 1 == i) || (4 == category && 2 == i))) {
                    try {
                        CameraUnitLog.i(TAG, "convert, set custom parameter, halKeyName: " + key2.getName() + ", value: " + map.get(key).getValue() + ", parameterCategory: " + i);
                        builder.set(key2, map.get(key).getValue().get());
                    } catch (Exception e) {
                        this.mCustomParameterMap.remove(name);
                        CameraUnitLog.i(TAG, "convert, parameter failed: " + e.getMessage());
                    }
                }
            }
        }
    }
}

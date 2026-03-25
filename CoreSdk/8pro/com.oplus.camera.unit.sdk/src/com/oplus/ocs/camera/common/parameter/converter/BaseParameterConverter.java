package com.oplus.ocs.camera.common.parameter.converter;

import android.hardware.camera2.CaptureRequest;
import com.oplus.ocs.camera.common.parameter.ConfigureParameter;
import com.oplus.ocs.camera.common.parameter.Parameter;
import com.oplus.ocs.camera.common.parameter.PreviewParameter;
import com.oplus.ocs.camera.consumer.apsAdapter.adapter.DefaultUtill;
import com.oplus.ocs.camera.producer.device.CaptureRequestProxy;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
abstract class BaseParameterConverter implements ParameterConverterInterface {
        private static final String TAG = "BaseParameterConverter";
        Map<String, CaptureRequest.Key<?>> mCustomParameterMap;
        private static final CaptureRequest.Key<byte[]> KEY_OPLUS_SDK_CAMERA_PACKAGE = new CaptureRequest.Key<>(
                        "com.oplus.is.sdk.camera.package", byte[].class);
        private static final CaptureRequest.Key<Integer> KEY_VIDEO_EIS_RECORD_STATE = new CaptureRequest.Key<>(
                        "com.oplus.eis.record.state", Integer.class);
        private static final CaptureRequest.Key<Integer> KEY_MAKEUP_STATE = new CaptureRequest.Key<>(
                        "com.oplus.makeup.state", Integer.class);
        private static final CaptureRequest.Key<int[]> KEY_APS_FEATURE_TYPE = new CaptureRequest.Key<>(
                        "com.oplus.aps.feature.type", int[].class);
        private static final CaptureRequest.Key<int[]> KEY_MOVING_OBJECT = new CaptureRequest.Key<>(
                        "com.oplus.moving.object", int[].class);
        private static final CaptureRequest.Key<int[]> KEY_NIGHT_MODE = new CaptureRequest.Key<>(
                        "com.oplus.supernight.mode", int[].class);
        private static final CaptureRequest.Key<int[]> KEY_APERTURE_VALUE = new CaptureRequest.Key<>(
                        "com.oplus.iris.aperture.value", int[].class);
        private static final CaptureRequest.Key<int[]> KEY_AE_REGION = new CaptureRequest.Key<>(
                        "com.oplus.control.ae.region", int[].class);
        private static final CaptureRequest.Key<int[]> KEY_AF_REGION = new CaptureRequest.Key<>(
                        "com.oplus.control.af.region", int[].class);
        private static final CaptureRequest.Key<int[]> KEY_BRACKET_MODE = new CaptureRequest.Key<>(
                        "com.oplus.BracketMode",
                        int[].class);
        private static final CaptureRequest.Key<float[]> KEY_BLUR_LEVEL = new CaptureRequest.Key<>(
                        "com.oplus.bokeh.level",
                        float[].class);
        private static final CaptureRequest.Key<Integer> KEY_AI_NIGHT_MODE = new CaptureRequest.Key<>(
                        "com.oplus.video.stabilization.mode", Integer.class);
        private static final CaptureRequest.Key<int[]> KEY_AUTO_HDR_ENABLE = new CaptureRequest.Key<>(
                        "com.oplus.auto.hdr.enable", int[].class);
        private static final CaptureRequest.Key<int[]> KEY_SENSOR_MODE = new CaptureRequest.Key<>(
                        "com.oplus.sensor.mode",
                        int[].class);
        private static final CaptureRequest.Key<byte[]> KEY_VIDEO_WATERMARK_ENABLE = new CaptureRequest.Key<>(
                        "com.oplus.video.slogan.enable", byte[].class);
        private static final CaptureRequest.Key<int[]> KEY_VIDEO_WATERMARK_ORIENTATION = new CaptureRequest.Key<>(
                        "com.oplus.video.slogan.orientation", int[].class);
        private static final CaptureRequest.Key<byte[]> KEY_VIDEO_WATERMARK_PATH = new CaptureRequest.Key<>(
                        "com.oplus.video.slogan.path", byte[].class);
        private static final CaptureRequest.Key<int[]> KEY_PI_ENABLE = new CaptureRequest.Key<>(
                        "com.oplus.camera.pi.enable", int[].class);
        private static final CaptureRequest.Key<int[]> KEY_PI_ENABLE_LIST = new CaptureRequest.Key<>(
                        "com.oplus.camera.pi.enable_list", int[].class);
        private static final CaptureRequest.Key<int[]> KEY_AI_SCN_ENABLE = new CaptureRequest.Key<>(
                        "com.oplus.ai.scene.app.enable", int[].class);
        private static final CaptureRequest.Key<Long> KEY_MULTI_FRAME_EXPOSURE_TIME = new CaptureRequest.Key<>(
                        "com.oplus.sensor.exposureTime", Long.class);
        private static final CaptureRequest.Key<int[]> KEY_LONGSHOT_ENABLE = new CaptureRequest.Key<>(
                        "com.oplus.longshot.enable", int[].class);
        private static final CaptureRequest.Key<int[]> KEY_CONTROL_GYRO_ENABLE = new CaptureRequest.Key<>(
                        "com.oplus.camera.gyro.common.enable", int[].class);
        public static final CaptureRequest.Key<Integer> KEY_DUAL_SCENE_MASTER = new CaptureRequest.Key<>(
                        "com.oplus.dualscene.master", Integer.class);
        private static final CaptureRequest.Key<float[]> KEY_NAME_ZOOM_TARGET = new CaptureRequest.Key<>(
                        "com.oplus.zoom.target", float[].class);
        private static final CaptureRequest.Key<int[]> KEY_NAME_ZOOM_ACTIVE = new CaptureRequest.Key<>(
                        "com.oplus.zoom.active", int[].class);
        private static final CaptureRequest.Key<Float> KEY_NAME_ZOOM_SCALE = new CaptureRequest.Key<>(
                        "com.oplus.zoom.scale", Float.class);
        private static final CaptureRequest.Key<Integer> KEY_NAME_DEVICE_ORIENTATION = new CaptureRequest.Key<>(
                        "com.oplus.device.orientation", Integer.class);
        private static final CaptureRequest.Key<int[]> KEY_PRO_TORCH_MODE = new CaptureRequest.Key<>(
                        "com.oplus.ProTorchMode", int[].class);
        private static final CaptureRequest.Key<int[]> KEY_MFSR_FRAME_NUM = new CaptureRequest.Key<>(
                        "com.oplus.MFSRFrameNum", int[].class);
        private static final CaptureRequest.Key<Byte> KEY_CUSTOM_NOISE_REDUCTION = new CaptureRequest.Key<>(
                        "org.quic.camera.CustomNoiseReduction.CustomNoiseReduction", Byte.class);
        private static final CaptureRequest.Key<Byte> KEY_MOVIE_HDR_ENABLE = new CaptureRequest.Key<>(
                        "com.oplus.movie.hdr.enable", Byte.class);
        private static final CaptureRequest.Key<Byte> KEY_MOVIE_LOG_ENABLE = new CaptureRequest.Key<>(
                        "com.oplus.movie.log.enable", Byte.class);
        private static final CaptureRequest.Key<byte[]> KEY_CALLER_PACKAGE_NAME = new CaptureRequest.Key<>(
                        "com.oplus.caller.package.name", byte[].class);
        private static final CaptureRequest.Key<Long> KEY_EXIF_TAG_DATETIME = new CaptureRequest.Key<>(
                        "com.oplus.exiftag.datetime", Long.class);
        private static final CaptureRequest.Key<int[]> KEY_AIS_STATE = new CaptureRequest.Key<>("com.oplus.ais.state",
                        int[].class);
        public static final CaptureRequest.Key<Integer> KEY_NIGHT_OFFLINE_R2Y = new CaptureRequest.Key<>(
                        DefaultUtill.KEY_NIGHT_OFFLINE_R2Y, Integer.class);
        public static final CaptureRequest.Key<Integer> KEY_REAR_SELF_MODE_REVERSE = new CaptureRequest.Key<>(
                        "com.oplus.rear.self.mode.reverse", Integer.class);
        private static final CaptureRequest.Key<int[]> KEY_HASSELBLAD_XPAN_CROP_INFO = new CaptureRequest.Key<>(
                        "com.oplus.opx.CropInfo", int[].class);

        /* JADX WARN: Type inference incomplete: some casts might be missing */
        BaseParameterConverter() {
                HashMap map = new HashMap();
                this.mCustomParameterMap = map;
                map.clear();
                this.mCustomParameterMap.put(ConfigureParameter.IS_OPLUS_PACKAGE.getName(),
                                (CaptureRequest.Key<?>) KEY_OPLUS_SDK_CAMERA_PACKAGE);
                this.mCustomParameterMap.put(ConfigureParameter.AI_NIGHT_VIDEO_MODE.getName(), KEY_AI_NIGHT_MODE);
                this.mCustomParameterMap.put(ConfigureParameter.KEY_VIDEO_EIS_RECORD_STATE.getName(),
                                KEY_VIDEO_EIS_RECORD_STATE);
                this.mCustomParameterMap.put(ConfigureParameter.KEY_MAKEUP_STATE.getName(), KEY_MAKEUP_STATE);
                this.mCustomParameterMap.put(ConfigureParameter.KEY_CALLER_PACKAGE_NAME.getName(),
                                (CaptureRequest.Key<?>) KEY_CALLER_PACKAGE_NAME);
                this.mCustomParameterMap.put(ConfigureParameter.KEY_DUAL_SCENE_MASTER.getName(), KEY_DUAL_SCENE_MASTER);
                this.mCustomParameterMap.put(ConfigureParameter.KEY_REAR_SELF_MODE_REVERSE.getName(),
                                KEY_REAR_SELF_MODE_REVERSE);
                this.mCustomParameterMap.put(PreviewParameter.KEY_BLUR_LEVEL.getName(),
                                (CaptureRequest.Key<?>) KEY_BLUR_LEVEL);
                this.mCustomParameterMap.put(PreviewParameter.KEY_AUTO_HDR_ENABLE.getName(),
                                (CaptureRequest.Key<?>) KEY_AUTO_HDR_ENABLE);
                this.mCustomParameterMap.put(PreviewParameter.KEY_NAME_ZOOM_TARGET.getName(),
                                (CaptureRequest.Key<?>) KEY_NAME_ZOOM_TARGET);
                this.mCustomParameterMap.put(PreviewParameter.KEY_NAME_ZOOM_ACTIVE.getName(),
                                (CaptureRequest.Key<?>) KEY_NAME_ZOOM_ACTIVE);
                this.mCustomParameterMap.put(PreviewParameter.KEY_DEVICE_ORIENTATION.getName(),
                                KEY_NAME_DEVICE_ORIENTATION);
                this.mCustomParameterMap.put(PreviewParameter.KEY_SENSOR_MODE.getName(),
                                (CaptureRequest.Key<?>) KEY_SENSOR_MODE);
                this.mCustomParameterMap.put(PreviewParameter.KEY_VIDEO_WATERMARK_ENABLE.getName(),
                                (CaptureRequest.Key<?>) KEY_VIDEO_WATERMARK_ENABLE);
                this.mCustomParameterMap.put(PreviewParameter.KEY_VIDEO_WATERMARK_ORIENTATION.getName(),
                                (CaptureRequest.Key<?>) KEY_VIDEO_WATERMARK_ORIENTATION);
                this.mCustomParameterMap.put(PreviewParameter.KEY_VIDEO_WATERMARK_PATH.getName(),
                                (CaptureRequest.Key<?>) KEY_VIDEO_WATERMARK_PATH);
                this.mCustomParameterMap.put(PreviewParameter.KEY_PI_ENABLE.getName(),
                                (CaptureRequest.Key<?>) KEY_PI_ENABLE);
                this.mCustomParameterMap.put(PreviewParameter.KEY_PI_ENABLE_LIST.getName(),
                                (CaptureRequest.Key<?>) KEY_PI_ENABLE_LIST);
                this.mCustomParameterMap.put(PreviewParameter.KEY_AI_SCN_ENABLE.getName(),
                                (CaptureRequest.Key<?>) KEY_AI_SCN_ENABLE);
                this.mCustomParameterMap.put(PreviewParameter.KEY_CONTROL_GYRO_ENABLE.getName(),
                                (CaptureRequest.Key<?>) KEY_CONTROL_GYRO_ENABLE);
                this.mCustomParameterMap.put(PreviewParameter.KEY_NIGHT_MODE.getName(),
                                (CaptureRequest.Key<?>) KEY_NIGHT_MODE);
                this.mCustomParameterMap.put(PreviewParameter.KEY_APERTURE_VALUE.getName(),
                                (CaptureRequest.Key<?>) KEY_APERTURE_VALUE);
                this.mCustomParameterMap.put(PreviewParameter.KEY_MFSR_FRAME_NUM.getName(),
                                (CaptureRequest.Key<?>) KEY_MFSR_FRAME_NUM);
                this.mCustomParameterMap.put(PreviewParameter.KEY_CUSTOM_NOISE_REDUCTION.getName(),
                                KEY_CUSTOM_NOISE_REDUCTION);
                this.mCustomParameterMap.put(PreviewParameter.KEY_EXIF_TAG_DATETIME.getName(), KEY_EXIF_TAG_DATETIME);
                this.mCustomParameterMap.put(PreviewParameter.KEY_HASSELBLAD_XPAN_CROP_REGION.getName(),
                                (CaptureRequest.Key<?>) KEY_HASSELBLAD_XPAN_CROP_INFO);
                this.mCustomParameterMap.put(PreviewParameter.KEY_ZOOM_SCALE.getName(), KEY_NAME_ZOOM_SCALE);
                this.mCustomParameterMap.put(PreviewParameter.KEY_APS_FEATURE_TYPE.getName(),
                                (CaptureRequest.Key<?>) KEY_APS_FEATURE_TYPE);
                this.mCustomParameterMap.put(PreviewParameter.KEY_MOVING_OBJECT.getName(),
                                (CaptureRequest.Key<?>) KEY_MOVING_OBJECT);
                this.mCustomParameterMap.put(PreviewParameter.KEY_AE_REGION.getName(),
                                (CaptureRequest.Key<?>) KEY_AE_REGION);
                this.mCustomParameterMap.put(PreviewParameter.KEY_AF_REGION.getName(),
                                (CaptureRequest.Key<?>) KEY_AF_REGION);
                this.mCustomParameterMap.put(PreviewParameter.KEY_BRACKET_MODE.getName(),
                                (CaptureRequest.Key<?>) KEY_BRACKET_MODE);
                this.mCustomParameterMap.put(PreviewParameter.KEY_MULTI_FRAME_EXPOSURE_TIME.getName(),
                                KEY_MULTI_FRAME_EXPOSURE_TIME);
                this.mCustomParameterMap.put(PreviewParameter.KEY_LONGSHOT_ENABLE.getName(),
                                (CaptureRequest.Key<?>) KEY_LONGSHOT_ENABLE);
                this.mCustomParameterMap.put(PreviewParameter.KEY_PRO_TORCH_MODE.getName(),
                                (CaptureRequest.Key<?>) KEY_PRO_TORCH_MODE);
                this.mCustomParameterMap.put(PreviewParameter.KEY_MOVIE_HDR_ENABLE.getName(), KEY_MOVIE_HDR_ENABLE);
                this.mCustomParameterMap.put(PreviewParameter.KEY_MOVIE_LOG_ENABLE.getName(), KEY_MOVIE_LOG_ENABLE);
                this.mCustomParameterMap.put(PreviewParameter.KEY_AIS_STATE.getName(),
                                (CaptureRequest.Key<?>) KEY_AIS_STATE);
                this.mCustomParameterMap.put(PreviewParameter.KEY_NIGHT_OFFLINE_R2Y.getName(), KEY_NIGHT_OFFLINE_R2Y);
        }

        @Override // com.oplus.ocs.camera.common.parameter.converter.ParameterConverterInterface
        public final void convert(Map<Parameter.Key<?>, Parameter.ValueWrapper<?>> map,
                        CaptureRequestProxy.Builder builder,
                        int i) {
                if (map == null || map.size() <= 0) {
                        return;
                }
                for (Parameter.Key<?> key : map.keySet()) {
                        String name = key.getName();
                        CaptureRequest.Key<?> key2 = this.mCustomParameterMap.get(name);
                        int category = key.getCategory();
                        if (key2 != null
                                        && (category == i || 3 == category
                                                        || ((4 == category && 1 == i) || (4 == category && 2 == i)))) {
                                if (!builder.setParameter((CaptureRequest.Key) key2, map.get(key).getValue().get())) {
                                        this.mCustomParameterMap.remove(name);
                                }
                        }
                }
        }
}

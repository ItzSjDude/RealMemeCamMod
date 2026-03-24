package com.oplus.ocs.camera.common.parameter;

import android.graphics.RectF;
import android.hardware.camera2.CaptureRequest;
import android.os.Bundle;
import androidx.annotation.NonNull;
import com.oplus.ocs.camera.common.parameter.Parameter;
import com.oplus.ocs.camera.common.util.CameraUnitLog;
import com.oplus.ocs.camera.configure.CameraFeatureName;
import com.oplus.ocs.camera.consumer.apsAdapter.adapter.DefaultUtill;
import java.lang.reflect.Field;
import java.lang.reflect.Modifier;
import java.util.HashMap;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes.dex */
public final class PreviewParameter extends Parameter {
    public static final Parameter.Key<Integer> KEY_FOCUS_MODE = new Parameter.Key<>(CameraFeatureName.P_FOCUS, Integer.class, 1);
    public static final Parameter.Key<RectF> KEY_AF_REGIONS = new Parameter.Key<>(CameraFeatureName.P_AF, RectF.class, 1);
    public static final Parameter.Key<RectF> KEY_AE_REGIONS = new Parameter.Key<>(CameraFeatureName.P_AE, RectF.class, 1);
    public static final Parameter.Key<String> KEY_FLASH_MODE = new Parameter.Key<>(CameraFeatureName.P_FLASH, String.class, 1);
    public static final Parameter.Key<Float> KEY_ZOOM_RATIO = new Parameter.Key<>("com.oplus.preview.zoom.ratio", Float.class, 1);
    public static final Parameter.Key<Boolean> KEY_ZOOM_SCALE_ENABLE = new Parameter.Key<>("com.oplus.preview.zoom.scale.enable", Boolean.class, 1);
    public static final Parameter.Key<Float> KEY_ZOOM_SCALE = new Parameter.Key<>("com.oplus.zoom.scale", Float.class, 4);
    public static final Parameter.Key<Integer> KEY_DEVICE_ORIENTATION = new Parameter.Key<>("com.oplus.device.orientation", Integer.class, 1);
    public static final Parameter.Key<int[]> KEY_CAPTURE_FLIP_MODE = new Parameter.Key<>("com.oplus.preview.flip_mode", int[].class, 1);
    public static final Parameter.Key<float[]> KEY_BLUR_LEVEL = new Parameter.Key<>("com.oplus.bokeh.level", float[].class, 1);
    public static final Parameter.Key<Integer> KEY_BLUR_LEVEL_RANGE = new Parameter.Key<>("com.oplus.blur.level.range", Integer.class, 1);
    public static final Parameter.Key<Integer> KEY_MICROSCOPE_CAPTURE_PREVIEW_STATE = new Parameter.Key<>("com.oplus.microscope.capture.preview.state", Integer.class, 1);
    public static final Parameter.Key<Float> KEY_SAT_CAMERA_NONE_ZOOM_RATIO = new Parameter.Key<>(CameraFeatureName.P_NONE_ZOOM_RATIO, Float.class, 1);
    public static final Parameter.Key<int[]> KEY_TRIPOD_MODE = new Parameter.Key<>("com.oplus.preview.tripod.mode", int[].class, 4);
    public static final Parameter.Key<Boolean> KEY_STARBURST_MODE = new Parameter.Key<>("com.oplus.preview.starburst.mode", Boolean.class, 4);
    public static final Parameter.Key<float[]> KEY_STARBURST_INFO = new Parameter.Key<>("com.oplus.opx.StarburstInfo", float[].class, 4);
    public static final Parameter.Key<Boolean> KEY_FISH_EYE_MODE = new Parameter.Key<>("com.oplus.preview.fisheye.mode", Boolean.class, 4);
    public static final Parameter.Key<String> KEY_SUPER_TEXT_VERTICES = new Parameter.Key<>("com.oplus.super.text.vertices", String.class, 1);
    public static final Parameter.Key<Boolean> KEY_SUPER_TEXT_ENABLE = new Parameter.Key<>("com.oplus.super.text.enable", Boolean.class, 1);
    public static final Parameter.Key<Object> KEY_REQUEST_TAG = new Parameter.Key<>("com.oplus.request.tag", Object.class, 1);
    public static final Parameter.Key<Long> KEY_CAPTURE_TIME = new Parameter.Key<>("com.oplus.capture.time", Long.class, 2);
    public static final Parameter.Key<Long> KEY_EXIF_TAG_DATETIME = new Parameter.Key<>("com.oplus.exiftag.datetime", Long.class, 2);
    public static final Parameter.Key<String> KEY_SINGLE_BLUR_ALGONAME = new Parameter.Key<>("com.oplus.single.blur.algoname", String.class, 2);
    public static final Parameter.Key<Integer> KEY_SINGLE_PORTRAIT_EFFECT_MODE = new Parameter.Key<>("com.oplus.single.portrait.effect.mode", Integer.class, 2);
    public static final Parameter.Key<Integer> KEY_SINGLE_BLUR_LEVEL = new Parameter.Key<>("com.oplus.single.blur.level", Integer.class, 2);
    public static final Parameter.Key<Integer> KEY_REAR_SELF_CAPTURE_ENABLE = new Parameter.Key<>("com.oplus.rear.self.capture.enable", Integer.class, 4);
    public static final Parameter.Key<Float> KEY_SINGLE_BLUR_SHOW = new Parameter.Key<>("com.oplus.single.blur.show", Float.class, 2);
    public static final Parameter.Key<Boolean> KEY_CAPTURE_WITH_DETACH = new Parameter.Key<>(DefaultUtill.KEY_CAPTURE_WITH_DETACH, Boolean.class, 2);
    public static final Parameter.Key<Integer> KEY_FRAME_FLAG = new Parameter.Key<>("com.oplus.frame.flag", Integer.class, 2);
    public static final Parameter.Key<Boolean> KEY_CAPTURE_FOR_VIDEO = new Parameter.Key<>("com.oplus.capture.for.video", Boolean.class, 2);
    public static final Parameter.Key<Boolean> KEY_REAR_MIRROR_ENABLE = new Parameter.Key<>("rear.mirror.enable", Boolean.class, 2);
    public static final Parameter.Key<Long> KEY_SHUTTER_BUTTON_CLICK_TIME = new Parameter.Key<>("shutter.button.click.time", Long.class, 2);
    public static final Parameter.Key<String> KEY_PICTURE_VISUALIZATION_ENABLE = new Parameter.Key<>("com.oplus.camera.picture.visualization.enable", String.class, 2);
    public static final Parameter.Key<Boolean> KEY_QUICK_JPEG = new Parameter.Key<>("com.oplus.quick.jpeg", Boolean.class, 2);
    public static final Parameter.Key<String> KEY_HEIC_CODEC_FORMAT = new Parameter.Key<>("com.oplus.heic.codec.format", String.class, 2);
    public static final Parameter.Key<String> KEY_HDR_MODE = new Parameter.Key<>(CameraFeatureName.P_HDR, String.class, 4);
    public static final Parameter.Key<Bundle> KEY_WATERMARK_PARAM = new Parameter.Key<>("com.oplus.feature.watermark.param", Bundle.class, 1);
    public static final Parameter.Key<String> KEY_AI_PHOTO = new Parameter.Key<>(CameraFeatureName.P_AI_PHOTO, String.class, 1);
    public static final Parameter.Key<String> KEY_ALGO_VISUALIZATION_ENABLE = new Parameter.Key<>("com.oplus.camera.algo.visualization.enable", String.class, 1);
    public static final Parameter.Key<String> KEY_GESTURE_ENABLE = new Parameter.Key<>("com.oplus.gesture.capture.enable", String.class, 1);
    public static final Parameter.Key<String> KEY_VIDEO_BLUR_ENABLE = new Parameter.Key<>("com.oplus.video.blur.enable", String.class, 1);
    public static final Parameter.Key<float[]> KEY_NAME_ZOOM_TARGET = new Parameter.Key<>("com.oplus.zoom.target", float[].class, 1);
    public static final Parameter.Key<int[]> KEY_NAME_ZOOM_ACTIVE = new Parameter.Key<>("com.oplus.zoom.active", int[].class, 1);
    public static final Parameter.Key<byte[]> KEY_MOVIE_HDR_ENABLE = new Parameter.Key<>("com.oplus.movie.hdr.enable", byte[].class, 1);
    public static final Parameter.Key<Integer> KEY_SUPER_TEXT_MODE = new Parameter.Key<>("com.oplus.preview.supertext.mode", Integer.class, 1);
    public static final Parameter.Key<byte[]> KEY_MOVIE_LOG_ENABLE = new Parameter.Key<>("com.oplus.movie.log.enable", byte[].class, 1);
    public static final Parameter.Key<int[]> KEY_APS_FEATURE_TYPE = new Parameter.Key<>("com.oplus.aps.feature.type", int[].class, 4);
    public static final Parameter.Key<int[]> KEY_MOVING_OBJECT = new Parameter.Key<>("com.oplus.moving.object", int[].class, 4);
    public static final Parameter.Key<String> KEY_QUICK_VIDEO_RECORD_ENABLE = new Parameter.Key<>("com.oplus.quick.video.record.enable", String.class, 1);
    public static final Parameter.Key<int[]> KEY_CONTROL_GYRO_ENABLE = new Parameter.Key<>("com.oplus.camera.gyro.common.enable", int[].class, 1);
    public static final Parameter.Key<String> KEY_PREVIEW_IN_PREVIEW_ENABLE = new Parameter.Key<>("com.oplus.preview.in.preview.enable", String.class, 1);
    public static final Parameter.Key<String> KEY_VIDEO_NEON_ENABLE = new Parameter.Key<>("com.oplus.video.neon.enable", String.class, 1);
    public static final Parameter.Key<Integer> KEY_VIDEO_FUSION_EFFECT = new Parameter.Key<>("com.oplus.video.fusion.status", Integer.class, 1);
    public static final Parameter.Key<String> KEY_VIDEO_NEON_PARAMS = new Parameter.Key<>("com.oplus.video.neon.params", String.class, 1);
    public static final Parameter.Key<String> KEY_VIDEO_BLUR_PARAMS = new Parameter.Key<>("com.oplus.video.blur.params", String.class, 1);
    public static final Parameter.Key<String> KEY_SUPER_CLEAR_PORTRAIT_ENABLE = new Parameter.Key<>("com.oplus.super.clear.portrait.enable", String.class, 1);
    public static final Parameter.Key<String> KEY_ULTRA_HIGH_RESOLUTION_ENABLE = new Parameter.Key<>("com.oplus.ultra.high.resolution.enable", String.class, 1);
    public static final Parameter.Key<String> KEY_PORTRAIT_NEON_ENABLE = new Parameter.Key<>("com.oplus.portrait.neon.enable", String.class, 1);
    public static final Parameter.Key<int[]> KEY_HASSELBLAD_XPAN_CROP_REGION = new Parameter.Key<>("com.oplus.opx.CropInfo", int[].class, 2);
    public static final Parameter.Key<Integer> KEY_NIGHT_OFFLINE_R2Y = new Parameter.Key<>(DefaultUtill.KEY_NIGHT_OFFLINE_R2Y, Integer.class, 2);
    public static final Parameter.Key<Boolean> KEY_WATERMARK_EDIT_ENABLE = new Parameter.Key<>("com.oplus.watermark.edit.enable", Boolean.class, 2);
    public static final Parameter.Key<Boolean> KEY_BLUR_EDIT_ENABLE = new Parameter.Key<>("com.oplus.blur.edit.enable", Boolean.class, 2);
    public static final Parameter.Key<float[]> KEY_BLUR_SUPPORT_VALUES = new Parameter.Key<>("com.oplus.blur.support.values", float[].class, 2);
    public static final Parameter.Key<float[]> KEY_BLUR_SUPPORT_APERTURES = new Parameter.Key<>("com.oplus.blur.support.apertures", float[].class, 2);
    public static final Parameter.Key<Boolean> KEY_FOCUS_PEAKING_ENABLE = new Parameter.Key<>("com.oplus.focus.peaking.enable", Boolean.class, 1);
    public static final Parameter.Key<Boolean> KEY_IS_FROM_MAIN_MENU = new Parameter.Key<>("com.oplus.camera.preview.is.from.main.menu", Boolean.class, 1);
    public static final Parameter.Key<Boolean> KEY_IS_FROM_SYSTEM_APP = new Parameter.Key<>("com.oplus.camera.preview.is.from.system.app", Boolean.class, 1);
    public static final Parameter.Key<Boolean> KEY_EDGE_FILTER_ENABLE = new Parameter.Key<>("com.oplus.camera.edge.filter.enable", Boolean.class, 1);
    public static final Parameter.Key<String[]> KEY_EDGE_FILTER_PARAM = new Parameter.Key<>("com.oplus.camera.edge.filter.param", String[].class, 1);
    public static final Parameter.Key<Integer> KEY_AIS_DCT_SUPPORT = new Parameter.Key<>("com.oplus.preview.ais.dct.support", Integer.class, 1);
    public static final Parameter.Key<Integer> KEY_AIS_DCT_AINR_SUPPORT = new Parameter.Key<>("com.oplus.preview.ais.dct.ainr.support", Integer.class, 1);
    public static final Parameter.Key<Integer> KEY_AIS_BRACKET = new Parameter.Key<>("com.oplus.preview.ais.bracket", Integer.class, 1);
    public static final Parameter.Key<Integer> KEY_THERMAL_LEVEL = new Parameter.Key<>("com.oplus.thermal_level", Integer.class, 1);
    public static final Parameter.Key<Boolean> KEY_FAST_SHOT_ENABLE = new Parameter.Key<>("com.oplus.feature.fast.shot.enable", Boolean.class, 1);
    public static final Parameter.Key<int[]> KEY_BRACKET_MODE = new Parameter.Key<>("com.oplus.BracketMode", int[].class, 4);
    public static final Parameter.Key<int[]> KEY_AE_REGION = new Parameter.Key<>("com.oplus.control.ae.region", int[].class, 4);
    public static final Parameter.Key<int[]> KEY_AF_REGION = new Parameter.Key<>("com.oplus.control.af.region", int[].class, 4);
    public static final Parameter.Key<int[]> KEY_COLOR_TEMPERATURE = new Parameter.Key<>("com.oplus.color.temperature", int[].class, 4);
    public static final Parameter.Key<int[]> KEY_COLOR_TEMPERATURE_RANGE = new Parameter.Key<>("com.oplus.color.temperature.range", int[].class, 4);
    public static final Parameter.Key<Long> KEY_MULTI_FRAME_EXPOSURE_TIME = new Parameter.Key<>("com.oplus.sensor.exposureTime", Long.class, 4);
    public static final Parameter.Key<int[]> KEY_LONGSHOT_ENABLE = new Parameter.Key<>("com.oplus.longshot.enable", int[].class, 4);
    public static final Parameter.Key<int[]> KEY_AIS_STATE = new Parameter.Key<>("com.oplus.ais.state", int[].class, 4);
    public static final Parameter.Key<int[]> KEY_PRO_TORCH_MODE = new Parameter.Key<>("com.oplus.ProTorchMode", int[].class, 4);
    public static final Parameter.Key<int[]> KEY_NIGHT_MODE = new Parameter.Key<>("com.oplus.supernight.mode", int[].class, 2);
    public static final Parameter.Key<Boolean> KEY_NIGHT_PRO_MODE = new Parameter.Key<>("com.oplus.nightpro.mode", Boolean.class, 2);
    public static final Parameter.Key<int[]> KEY_APERTURE_VALUE = new Parameter.Key<>("com.oplus.iris.aperture.value", int[].class, 2);
    public static final Parameter.Key<int[]> KEY_FRAME_COUNT = new Parameter.Key<>("com.oplus.control.capture.hintForIspFrameCount", int[].class, 2);
    public static final Parameter.Key<int[]> KEY_FRAME_INDEX = new Parameter.Key<>("com.oplus.control.capture.hintForIspFrameIndex", int[].class, 2);
    public static final Parameter.Key<String> KEY_RAW_CONTROL = new Parameter.Key<>("com.oplus.raw.control", String.class, 2);
    public static final Parameter.Key<Bundle> KEY_VIDEO_EFFECT_PARAM = new Parameter.Key<>("com.oplus.video.effect.param", Bundle.class, 2);
    public static final Parameter.Key<String> KEY_FILTER_TYPE = new Parameter.Key<>("com.oplus.camera.filter.type", String.class, 4);
    public static final Parameter.Key<Boolean> KEY_FILTER_OPEN = new Parameter.Key<>("com.oplus.camera.filter.open", Boolean.class, 2);
    public static final Parameter.Key<String> KEY_VIDEO_RETENTION_OPEN = new Parameter.Key<>("com.oplus.camera.video.retention.open", String.class, 2);
    public static final Parameter.Key<Boolean> KEY_FILTER_WITHVIGNETTE = new Parameter.Key<>("com.oplus.camera.filter.withvignette", Boolean.class, 2);
    public static final Parameter.Key<String> KEY_FACE_BEAUTY_ENABLE = new Parameter.Key<>("com.oplus.camera.face.beauty.enable", String.class, 2);
    public static final Parameter.Key<String> KEY_STAR_VIDEO_ENABLE = new Parameter.Key<>("com.oplus.camera.star.video.enable", String.class, 2);
    public static final Parameter.Key<String> KEY_FACE_BEAUTY_VERSION = new Parameter.Key<>("com.oplus.camera.face.beauty.version", String.class, 2);
    public static final Parameter.Key<int[]> KEY_FACE_BEAUTY_PARAM = new Parameter.Key<>("com.oplus.camera.face.param", int[].class, 2);
    public static final Parameter.Key<int[]> KEY_FACE_DATA = new Parameter.Key<>("com.oplus.camera.face.data", int[].class, 2);
    public static final Parameter.Key<String> KEY_FACE_DERED_EYE_ENABLE = new Parameter.Key<>("com.oplus.camera.face.dered.eye.enable", String.class, 2);
    public static final Parameter.Key<String> KEY_FACE_MAKEUP_TYPE = new Parameter.Key<>("com.oplus.camera.makeup.type", String.class, 2);
    public static final Parameter.Key<Integer> KEY_FACE_MAKEUP_VALUE = new Parameter.Key<>("com.oplus.camera.makeup.value", Integer.class, 2);
    public static final Parameter.Key<Boolean> KEY_SUPPORT_MAKEUP = new Parameter.Key<>("com.oplus.camera.support.makeup", Boolean.class, 2);
    public static final Parameter.Key<String> KEY_BURST_SHOT_ENABLE = new Parameter.Key<>("com.oplus.camera.burst.shot.enable", String.class, 2);
    public static final Parameter.Key<String> KEY_BURST_SHOT_PATH = new Parameter.Key<>("com.oplus.camera.burst.shot.path", String.class, 2);
    public static final Parameter.Key<Long> KEY_BURST_SHOT_FLAG_ID = new Parameter.Key<>("com.oplus.camera.burst.shot.flag.id", Long.class, 2);
    public static final Parameter.Key<String> KEY_WATERMARK_CAPTURE_ENABLE = new Parameter.Key<>("com.oplus.camera.watermark.capture.enable", String.class, 2);
    public static final Parameter.Key<int[]> KEY_PICTURE_EXIF_FLAG = new Parameter.Key<>("com.oplus.picture.exif.flag", int[].class, 2);
    public static final Parameter.Key<Boolean> KEY_FACE_RECTIFY_ENABLE = new Parameter.Key<>("com.oplus.face_rectify.enable", Boolean.class, 2);
    public static final Parameter.Key<Boolean> KEY_TILT_SHIFT_ENABLE = new Parameter.Key<>("com.oplus.tilt.shift.enable", Boolean.class, 1);
    public static final Parameter.Key<Bundle> KEY_TILT_SHIFT_PARAM = new Parameter.Key<>("com.oplus.tilt.shift.param", Bundle.class, 2);
    public static final Parameter.Key<Long> KEY_TAKE_PICTURE_DECISION_TIMESTAMP = new Parameter.Key<>("com.oplus.take.picture.decision.timestamp", Long.class, 2);
    public static final Parameter.Key<String> KEY_FACE_BEAUTY_EXFOLIATING = new Parameter.Key<>(CameraFeatureName.P_BEAUTY_EXFOLIATING, String.class, 1);
    public static final Parameter.Key<String> KEY_FACE_BEAUTY_THIN_FACE = new Parameter.Key<>(CameraFeatureName.P_BEAUTY_THIN_FACE, String.class, 1);
    public static final Parameter.Key<String> KEY_SAT_USE_HAL = new Parameter.Key<>(DefaultUtill.KEY_SAT_USE_HAL, String.class, 1);
    public static final Parameter.Key<Float> KEY_FEATURE_RATIO_RANGE = new Parameter.Key<>("com.oplus.preview.feature.zoom.range", Float.class, 1);
    public static final Parameter.Key<byte[]> KEY_VIDEO_WATERMARK_ENABLE = new Parameter.Key<>("com.oplus.video.slogan.enable", byte[].class, 1);
    public static final Parameter.Key<int[]> KEY_VIDEO_WATERMARK_ORIENTATION = new Parameter.Key<>("com.oplus.video.slogan.orientation", int[].class, 1);
    public static final Parameter.Key<byte[]> KEY_VIDEO_WATERMARK_PATH = new Parameter.Key<>("com.oplus.video.slogan.path", byte[].class, 1);
    public static final Parameter.Key<int[]> KEY_AUTO_HDR_ENABLE = new Parameter.Key<>("com.oplus.auto.hdr.enable", int[].class, 4);
    public static final Parameter.Key<int[]> KEY_PI_ENABLE = new Parameter.Key<>("com.oplus.camera.pi.enable", int[].class, 1);
    public static final Parameter.Key<int[]> KEY_PI_ENABLE_LIST = new Parameter.Key<>("com.oplus.camera.pi.enable_list", int[].class, 1);
    public static final Parameter.Key<int[]> KEY_AI_SCN_ENABLE = new Parameter.Key<>("com.oplus.ai.scene.app.enable", int[].class, 1);
    public static final Parameter.Key<byte[]> KEY_END_OF_STREAM = new Parameter.Key<>("com.oplus.preview.endOfStream", byte[].class, 1);
    public static final Parameter.Key<Integer> KEY_VIDEO_EIS_RECORD_STATE = new Parameter.Key<>("com.oplus.preview.eis.record.state", Integer.class, 1);
    public static final Parameter.Key<int[]> KEY_MFNR_FEATURE_ISP_TUNING_MODE = new Parameter.Key<>("com.oplus.control.capture.hintForIspTuning", int[].class, 2);
    public static final Parameter.Key<int[]> KEY_CAPTURE_PRIVATE_RAW_ENABLE = new Parameter.Key<>("com.oplus.control.capture.packedRaw.enable", int[].class, 2);
    public static final Parameter.Key<Integer> KEY_CAPTURE_PROCESS_RAW_ENABLE = new Parameter.Key<>("com.oplus.control.capture.processRaw.enable", Integer.class, 2);
    public static final Parameter.Key<int[]> KEY_CAPTURE_RAW_BITS_PER_PIXEL = new Parameter.Key<>("com.oplus.control.capture.raw.bpp", int[].class, 2);
    public static final Parameter.Key<byte[]> KEY_TUNING_DATA_ENABLE = new Parameter.Key<>("com.oplus.control.capture.ispMetaEnable", byte[].class, 2);
    public static final Parameter.Key<byte[]> KEY_TUNING_DATA_REQUEST = new Parameter.Key<>("com.oplus.control.capture.ispTuningRequest", byte[].class, 2);
    public static final Parameter.Key<int[]> FEATURE_AI_SHUT_CAPTURE = new Parameter.Key<>("com.oplus.3afeature.aishutCapture", int[].class, 2);
    public static final Parameter.Key<int[]> KEY_IZOOM_SNAPSHOT = new Parameter.Key<>("com.oplus.control.state_izoom_snapshot", int[].class, 2);
    public static final Parameter.Key<int[]> KEY_IZOOM_PREVIEW = new Parameter.Key<>("com.oplus.opx.IZOOMenable", int[].class, 1);
    public static final Parameter.Key<int[]> KEY_SENSOR_MODE = new Parameter.Key<>("com.oplus.sensor.mode", int[].class, 4);
    public static final Parameter.Key<Integer> KEY_CAPTURE_REQUEST_IDX = new Parameter.Key<>("com.oplus.capture.request.idx", Integer.TYPE, 2);
    public static final Parameter.Key<int[]> KEY_MFSR_FRAME_NUM = new Parameter.Key<>("com.oplus.MFSRFrameNum", int[].class, 2);
    public static final Parameter.Key<Byte> KEY_CUSTOM_NOISE_REDUCTION = new Parameter.Key<>("org.quic.camera.CustomNoiseReduction.CustomNoiseReduction", Byte.TYPE, 2);
    public static final Parameter.Key<int[]> KEY_LONG_EXPOSURE_SCENE_TYPE_TYPE = new Parameter.Key<>("com.oplus.long.exposure.scene.type", int[].class, 1);
    public static final Parameter.Key<Boolean> KEY_NIGHT_SE_ENABLE = new Parameter.Key<>("com.oplus.preview.night.se.enbale", Boolean.class, 1);
    public static final Parameter.Key<Integer> KEY_SIZE_RATIO_TYPE = new Parameter.Key<>("com.oplus.size.ratio.type", Integer.TYPE, 2);
    private static HashMap<String, Parameter.Key> mKeysHashMap = null;

    public static void init() {
        if (mKeysHashMap != null) {
            return;
        }
        Field[] declaredFields = PreviewParameter.class.getDeclaredFields();
        mKeysHashMap = new HashMap<>();
        for (Field field : declaredFields) {
            field.setAccessible(true);
            if (Modifier.isStatic(field.getModifiers())) {
                try {
                    Object obj = field.get(PreviewParameter.class);
                    if (obj instanceof Parameter.Key) {
                        Parameter.Key key = (Parameter.Key) obj;
                        mKeysHashMap.put(key.getName(), key);
                    }
                } catch (IllegalAccessException e) {
                    e.printStackTrace();
                }
            }
        }
    }

    private PreviewParameter(@NonNull ConcurrentHashMap<Parameter.Key<?>, Parameter.ValueWrapper<?>> concurrentHashMap, @NonNull ConcurrentHashMap<CaptureRequest.Key<?>, Parameter.ValueWrapper<?>> concurrentHashMap2) {
        super(concurrentHashMap, concurrentHashMap2);
    }

    public static final class Builder extends Parameter.BaseBuilder {
        private static final String TAG = "PreviewParameter.Build";

        @Override // com.oplus.ocs.camera.common.parameter.Parameter.BaseBuilder
        public Parameter.BaseBuilder set(@NonNull String str, Object obj) {
            if (PreviewParameter.mKeysHashMap != null) {
                Parameter.Key key = (Parameter.Key) PreviewParameter.mKeysHashMap.get(str);
                if (key == null) {
                    CameraUnitLog.e(TAG, "set, not match key: " + str);
                    return this;
                }
                if (str.equals(PreviewParameter.KEY_TRIPOD_MODE.getName()) || str.equals(PreviewParameter.KEY_CAPTURE_FLIP_MODE.getName()) || str.equals(PreviewParameter.KEY_NAME_ZOOM_ACTIVE.getName())) {
                    set((Parameter.Key<int[]>) key, new int[]{((Boolean) obj).booleanValue() ? 1 : 0});
                } else if (str.equals(PreviewParameter.KEY_NAME_ZOOM_TARGET.getName()) && (obj instanceof Float)) {
                    set((Parameter.Key<float[]>) key, new float[]{((Float) obj).floatValue()});
                } else {
                    set((Parameter.Key<Object>) key, obj);
                }
                return this;
            }
            CameraUnitLog.e(TAG, "set, KeysHashMap not init, key: " + str);
            return this;
        }
    }
}

package com.oplus.ocs.camera.common.parameter;

import android.graphics.RectF;
import android.hardware.camera2.CaptureRequest;
import android.util.Range;
import android.util.Size;
import androidx.annotation.NonNull;
import com.oplus.ocs.camera.common.parameter.Parameter;
import com.oplus.ocs.camera.common.util.CameraUnitLog;
import com.oplus.ocs.camera.configure.CameraFeatureName;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.reflect.Field;
import java.util.HashMap;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes.dex */
public final class ConfigureParameter extends Parameter {
    private static final int HASH_MAP_CAPACITY = 64;
    private static final String TAG = "ConfigureParameter";
    public static final Parameter.Key<String> VIDEO_FPS = new Parameter.Key<>(CameraFeatureName.P_FPS, String.class, 3);
    public static final Parameter.Key<Range> VIDEO_DYNAMIC_FPS = new Parameter.Key<>("com.oplus.configure.video.dynamic.fps", Range.class, 3);
    public static final Parameter.Key<String> VIDEO_STABILIZATION_MODE = new Parameter.Key<>(CameraFeatureName.P_STABILIZATION, String.class, 3);
    public static final Parameter.Key<Integer> PREVIEW_FACE_BEAUTY_LEVEL = new Parameter.Key<>("com.oplus.configure.face.beauty.level", Integer.class, 3);
    public static final Parameter.Key<String> VIDEO_3HDR_MODE = new Parameter.Key<>("com.oplus.configure.video.3hdr", String.class, 3);
    public static final Parameter.Key<String> VIDEO_NIGHT_MODE = new Parameter.Key<>("com.oplus.configure.video.night", String.class, 3);
    public static final Parameter.Key<String> VIDEO_ENCODER = new Parameter.Key<>("com.oplus.configure.video.encoder", String.class, 3);
    public static final Parameter.Key<Integer> VIDEO_BITRATE = new Parameter.Key<>("com.oplus.configure.video.bitrate", Integer.class, 3);
    public static final Parameter.Key<String> KEY_VIDEO_FOVC = new Parameter.Key<>(CameraFeatureName.P_FOVC, String.class, 3);
    public static final Parameter.Key<byte[]> IS_OPLUS_PACKAGE = new Parameter.Key<>("com.oplus.configure.is.oplus.package", byte[].class, 3);
    public static final Parameter.Key<Integer> KEY_VIDEO_EIS_RECORD_STATE = new Parameter.Key<>("com.oplus.configure.eis.record.state", Integer.class, 3);
    public static final Parameter.Key<Integer> AI_NIGHT_VIDEO_MODE = new Parameter.Key<>("com.oplus.video.stabilization.mode", Integer.class, 3);
    public static final Parameter.Key<String> HYPER_LAPSE = new Parameter.Key<>(CameraFeatureName.P_HYPER_LAPSE, String.class, 3);
    public static final Parameter.Key<byte[]> KEY_TUNING_DATA_ENABLE = new Parameter.Key<>("com.oplus.control.capture.ispMetaEnable", byte[].class, 3);
    public static final Parameter.Key<String> KEY_PORTAIT_BOKEH_TYPE = new Parameter.Key<>(CameraFeatureName.P_BOKEH_TYPE, String.class, 3);
    public static final Parameter.Key<int[]> KEY_MTK_MULTI_CAM_FEATURE_MODE = new Parameter.Key<>("com.oplus.multicamfeature.multiCamFeatureMode", int[].class, 3);
    public static final Parameter.Key<int[]> KEY_CONTROL_CAPTURE_PERFORMANCE_OPTIMAL_MODE = new Parameter.Key<>("com.oplus.control.capture.performance.optimal.mode", int[].class, 3);
    public static final Parameter.Key<String> KEY_PORTAIT_BODY_TYPE = new Parameter.Key<>(CameraFeatureName.P_PORTRAIT_BODY_TYPE, String.class, 3);
    public static final Parameter.Key<String> KEY_APS_VIDEO_RETENTION = new Parameter.Key<>(CameraFeatureName.P_APS_VIDEO_RETENTION, String.class, 3);
    public static final Parameter.Key<String> VIDEO_10BIT_ENABLE = new Parameter.Key<>("com.oplus.feature.video.10bit.enable", String.class, 3);
    public static final Parameter.Key<String> PHOTO_10BIT_ENABLE = new Parameter.Key<>("com.oplus.feature.photo.10bit.enable", String.class, 3);
    public static final Parameter.Key<String> HIGH_PICTURE_SIZE_ENABLE = new Parameter.Key<>("com.oplus.feature.photo.highPicture.enable", String.class, 3);
    public static final Parameter.Key<String> AI_HIGH_PIXEL_ENABLE = new Parameter.Key<>("com.oplus.feature.ai.high.pixel.enable", String.class, 3);
    public static final Parameter.Key<String> AI_FOLLOW_ENABLE = new Parameter.Key<>("com.oplus.feature.ai.follow.enable", String.class, 3);
    public static final Parameter.Key<String> ANTI_BANDING_ENABLE = new Parameter.Key<>("com.oplus.feature.antibanding.enable", String.class, 3);
    public static final Parameter.Key<String> ALGO_VISUALIZATION_DISPLAY_ENABLE = new Parameter.Key<>("com.oplus.feature.algo.visualization.display.enable", String.class, 3);
    public static final Parameter.Key<String> MIRROR_ENABLE = new Parameter.Key<>("com.oplus.feature.mirror.enable", String.class, 3);
    public static final Parameter.Key<String> KEY_WATERMARK_VIDEO_ENABLE = new Parameter.Key<>("com.oplus.camera.watermark.video.enable", String.class, 1);
    public static final Parameter.Key<String> KEY_SLOW_VIDEO_INTELLIGENT_HIGH_FRAME_ENABLE = new Parameter.Key<>("com.oplus.slow.video.intelligent.high.frame.enable", String.class, 3);

    @Deprecated
    public static final Parameter.Key<RectF> KEY_SLOW_VIDEO_MOTION_DETECT_COORDINATE = new Parameter.Key<>("com.oplus.slow.video.motion.detect.coordinate", RectF.class, 3);
    public static final Parameter.Key<Byte> KEY_HVXSHDR_ENABLE = new Parameter.Key<>(CameraFeatureName.P_AI_NIGHT_VIDEO, Byte.TYPE, 3);
    public static final Parameter.Key<int[]> SESSION_REQUEST_CROP_REGION = new Parameter.Key<>("com.oplus.multicamfeature.multiCamConfigScalerCropRegion", int[].class, 3);
    public static final Parameter.Key<String> PORTRAIT_STREAMER_ENABLE = new Parameter.Key<>("com.oplus.portrait.streamer.enable", String.class, 3);
    public static final Parameter.Key<String> KEY_MONO_FILTER_TYPE = new Parameter.Key<>("com.oplus.mono.filter.type", String.class, 3);
    public static final Parameter.Key<int[]> DUAL_CAMERA = new Parameter.Key<>("com.oplus.streamingfeature.pipDevices", int[].class, 3);
    public static final Parameter.Key<int[]> KEY_MTK_CAPTURE_RAW10 = new Parameter.Key<>("com.oplus.control.capture.raw10.convertfmt", int[].class, 3);
    public static final Parameter.Key<int[]> KEY_MTK_SMVR_FEATURE_SMVR_MODES = new Parameter.Key<>("com.oplus.smvrfeature.smvrMode", int[].class, 3);
    public static final Parameter.Key<int[]> KEY_MTK_NAVIGATION_NAVIGATIONMODE = new Parameter.Key<>("com.oplus.navigation.navigationMode", int[].class, 3);
    public static final Parameter.Key<int[]> KEY_MTK_NAVIGATION_STREAMSIZE = new Parameter.Key<>("com.oplus.navigation.streamSize", int[].class, 3);
    public static final Parameter.Key<String> KEY_TORCH_FLASH_ENABLE = new Parameter.Key<>("com.oplus.torch.flash.enable", String.class, 3);
    public static final Parameter.Key<Integer> KEY_MAKEUP_STATE = new Parameter.Key<>("com.oplus.makeup.state", Integer.class, 3);
    public static final Parameter.Key<String> KEY_VIDEO_STABILIZATION_FPS = new Parameter.Key<>("com.oplus.configure.video.stabilization.fps", String.class, 3);
    public static final Parameter.Key<Boolean> KEY_QUICK_JPEG_SWITCH = new Parameter.Key<>("com.oplus.quick.jpeg.switch", Boolean.class, 3);
    public static final Parameter.Key<int[]> KEY_SESSION_REQUEST_FAST_LAUNCH = new Parameter.Key<>("com.oplus.configure.setting.initrequest", int[].class, 3);
    public static final Parameter.Key<int[]> KEY_SESSION_REQUEST_PROPRIETARYCAPTURE = new Parameter.Key<>("com.oplus.configure.setting.proprietaryCapture", int[].class, 3);
    public static final Parameter.Key<int[]> KEY_SESSION_REQUEST_MSNR = new Parameter.Key<>("com.oplus.control.capture.singleYuvNr.mode", int[].class, 3);
    public static final Parameter.Key<byte[]> KEY_CALLER_PACKAGE_NAME = new Parameter.Key<>("com.oplus.caller.package.name", byte[].class, 3);
    public static final Parameter.Key<byte[]> KEY_REQUEST_ZSL_MODE = new Parameter.Key<>("com.oplus.control.capture.zsl.mode", byte[].class, 3);
    public static final Parameter.Key<Integer> KEY_DUAL_SCENE_MASTER = new Parameter.Key<>("com.oplus.dualscene.master", Integer.class, 3);
    public static final Parameter.Key<long[]> KEY_FLEXIBLE_CAPABILITIES = new Parameter.Key<>("com.oplus.cameraflex.flexibleCapabilities", long[].class, 3);
    public static final Parameter.Key<Size> KEY_VSDOF_PREVIEW_SIZE = new Parameter.Key<>("com.oplus.vsdoffeature.vsdofFeaturePreviewSize", Size.class, 3);
    public static final Parameter.Key<int[]> KEY_VSDOF_OPTICAL_ZOOM = new Parameter.Key<>("com.oplus.vsdoffeature.vsdofFeatureOpticalZoomSet", int[].class, 3);
    public static final Parameter.Key<Integer> KEY_REAR_SELF_MODE_REVERSE = new Parameter.Key<>("com.oplus.rear.self.mode.reverse", Integer.class, 3);
    public static final Parameter.Key<Float> KEY_CUSTOM_ZOOM_RATIO = new Parameter.Key<>("com.oplus.original.zoomRatio", Float.TYPE, 3);
    public static final Parameter.Key<Boolean> KEY_IS_FROM_MAIN_MENU = new Parameter.Key<>("com.oplus.camera.is.from.main.menu", Boolean.class, 3);
    public static final Parameter.Key<Byte> KEY_MOVIE_HDR_ENABLE = new Parameter.Key<>("com.oplus.movie.hdr.enable", Byte.class, 3);
    public static final Parameter.Key<Byte> KEY_MOVIE_LOG_ENABLE = new Parameter.Key<>("com.oplus.movie.log.enable", Byte.class, 3);
    public static final Parameter.Key<Integer> KEY_EXPLORER_CHIP_STATE = new Parameter.Key<>("com.oplus.explorer.chip.state", Integer.class, 3);
    public static final Parameter.Key<String> KEY_VIDEO_BLUR = new Parameter.Key<>("com.oplus.video.blur.enable", String.class, 3);
    public static final Parameter.Key<String> KEY_CONFIGURE_OPERATION_MODE = new Parameter.Key<>("com.oplus.configure.operation.mode", String.class, 3);
    public static final Parameter.Key<Size> KEY_CONFIGURE_STREAM_SIZE = new Parameter.Key<>("com.oplus.configure.stream.size", Size.class, 3);
    public static final Parameter.Key<String> KEY_EXPLORER_ENABLE = new Parameter.Key<>("com.oplus.configure.explorer.enable", String.class, 3);
    private static boolean sInit = false;
    private static HashMap<String, Parameter.Key> sConfigureParameterMap = null;
    private static int KEY_MODIFIERS_FLAG = 25;

    @Retention(RetentionPolicy.SOURCE)
    public @interface TuningDataState {
        public static final byte TUNING_DATA_BUFFER_ENABLE = 2;
        public static final byte TUNING_DATA_DISABLE = 0;
        public static final byte TUNING_DATA_META_ENABLE = 1;
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface TuningRequestType {
        public static final byte TUNING_REQUEST_RAW = 1;
        public static final byte TUNING_REQUEST_YUV = 2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void initMap() {
        if (sInit) {
            return;
        }
        sInit = true;
        sConfigureParameterMap = new HashMap<>(64);
        for (Field field : ConfigureParameter.class.getDeclaredFields()) {
            field.setAccessible(true);
            if (KEY_MODIFIERS_FLAG == field.getModifiers()) {
                try {
                    Object obj = field.get(ConfigureParameter.class);
                    if (obj instanceof Parameter.Key) {
                        Parameter.Key key = (Parameter.Key) obj;
                        sConfigureParameterMap.put(key.getName(), key);
                    }
                } catch (IllegalAccessException e) {
                    e.printStackTrace();
                }
            }
        }
        CameraUnitLog.d(TAG, "initMap, key size: " + sConfigureParameterMap.size());
    }

    private ConfigureParameter(@NonNull ConcurrentHashMap<Parameter.Key<?>, Parameter.ValueWrapper<?>> concurrentHashMap, @NonNull ConcurrentHashMap<CaptureRequest.Key<?>, Parameter.ValueWrapper<?>> concurrentHashMap2) {
        super(concurrentHashMap, concurrentHashMap2);
    }

    public static final class Builder extends Parameter.BaseBuilder {
        public Builder() {
            ConfigureParameter.initMap();
        }

        @Override // com.oplus.ocs.camera.common.parameter.Parameter.BaseBuilder
        public Parameter.BaseBuilder set(@NonNull String str, Object obj) {
            CameraUnitLog.i(ConfigureParameter.TAG, "BaseBuilder set, keyName: " + str + ", value: " + obj);
            Parameter.Key key = (Parameter.Key) ConfigureParameter.sConfigureParameterMap.get(str);
            if (key != null) {
                set((Parameter.Key<Object>) key, obj);
            } else {
                CameraUnitLog.e(ConfigureParameter.TAG, "set, not match any key, keyName: " + str);
            }
            return this;
        }
    }
}

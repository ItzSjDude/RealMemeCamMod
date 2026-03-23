package com.oplus.ocs.camera.common.parameter;

import android.graphics.RectF;
import android.hardware.camera2.CaptureRequest;
import android.text.TextUtils;
import android.util.Range;
import android.util.Size;
import androidx.annotation.NonNull;
import com.oplus.ocs.camera.common.parameter.Parameter;
import com.oplus.ocs.camera.common.util.CameraUnitLog;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.concurrent.ConcurrentHashMap;
/* loaded from: classes.dex */
public final class ConfigureParameter extends Parameter {
    private static final String TAG = "ConfigureParameter";
    public static final Parameter.Key<String> VIDEO_FPS = new Parameter.Key<>("com.oplus.configure.video.fps", String.class, 3);
    public static final Parameter.Key<Range> VIDEO_DYNAMIC_FPS = new Parameter.Key<>("com.oplus.configure.video.dynamic.fps", Range.class, 3);
    public static final Parameter.Key<String> VIDEO_STABILIZATION_MODE = new Parameter.Key<>("com.oplus.configure.video.stabilization", String.class, 3);
    public static final Parameter.Key<String> VIDEO_3HDR_MODE = new Parameter.Key<>("com.oplus.configure.video.3hdr", String.class, 3);
    public static final Parameter.Key<String> VIDEO_NIGHT_MODE = new Parameter.Key<>("com.oplus.configure.video.night", String.class, 3);
    public static final Parameter.Key<String> VIDEO_ENCODER = new Parameter.Key<>("com.oplus.configure.video.encoder", String.class, 3);
    public static final Parameter.Key<Integer> VIDEO_BITRATE = new Parameter.Key<>("com.oplus.configure.video.bitrate", Integer.class, 3);
    public static final Parameter.Key<String> KEY_VIDEO_FOVC = new Parameter.Key<>("com.oplus.configure.video.fovc", String.class, 3);
    public static final Parameter.Key<byte[]> IS_OPLUS_PACKAGE = new Parameter.Key<>("com.oplus.configure.is.oplus.package", byte[].class, 3);
    public static final Parameter.Key<Integer> KEY_VIDEO_EIS_RECORD_STATE = new Parameter.Key<>("com.oplus.configure.eis.record.state", Integer.class, 3);
    public static final Parameter.Key<Integer> AI_NIGHT_VIDEO_MODE = new Parameter.Key<>("com.oplus.video.stabilization.mode", Integer.class, 3);
    public static final Parameter.Key<String> HYPER_LAPSE = new Parameter.Key<>("com.oplus.configure.fastvideo.hyperLapse", String.class, 3);
    public static final Parameter.Key<byte[]> KEY_TUNING_DATA_ENABLE = new Parameter.Key<>("com.oplus.control.capture.ispMetaEnable", byte[].class, 3);
    public static final Parameter.Key<String> KEY_PORTAIT_BOKEH_TYPE = new Parameter.Key<>("com.oplus.portrait.bokeh.type", String.class, 3);
    public static final Parameter.Key<int[]> KEY_MTK_MULTI_CAM_FEATURE_MODE = new Parameter.Key<>("com.oplus.multicamfeature.multiCamFeatureMode", int[].class, 3);
    public static final Parameter.Key<String> KEY_PORTAIT_BODY_TYPE = new Parameter.Key<>("com.oplus.portrait.body.type", String.class, 3);
    public static final Parameter.Key<String> VIDEO_10BIT_ENABLE = new Parameter.Key<>("com.oplus.feature.video.10bit.enable", String.class, 3);
    public static final Parameter.Key<String> PHOTO_10BIT_ENABLE = new Parameter.Key<>("com.oplus.feature.photo.10bit.enable", String.class, 3);
    public static final Parameter.Key<String> HIGH_PICTURE_SIZE_ENABLE = new Parameter.Key<>("com.oplus.feature.photo.highPicture.enable", String.class, 3);
    public static final Parameter.Key<String> AI_HIGH_PIXEL_ENABLE = new Parameter.Key<>("com.oplus.feature.ai.high.pixel.enable", String.class, 3);
    public static final Parameter.Key<String> ANTI_BANDING_ENABLE = new Parameter.Key<>("com.oplus.feature.antibanding.enable", String.class, 3);
    public static final Parameter.Key<String> ALGO_VISUALIZATION_DISPLAY_ENABLE = new Parameter.Key<>("com.oplus.feature.algo.visualization.display.enable", String.class, 3);
    public static final Parameter.Key<String> MIRROR_ENABLE = new Parameter.Key<>("com.oplus.feature.mirror.enable", String.class, 3);
    public static final Parameter.Key<String> KEY_WATERMARK_VIDEO_ENABLE = new Parameter.Key<>("com.oplus.camera.watermark.video.enable", String.class, 1);
    public static final Parameter.Key<String> KEY_SLOW_VIDEO_INTELLIGENT_HIGH_FRAME_ENABLE = new Parameter.Key<>("com.oplus.slow.video.intelligent.high.frame.enable", String.class, 3);
    @Deprecated
    public static final Parameter.Key<RectF> KEY_SLOW_VIDEO_MOTION_DETECT_COORDINATE = new Parameter.Key<>("com.oplus.slow.video.motion.detect.coordinate", RectF.class, 3);
    public static final Parameter.Key<Byte> KEY_HVXSHDR_ENABLE = new Parameter.Key<>("com.oplus.hvxshdr.mode.enable", Byte.TYPE, 3);
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
    public static final Parameter.Key<int[]> KEY_SESSION_REQUEST_MSNR = new Parameter.Key<>("com.oplus.control.capture.singleYuvNr.mode", int[].class, 3);
    public static final Parameter.Key<byte[]> KEY_CALLER_PACKAGE_NAME = new Parameter.Key<>("com.oplus.caller.package.name", byte[].class, 3);
    public static final Parameter.Key<byte[]> KEY_REQUEST_ZSL_MODE = new Parameter.Key<>("com.oplus.control.capture.zsl.mode", byte[].class, 3);
    public static final Parameter.Key<Integer> KEY_DUAL_SCENE_MASTER = new Parameter.Key<>("com.oplus.dualscene.master", Integer.class, 3);
    public static final Parameter.Key<long[]> KEY_FLEXIBLE_CAPABILITIES = new Parameter.Key<>("com.oplus.cameraflex.flexibleCapabilities", long[].class, 3);
    public static final Parameter.Key<Size> KEY_VSDOF_PREVIEW_SIZE = new Parameter.Key<>("com.oplus.vsdoffeature.vsdofFeaturePreviewSize", Size.class, 3);
    public static final Parameter.Key<int[]> KEY_VSDOF_OPTICAL_ZOOM = new Parameter.Key<>("com.oplus.vsdoffeature.vsdofFeatureOpticalZoomSet", int[].class, 3);
    public static final Parameter.Key<Float> KEY_CUSTOM_ZOOM_RATIO = new Parameter.Key<>("com.oplus.original.zoomRatio", Float.TYPE, 3);
    public static final Parameter.Key<Byte> KEY_MOVIE_HDR_ENABLE = new Parameter.Key<>("com.oplus.movie.hdr.enable", Byte.class, 3);
    public static final Parameter.Key<Byte> KEY_MOVIE_LOG_ENABLE = new Parameter.Key<>("com.oplus.movie.log.enable", Byte.class, 3);
    public static final Parameter.Key<Integer> KEY_EXPLORER_CHIP_STATE = new Parameter.Key<>("com.oplus.explorer.chip.state", Integer.class, 3);
    public static final Parameter.Key<String> KEY_VIDEO_BLUR = new Parameter.Key<>("com.oplus.video.blur.enable", String.class, 3);

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes.dex */
    public @interface TuningDataState {
        public static final byte TUNING_DATA_BUFFER_ENABLE = 2;
        public static final byte TUNING_DATA_DISABLE = 0;
        public static final byte TUNING_DATA_META_ENABLE = 1;
    }

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes.dex */
    public @interface TuningRequestType {
        public static final byte TUNING_REQUEST_RAW = 1;
        public static final byte TUNING_REQUEST_YUV = 2;
    }

    private ConfigureParameter(@NonNull ConcurrentHashMap<Parameter.Key<?>, Parameter.ValueWrapper<?>> concurrentHashMap, @NonNull ConcurrentHashMap<CaptureRequest.Key<?>, Parameter.ValueWrapper<?>> concurrentHashMap2) {
        super(concurrentHashMap, concurrentHashMap2);
    }

    /* loaded from: classes.dex */
    public static final class Builder extends Parameter.BaseBuilder {
        @Override // com.oplus.ocs.camera.common.parameter.Parameter.BaseBuilder
        public Parameter.BaseBuilder set(@NonNull String str, Object obj) {
            CameraUnitLog.i(ConfigureParameter.TAG, "BaseBuilder set, keyName: " + str + ", value: " + obj);
            if (TextUtils.equals(ConfigureParameter.VIDEO_FPS.getName(), str)) {
                set((Parameter.Key<Parameter.Key<String>>) ConfigureParameter.VIDEO_FPS, (Parameter.Key<String>) ((String) obj));
            } else if (TextUtils.equals(ConfigureParameter.VIDEO_DYNAMIC_FPS.getName(), str)) {
                Range range = (Range) obj;
                set((Parameter.Key<Parameter.Key<Range>>) ConfigureParameter.VIDEO_DYNAMIC_FPS, (Parameter.Key<Range>) new Range(Integer.valueOf(((Integer) range.getLower()).intValue()), Integer.valueOf(((Integer) range.getUpper()).intValue())));
            } else if (TextUtils.equals(ConfigureParameter.VIDEO_STABILIZATION_MODE.getName(), str)) {
                set((Parameter.Key<Parameter.Key<String>>) ConfigureParameter.VIDEO_STABILIZATION_MODE, (Parameter.Key<String>) ((String) obj));
            } else if (TextUtils.equals(ConfigureParameter.VIDEO_3HDR_MODE.getName(), str)) {
                set((Parameter.Key<Parameter.Key<String>>) ConfigureParameter.VIDEO_3HDR_MODE, (Parameter.Key<String>) ((String) obj));
            } else if (TextUtils.equals(ConfigureParameter.IS_OPLUS_PACKAGE.getName(), str)) {
                set((Parameter.Key<Parameter.Key<byte[]>>) ConfigureParameter.IS_OPLUS_PACKAGE, (Parameter.Key<byte[]>) ((byte[]) obj));
            } else if (TextUtils.equals(str, ConfigureParameter.KEY_VIDEO_EIS_RECORD_STATE.getName())) {
                set((Parameter.Key<Parameter.Key<Integer>>) ConfigureParameter.KEY_VIDEO_EIS_RECORD_STATE, (Parameter.Key<Integer>) ((Integer) obj));
            } else if (TextUtils.equals(ConfigureParameter.AI_NIGHT_VIDEO_MODE.getName(), str)) {
                set((Parameter.Key<Parameter.Key<Integer>>) ConfigureParameter.AI_NIGHT_VIDEO_MODE, (Parameter.Key<Integer>) ((Integer) obj));
            } else if (TextUtils.equals(ConfigureParameter.KEY_MTK_SMVR_FEATURE_SMVR_MODES.getName(), str)) {
                set((Parameter.Key<Parameter.Key<int[]>>) ConfigureParameter.KEY_MTK_SMVR_FEATURE_SMVR_MODES, (Parameter.Key<int[]>) ((int[]) obj));
            } else if (TextUtils.equals(ConfigureParameter.KEY_MTK_NAVIGATION_NAVIGATIONMODE.getName(), str)) {
                set((Parameter.Key<Parameter.Key<int[]>>) ConfigureParameter.KEY_MTK_NAVIGATION_NAVIGATIONMODE, (Parameter.Key<int[]>) ((int[]) obj));
            } else if (TextUtils.equals(ConfigureParameter.KEY_MTK_NAVIGATION_STREAMSIZE.getName(), str)) {
                set((Parameter.Key<Parameter.Key<int[]>>) ConfigureParameter.KEY_MTK_NAVIGATION_STREAMSIZE, (Parameter.Key<int[]>) ((int[]) obj));
            } else if (TextUtils.equals(ConfigureParameter.KEY_VIDEO_FOVC.getName(), str)) {
                set((Parameter.Key<Parameter.Key<String>>) ConfigureParameter.KEY_VIDEO_FOVC, (Parameter.Key<String>) ((String) obj));
            } else if (TextUtils.equals(ConfigureParameter.VIDEO_NIGHT_MODE.getName(), str)) {
                set((Parameter.Key<Parameter.Key<String>>) ConfigureParameter.VIDEO_NIGHT_MODE, (Parameter.Key<String>) ((String) obj));
            } else if (TextUtils.equals(ConfigureParameter.KEY_PORTAIT_BODY_TYPE.getName(), str)) {
                set((Parameter.Key<Parameter.Key<String>>) ConfigureParameter.KEY_PORTAIT_BODY_TYPE, (Parameter.Key<String>) ((String) obj));
            } else if (TextUtils.equals(ConfigureParameter.KEY_PORTAIT_BOKEH_TYPE.getName(), str)) {
                set((Parameter.Key<Parameter.Key<String>>) ConfigureParameter.KEY_PORTAIT_BOKEH_TYPE, (Parameter.Key<String>) ((String) obj));
            } else if (TextUtils.equals(ConfigureParameter.VIDEO_10BIT_ENABLE.getName(), str)) {
                set((Parameter.Key<Parameter.Key<String>>) ConfigureParameter.VIDEO_10BIT_ENABLE, (Parameter.Key<String>) ((String) obj));
            } else if (TextUtils.equals(ConfigureParameter.ANTI_BANDING_ENABLE.getName(), str)) {
                set((Parameter.Key<Parameter.Key<String>>) ConfigureParameter.ANTI_BANDING_ENABLE, (Parameter.Key<String>) ((String) obj));
            } else if (TextUtils.equals(ConfigureParameter.ALGO_VISUALIZATION_DISPLAY_ENABLE.getName(), str)) {
                set((Parameter.Key<Parameter.Key<String>>) ConfigureParameter.ALGO_VISUALIZATION_DISPLAY_ENABLE, (Parameter.Key<String>) ((String) obj));
            } else if (TextUtils.equals(ConfigureParameter.MIRROR_ENABLE.getName(), str)) {
                set((Parameter.Key<Parameter.Key<String>>) ConfigureParameter.MIRROR_ENABLE, (Parameter.Key<String>) ((String) obj));
            } else if (TextUtils.equals(ConfigureParameter.KEY_WATERMARK_VIDEO_ENABLE.getName(), str)) {
                set((Parameter.Key<Parameter.Key<String>>) ConfigureParameter.KEY_WATERMARK_VIDEO_ENABLE, (Parameter.Key<String>) ((String) obj));
            } else if (TextUtils.equals(ConfigureParameter.HYPER_LAPSE.getName(), str)) {
                set((Parameter.Key<Parameter.Key<String>>) ConfigureParameter.HYPER_LAPSE, (Parameter.Key<String>) ((String) obj));
            } else if (TextUtils.equals(ConfigureParameter.VIDEO_ENCODER.getName(), str)) {
                set((Parameter.Key<Parameter.Key<String>>) ConfigureParameter.VIDEO_ENCODER, (Parameter.Key<String>) ((String) obj));
            } else if (TextUtils.equals(ConfigureParameter.VIDEO_BITRATE.getName(), str)) {
                set((Parameter.Key<Parameter.Key<Integer>>) ConfigureParameter.VIDEO_BITRATE, (Parameter.Key<Integer>) ((Integer) obj));
            } else if (TextUtils.equals(ConfigureParameter.KEY_SLOW_VIDEO_INTELLIGENT_HIGH_FRAME_ENABLE.getName(), str)) {
                set((Parameter.Key<Parameter.Key<String>>) ConfigureParameter.KEY_SLOW_VIDEO_INTELLIGENT_HIGH_FRAME_ENABLE, (Parameter.Key<String>) ((String) obj));
            } else if (TextUtils.equals(ConfigureParameter.KEY_SLOW_VIDEO_MOTION_DETECT_COORDINATE.getName(), str)) {
                set((Parameter.Key<Parameter.Key<RectF>>) ConfigureParameter.KEY_SLOW_VIDEO_MOTION_DETECT_COORDINATE, (Parameter.Key<RectF>) ((RectF) obj));
            } else if (TextUtils.equals(ConfigureParameter.SESSION_REQUEST_CROP_REGION.getName(), str)) {
                set((Parameter.Key<Parameter.Key<int[]>>) ConfigureParameter.SESSION_REQUEST_CROP_REGION, (Parameter.Key<int[]>) ((int[]) obj));
            } else if (TextUtils.equals(ConfigureParameter.PHOTO_10BIT_ENABLE.getName(), str)) {
                set((Parameter.Key<Parameter.Key<String>>) ConfigureParameter.PHOTO_10BIT_ENABLE, (Parameter.Key<String>) ((String) obj));
            } else if (TextUtils.equals(str, ConfigureParameter.KEY_TORCH_FLASH_ENABLE.getName())) {
                set((Parameter.Key<Parameter.Key<String>>) ConfigureParameter.KEY_TORCH_FLASH_ENABLE, (Parameter.Key<String>) ((String) obj));
            } else if (TextUtils.equals(str, ConfigureParameter.KEY_MAKEUP_STATE.getName())) {
                set((Parameter.Key<Parameter.Key<Integer>>) ConfigureParameter.KEY_MAKEUP_STATE, (Parameter.Key<Integer>) ((Integer) obj));
            } else if (TextUtils.equals(str, ConfigureParameter.HIGH_PICTURE_SIZE_ENABLE.getName())) {
                set((Parameter.Key<Parameter.Key<String>>) ConfigureParameter.HIGH_PICTURE_SIZE_ENABLE, (Parameter.Key<String>) ((String) obj));
            } else if (TextUtils.equals(str, ConfigureParameter.KEY_QUICK_JPEG_SWITCH.getName())) {
                set((Parameter.Key<Parameter.Key<Boolean>>) ConfigureParameter.KEY_QUICK_JPEG_SWITCH, (Parameter.Key<Boolean>) ((Boolean) obj));
            } else if (TextUtils.equals(str, ConfigureParameter.KEY_HVXSHDR_ENABLE.getName())) {
                set((Parameter.Key<Parameter.Key<Byte>>) ConfigureParameter.KEY_HVXSHDR_ENABLE, (Parameter.Key<Byte>) Byte.valueOf(((Byte) obj).byteValue()));
            } else if (TextUtils.equals(str, ConfigureParameter.PORTRAIT_STREAMER_ENABLE.getName())) {
                set((Parameter.Key<Parameter.Key<String>>) ConfigureParameter.PORTRAIT_STREAMER_ENABLE, (Parameter.Key<String>) ((String) obj));
            } else if (TextUtils.equals(str, ConfigureParameter.KEY_SESSION_REQUEST_FAST_LAUNCH.getName())) {
                set((Parameter.Key<Parameter.Key<int[]>>) ConfigureParameter.KEY_SESSION_REQUEST_FAST_LAUNCH, (Parameter.Key<int[]>) ((int[]) obj));
            } else if (TextUtils.equals(str, ConfigureParameter.KEY_SESSION_REQUEST_MSNR.getName())) {
                set((Parameter.Key<Parameter.Key<int[]>>) ConfigureParameter.KEY_SESSION_REQUEST_MSNR, (Parameter.Key<int[]>) ((int[]) obj));
            } else if (TextUtils.equals(str, ConfigureParameter.KEY_CALLER_PACKAGE_NAME.getName())) {
                set((Parameter.Key<Parameter.Key<byte[]>>) ConfigureParameter.KEY_CALLER_PACKAGE_NAME, (Parameter.Key<byte[]>) ((byte[]) obj));
            } else if (TextUtils.equals(str, ConfigureParameter.KEY_REQUEST_ZSL_MODE.getName())) {
                set((Parameter.Key<Parameter.Key<byte[]>>) ConfigureParameter.KEY_REQUEST_ZSL_MODE, (Parameter.Key<byte[]>) ((byte[]) obj));
            } else if (TextUtils.equals(str, ConfigureParameter.KEY_MONO_FILTER_TYPE.getName())) {
                set((Parameter.Key<Parameter.Key<String>>) ConfigureParameter.KEY_MONO_FILTER_TYPE, (Parameter.Key<String>) ((String) obj));
            } else if (TextUtils.equals(str, ConfigureParameter.KEY_DUAL_SCENE_MASTER.getName())) {
                set((Parameter.Key<Parameter.Key<Integer>>) ConfigureParameter.KEY_DUAL_SCENE_MASTER, (Parameter.Key<Integer>) ((Integer) obj));
            } else if (TextUtils.equals(str, ConfigureParameter.AI_HIGH_PIXEL_ENABLE.getName())) {
                set((Parameter.Key<Parameter.Key<String>>) ConfigureParameter.AI_HIGH_PIXEL_ENABLE, (Parameter.Key<String>) ((String) obj));
            } else if (TextUtils.equals(str, ConfigureParameter.KEY_CUSTOM_ZOOM_RATIO.getName())) {
                set((Parameter.Key<Parameter.Key<Float>>) ConfigureParameter.KEY_CUSTOM_ZOOM_RATIO, (Parameter.Key<Float>) ((Float) obj));
            } else if (TextUtils.equals(str, ConfigureParameter.KEY_MOVIE_HDR_ENABLE.getName())) {
                set((Parameter.Key<Parameter.Key<Byte>>) ConfigureParameter.KEY_MOVIE_HDR_ENABLE, (Parameter.Key<Byte>) ((Byte) obj));
            } else if (TextUtils.equals(str, ConfigureParameter.KEY_MOVIE_LOG_ENABLE.getName())) {
                set((Parameter.Key<Parameter.Key<Byte>>) ConfigureParameter.KEY_MOVIE_LOG_ENABLE, (Parameter.Key<Byte>) ((Byte) obj));
            } else if (TextUtils.equals(str, ConfigureParameter.KEY_EXPLORER_CHIP_STATE.getName())) {
                set((Parameter.Key<Parameter.Key<Integer>>) ConfigureParameter.KEY_EXPLORER_CHIP_STATE, (Parameter.Key<Integer>) ((Integer) obj));
            } else if (TextUtils.equals(str, ConfigureParameter.KEY_VIDEO_BLUR.getName())) {
                set((Parameter.Key<Parameter.Key<String>>) ConfigureParameter.KEY_VIDEO_BLUR, (Parameter.Key<String>) ((String) obj));
            }
            return this;
        }
    }
}

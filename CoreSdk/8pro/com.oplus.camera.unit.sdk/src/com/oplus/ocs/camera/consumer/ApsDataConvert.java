package com.oplus.ocs.camera.consumer;

import com.oplus.ocs.camera.common.util.ApsConstant;
import com.oplus.ocs.camera.common.util.CameraConstant;
import com.oplus.ocs.camera.common.util.Util;
import com.oplus.ocs.camera.consumer.apsAdapter.config.AlgoSwitchConfig;
import com.oplus.ocs.camera.producer.info.CameraCharacteristicsHelper;

/* JADX INFO: loaded from: classes.dex */
public class ApsDataConvert {
    public static final String CAPTURE_MODE_AI_HIGH_PIXEL = "aiHighPixel";
    public static final String CAPTURE_MODE_BASIC_CAPTURE = "basicCapture";
    public static final String CAPTURE_MODE_COMMON = "common";
    public static final String CAPTURE_MODE_FISH_EYE = "fishEye";
    public static final String CAPTURE_MODE_ID_PHOTO = "idPhoto";
    public static final String CAPTURE_MODE_LONG_EXPOSURE = "longExposure";
    public static final String CAPTURE_MODE_MACRO = "macro";
    public static final String CAPTURE_MODE_MICROSCOPE = "microscope";
    public static final String CAPTURE_MODE_NIGHT = "night";
    public static final String CAPTURE_MODE_PANORAMA = "panorama";
    public static final String CAPTURE_MODE_PORTRAIT = "portrait";
    public static final String CAPTURE_MODE_PROFESSIONAL = "professional";
    public static final String CAPTURE_MODE_PROFESSIONAL_FULL = "professionalFull";
    public static final String CAPTURE_MODE_STICKER = "sticker";
    public static final String CAPTURE_MODE_SUPER_TEXT = "superText";
    public static final String FEATURE_COMMON = "common";
    public static final String FEATURE_COMMON_SAT_HAL = "commonSatHal";
    public static final String FEATURE_HASSELBLAD_XPAN = "xpan";
    public static final String FEATURE_MICROSCOPE = "microscope";
    public static final String FEATURE_MINIMAL_DUMMY = "minimalDummy";
    public static final String FEATURE_REC_4KUHD = "4kVideo";
    public static final String FEATURE_REC_AI_ENHANCEMENT = "aiEnhancement";
    public static final String FEATURE_REC_SAT_HAL = "commonVideoSatHal";
    public static final String FEATURE_REC_SUPER_EIS = "superEISVideo";
    public static final String FEATURE_REC_SUPER_EIS_PRO = "superEISProVideo";
    public static final String FEATURE_SUPER_TEXT = "superText";
    public static final String REC_MODE_BASIC_PREVIEW = "basicPreview";
    public static final String REC_MODE_COMMON = "commonVideo";
    public static final String REC_MODE_FAST_VIDEO = "fastVideo";
    public static final String REC_MODE_MICROSCOPE = "microscopeVideo";
    public static final String REC_MODE_SLOW_VIDEO = "slowVideo";
    public static final String REC_MODE_TIMELASPE_PRO = "timelapsePro";
    private static final String TAG = "ApsDataConvert";

    public static String getApsModeName(String str, int i) {
        str.hashCode();
        switch (str) {
            case "sticker_mode":
                return "sticker";
            case "basic_preview_mode":
                return REC_MODE_BASIC_PREVIEW;
            case "portrait_mode":
                return "portrait";
            case "movie_mode":
                return "movie";
            case "time_lapse_pro_mode":
                return "timelapsePro";
            case "video_mode":
                return "commonVideo";
            case "3d_photo_mode":
                return ApsConstant.CAPTURE_MODE_3D_PHOTO;
            case "macro_mode":
                return CAPTURE_MODE_MACRO;
            case "microscope_video_mode":
                return REC_MODE_MICROSCOPE;
            case "super_text_mode":
                return "superText";
            case "panorama_mode":
                return "panorama";
            case "xpan_mode":
                return "xpan";
            case "ultraHD_mode":
                return ApsConstant.CAPTURE_MODE_ULTRA_HIGH_RESOLUTION;
            case "star_capture_mode":
                return ApsConstant.CAPTURE_MODE_STARRY;
            case "fisheye_mode":
                return CAPTURE_MODE_FISH_EYE;
            case "skin_detect_mode":
                return ApsConstant.CAPTURE_MODE_SKIN_DETECT;
            case "multi_camera_mode":
                return ApsConstant.CAPTURE_MODE_MULTI_VIDEO;
            case "night_mode":
                return "night";
            case "photo_mode":
            case "tilt_shift_mode":
                return "common";
            case "long_exposure_mode":
                return "longExposure";
            case "fastvideo_mode":
            case "tilt_Shift_fastvideo_mode":
                return "fastVideo";
            case "id_photo_mode":
                return "idPhoto";
            case "basic_capture_mode":
                return CAPTURE_MODE_BASIC_CAPTURE;
            case "professional_mode":
                return AlgoSwitchConfig.getSupportCameraFeature(CAPTURE_MODE_PROFESSIONAL_FULL, i) ? CAPTURE_MODE_PROFESSIONAL_FULL : "professional";
            case "high_definition_mode":
                return ApsConstant.CAPTURE_MODE_HIGH_DEFINITION;
            case "group_photo_mode":
                return ApsConstant.CAPTURE_MODE_GROUP_PHOTO;
            case "street_mode":
                return ApsConstant.CAPTURE_MODE_STREET;
            case "slowvideo_mode":
                return "slowVideo";
            case "microscope_capture_mode":
                return "microscope";
            case "star_video_mode":
                return ApsConstant.REC_MODE_STAR_VIDEO;
            case "high_pixel_mode":
                return CAPTURE_MODE_AI_HIGH_PIXEL;
            default:
                return null;
        }
    }

    public static String getApsFeatureName(String str, String str2, String str3) {
        str.hashCode();
        switch (str) {
            case "basic_preview_mode":
            case "basic_capture_mode":
                return FEATURE_MINIMAL_DUMMY;
            case "portrait_mode":
                return CameraConstant.MonoPortrait.MONO_PORTRAIT.equals(str2) ? ApsConstant.FEATURE_MONO_PORTRAIT : CameraConstant.StreamerPortrait.STREAMER_PORTRAIT.equals(str2) ? ApsConstant.FEATURE_STREAMER_PORTRAIT : null;
            case "movie_mode":
                return "video_stabilization".equals(str2) ? "movie" : ApsConstant.FEATURE_REC_MOVIE_NO_EIS;
            case "video_mode":
                if (CameraConstant.EXPLORER_VIDEO_BOKEH.equals(str2)) {
                    return ApsConstant.FEATURE_EXPLORER_BOKEH_VIDEO;
                }
                if ("video_stabilization".equals(str2)) {
                    return FEATURE_MINIMAL_DUMMY;
                }
                if ("super_stabilization".equals(str2)) {
                    if ("rear_main".equals(str3)) {
                        return "superEISVideo";
                    }
                    if ("rear_wide".equals(str3)) {
                        return "superEISProVideo";
                    }
                    return null;
                }
                if ("rear_sat".equals(str3)) {
                    return "commonVideoSatHal";
                }
                if (!Util.isSystemCamera() && !"rear_wide".equals(str3)) {
                    return FEATURE_MINIMAL_DUMMY;
                }
                if (("rear_main".equals(str3) || "front_main".equals(str3)) && String.valueOf(1).equals(str2)) {
                    return "aiEnhancement";
                }
                if (CameraConstant.NightVideo.ULTRA_NIGHT_VIDEO.equals(str2)) {
                    return ApsConstant.FEATURE_REC_ULTRA_NIGHT;
                }
                if (CameraConstant.ARC_VIDEO_RETENTION.equals(str2)) {
                    return ApsConstant.FEATURE_VIDEO_RETENTION;
                }
                if (CameraConstant.AI_FOLLOW.equals(str2)) {
                    return ApsConstant.FEATURE_CENTER_STAGE_VIDEO;
                }
                return null;
            case "microscope_video_mode":
                return "microscope";
            case "super_text_mode":
                if (!"rear_sat".equals(str3) || AlgoSwitchConfig.getSupportCameraFeature("superText", CameraCharacteristicsHelper.isFrontCamera(CameraCharacteristicsHelper.getCameraIdType(str3).getCameraId()) ? 1 : 0)) {
                    return "superText";
                }
                return "commonSatHal";
            case "xpan_mode":
                return "xpan";
            case "photo_mode":
                if (!"rear_sat".equals(str3)) {
                    return "common";
                }
                return "commonSatHal";
            case "fastvideo_mode":
                if ("front_main".equals(str3)) {
                    return null;
                }
                if ("hyper_lapse".equals(str2)) {
                    return "rear_wide".equals(str3) ? ApsConstant.FEATURE_REC_HYPER_LAPSE_PRO : ApsConstant.FEATURE_REC_HYPER_LAPSE;
                }
                if ("rear_sat".equals(str3)) {
                    return "commonVideoSatHal";
                }
            case "tilt_Shift_fastvideo_mode":
                return "fastVideo";
            case "tilt_shift_mode":
                return "common";
            case "high_pixel_mode":
                return "on".equals(str2) ? CAPTURE_MODE_AI_HIGH_PIXEL : "common";
            default:
                return null;
        }
    }
}

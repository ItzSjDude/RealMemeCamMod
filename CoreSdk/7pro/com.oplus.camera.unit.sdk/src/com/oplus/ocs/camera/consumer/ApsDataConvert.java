package com.oplus.ocs.camera.consumer;

import com.oplus.ocs.camera.common.util.ApsConstant;
import com.oplus.ocs.camera.common.util.CameraConstant;
import com.oplus.ocs.camera.common.util.CameraUnitLog;
import com.oplus.ocs.camera.common.util.Util;
import com.oplus.ocs.camera.consumer.apsAdapter.config.AlgoSwitchConfig;
import com.oplus.ocs.camera.producer.info.CameraCharacteristicsHelper;
/* loaded from: classes.dex */
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

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public static String getApsModeName(String str, int i) {
        char c;
        switch (str.hashCode()) {
            case -2031212699:
                if (str.equals("sticker_mode")) {
                    c = '\r';
                    break;
                }
                c = 65535;
                break;
            case -1981580245:
                if (str.equals("basic_preview_mode")) {
                    c = 11;
                    break;
                }
                c = 65535;
                break;
            case -1894629433:
                if (str.equals("portrait_mode")) {
                    c = 6;
                    break;
                }
                c = 65535;
                break;
            case -1829654190:
                if (str.equals("movie_mode")) {
                    c = 16;
                    break;
                }
                c = 65535;
                break;
            case -1807586695:
                if (str.equals(CameraConstant.ModeName.TIME_LAPSE_PRO_MODE)) {
                    c = 22;
                    break;
                }
                c = 65535;
                break;
            case -1618054425:
                if (str.equals("video_mode")) {
                    c = 0;
                    break;
                }
                c = 65535;
                break;
            case -1474757122:
                if (str.equals(CameraConstant.ModeName.THREE_D_PHOTO_MODE)) {
                    c = 27;
                    break;
                }
                c = 65535;
                break;
            case -1364863434:
                if (str.equals("macro_mode")) {
                    c = '\b';
                    break;
                }
                c = 65535;
                break;
            case -1335606154:
                if (str.equals("microscope_video_mode")) {
                    c = '\t';
                    break;
                }
                c = 65535;
                break;
            case -1315672655:
                if (str.equals("super_text_mode")) {
                    c = '\f';
                    break;
                }
                c = 65535;
                break;
            case -1115288275:
                if (str.equals("panorama_mode")) {
                    c = 17;
                    break;
                }
                c = 65535;
                break;
            case -1091099523:
                if (str.equals(CameraConstant.ModeName.XPAN_MODE)) {
                    c = 21;
                    break;
                }
                c = 65535;
                break;
            case -1024010790:
                if (str.equals("ultraHD_mode")) {
                    c = 19;
                    break;
                }
                c = 65535;
                break;
            case -1012695095:
                if (str.equals(CameraConstant.ModeName.STAR_CAPTURE_MODE)) {
                    c = 24;
                    break;
                }
                c = 65535;
                break;
            case -909099703:
                if (str.equals(CameraConstant.ModeName.FISH_EYE_MODE)) {
                    c = 15;
                    break;
                }
                c = 65535;
                break;
            case -630094729:
                if (str.equals("multi_camera_mode")) {
                    c = 18;
                    break;
                }
                c = 65535;
                break;
            case -601793174:
                if (str.equals("night_mode")) {
                    c = 5;
                    break;
                }
                c = 65535;
                break;
            case -507788400:
                if (str.equals("photo_mode")) {
                    c = 1;
                    break;
                }
                c = 65535;
                break;
            case -431484584:
                if (str.equals("long_exposure_mode")) {
                    c = 26;
                    break;
                }
                c = 65535;
                break;
            case -369063869:
                if (str.equals("fastvideo_mode")) {
                    c = 2;
                    break;
                }
                c = 65535;
                break;
            case -138650316:
                if (str.equals("id_photo_mode")) {
                    c = 14;
                    break;
                }
                c = 65535;
                break;
            case 148182893:
                if (str.equals("basic_capture_mode")) {
                    c = '\n';
                    break;
                }
                c = 65535;
                break;
            case 176493755:
                if (str.equals("professional_mode")) {
                    c = 4;
                    break;
                }
                c = 65535;
                break;
            case 326551666:
                if (str.equals(CameraConstant.ModeName.HIGH_DEFINITION_MODE)) {
                    c = 20;
                    break;
                }
                c = 65535;
                break;
            case 1082731615:
                if (str.equals(CameraConstant.ModeName.STREET_MODE)) {
                    c = 23;
                    break;
                }
                c = 65535;
                break;
            case 1103925160:
                if (str.equals("slowvideo_mode")) {
                    c = 3;
                    break;
                }
                c = 65535;
                break;
            case 1616736459:
                if (str.equals("microscope_capture_mode")) {
                    c = 7;
                    break;
                }
                c = 65535;
                break;
            case 1665006324:
                if (str.equals(CameraConstant.ModeName.STAR_VIDEO_MODE)) {
                    c = 25;
                    break;
                }
                c = 65535;
                break;
            case 2066399865:
                if (str.equals(CameraConstant.ModeName.HIGH_PIXEL_MODE)) {
                    c = 28;
                    break;
                }
                c = 65535;
                break;
            default:
                c = 65535;
                break;
        }
        switch (c) {
            case 0:
                return "commonVideo";
            case 1:
                return "common";
            case 2:
                return "fastVideo";
            case 3:
                return "slowVideo";
            case 4:
                return AlgoSwitchConfig.getSupportCameraFeature(CAPTURE_MODE_PROFESSIONAL_FULL, i) ? CAPTURE_MODE_PROFESSIONAL_FULL : "professional";
            case 5:
                return "night";
            case 6:
                return "portrait";
            case 7:
                return "microscope";
            case '\b':
                return CAPTURE_MODE_MACRO;
            case '\t':
                return REC_MODE_MICROSCOPE;
            case '\n':
                return CAPTURE_MODE_BASIC_CAPTURE;
            case 11:
                return REC_MODE_BASIC_PREVIEW;
            case '\f':
                return "superText";
            case '\r':
                return "sticker";
            case 14:
                return "idPhoto";
            case 15:
                return CAPTURE_MODE_FISH_EYE;
            case 16:
                return "movie";
            case 17:
                return "panorama";
            case ApsConstant.FEATURE_TYPE_AINR /* 18 */:
                return ApsConstant.CAPTURE_MODE_MULTI_VIDEO;
            case 19:
                return ApsConstant.CAPTURE_MODE_ULTRA_HIGH_RESOLUTION;
            case 20:
                return ApsConstant.CAPTURE_MODE_HIGH_DEFINITION;
            case 21:
                return "xpan";
            case 22:
                return "timelapsePro";
            case 23:
                return ApsConstant.CAPTURE_MODE_STREET;
            case ApsConstant.FEATURE_TYPE_MULTI_FRAME_DENOISE_HDR /* 24 */:
                return ApsConstant.CAPTURE_MODE_STARRY;
            case 25:
                return ApsConstant.REC_MODE_STAR_VIDEO;
            case 26:
                return "longExposure";
            case 27:
                return ApsConstant.CAPTURE_MODE_3D_PHOTO;
            case 28:
                return CAPTURE_MODE_AI_HIGH_PIXEL;
            default:
                return null;
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public static String getApsFeatureName(String str, String str2, String str3) {
        char c;
        String str4;
        switch (str.hashCode()) {
            case -1981580245:
                if (str.equals("basic_preview_mode")) {
                    c = 4;
                    break;
                }
                c = 65535;
                break;
            case -1894629433:
                if (str.equals("portrait_mode")) {
                    c = '\t';
                    break;
                }
                c = 65535;
                break;
            case -1829654190:
                if (str.equals("movie_mode")) {
                    c = '\b';
                    break;
                }
                c = 65535;
                break;
            case -1618054425:
                if (str.equals("video_mode")) {
                    c = 0;
                    break;
                }
                c = 65535;
                break;
            case -1335606154:
                if (str.equals("microscope_video_mode")) {
                    c = 3;
                    break;
                }
                c = 65535;
                break;
            case -1315672655:
                if (str.equals("super_text_mode")) {
                    c = 7;
                    break;
                }
                c = 65535;
                break;
            case -1091099523:
                if (str.equals(CameraConstant.ModeName.XPAN_MODE)) {
                    c = 2;
                    break;
                }
                c = 65535;
                break;
            case -507788400:
                if (str.equals("photo_mode")) {
                    c = 1;
                    break;
                }
                c = 65535;
                break;
            case -369063869:
                if (str.equals("fastvideo_mode")) {
                    c = 6;
                    break;
                }
                c = 65535;
                break;
            case 148182893:
                if (str.equals("basic_capture_mode")) {
                    c = 5;
                    break;
                }
                c = 65535;
                break;
            case 2066399865:
                if (str.equals(CameraConstant.ModeName.HIGH_PIXEL_MODE)) {
                    c = '\n';
                    break;
                }
                c = 65535;
                break;
            default:
                c = 65535;
                break;
        }
        String str5 = null;
        switch (c) {
            case 0:
                if (!"video_stabilization".equals(str2)) {
                    if ("super_stabilization".equals(str2)) {
                        if (!"rear_main".equals(str3)) {
                            if ("rear_wide".equals(str3)) {
                                str5 = "superEISProVideo";
                                break;
                            }
                        } else {
                            str5 = "superEISVideo";
                            break;
                        }
                    } else if (!"rear_sat".equals(str3)) {
                        if (!Util.isSystemCamera()) {
                            str5 = FEATURE_MINIMAL_DUMMY;
                            break;
                        } else if ((!"rear_main".equals(str3) && !"front_main".equals(str3)) || !String.valueOf(1).equals(str2)) {
                            if (CameraConstant.NightVideo.ULTRA_NIGHT_VIDEO.equals(str2)) {
                                str5 = ApsConstant.FEATURE_REC_ULTRA_NIGHT;
                                break;
                            }
                        } else {
                            str5 = "aiEnhancement";
                            break;
                        }
                    } else {
                        str5 = "commonVideoSatHal";
                        break;
                    }
                } else {
                    str5 = FEATURE_MINIMAL_DUMMY;
                    break;
                }
                break;
            case 1:
                if (!"rear_sat".equals(str3)) {
                    str5 = "common";
                    break;
                } else {
                    str5 = "commonSatHal";
                    break;
                }
            case 2:
                str5 = "xpan";
                break;
            case 3:
                str5 = "microscope";
                break;
            case 4:
            case 5:
                str5 = FEATURE_MINIMAL_DUMMY;
                break;
            case 6:
                if (!"front_main".equals(str3)) {
                    if ("hyper_lapse".equals(str2)) {
                        if (!"rear_wide".equals(str3)) {
                            str5 = ApsConstant.FEATURE_REC_HYPER_LAPSE;
                            break;
                        } else {
                            str5 = ApsConstant.FEATURE_REC_HYPER_LAPSE_PRO;
                            break;
                        }
                    } else if (!"rear_sat".equals(str3)) {
                        str5 = "fastVideo";
                        break;
                    } else {
                        str5 = "commonVideoSatHal";
                        break;
                    }
                }
                break;
            case 7:
                str4 = "rear_sat".equals(str3) ? "commonSatHal" : "superText";
                str5 = str4;
                break;
            case '\b':
                if (!"video_stabilization".equals(str2)) {
                    str5 = "movie";
                    break;
                } else {
                    str4 = AlgoSwitchConfig.getSupportCameraFeature(ApsConstant.FEATURE_REC_MOVIE_NO_EIS, CameraCharacteristicsHelper.getCameraIdType(str3).getCameraId()) ? ApsConstant.FEATURE_REC_MOVIE_NO_EIS : "movie";
                    str5 = str4;
                    break;
                }
            case '\t':
                if (CameraConstant.StreamerPortrait.STREAMER_PORTRAIT.equals(str2)) {
                    str5 = ApsConstant.FEATURE_STREAMER_PORTRAIT;
                    break;
                }
                break;
            case '\n':
                str4 = "on".equals(str2) ? CAPTURE_MODE_AI_HIGH_PIXEL : "common";
                str5 = str4;
                break;
        }
        CameraUnitLog.i(TAG, "getApsFeatureName, sdkModeName: " + str + ", featureName: " + str2 + ", value: " + str5);
        return str5;
    }
}

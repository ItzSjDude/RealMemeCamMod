package com.oplus.ocs.camera.consumer;

import com.oplus.ocs.camera.common.statistics.StatisticConstant;
import com.oplus.ocs.camera.common.util.ApsConstant;
import com.oplus.ocs.camera.common.util.CameraConstant;
import com.oplus.ocs.camera.common.util.Util;
import com.oplus.ocs.camera.consumer.apsAdapter.config.AlgoSwitchConfig;
import com.oplus.ocs.camera.producer.info.CameraCharacteristicsHelper;
import com.oplus.ocs.camera.producer.info.CameraIdType;

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

    public static String getApsModeName(String str, int i) {
        str.hashCode();
        char c = 65535;
        switch (str.hashCode()) {
            case -2031212699:
                if (str.equals("sticker_mode")) {
                    c = 0;
                    break;
                }
                break;
            case -1981580245:
                if (str.equals("basic_preview_mode")) {
                    c = 1;
                    break;
                }
                break;
            case -1894629433:
                if (str.equals("portrait_mode")) {
                    c = 2;
                    break;
                }
                break;
            case -1829654190:
                if (str.equals("movie_mode")) {
                    c = 3;
                    break;
                }
                break;
            case -1807586695:
                if (str.equals(CameraConstant.ModeName.TIME_LAPSE_PRO_MODE)) {
                    c = 4;
                    break;
                }
                break;
            case -1618054425:
                if (str.equals("video_mode")) {
                    c = 5;
                    break;
                }
                break;
            case -1474757122:
                if (str.equals(CameraConstant.ModeName.THREE_D_PHOTO_MODE)) {
                    c = 6;
                    break;
                }
                break;
            case -1364863434:
                if (str.equals("macro_mode")) {
                    c = 7;
                    break;
                }
                break;
            case -1335606154:
                if (str.equals("microscope_video_mode")) {
                    c = '\b';
                    break;
                }
                break;
            case -1315672655:
                if (str.equals("super_text_mode")) {
                    c = '\t';
                    break;
                }
                break;
            case -1115288275:
                if (str.equals("panorama_mode")) {
                    c = '\n';
                    break;
                }
                break;
            case -1091099523:
                if (str.equals(CameraConstant.ModeName.XPAN_MODE)) {
                    c = 11;
                    break;
                }
                break;
            case -1024010790:
                if (str.equals("ultraHD_mode")) {
                    c = '\f';
                    break;
                }
                break;
            case -1012695095:
                if (str.equals(CameraConstant.ModeName.STAR_CAPTURE_MODE)) {
                    c = '\r';
                    break;
                }
                break;
            case -909099703:
                if (str.equals(CameraConstant.ModeName.FISH_EYE_MODE)) {
                    c = 14;
                    break;
                }
                break;
            case -738301443:
                if (str.equals(CameraConstant.ModeName.SKIN_DETECT_MODE)) {
                    c = 15;
                    break;
                }
                break;
            case -630094729:
                if (str.equals("multi_camera_mode")) {
                    c = 16;
                    break;
                }
                break;
            case -601793174:
                if (str.equals("night_mode")) {
                    c = 17;
                    break;
                }
                break;
            case -507788400:
                if (str.equals("photo_mode")) {
                    c = 18;
                    break;
                }
                break;
            case -431484584:
                if (str.equals("long_exposure_mode")) {
                    c = 19;
                    break;
                }
                break;
            case -369063869:
                if (str.equals("fastvideo_mode")) {
                    c = 20;
                    break;
                }
                break;
            case -138650316:
                if (str.equals("id_photo_mode")) {
                    c = 21;
                    break;
                }
                break;
            case 148182893:
                if (str.equals("basic_capture_mode")) {
                    c = 22;
                    break;
                }
                break;
            case 176493755:
                if (str.equals("professional_mode")) {
                    c = 23;
                    break;
                }
                break;
            case 326551666:
                if (str.equals(CameraConstant.ModeName.HIGH_DEFINITION_MODE)) {
                    c = 24;
                    break;
                }
                break;
            case 327727618:
                if (str.equals(CameraConstant.ModeName.TILT_SHIFT_FAST_VIDEO_MODE)) {
                    c = 25;
                    break;
                }
                break;
            case 726262274:
                if (str.equals(CameraConstant.ModeName.TILT_SHIFT_MODE)) {
                    c = 26;
                    break;
                }
                break;
            case 918842704:
                if (str.equals(CameraConstant.ModeName.GROUP_PHOTO_MODE)) {
                    c = 27;
                    break;
                }
                break;
            case 1082731615:
                if (str.equals(CameraConstant.ModeName.STREET_MODE)) {
                    c = 28;
                    break;
                }
                break;
            case 1103925160:
                if (str.equals("slowvideo_mode")) {
                    c = 29;
                    break;
                }
                break;
            case 1616736459:
                if (str.equals("microscope_capture_mode")) {
                    c = 30;
                    break;
                }
                break;
            case 1665006324:
                if (str.equals(CameraConstant.ModeName.STAR_VIDEO_MODE)) {
                    c = 31;
                    break;
                }
                break;
            case 2066399865:
                if (str.equals(CameraConstant.ModeName.HIGH_PIXEL_MODE)) {
                    c = ' ';
                    break;
                }
                break;
        }
        switch (c) {
            case 0:
                return "sticker";
            case 1:
                return REC_MODE_BASIC_PREVIEW;
            case 2:
                return "portrait";
            case 3:
                return "movie";
            case 4:
                return "timelapsePro";
            case 5:
                return "commonVideo";
            case 6:
                return ApsConstant.CAPTURE_MODE_3D_PHOTO;
            case 7:
                return CAPTURE_MODE_MACRO;
            case '\b':
                return REC_MODE_MICROSCOPE;
            case '\t':
                return "superText";
            case '\n':
                return "panorama";
            case 11:
                return "xpan";
            case '\f':
                return ApsConstant.CAPTURE_MODE_ULTRA_HIGH_RESOLUTION;
            case '\r':
                return ApsConstant.CAPTURE_MODE_STARRY;
            case 14:
                return CAPTURE_MODE_FISH_EYE;
            case 15:
                return ApsConstant.CAPTURE_MODE_SKIN_DETECT;
            case 16:
                return ApsConstant.CAPTURE_MODE_MULTI_VIDEO;
            case 17:
                return "night";
            case 18:
            case 26:
                return "common";
            case 19:
                return "longExposure";
            case 20:
            case StatisticConstant.FunctionalErrorValues.CF_SENSOR_MODE_SWITCH_TIMEOUT /* 25 */:
                return "fastVideo";
            case 21:
                return "idPhoto";
            case 22:
                return CAPTURE_MODE_BASIC_CAPTURE;
            case 23:
                return AlgoSwitchConfig.getSupportCameraFeature(CAPTURE_MODE_PROFESSIONAL_FULL, i)
                        ? CAPTURE_MODE_PROFESSIONAL_FULL
                        : "professional";
            case ApsConstant.FEATURE_TYPE_MULTI_FRAME_DENOISE_HDR /* 24 */:
                return ApsConstant.CAPTURE_MODE_HIGH_DEFINITION;
            case 27:
                return ApsConstant.CAPTURE_MODE_GROUP_PHOTO;
            case 28:
                return ApsConstant.CAPTURE_MODE_STREET;
            case ApsConstant.FEATURE_TYPE_AI_HDR /* 29 */:
                return "slowVideo";
            case 30:
                return "microscope";
            case 31:
                return ApsConstant.REC_MODE_STAR_VIDEO;
            case ' ':
                return CAPTURE_MODE_AI_HIGH_PIXEL;
            default:
                return null;
        }
    }

    /*
     * JADX WARN: Code restructure failed: missing block: B:78:0x0101, code lost:
     * if ("rear_sat".equals(r14) != false) goto L67;
     */
    /*
     * Code decompiled incorrectly, please refer to instructions dump.
     * To view partially-correct add '--show-bad-code' argument
     */
    public static java.lang.String getApsFeatureName(java.lang.String r12, java.lang.String r13, java.lang.String r14) {
        /*
         * Method dump skipped, instructions count: 548
         * To view this dump add '--comments-level debug' option
         */
        throw new UnsupportedOperationException(
                "Method not decompiled: com.oplus.ocs.camera.consumer.ApsDataConvert.getApsFeatureName(java.lang.String, java.lang.String, java.lang.String):java.lang.String");
    }
}

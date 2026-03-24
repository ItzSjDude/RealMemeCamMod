package com.oplus.ocs.camera.producer.mode;

import androidx.annotation.NonNull;
import com.oplus.ocs.camera.common.statistics.StatisticConstant;
import com.oplus.ocs.camera.common.util.ApsConstant;
import com.oplus.ocs.camera.common.util.CameraConstant;
import com.oplus.ocs.camera.common.util.CameraUnitLog;
import com.oplus.ocs.camera.producer.info.CameraConfigHelper;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes.dex */
public class ModeFactory {
    private static final String TAG = "ModeFactory";
    private static final Map<String, BaseMode> sModeContainer = new HashMap();

    public static synchronized ModeInterface getMode(@NonNull String str) {
        synchronized (ModeFactory.class) {
            Map<String, BaseMode> map = sModeContainer;
            if (map.containsKey(str)) {
                return map.get(str);
            }
            BaseMode createMode = createMode(str);
            if (createMode == null) {
                throw new IllegalArgumentException("illegal mode name when createMode!");
            }
            CameraUnitLog.d(TAG, "getMode, mode name: " + str);
            map.put(str, createMode);
            return createMode;
        }
    }

    public static synchronized void flush() {
        synchronized (ModeFactory.class) {
            sModeContainer.clear();
        }
    }

    private static BaseMode createMode(@NonNull String str) {
        BaseMode stickerMode;
        CameraUnitLog.i(TAG, "createMode, name: " + str);
        CameraConfigHelper.blockFeatureParseIfNeeded();
        str.hashCode();
        char c = 65535;
        switch (str.hashCode()) {
            case -2031212699:
                if (str.equals("sticker_mode")) {
                    c = 0;
                    break;
                }
                break;
            case -1894629433:
                if (str.equals("portrait_mode")) {
                    c = 1;
                    break;
                }
                break;
            case -1829654190:
                if (str.equals("movie_mode")) {
                    c = 2;
                    break;
                }
                break;
            case -1807586695:
                if (str.equals(CameraConstant.ModeName.TIME_LAPSE_PRO_MODE)) {
                    c = 3;
                    break;
                }
                break;
            case -1618054425:
                if (str.equals("video_mode")) {
                    c = 4;
                    break;
                }
                break;
            case -1474757122:
                if (str.equals(CameraConstant.ModeName.THREE_D_PHOTO_MODE)) {
                    c = 5;
                    break;
                }
                break;
            case -1364863434:
                if (str.equals("macro_mode")) {
                    c = 6;
                    break;
                }
                break;
            case -1335606154:
                if (str.equals("microscope_video_mode")) {
                    c = 7;
                    break;
                }
                break;
            case -1315672655:
                if (str.equals("super_text_mode")) {
                    c = '\b';
                    break;
                }
                break;
            case -1115288275:
                if (str.equals("panorama_mode")) {
                    c = '\t';
                    break;
                }
                break;
            case -1091099523:
                if (str.equals(CameraConstant.ModeName.XPAN_MODE)) {
                    c = '\n';
                    break;
                }
                break;
            case -1024010790:
                if (str.equals("ultraHD_mode")) {
                    c = 11;
                    break;
                }
                break;
            case -1012695095:
                if (str.equals(CameraConstant.ModeName.STAR_CAPTURE_MODE)) {
                    c = '\f';
                    break;
                }
                break;
            case -909099703:
                if (str.equals(CameraConstant.ModeName.FISH_EYE_MODE)) {
                    c = '\r';
                    break;
                }
                break;
            case -738301443:
                if (str.equals(CameraConstant.ModeName.SKIN_DETECT_MODE)) {
                    c = 14;
                    break;
                }
                break;
            case -630094729:
                if (str.equals("multi_camera_mode")) {
                    c = 15;
                    break;
                }
                break;
            case -601793174:
                if (str.equals("night_mode")) {
                    c = 16;
                    break;
                }
                break;
            case -507788400:
                if (str.equals("photo_mode")) {
                    c = 17;
                    break;
                }
                break;
            case -431484584:
                if (str.equals("long_exposure_mode")) {
                    c = 18;
                    break;
                }
                break;
            case -369063869:
                if (str.equals("fastvideo_mode")) {
                    c = 19;
                    break;
                }
                break;
            case -138650316:
                if (str.equals("id_photo_mode")) {
                    c = 20;
                    break;
                }
                break;
            case 176493755:
                if (str.equals("professional_mode")) {
                    c = 21;
                    break;
                }
                break;
            case 326551666:
                if (str.equals(CameraConstant.ModeName.HIGH_DEFINITION_MODE)) {
                    c = 22;
                    break;
                }
                break;
            case 327727618:
                if (str.equals(CameraConstant.ModeName.TILT_SHIFT_FAST_VIDEO_MODE)) {
                    c = 23;
                    break;
                }
                break;
            case 726262274:
                if (str.equals(CameraConstant.ModeName.TILT_SHIFT_MODE)) {
                    c = 24;
                    break;
                }
                break;
            case 918842704:
                if (str.equals(CameraConstant.ModeName.GROUP_PHOTO_MODE)) {
                    c = 25;
                    break;
                }
                break;
            case 1082731615:
                if (str.equals(CameraConstant.ModeName.STREET_MODE)) {
                    c = 26;
                    break;
                }
                break;
            case 1103925160:
                if (str.equals("slowvideo_mode")) {
                    c = 27;
                    break;
                }
                break;
            case 1616736459:
                if (str.equals("microscope_capture_mode")) {
                    c = 28;
                    break;
                }
                break;
            case 1665006324:
                if (str.equals(CameraConstant.ModeName.STAR_VIDEO_MODE)) {
                    c = 29;
                    break;
                }
                break;
            case 2066399865:
                if (str.equals(CameraConstant.ModeName.HIGH_PIXEL_MODE)) {
                    c = 30;
                    break;
                }
                break;
        }
        switch (c) {
            case 0:
                stickerMode = new StickerMode();
                break;
            case 1:
                stickerMode = new PortraitMode();
                break;
            case 2:
                stickerMode = new MovieMode();
                break;
            case 3:
                stickerMode = new TimeLapseProMode();
                break;
            case 4:
                stickerMode = new VideoMode();
                break;
            case 5:
                stickerMode = new ThreeDPhotoMode();
                break;
            case 6:
                stickerMode = new MacroMode();
                break;
            case 7:
                stickerMode = new MicroscopeVideoMode();
                break;
            case '\b':
                stickerMode = new SuperTextMode();
                break;
            case '\t':
                stickerMode = new PanoramaCapMode();
                break;
            case '\n':
                stickerMode = new XpanMode();
                break;
            case 11:
                stickerMode = new UltraHighResolutionMode();
                break;
            case '\f':
                stickerMode = new StarryMode();
                break;
            case '\r':
                stickerMode = new FishEyeMode();
                break;
            case 14:
                stickerMode = new SkinDetectMode();
                break;
            case 15:
                stickerMode = new MultiCameraMode();
                break;
            case 16:
                stickerMode = new NightMode();
                break;
            case 17:
                stickerMode = new PhotoMode();
                break;
            case 18:
                stickerMode = new LongExposureMode();
                break;
            case 19:
                stickerMode = new FastVideoMode();
                break;
            case 20:
                stickerMode = new IdPhotoMode();
                break;
            case 21:
                stickerMode = new ProfessionalMode();
                break;
            case 22:
                stickerMode = new HighDefinitionMode();
                break;
            case 23:
                stickerMode = new TiltShiftFastVideoMode();
                break;
            case ApsConstant.FEATURE_TYPE_MULTI_FRAME_DENOISE_HDR /* 24 */:
                stickerMode = new TiltShiftPhotoMode();
                break;
            case StatisticConstant.FunctionalErrorValues.CF_SENSOR_MODE_SWITCH_TIMEOUT /* 25 */:
                stickerMode = new GroupPhotoMode();
                break;
            case 26:
                stickerMode = new StreetMode();
                break;
            case 27:
                stickerMode = new SlowVideoMode();
                break;
            case 28:
                stickerMode = new MicroscopeCaptureMode();
                break;
            case ApsConstant.FEATURE_TYPE_AI_HDR /* 29 */:
                stickerMode = new StarVideoMode();
                break;
            case 30:
                stickerMode = new HighPixelMode();
                break;
            default:
                CameraUnitLog.e(TAG, "createMode, invalid mode!");
                stickerMode = null;
                break;
        }
        if (stickerMode != null) {
            stickerMode.initialize();
        }
        return stickerMode;
    }
}

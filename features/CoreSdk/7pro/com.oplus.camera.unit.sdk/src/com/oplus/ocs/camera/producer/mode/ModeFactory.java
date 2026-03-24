package com.oplus.ocs.camera.producer.mode;

import androidx.annotation.NonNull;
import com.oplus.ocs.camera.common.util.ApsConstant;
import com.oplus.ocs.camera.common.util.CameraConstant;
import com.oplus.ocs.camera.common.util.CameraUnitLog;
import com.oplus.ocs.camera.producer.feature.FeatureFactory;
import com.oplus.ocs.camera.producer.info.CameraConfigHelper;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes.dex */
public class ModeFactory {
    private static final String TAG = "ModeFactory";
    private static final Map<String, BaseMode> sModeContainer = new HashMap();

    public static synchronized ModeInterface getMode(@NonNull String str) {
        synchronized (ModeFactory.class) {
            if (sModeContainer.containsKey(str)) {
                return sModeContainer.get(str);
            }
            BaseMode createMode = createMode(str);
            if (createMode == null) {
                throw new IllegalArgumentException("illegal mode name when createMode!");
            }
            CameraUnitLog.d(TAG, "getMode, mode name: " + str);
            sModeContainer.put(str, createMode);
            return createMode;
        }
    }

    public static synchronized void flush() {
        synchronized (ModeFactory.class) {
            sModeContainer.clear();
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    private static BaseMode createMode(@NonNull String str) {
        char c;
        BaseMode multiCameraMode;
        CameraUnitLog.i(TAG, "createMode, name: " + str);
        CameraConfigHelper.blockFeatureParseIfNeeded();
        FeatureFactory.initAllModeFeatures();
        switch (str.hashCode()) {
            case -2031212699:
                if (str.equals("sticker_mode")) {
                    c = 11;
                    break;
                }
                c = 65535;
                break;
            case -1894629433:
                if (str.equals("portrait_mode")) {
                    c = 4;
                    break;
                }
                c = 65535;
                break;
            case -1829654190:
                if (str.equals("movie_mode")) {
                    c = 15;
                    break;
                }
                c = 65535;
                break;
            case -1807586695:
                if (str.equals(CameraConstant.ModeName.TIME_LAPSE_PRO_MODE)) {
                    c = 20;
                    break;
                }
                c = 65535;
                break;
            case -1618054425:
                if (str.equals("video_mode")) {
                    c = 1;
                    break;
                }
                c = 65535;
                break;
            case -1474757122:
                if (str.equals(CameraConstant.ModeName.THREE_D_PHOTO_MODE)) {
                    c = 25;
                    break;
                }
                c = 65535;
                break;
            case -1364863434:
                if (str.equals("macro_mode")) {
                    c = '\t';
                    break;
                }
                c = 65535;
                break;
            case -1335606154:
                if (str.equals("microscope_video_mode")) {
                    c = '\b';
                    break;
                }
                c = 65535;
                break;
            case -1315672655:
                if (str.equals("super_text_mode")) {
                    c = 6;
                    break;
                }
                c = 65535;
                break;
            case -1115288275:
                if (str.equals("panorama_mode")) {
                    c = 16;
                    break;
                }
                c = 65535;
                break;
            case -1091099523:
                if (str.equals(CameraConstant.ModeName.XPAN_MODE)) {
                    c = 19;
                    break;
                }
                c = 65535;
                break;
            case -1024010790:
                if (str.equals("ultraHD_mode")) {
                    c = 17;
                    break;
                }
                c = 65535;
                break;
            case -1012695095:
                if (str.equals(CameraConstant.ModeName.STAR_CAPTURE_MODE)) {
                    c = 21;
                    break;
                }
                c = 65535;
                break;
            case -909099703:
                if (str.equals(CameraConstant.ModeName.FISH_EYE_MODE)) {
                    c = 14;
                    break;
                }
                c = 65535;
                break;
            case -630094729:
                if (str.equals("multi_camera_mode")) {
                    c = 0;
                    break;
                }
                c = 65535;
                break;
            case -601793174:
                if (str.equals("night_mode")) {
                    c = 3;
                    break;
                }
                c = 65535;
                break;
            case -507788400:
                if (str.equals("photo_mode")) {
                    c = 2;
                    break;
                }
                c = 65535;
                break;
            case -431484584:
                if (str.equals("long_exposure_mode")) {
                    c = 24;
                    break;
                }
                c = 65535;
                break;
            case -369063869:
                if (str.equals("fastvideo_mode")) {
                    c = '\n';
                    break;
                }
                c = 65535;
                break;
            case -138650316:
                if (str.equals("id_photo_mode")) {
                    c = '\r';
                    break;
                }
                c = 65535;
                break;
            case 176493755:
                if (str.equals("professional_mode")) {
                    c = '\f';
                    break;
                }
                c = 65535;
                break;
            case 326551666:
                if (str.equals(CameraConstant.ModeName.HIGH_DEFINITION_MODE)) {
                    c = 18;
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
                    c = 5;
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
                    c = 22;
                    break;
                }
                c = 65535;
                break;
            case 2066399865:
                if (str.equals(CameraConstant.ModeName.HIGH_PIXEL_MODE)) {
                    c = 26;
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
                multiCameraMode = new MultiCameraMode();
                break;
            case 1:
                multiCameraMode = new VideoMode();
                break;
            case 2:
                multiCameraMode = new PhotoMode();
                break;
            case 3:
                multiCameraMode = new NightMode();
                break;
            case 4:
                multiCameraMode = new PortraitMode();
                break;
            case 5:
                multiCameraMode = new SlowVideoMode();
                break;
            case 6:
                multiCameraMode = new SuperTextMode();
                break;
            case 7:
                multiCameraMode = new MicroscopeCaptureMode();
                break;
            case '\b':
                multiCameraMode = new MicroscopeVideoMode();
                break;
            case '\t':
                multiCameraMode = new MacroMode();
                break;
            case '\n':
                multiCameraMode = new FastVideoMode();
                break;
            case 11:
                multiCameraMode = new StickerMode();
                break;
            case '\f':
                multiCameraMode = new ProfessionalMode();
                break;
            case '\r':
                multiCameraMode = new IdPhotoMode();
                break;
            case 14:
                multiCameraMode = new FishEyeMode();
                break;
            case 15:
                multiCameraMode = new MovieMode();
                break;
            case 16:
                multiCameraMode = new PanoramaCapMode();
                break;
            case 17:
                multiCameraMode = new UltraHighResolutionMode();
                break;
            case ApsConstant.FEATURE_TYPE_AINR /* 18 */:
                multiCameraMode = new HighDefinitionMode();
                break;
            case 19:
                multiCameraMode = new XpanMode();
                break;
            case 20:
                multiCameraMode = new TimeLapseProMode();
                break;
            case 21:
                multiCameraMode = new StarryMode();
                break;
            case 22:
                multiCameraMode = new StarVideoMode();
                break;
            case 23:
                multiCameraMode = new StreetMode();
                break;
            case ApsConstant.FEATURE_TYPE_MULTI_FRAME_DENOISE_HDR /* 24 */:
                multiCameraMode = new LongExposureMode();
                break;
            case 25:
                multiCameraMode = new ThreeDPhotoMode();
                break;
            case 26:
                multiCameraMode = new HighPixelMode();
                break;
            default:
                CameraUnitLog.e(TAG, "createMode, invalid mode!");
                multiCameraMode = null;
                break;
        }
        if (multiCameraMode != null) {
            multiCameraMode.initialize();
        }
        return multiCameraMode;
    }
}

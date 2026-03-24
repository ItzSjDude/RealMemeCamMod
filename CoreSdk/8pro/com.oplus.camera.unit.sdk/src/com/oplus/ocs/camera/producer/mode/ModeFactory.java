package com.oplus.ocs.camera.producer.mode;

import androidx.annotation.NonNull;
import com.oplus.ocs.camera.common.util.CameraUnitLog;
import com.oplus.ocs.camera.producer.info.CameraConfigHelper;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class ModeFactory {
    private static final String TAG = "ModeFactory";
    private static final Map<String, BaseMode> sModeContainer = new HashMap();

    public static synchronized ModeInterface getMode(@NonNull String str) {
        Map<String, BaseMode> map = sModeContainer;
        if (map.containsKey(str)) {
            return map.get(str);
        }
        BaseMode baseModeCreateMode = createMode(str);
        if (baseModeCreateMode == null) {
            throw new IllegalArgumentException("illegal mode name when createMode!");
        }
        CameraUnitLog.d(TAG, "getMode, mode name: " + str);
        map.put(str, baseModeCreateMode);
        return baseModeCreateMode;
    }

    public static synchronized void flush() {
        sModeContainer.clear();
    }

    private static BaseMode createMode(@NonNull String str) {
        BaseMode stickerMode;
        CameraUnitLog.i(TAG, "createMode, name: " + str);
        CameraConfigHelper.blockFeatureParseIfNeeded();
        str.hashCode();
        switch (str) {
            case "sticker_mode":
                stickerMode = new StickerMode();
                break;
            case "portrait_mode":
                stickerMode = new PortraitMode();
                break;
            case "movie_mode":
                stickerMode = new MovieMode();
                break;
            case "time_lapse_pro_mode":
                stickerMode = new TimeLapseProMode();
                break;
            case "video_mode":
                stickerMode = new VideoMode();
                break;
            case "3d_photo_mode":
                stickerMode = new ThreeDPhotoMode();
                break;
            case "macro_mode":
                stickerMode = new MacroMode();
                break;
            case "microscope_video_mode":
                stickerMode = new MicroscopeVideoMode();
                break;
            case "super_text_mode":
                stickerMode = new SuperTextMode();
                break;
            case "panorama_mode":
                stickerMode = new PanoramaCapMode();
                break;
            case "xpan_mode":
                stickerMode = new XpanMode();
                break;
            case "ultraHD_mode":
                stickerMode = new UltraHighResolutionMode();
                break;
            case "star_capture_mode":
                stickerMode = new StarryMode();
                break;
            case "fisheye_mode":
                stickerMode = new FishEyeMode();
                break;
            case "skin_detect_mode":
                stickerMode = new SkinDetectMode();
                break;
            case "multi_camera_mode":
                stickerMode = new MultiCameraMode();
                break;
            case "night_mode":
                stickerMode = new NightMode();
                break;
            case "photo_mode":
                stickerMode = new PhotoMode();
                break;
            case "long_exposure_mode":
                stickerMode = new LongExposureMode();
                break;
            case "fastvideo_mode":
                stickerMode = new FastVideoMode();
                break;
            case "id_photo_mode":
                stickerMode = new IdPhotoMode();
                break;
            case "professional_mode":
                stickerMode = new ProfessionalMode();
                break;
            case "high_definition_mode":
                stickerMode = new HighDefinitionMode();
                break;
            case "tilt_Shift_fastvideo_mode":
                stickerMode = new TiltShiftFastVideoMode();
                break;
            case "tilt_shift_mode":
                stickerMode = new TiltShiftPhotoMode();
                break;
            case "group_photo_mode":
                stickerMode = new GroupPhotoMode();
                break;
            case "street_mode":
                stickerMode = new StreetMode();
                break;
            case "slowvideo_mode":
                stickerMode = new SlowVideoMode();
                break;
            case "microscope_capture_mode":
                stickerMode = new MicroscopeCaptureMode();
                break;
            case "star_video_mode":
                stickerMode = new StarVideoMode();
                break;
            case "high_pixel_mode":
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

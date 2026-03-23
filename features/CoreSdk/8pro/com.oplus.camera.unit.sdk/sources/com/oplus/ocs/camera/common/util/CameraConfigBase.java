package com.oplus.ocs.camera.common.util;

import android.util.Range;
import android.util.Size;
import androidx.annotation.Nullable;
import com.oplus.ocs.camera.consumer.apsAdapter.adapter.DefaultUtill;
/* loaded from: classes.dex */
public class CameraConfigBase {
    public static final Key<Boolean> KEY_SAT_NEED_SET_ZOOMRATIO = new Key<>(DefaultUtill.KEY_SAT_NEED_SET_ZOOMRATIO, Boolean.class);
    public static final Key<Boolean> KEY_NEED_SET_ZOOMRATIO = new Key<>("com.oplus.need.set.zoomratio", Boolean.class);
    public static final Key<Boolean> KEY_SUPPORT_MOVIE_MODE_V2 = new Key<>(DefaultUtill.KEY_SUPPORT_MOVIE_MODE_V2, Boolean.class);
    public static final Key<Size[]> KEY_SAT_FUSION_WIDE_RAW_SIZE = new Key<>("com.oplus.sat.fusion.wide.rawsizes", Size[].class);
    public static final Key<Size[]> KEY_SAT_FUSION_MAIN_RAW_SIZE = new Key<>("com.oplus.sat.fusion.main.rawsizes", Size[].class);
    public static final Key<Size[]> KEY_SAT_FUSION_TELE_RAW_SIZE = new Key<>("com.oplus.sat.fusion.tele.rawsizes", Size[].class);
    public static final Key<Boolean> KEY_MTK_SAT_FUSION_SUPPORT = new Key<>("com.oplus.mtk.sat.fusion.support", Boolean.class);
    public static final Key<Size[]> KEY_SAT_MAIN_PICTURE_SIZE = new Key<>(DefaultUtill.KEY_SAT_WIDE_PICTURE_SIZE, Size[].class);
    public static final Key<Size[]> KEY_SAT_SUB_PICTURE_SIZE = new Key<>(DefaultUtill.KEY_SAT_ULTRA_PICTURE_SIZE, Size[].class);
    public static final Key<Size[]> KEY_SAT_THIRD_PICTURE_SIZE = new Key<>(DefaultUtill.KEY_SAT_TELE_PICTURE_SIZE, Size[].class);
    public static final Key<Size[]> KEY_PORTRAIT_MODE_PICTURE_SIZE_1X = new Key<>(DefaultUtill.KEY_PORTRAIT_MODE_PICTURE_SIZE_1X, Size[].class);
    public static final Key<int[]> KEY_PORTRAIT_MODE_PHYSICAL_CAMERA_ID_1X = new Key<>(DefaultUtill.KEY_PORTRAIT_MODE_PHYSICAL_CAMERAID_1X, int[].class);
    public static final Key<int[]> KEY_PORTRAIT_MODE_PHYSICAL_CAMERA_ID_2X = new Key<>(DefaultUtill.KEY_PORTRAIT_MODE_PHYSICAL_CAMERAID_2X, int[].class);
    public static final Key<Size[]> KEY_MAIN_PICTURE_SIZE = new Key<>("com.oplus.main.support.imagesizes", Size[].class);
    public static final Key<Size[]> KEY_MONO1_PICTURE_SIZE = new Key<>("com.oplus.mono1.support.imagesizes", Size[].class);
    public static final Key<Size[]> KEY_MONO2_PICTURE_SIZE = new Key<>("com.oplus.mono2.support.imagesizes", Size[].class);
    public static final Key<Boolean> KEY_FLASH_WIDE_TEL_SUPPORT = new Key<>("com.oplus.flash.wide.tel.support", Boolean.class);
    public static final Key<Boolean> KEY_TUNING_DATA_BUFFER_SUPPORT = new Key<>(DefaultUtill.KEY_TUNING_DATA_BUFFER_SUPPORT, Boolean.class);
    public static final Key<Boolean> KEY_SUPPORT_END_VIDEO_EIS_STREAM = new Key<>(DefaultUtill.KEY_SUPPORT_END_VIDEO_EIS_STREAM, Boolean.class);
    public static final Key<Boolean> KEY_SAT_SUPPORT_PRE_VERSION = new Key<>(DefaultUtill.KEY_SAT_SUPPORT_PREVERSION, Boolean.class);
    public static final Key<Boolean> KEY_STOP_REPEATING_BEFORE_END_OF_STREAM = new Key<>(DefaultUtill.KEY_STOP_REPEATING_BEFORE_END_OF_STREAM, Boolean.class);
    public static final Key<Range> KEY_THIRD_PARTY_SUPER_STABILIZATION_FPS = new Key<>("com.oplus.third_party.super_stabilization.fps", Range.class);
    public static final Key<Boolean> KEY_THIRD_PARTY_MTK_PORTRAIT_PREVIEW_USAGE = new Key<>("com.oplus.third_party.mtk.portrait.previewusage", Boolean.class);
    public static final Key<Boolean> KEY_LOW_MEMORY_CHECK_INPUT_MEM_SUPPORT = new Key<>("com.oplus.low.memory.check.input.mem.support", Boolean.class);
    public static final Key<Boolean> KEY_THIRD_PARTY_FRONT_AINIGHTVIDEO_DISABLE = new Key<>("com.oplus.third_party.front.ai_night_video.disable", Boolean.class);
    public static final Key<Boolean> KEY_FRONT_DUAL_CAMERA_SUPPORT = new Key<>(DefaultUtill.KEY_FRONT_DUAL_CAMERA_SUPPORT, Boolean.class);
    public static final Key<Boolean> KEY_SUPPORT_MTK_INSENSOR_ZOOM = new Key<>(DefaultUtill.KEY_SUPPORT_MTK_INSENSOR_ZOOM, Boolean.class);
    public static final Key<Boolean> KEY_SUPPORT_MTK_SEAMLESS_REMOSAIC_ZOOM = new Key<>("com.oplus.feature.mtk.seamless.remosaic.zoom", Boolean.class);
    public static final Key<Boolean> KEY_QUALCOMM_PHYSICAL_ID_SUPPORT = new Key<>(DefaultUtill.KEY_QUALCOMM_PHYSICAL_ID_SUPPORT, Boolean.class);
    public static final Key<Integer> KEY_HAL_MEMORY_COMMON = new Key<>(DefaultUtill.KEY_HAL_MEMORY_COMMON, Integer.class);
    public static final Key<Boolean> KEY_HAL_MEMORY_COMMON_SUPPORT_DIFFERENCE = new Key<>("com.oplus.hal.memory.common.support.difference", Boolean.class);
    public static final Key<Integer> KEY_HAL_MEMORY_COMMON_6G = new Key<>("com.oplus.hal.memory.common.6G", Integer.class);
    public static final Key<Integer> KEY_HAL_MEMORY_COMMON_8G = new Key<>("com.oplus.hal.memory.common.8G", Integer.class);
    public static final Key<Integer> KEY_HAL_MEMORY_COMMON_12G = new Key<>("com.oplus.hal.memory.common.12G", Integer.class);
    public static final Key<Integer> KEY_HAL_MEMORY_NIGHT = new Key<>(DefaultUtill.KEY_HAL_MEMORY_NIGHT, Integer.class);
    public static final Key<Integer> KEY_HAL_MEMORY_NIGHT_6G = new Key<>("com.oplus.hal.memory.night.6G", Integer.class);
    public static final Key<Integer> KEY_HAL_MEMORY_NIGHT_8G = new Key<>("com.oplus.hal.memory.night.8G", Integer.class);
    public static final Key<Integer> KEY_HAL_MEMORY_NIGHT_12G = new Key<>("com.oplus.hal.memory.night.12G", Integer.class);
    public static final Key<Integer> KEY_HAL_MEMORY_PORTRAIT = new Key<>(DefaultUtill.KEY_HAL_MEMORY_PORTRAIT, Integer.class);
    public static final Key<Integer> KEY_HAL_MEMORY_PANORAMA = new Key<>(DefaultUtill.KEY_HAL_MEMORY_PANORAMA, Integer.class);
    public static final Key<Integer> KEY_HAL_MEMORY_PROFESSIONAL = new Key<>(DefaultUtill.KEY_HAL_MEMORY_PROFESSIONAL, Integer.class);
    public static final Key<Integer> KEY_HAL_MEMORY_STICKER = new Key<>(DefaultUtill.KEY_HAL_MEMORY_STICKER, Integer.class);
    public static final Key<Integer> KEY_HAL_MEMORY_HIGH_DEFINITION = new Key<>("com.oplus.hal.memory.highDefinition", Integer.class);
    public static final Key<Integer> KEY_HAL_MEMORY_HIGH_PIXEL = new Key<>(DefaultUtill.KEY_HAL_MEMORY_HIGH_PIXEL, Integer.class);
    public static final Key<Integer> KEY_HAL_MEMORY_10BIT = new Key<>(DefaultUtill.KEY_HAL_MEMORY_10BIT, Integer.class);
    public static final Key<Integer> KEY_HAL_MEMORY_10BIT_6G = new Key<>("com.oplus.hal.memory.10bit.6G", Integer.class);
    public static final Key<Integer> KEY_HAL_MEMORY_10BIT_8G = new Key<>("com.oplus.hal.memory.10bit.8G", Integer.class);
    public static final Key<Integer> KEY_HAL_MEMORY_10BIT_12G = new Key<>("com.oplus.hal.memory.10bit.12G", Integer.class);
    public static final Key<Boolean> KEY_CAPTURE_WITH_RAW10 = new Key<>(DefaultUtill.KEY_CAPTURE_WITH_RAW10, Boolean.class);
    public static final Key<Boolean> KEY_SE_NIGHT_SUPPORT = new Key<>(DefaultUtill.KEY_SE_NIGHT_SUPPORT, Boolean.class);
    public static final Key<Integer> KEY_PHOTO_10BIT_FORMAT = new Key<>(DefaultUtill.KEY_PHOTO_10BIT_FORMAT, Integer.class);
    public static final Key<Boolean> KEY_MFNR = new Key<>(DefaultUtill.KEY_MFNR, Boolean.class);
    public static final Key<Boolean> KEY_MAINCAMERA_ASD_AISCENE_SUPPORT = new Key<>(DefaultUtill.KEY_MAINCAMERA_ASD_AISCENE_SUPPORT, Boolean.class);
    public static final Key<Boolean> KEY_WIDECAMERA_ASD_AISCENE_SUPPORT = new Key<>(DefaultUtill.KEY_WIDECAMERA_ASD_AISCENE_SUPPORT, Boolean.class);
    public static final Key<Boolean> KEY_SATCAMERA_AISCENE_SUPPORT = new Key<>(DefaultUtill.KEY_SATCAMERA_ASD_AISCENE_SUPPORT, Boolean.class);
    public static final Key<Integer> KEY_PREVIEW_MAX_IMAGES = new Key<>("com.oplus.preview.max.images", Integer.class);
    public static final Key<Integer> KEY_CAPTURE_MAX_IMAGES = new Key<>("com.oplus.capture.max.images", Integer.class);
    public static final Key<Boolean> KEY_ONLY_HIGH_PICTURE_SIZE_HEIF_IN_APS = new Key<>(DefaultUtill.KEY_ONLY_HIGH_PICTURE_SIZE_HEIF_IN_APS, Boolean.class);
    public static final Key<Size> KEY_HIGH_MFNR_PICTURE_SIZE = new Key<>(DefaultUtill.KEY_HIGH_MFNR_PICTURE_SIZE, Size.class);
    public static final Key<Size> KEY_HIGH_MFNR_WIDE_PICTURE_SIZE = new Key<>("com.oplus.high.mfnr.wide.picturesize", Size.class);
    public static final Key<Size> KEY_HIGH_MFNR_TELE_PICTURE_SIZE = new Key<>("com.oplus.high.mfnr.tele.picturesize", Size.class);
    public static final Key<Size[]> KEY_FRONT_MFNR_PICTURE_SIZE = new Key<>("com.oplus.front.common.high.mfnr.picturesize", Size[].class);
    public static final Key<Boolean> KEY_FRONT_NIGHT_USE_MFNR_PICTURE_SIZE_SUPPORT = new Key<>(DefaultUtill.KEY_FRONT_NIGHT_USE_MFNR_PICTURE_SIZE_SUPPORT, Boolean.class);
    public static final Key<Size> KEY_HIGH_PICTURE_SIZE_REAR_WIDE = new Key<>("com.oplus.high.picturesize.rear.wide", Size.class);
    public static final Key<Size> KEY_FRONT_PORTRAIT_PREVIEW_SIZE = new Key<>(DefaultUtill.KEY_FRONT_PORTRAIT_PREVIEW_SIZE, Size.class);
    public static final Key<Size> KEY_REAR_PORTRAIT_PREVIEW_SIZE = new Key<>(DefaultUtill.KEY_REAR_PORTRAIT_PREVIEW_SIZE, Size.class);
    public static final Key<Boolean> KEY_TORCH_FLASH = new Key<>(DefaultUtill.KEY_TORCH_FLASH, Boolean.class);
    public static final Key<Boolean> KEY_TRIGGER_FLASH_WAIT_AF = new Key<>(DefaultUtill.KEY_TRIGGER_FLASH_WAIT_AF, Boolean.class);
    public static final Key<Boolean> KEY_SUPPORT_CONFIGURE_STREAM_SIZE_CUSTOM = new Key<>(DefaultUtill.KEY_SUPPORT_CONFIGURE_STREAM_SIZE_CUSTOM, Boolean.class);
    public static final Key<Size[]> KEY_FRONT_NIGHT_RAW_PICTURE_SIZE = new Key<>(DefaultUtill.KEY_FRONT_NIGHT_RAW_PICTURE_SIZE, Size[].class);
    public static final Key<Boolean> KEY_FRONT_NEED_MATCH_META = new Key<>("com.oplus.front.need.match.meta", Boolean.class);
    public static final Key<Size[]> KEY_BACK_NIGHT_RAW_PICTURE_SIZE = new Key<>(DefaultUtill.KEY_BACK_NIGHT_RAW_PICTURE_SIZE, Size[].class);
    public static final Key<Size> KEY_XPAN_MAIN_PICTURE_SIZE = new Key<>(DefaultUtill.KEY_HASSELBALD_XPAN_MAIN_PICTURE_SIZE, Size.class);
    public static final Key<Size> KEY_XPAN_WIDE_PICTURE_SIZE = new Key<>(DefaultUtill.KEY_HASSELBALD_XPAN_WIDE_PICTURE_SIZE, Size.class);
    public static final Key<Boolean> KEY_DISABLE_RAW = new Key<>(DefaultUtill.KEY_DISABLE_RAW, Boolean.class);
    public static final Key<Boolean> KEY_MMCAMERA_PROFESSIONAL_AEMODE_CLOSED = new Key<>("com.oplus.mmcamera.professional.aemode.closed", Boolean.class);
    public static final Key<float[]> KEY_SAT_MAIN_ZOOM_RANGE = new Key<>(DefaultUtill.KEY_SAT_MAIN_ZOOM_RANGE, float[].class);
    public static final Key<Boolean> KEY_NIGHT_PRO_SUPPORT = new Key<>(DefaultUtill.KEY_NIGHT_PRO_MODE_SUPPORT, Boolean.class);
    public static final Key<Boolean> KEY_OPLUS_USE_HASSELBLAD_STYLE = new Key<>(DefaultUtill.KEY_OPLUS_USE_HASSELBLAD_STYLE, Boolean.class);
    public static final Key<Size[]> KEY_REAR_PORTRAIT_SAT_FULL_BODY_SIZE = new Key<>("com.oplus.rear.portrait.sat.fullbodysize", Size[].class);
    public static final Key<Size[]> KEY_REAR_PORTRAIT_SAT_HALF_BODY_SIZE = new Key<>("com.oplus.rear.portrait.sat.halfbodysize", Size[].class);
    public static final Key<Boolean> KEY_FRONT_SENSOR_BINNING = new Key<>(DefaultUtill.KEY_FRONT_SENSOR_BINNING, Boolean.class);
    public static final Key<Boolean> KEY_REAR_PORTRAIT_PREVIEW_PHYSICALID = new Key<>("com.oplus.rear.portrait.preview.physicalid", Boolean.class);
    public static final Key<Boolean> KEY_APS_SUPPORT_VIDEO_SUPER_EIS = new Key<>(DefaultUtill.KEY_APS_SUPPORT_VIDEO_SUPER_EIS, Boolean.class);
    public static final Key<Boolean> KEY_VIDEO_BLUR_V3_SUPPORT = new Key<>("com.oplus.video.blur.v3.support", Boolean.class);
    public static final Key<Boolean> KEY_FEATURE_DCIP3_SUPPORT = new Key<>(DefaultUtill.KEY_FEATURE_DCIP3_SUPPORT, Boolean.class);
    public static final Key<Boolean> KEY_SUPPORT_VIDEO_DYNAMIC_FPS_RANGE = new Key<>(DefaultUtill.KEY_SUPPORT_VIDEO_DYNAMIC_FPS_RANGE, Boolean.class);
    public static final Key<Boolean> KEY_FORCE_4k_VIDEO_SNAPSHOT_BY_APS = new Key<>(DefaultUtill.KEY_FORCE_4k_VIDEO_SNAPSHOT_BY_APS, Boolean.class);
    public static final Key<Boolean> KEY_PORTRAIT_BACK_DUAL_CAPTURE_SUPPORT = new Key<>("com.oplus.portrait.back.dual.capture.support", Boolean.class);
    public static final Key<Integer> KEY_CSHOT_FIRST_REQUEST_NUM = new Key<>(DefaultUtill.KEY_CSHOT_FIRST_REQUEST_NUM, Integer.class);
    public static final Key<Boolean> KEY_SUPPORT_VIDEO_SUPER_EIS_PROCESS_ONLY_WIDE = new Key<>(DefaultUtill.KEY_SUPPORT_VIDEO_SUPER_EIS_PROCESS_ONLY_WIDE, Boolean.class);
    public static final Key<Boolean> KEY_REAR_HVXSHDR_SUPPORT = new Key<>("com.oplus.feature.rear.hvxshdr.support", Boolean.class);
    public static final Key<Boolean> KEY_THIRD_PARY_HVXSHDR_SUPPORT = new Key<>("com.oplus.feature.third.party.rear.hvxshdr.support", Boolean.class);
    public static final Key<String> KEY_THIRD_PARY_NOTNEEDPACKAGES_HVXSHDR_SUPPORT = new Key<>("com.oplus.feature.third.party.notneedpackages.rear.hvxshdr.support", String.class);
    public static final Key<Boolean> KEY_FRONT_HVXSHDR_SUPPORT = new Key<>("com.oplus.feature.front.hvxshdr.support", Boolean.class);
    public static final Key<Integer> KEY_PORTRAIT_LOGIC_CAMERA_TYPE = new Key<>(DefaultUtill.KEY_PORTRAIT_MODE_SET_DEFAULT_LOGIC_CAMERA_TYPE, Integer.class);
    public static final Key<Boolean> KEY_PORTRAIT_MTK_REAR_WIDE_PLATFORM_DEPTH_NOT_SUPPORT = new Key<>("com.oplus.portrait.mtk.rear.wide.platform.depth.not.support", Boolean.class);
    public static final Key<Boolean> KEY_VIDEO_WATERMARK_HAL_SUPPORT = new Key<>(DefaultUtill.KEY_VIDEO_WATERMARK_HAL_SUPPORT, Boolean.class);
    public static final Key<Boolean> KEY_ULTRA_HIGH_RESOLUTION_FULL_ZOOM_SUPPORT = new Key<>(DefaultUtill.KEY_ULTRA_HIGH_RESOLUTION_FULL_ZOOM_SUPPORT, Boolean.class);
    public static final Key<Boolean> KEY_SUPPORT_IZOOM_PREVIEW_ENABLE = new Key<>(DefaultUtill.KEY_SUPPORT_IZOOM_PREVIEW_ENABLE, Boolean.class);
    public static final Key<Boolean> KEY_AI_FLASH_SUPPORT = new Key<>(DefaultUtill.KEY_AI_FLASH_SUPPORT, Boolean.class);
    public static final Key<Boolean> KEY_SUPPORT_HIGH_DEFINITION_ZOOM = new Key<>(DefaultUtill.KEY_SUPPORT_HIGH_DEFINITION_ZOOM, Boolean.class);
    public static final Key<Boolean> KEY_REQUEST_TEMPLATE_ZERO_SHUTTER_LAG = new Key<>("com.oplus.request.template.zero.shutter.lag", Boolean.class);
    public static final Key<Boolean> KEY_HIGH_FPS_VIDEO_PREVIEW_PROCESS_BY_APS = new Key<>("com.oplus.high.fps.video.preview.process.by.aps", Boolean.class);
    public static final Key<Boolean> KEY_LOW_FPS_VIDEO_PREVIEW_PROCESS_BY_APS = new Key<>(DefaultUtill.KEY_VIDEO_LOW_FPS_PREVIEW_PROCESS_BY_APS, Boolean.class);
    public static final Key<Boolean> KEY_HIGH_DEFINITION_PRO_SUPPORT = new Key<>("com.oplus.high.definition.pro.support", Boolean.class);
    public static final Key<Boolean> KEY_TELE_SMALL_PREVIEW_SUPPORT = new Key<>(DefaultUtill.KEY_TELE_SMALL_PREVIEW_SUPPORT, Boolean.class);
    public static final Key<Boolean> KEY_SUPPORT_VIDEO_FRONT_EIS_RECORD = new Key<>("com.oplus.feature.video.front.eis.record.support", Boolean.class);
    public static final Key<Boolean> KEY_3D_LUT_SUPPORT = new Key<>("com.oplus.3d.lut.support", Boolean.class);
    public static final Key<Long> KEY_STARRY_MODE_CAPTURE_EXPOSURETIME = new Key<>(DefaultUtill.KEY_STARRY_MODE_CAPTURE_EXPOSURETIME, Long.class);
    public static final Key<Integer> KEY_STARRY_MODE_CAPTURE_ISO = new Key<>(DefaultUtill.KEY_STARRY_MODE_CAPTURE_ISO, Integer.class);
    public static final Key<Boolean> KEY_STAR_VIDEO_NEED_VERIFY_FRAME = new Key<>(DefaultUtill.KEY_STAR_VIDEO_NEED_VERIFY_FRAME, Boolean.class);
    public static final Key<Integer> KEY_BACK_PURE_3RD_BOKEH_PREVIEW = new Key<>(DefaultUtill.KEY_BACK_PURE_3RD_BOKEH_PREVIEW, Integer.class);
    public static final Key<Integer> KEY_PREFER_ADD_FRAME_TYPE = new Key<>(DefaultUtill.KEY_PREFER_ADD_FRAME_TYPE, Integer.class);
    public static final Key<Boolean> KEY_VIDEO_STABILIZATION_BY_APS = new Key<>(DefaultUtill.KEY_VIDEO_STABILIZATION_BY_APS, Boolean.class);
    public static final Key<Boolean> KEY_VIDEO_STABILIZATION_FRONT_BY_APS = new Key<>(DefaultUtill.KEY_VIDEO_STABILIZATION_FRONT_BY_APS, Boolean.class);
    public static final Key<Boolean> KEY_MFNR_HDR_ISP7_SUPPORT = new Key<>("com.oplus.mfnr_hdr_isp7.support", Boolean.class);
    public static final Key<Boolean> KEY_NEED_SET_AHEAD_CAPTURE_FRAME_NUM = new Key<>("com.oplus.need.set.ahead.capture.frame.num", Boolean.class);
    public static final Key<Boolean> KEY_USE_FRONT_SINGLE_PHOTO = new Key<>("com.oplus.use.front.single.photo", Boolean.class);
    public static final Key<Boolean> KEY_FRONT_MAIN_WIDE_CAMERA_SUPPORT = new Key<>(DefaultUtill.KEY_FRONT_MAIN_WIDE_CAMERA_SUPPORT, Boolean.class);
    public static final Key<Boolean> KEY_AISHUTTER_PRECOLLECT_BYPASS = new Key<>("com.oplus.aishutter.precollect.bypass", Boolean.class);
    public static final Key<Boolean> KEY_REAR_SINGLE_BOKEH_SUPPORT = new Key<>("com.oplus.rear.single.bokeh.support", Boolean.class);
    public static final Key<Boolean> KEY_SELF_AWB_SUPPORT = new Key<>("com.oplus.self.awb.support", Boolean.class);
    public static final Key<Boolean> KEY_PORTRAIT_TURBO_RAW_SUPPORT = new Key<>(DefaultUtill.KEY_PORTRAIT_TURBO_RAW_SUPPORT, Boolean.class);
    public static final Key<Boolean> KEY_PORTRAIT_REPAIR_MEMORY_4G_SUPPORT = new Key<>("com.oplus.portrait.repair.memory.4g.support", Boolean.class);
    public static final Key<Integer> KEY_NIGHT_OFFLINE_R2Y_CAPTURE_EVLIST_EXP_TIME_THRESHOLD = new Key<>(DefaultUtill.KEY_NIGHT_OFFLINE_R2Y_CAPTURE_EVLIST_EXP_TIME_THRESHOLD, Integer.class);
    public static final Key<Boolean> KEY_SLOW_VIDEO_PREVIEW_PROCESS_BY_APS = new Key<>("com.oplus.slow.video.preview.process.by.aps", Boolean.class);
    public static final Key<Boolean> KEY_SUPPORT_DEFAULT_VIDEO_FRAME_RECORD = new Key<>(DefaultUtill.KEY_SUPPORT_DEFAULT_VIDEO_FRAME_RECORD, Boolean.class);
    public static final Key<Boolean> KEY_CHDR_NEED_EVLIST = new Key<>("com.oplus.chdr.need.evlist", Boolean.class);
    public static final Key<Boolean> KEY_MTK_HIGH_QUALITY_YUV_SUPPORT = new Key<>("com.oplus.mtk.highqualityYUV.support", Boolean.class);
    public static final Key<Boolean> KEY_SUPER_RESOLUTION_PORTRAIT_SUPPORT = new Key<>("com.oplus.super.resolution.portrait.support", Boolean.class);
    public static final Key<Boolean> KEY_REAR_DUALCAM_SOFT_DEPTH_SUPPORT = new Key<>("com.oplus.rear.dualcam.soft.depth.support", Boolean.class);

    /* loaded from: classes.dex */
    public static final class Key<T> {
        private String mKeyName;
        private Class<T> mType;

        Key(String str, Class<T> cls) {
            this.mKeyName = str;
            this.mType = cls;
        }

        public Class getType() {
            return this.mType;
        }

        public String getName() {
            return this.mKeyName;
        }

        public int hashCode() {
            return this.mKeyName.hashCode();
        }

        public boolean equals(@Nullable Object obj) {
            if (obj == null) {
                return false;
            }
            return this.mKeyName.equals(((Key) obj).mKeyName);
        }

        public String toString() {
            return "mKeyName: " + this.mKeyName + ", mType: " + this.mType;
        }
    }
}

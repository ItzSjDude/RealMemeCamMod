package com.oplus.ocs.camera.common.parameter.apsadapter;

import com.oplus.ocs.camera.common.parameter.apsadapter.ApsBaseParameter;
/* loaded from: classes.dex */
public class ApsImageCategoryParameter extends ApsBaseParameter {
    public static final ApsBaseParameter.Key<Integer> KEY_IMAGE_CATEGORY_HEIGHT = new ApsBaseParameter.Key<>("com.oplus.image.category.height", Integer.class, 0);
    public static final ApsBaseParameter.Key<Integer> KEY_IMAGE_CATEGORY_WIDTH = new ApsBaseParameter.Key<>("com.oplus.image.category.width", Integer.class, 0);
    public static final ApsBaseParameter.Key<Boolean> KEY_IMAGE_CATEGORY_BURST_SHOT = new ApsBaseParameter.Key<>("com.oplus.image.category.burst_shot", Boolean.class, false);
    public static final ApsBaseParameter.Key<Integer> KEY_IMAGE_CATEGORY_BURST_COUNT = new ApsBaseParameter.Key<>("com.oplus.image.category.burst_count", Integer.class, 0);
    public static final ApsBaseParameter.Key<Long> KEY_IMAGE_CATEGORY_BURST_SHOT_FLAG_ID = new ApsBaseParameter.Key<>("com.oplus.image.category.burst_shot_flag_id", Long.class, -1L);
    public static final ApsBaseParameter.Key<String> KEY_IMAGE_CATEGORY_CSHOT_PATH = new ApsBaseParameter.Key<>("com.oplus.image.category.cshot_path", String.class, null);
    public static final ApsBaseParameter.Key<Integer> KEY_IMAGE_CATEGORY_REC_BURST_NUMBER = new ApsBaseParameter.Key<>("com.oplus.image.category.rec_burst_number", Integer.class, -1);
    public static final ApsBaseParameter.Key<Long> KEY_IMAGE_CATEGORY_DATE = new ApsBaseParameter.Key<>("com.oplus.image.category.date", Long.class, 0L);
    public static final ApsBaseParameter.Key<Integer> KEY_IMAGE_CATEGORY_FORMAT = new ApsBaseParameter.Key<>("com.oplus.image.category.image_format", Integer.class, 0);
    public static final ApsBaseParameter.Key<Long> KEY_IMAGE_CATEGORY_IMAGE_TIME_STAMP = new ApsBaseParameter.Key<>("com.oplus.image.category.image_time_stamp", Long.class, 0L);
    public static final ApsBaseParameter.Key<String> KEY_IMAGE_CATEGORY_WATERMARK_PATH = new ApsBaseParameter.Key<>("com.oplus.image.category.watermark_path", String.class, null);
    public static final ApsBaseParameter.Key<Long> KEY_IMAGE_CATEGORY_MERGE_IDENTITY = new ApsBaseParameter.Key<>("com.oplus.image.category.mergeIdentity", Long.class, -1L);
    public static final ApsBaseParameter.Key<Long> KEY_IMAGE_CATEGORY_META_TIME_STAMP = new ApsBaseParameter.Key<>("com.oplus.image.category.meta_time_stamp", Long.class, 0L);
    public static final ApsBaseParameter.Key<String> KEY_IMAGE_CATEGORY_SUPER_TEXT_ENABLE = new ApsBaseParameter.Key<>("com.oplus.image.category.super_text_enable", String.class, "0");
    public static final ApsBaseParameter.Key<int[]> KEY_IMAGE_CATEGORY_CUSTOM_BEAUTY_PARAM = new ApsBaseParameter.Key<>("com.oplus.image.category.custom_beauty_param", int[].class, null);
    public static final ApsBaseParameter.Key<Boolean> KEY_IMAGE_CATEGORY_IS_VALID = new ApsBaseParameter.Key<>("com.oplus.image.category.is_valid", Boolean.class, false);
    public static final ApsBaseParameter.Key<Boolean> KEY_RESULT_CAPTURE_FOR_VIDEO = new ApsBaseParameter.Key<>("com.oplus.result.capture.for.video", Boolean.class, false);
    public static final ApsBaseParameter.Key<Boolean> KEY_IMAGE_CATEGORY_END_OF_CAPTURE = new ApsBaseParameter.Key<>("com.oplus.image.category.end_of_capture", Boolean.class, false);
}

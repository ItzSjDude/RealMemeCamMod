package com.common;

import com.oplus.ocs.camera.common.statistics.StatisticConstant;

/* JADX INFO: loaded from: classes.dex */
public class StaticsConstant {

    public @interface AbnormalDisplayKeys {
        public static final String KEY_ABNORMAL_PREVIEW = "abnormal_preview";
    }

    public @interface AbnormalDisplayValues {
        public static final int KEY_PREVIEW_CONFIG_FAILED = 2;
        public static final int KEY_PREVIEW_DROP_FRAME = 4;
        public static final int KEY_PREVIEW_GL_ERROR = 6;
        public static final int KEY_PREVIEW_MISS_APS_PREVIEW_FRAME = 5;
        public static final int KEY_PREVIEW_MISS_HAL_PREVIEW_FRAME = 3;
        public static final int KEY_PREVIEW_OPEN_CAMERA_ERROR = 1;
    }

    public static class EventType {
        public static final EventType ABNORMAL_DISPLAY = new EventType(StatisticConstant.STATISTIC_CAMERA_APP_CODE, "207", "abnormal_display");
        public String mAppId;
        public String mCategory;
        public String mEventId;

        EventType(String str, String str2, String str3) {
            this.mAppId = str;
            this.mCategory = str2;
            this.mEventId = str3;
        }
    }
}

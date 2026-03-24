package com.coloros.ocs.camera.util;

import android.text.TextUtils;
import com.coloros.ocs.camera.parameter.DefaultConfigureParameter;
import com.coloros.ocs.camera.parameter.DefaultPreviewParameter;
import com.oplus.ocs.camera.common.parameter.ConfigureParameter;
import com.oplus.ocs.camera.common.parameter.PreviewParameter;

/* JADX INFO: loaded from: classes.dex */
public class Util {
    public static String convertOldParameterKeyName(String str) {
        if (TextUtils.equals(str, DefaultConfigureParameter.VIDEO_FPS.getName())) {
            return ConfigureParameter.VIDEO_FPS.getName();
        }
        if (TextUtils.equals(str, DefaultConfigureParameter.VIDEO_STABILIZATION_MODE.getName())) {
            return ConfigureParameter.VIDEO_STABILIZATION_MODE.getName();
        }
        if (TextUtils.equals(str, DefaultConfigureParameter.VIDEO_3HDR_MODE.getName())) {
            return ConfigureParameter.VIDEO_3HDR_MODE.getName();
        }
        if (TextUtils.equals(str, DefaultPreviewParameter.KEY_FOCUS_MODE.getName())) {
            return PreviewParameter.KEY_FOCUS_MODE.getName();
        }
        if (TextUtils.equals(str, DefaultPreviewParameter.KEY_AF_REGIONS.getName())) {
            return PreviewParameter.KEY_AF_REGIONS.getName();
        }
        if (TextUtils.equals(str, DefaultPreviewParameter.KEY_AE_REGIONS.getName())) {
            return PreviewParameter.KEY_AE_REGIONS.getName();
        }
        if (TextUtils.equals(str, DefaultPreviewParameter.KEY_FLASH_MODE.getName())) {
            return PreviewParameter.KEY_FLASH_MODE.getName();
        }
        return TextUtils.equals(str, DefaultPreviewParameter.KEY_ZOOM_RATIO.getName()) ? PreviewParameter.KEY_ZOOM_RATIO.getName() : str;
    }

    public static String convertNewParameterKeyName(String str) {
        if (TextUtils.equals(str, ConfigureParameter.VIDEO_FPS.getName())) {
            return DefaultConfigureParameter.VIDEO_FPS.getName();
        }
        if (TextUtils.equals(str, ConfigureParameter.VIDEO_STABILIZATION_MODE.getName())) {
            return DefaultConfigureParameter.VIDEO_STABILIZATION_MODE.getName();
        }
        if (TextUtils.equals(str, ConfigureParameter.VIDEO_3HDR_MODE.getName())) {
            return DefaultConfigureParameter.VIDEO_3HDR_MODE.getName();
        }
        if (TextUtils.equals(str, PreviewParameter.KEY_FOCUS_MODE.getName())) {
            return DefaultPreviewParameter.KEY_FOCUS_MODE.getName();
        }
        if (TextUtils.equals(str, PreviewParameter.KEY_AF_REGIONS.getName())) {
            return DefaultPreviewParameter.KEY_AF_REGIONS.getName();
        }
        if (TextUtils.equals(str, PreviewParameter.KEY_AE_REGIONS.getName())) {
            return DefaultPreviewParameter.KEY_AE_REGIONS.getName();
        }
        if (TextUtils.equals(str, PreviewParameter.KEY_FLASH_MODE.getName())) {
            return DefaultPreviewParameter.KEY_FLASH_MODE.getName();
        }
        return TextUtils.equals(str, PreviewParameter.KEY_ZOOM_RATIO.getName()) ? DefaultPreviewParameter.KEY_ZOOM_RATIO.getName() : str;
    }
}

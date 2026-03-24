package com.oplus.ocs.camera.common.util;

import com.oplus.ocs.camera.producer.info.CameraConfigHelper;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class PlatformUtil {
    private PlatformUtil() {
    }

    public static boolean isQualcommPlatform() {
        Map<String, String> deviceInfoMap = CameraConfigHelper.getDeviceInfoMap();
        if (deviceInfoMap.size() == 0 || !deviceInfoMap.containsKey("platform")) {
            throw new RuntimeException("deviceInfo should be configured and initialized!");
        }
        return "qcom".equals(deviceInfoMap.get("platform"));
    }

    public static boolean isMtkPlatform() {
        return !isQualcommPlatform();
    }
}

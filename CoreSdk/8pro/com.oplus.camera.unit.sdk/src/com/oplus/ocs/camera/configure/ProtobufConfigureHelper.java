package com.oplus.ocs.camera.configure;

import com.oplus.ocs.camera.common.util.Util;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* JADX INFO: loaded from: classes.dex */
public class ProtobufConfigureHelper {
    private static final String[] CONFIG_PARTITIONS = { "/odm", "/my_product", "/vendor", "/product", "/system" };
    protected static final String FEATURE_CONFIG_PATH_VERSION_1 = findConfigPath("camera_unit_feature_config.protobuf");
    protected static final String FEATURE_CONFIG_PATH_VERSION_2 = findConfigPath("oplus_camera_feature_config");
    private static final String TAG = "ConfigureHelper";
    private static final boolean sFeatureConfigureFileExist = featureConfigureFileExist();
    private static final int sParseVersion = getParseVersion();

    private static String findConfigPath(String fileName) {
        for (String partition : CONFIG_PARTITIONS) {
            String path = partition + "/etc/camera/config/" + fileName;
            if (Util.isFileExist(path)) {
                return path;
            }
        }
        return "/odm/etc/camera/config/" + fileName; // Default fallback
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface FileTag {
        public static final int TAG_PROTOBUF = 2;
        public static final int TAG_VENDOR_TAG = 1;
    }

    public @interface ParseVersion {
        public static final int VERSION_1 = 1;
        public static final int VERSION_2 = 2;
    }

    public static int getConfigParseVersion() {
        return sParseVersion;
    }

    public static boolean isFeatureConfigureFileExist() {
        return sFeatureConfigureFileExist;
    }

    private static boolean featureConfigureFileExist() {
        return (FEATURE_CONFIG_PATH_VERSION_1 != null && Util.isFileExist(FEATURE_CONFIG_PATH_VERSION_1))
                || (FEATURE_CONFIG_PATH_VERSION_2 != null && Util.isFileExist(FEATURE_CONFIG_PATH_VERSION_2));
    }

    private static int getParseVersion() {
        return (FEATURE_CONFIG_PATH_VERSION_2 != null && Util.isFileExist(FEATURE_CONFIG_PATH_VERSION_2)) ? 2 : 1;
    }
}

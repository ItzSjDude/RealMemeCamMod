package com.oplus.ocs.camera.configure;

import com.oplus.ocs.camera.common.util.Util;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* JADX INFO: loaded from: classes.dex */
public class ProtobufConfigureHelper {
    protected static final String FEATURE_CONFIG_PATH_VERSION_1 = "/odm/etc/camera/config/camera_unit_feature_config.protobuf";
    protected static final String FEATURE_CONFIG_PATH_VERSION_2 = "/odm/etc/camera/config/oplus_camera_feature_config";
    private static final String TAG = "ConfigureHelper";
    private static final boolean sFeatureConfigureFileExist = featureConfigureFileExist();
    private static final int sParseVersion = getParseVersion();

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
        return Util.isFileExist(FEATURE_CONFIG_PATH_VERSION_1) || Util.isFileExist(FEATURE_CONFIG_PATH_VERSION_2);
    }

    private static int getParseVersion() {
        return Util.isFileExist(FEATURE_CONFIG_PATH_VERSION_2) ? 2 : 1;
    }
}

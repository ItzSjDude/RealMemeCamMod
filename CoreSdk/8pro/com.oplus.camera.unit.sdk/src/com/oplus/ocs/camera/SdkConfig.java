package com.oplus.ocs.camera;

import com.oplus.ocs.camera.common.util.CameraUnitLog;

/* JADX INFO: loaded from: classes.dex */
public class SdkConfig {
    public static final boolean DEBUG = false;
    public static final boolean META_DUMP = CameraUnitLog.isDebugLogOn();
    public static final boolean PREVIEW_DEBUG = false;
    public static final String TYPE = "release";
    public static final int VERSION_CODE = 341000;
    public static final String VERSION_NAME = "3.512.9";

    public static String sdkBuildInfo() {
        return "SdkConfig: {version name: 3.512.9, version code: 341000, type: release}";
    }
}

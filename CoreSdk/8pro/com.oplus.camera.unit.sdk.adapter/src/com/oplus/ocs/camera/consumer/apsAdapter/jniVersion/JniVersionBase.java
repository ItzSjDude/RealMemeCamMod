package com.oplus.ocs.camera.consumer.apsAdapter.jniVersion;

/* JADX INFO: loaded from: classes.dex */
public interface JniVersionBase {
    public static final String CMD_JNI_BASE_VERSION = "V002.000.000";
    public static final String DEFAULT_JNI_VASE_VERSION = "V001.000.000";
    public static final String NEXT_JNI_BASE_VERSION = "V003.000.000";

    String getBaseVersion();

    String getJniLibraryName();
}

package com.oplus.ocs.camera.consumer.apsAdapter.jniVersion;

/* JADX INFO: loaded from: classes.dex */
public class CmdJniVersion implements JniVersionBase {
    private static final String APSCLIENT_JNI_CMD_PATH = "APSClient-cmd-jni";

    @Override // com.oplus.ocs.camera.consumer.apsAdapter.jniVersion.JniVersionBase
    public String getBaseVersion() {
        return JniVersionBase.CMD_JNI_BASE_VERSION;
    }

    @Override // com.oplus.ocs.camera.consumer.apsAdapter.jniVersion.JniVersionBase
    public String getJniLibraryName() {
        return APSCLIENT_JNI_CMD_PATH;
    }
}

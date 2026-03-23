package com.oplus.ocs.camera.consumer.apsAdapter.jniVersion;
/* loaded from: classes.dex */
public class DefaultJniVersion implements JniVersionBase {
    private static final String JNI_LIBRARY_NAME = "APSClient-jni";

    @Override // com.oplus.ocs.camera.consumer.apsAdapter.jniVersion.JniVersionBase
    public String getBaseVersion() {
        return JniVersionBase.DEFAULT_JNI_VASE_VERSION;
    }

    @Override // com.oplus.ocs.camera.consumer.apsAdapter.jniVersion.JniVersionBase
    public String getJniLibraryName() {
        return JNI_LIBRARY_NAME;
    }
}

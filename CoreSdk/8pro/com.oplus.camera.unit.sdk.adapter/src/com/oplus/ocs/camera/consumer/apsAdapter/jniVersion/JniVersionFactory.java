package com.oplus.ocs.camera.consumer.apsAdapter.jniVersion;

import android.text.TextUtils;
import com.oplus.ocs.camera.consumer.apsAdapter.ApsAdapterLog;

/* JADX INFO: loaded from: classes.dex */
public class JniVersionFactory {
    private static final String TAG = "JniVersionFactory";

    public static JniVersionBase createJniVersion(String str) {
        if (TextUtils.isEmpty(str)) {
            return new DefaultJniVersion();
        }
        if (str.compareToIgnoreCase(JniVersionBase.DEFAULT_JNI_VASE_VERSION) >= 0 && str.compareToIgnoreCase(JniVersionBase.CMD_JNI_BASE_VERSION) < 0) {
            return new DefaultJniVersion();
        }
        if (str.compareToIgnoreCase(JniVersionBase.CMD_JNI_BASE_VERSION) >= 0 && str.compareToIgnoreCase(JniVersionBase.NEXT_JNI_BASE_VERSION) < 0) {
            return new CmdJniVersion();
        }
        ApsAdapterLog.e(TAG, "createJniVersion, not support version: " + str);
        return new DefaultJniVersion();
    }
}

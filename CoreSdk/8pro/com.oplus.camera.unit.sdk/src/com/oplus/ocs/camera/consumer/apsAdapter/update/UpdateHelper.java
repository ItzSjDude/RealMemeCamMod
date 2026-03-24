package com.oplus.ocs.camera.consumer.apsAdapter.update;

import android.content.Context;
import com.oplus.ocs.camera.consumer.apsAdapter.ApsAdapterLog;
import java.io.File;
/* loaded from: classes.dex */
public class UpdateHelper {
    public static final String CONFIG_FILE_DATA = "file_data";
    public static final String CONFIG_FILE_VERSION = "file_version";
    private static final String TAG = "UpdateHelper";

    private UpdateHelper() {
    }

    public static String getRusUpdatePath(Context context, String str) {
        File filesDir = context.getFilesDir();
        String str2 = filesDir.getAbsolutePath() + str;
        if (new File(str2).exists()) {
            ApsAdapterLog.v(TAG, "getRusUpdatePath, updatePath: " + str2);
            return str2;
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:79:0x011c A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String getValidConfigData(android.content.Context r11, java.lang.String r12) {
        /*
            Method dump skipped, instructions count: 341
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.oplus.ocs.camera.consumer.apsAdapter.update.UpdateHelper.getValidConfigData(android.content.Context, java.lang.String):java.lang.String");
    }

    public static boolean isNewConfigFormat(String str) {
        return str != null && str.substring(0, 50).contains(CONFIG_FILE_VERSION);
    }
}

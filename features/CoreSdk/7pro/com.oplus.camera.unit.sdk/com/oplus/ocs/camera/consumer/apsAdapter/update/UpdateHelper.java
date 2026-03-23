package com.oplus.ocs.camera.consumer.apsAdapter.update;

import android.content.Context;
import com.oplus.ocs.camera.consumer.apsAdapter.ApsAdapterLog;
import java.io.File;
/* loaded from: classes.dex */
public class UpdateHelper {
    private static final String TAG = "UpdateHelper";

    private UpdateHelper() {
    }

    public static String tryRusUpdatePath(Context context, String str) {
        File filesDir = context.getFilesDir();
        String str2 = filesDir.getAbsolutePath() + str;
        if (new File(str2).exists()) {
            ApsAdapterLog.v(TAG, "tryRusUpdatePath, updatePath: " + str2);
            return str2;
        }
        return str;
    }
}

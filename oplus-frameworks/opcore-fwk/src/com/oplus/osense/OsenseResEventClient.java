package com.oplus.osense;

import android.content.Context;
import com.oplus.osense.task.BgRunningCallback;

public class OsenseResEventClient {

    private static OsenseResEventClient sInstance;

    public static OsenseResEventClient getInstance() {
        if (sInstance == null) {
            sInstance = new OsenseResEventClient();
        }
        return sInstance;
    }

    public void startBackgroundRunning(Context context, int i, BgRunningCallback callback) {
        // Shim implementation
    }

    public void stopBackgroundRunning(Context context, int i) {
        // Shim implementation
    }
}

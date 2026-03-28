package com.oplus.osense.task;

import android.util.Log;

public class BgRunningCallback {
    private static final String TAG = "BgRunningCallbackShim";

    public void onRunningStateChanged(boolean z) {
        Log.d(TAG, "onRunningStateChanged: " + z);
    }

    public void onQuotaExceeded() {
        Log.w(TAG, "onQuotaExceeded");
    }

    public void onRunningStateChanged(int i, boolean z) {
        Log.d(TAG, "onRunningStateChanged: id=" + i + ", running=" + z);
    }
}

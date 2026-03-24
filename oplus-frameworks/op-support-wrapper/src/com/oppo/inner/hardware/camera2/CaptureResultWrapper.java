package com.oppo.inner.hardware.camera2;

import android.hardware.camera2.CaptureResult;
import android.util.Log;

/* loaded from: classes.dex */
public class CaptureResultWrapper {
    private static final String TAG = "CaptureResultWrapper";

    private CaptureResultWrapper() {
    }

    public static <T> CaptureResult.Key<T> captureResultKey(String name, Class<T> type, long vendorId) {
        try {
            CaptureResult.Key<T> key = new CaptureResult.Key<>(name, type, vendorId);
            return key;
        } catch (Throwable e) {
            Log.e(TAG, e.toString());
            return null;
        }
    }

    public static <T> CaptureResult.Key<T> captureResultKey(String name, String fallbackName, Class<T> type) {
        try {
            CaptureResult.Key<T> key = new CaptureResult.Key<>(name, fallbackName, type);
            return key;
        } catch (Throwable e) {
            Log.e(TAG, e.toString());
            return null;
        }
    }

    public static <T> CaptureResult.Key<T> captureResultKey(String name, Class<T> type) {
        try {
            CaptureResult.Key<T> key = new CaptureResult.Key<>(name, type);
            return key;
        } catch (Throwable e) {
            Log.e(TAG, e.toString());
            return null;
        }
    }
}

package com.oppo.inner.hardware.camera2;

import android.hardware.camera2.CaptureRequest;
import android.util.Log;

/* loaded from: classes.dex */
public class CaptureRequestWrapper {
    private static final String TAG = "CaptureRequestWrapper";

    private CaptureRequestWrapper() {
    }

    public static <T> CaptureRequest.Key<T> captureRequestKey(String name, Class<T> type, long vendorId) {
        try {
            CaptureRequest.Key<T> key = new CaptureRequest.Key<>(name, type, vendorId);
            return key;
        } catch (Throwable e) {
            Log.e(TAG, e.toString());
            return null;
        }
    }

    public static <T> CaptureRequest.Key<T> captureRequestKey(String name, Class<T> type) {
        try {
            CaptureRequest.Key<T> key = new CaptureRequest.Key<>(name, type);
            return key;
        } catch (Throwable e) {
            Log.e(TAG, e.toString());
            return null;
        }
    }
}

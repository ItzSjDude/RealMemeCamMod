package com.oplus.camera.facebeauty;

import android.text.TextUtils;
import com.common.Util;
import java.io.File;

/* JADX INFO: loaded from: classes.dex */
/**
 * Java wrapper for native face-beauty preview functionality.
 *
 * NOTE: Method names are kept identical to the original decompiled names
 * to avoid breaking existing callers. Only parameter names, formatting
 * and documentation have been improved for readability.
 */
public class OplusFaceBeautyPreview {
    /**
     * Destroy native resources.
     * @return status code (native-defined)
     */
    public native int destroy();

    /**
     * Get timestamp from native preview pipeline.
     */
    public native long getTimeStamp();

    /**
     * Get current zoom scale from native pipeline.
     */
    public native float getZoomScale();

    /**
     * Initialize native preview engine.
     * Parameter names improved for readability; order and types unchanged.
     */
    public native int init(
            int width,
            int height,
            int format,
            int rotation,
            String licensePath,
            String modelPath,
            String configPath,
            boolean isFrontCamera,
            boolean enableDebug,
            byte[] initData,
            int flags
    );

    /**
     * Process a frame through the native preview pipeline.
     */
    public native int process(int frameIndex, int[] input, int[] output, int[] meta);

    /** Reset native state. */
    public native int reset();

    /** Set preview parameters (kept as original signature). */
    public native int setPreviewParams(String key, String value);

    /**
     * Update face feature data (misspelling preserved: updataFfd)
     */
    public native int updataFfd(byte[] data);

    /** Update metadata parameters (misspelling preserved). */
    public native int updataMetaParams(byte[] data);

    /** Update preview parameters using a native pointer or timestamp. */
    public native int updataPreviewParams(long param);

    static {
        // Attempt to load the appropriate native library based on platform
        // and available product/system_ext libraries. Order and names are
        // preserved from the original decompiled logic.
        if (Util.isQcomPlatform()) {
            if (isFileExist("/product/lib64/libApsFaceBeautyPreviewProductJni.so")) {
                System.loadLibrary("ApsFaceBeautyPreviewProductJni");
            } else if (isFileExist("/system_ext/lib64/libApsFaceBeautyPreviewJni.qti.so")) {
                System.loadLibrary("ApsFaceBeautyPreviewJni.qti");
            } else {
                System.loadLibrary("ApsFaceBeautyPreviewJni");
            }
        }

        if (isFileExist("/product/lib64/libApsFaceBeautyPreviewProductJni.so")) {
            System.loadLibrary("ApsFaceBeautyPreviewProductJni");
        } else if (isFileExist("/system_ext/lib64/libApsFaceBeautyPreviewJni.trustonic.so")) {
            System.loadLibrary("ApsFaceBeautyPreviewJni.trustonic");
        } else {
            System.loadLibrary("ApsFaceBeautyPreviewJni");
        }
    }

    private static synchronized boolean isFileExist(String path) {
        if (TextUtils.isEmpty(path)) {
            throw new IllegalArgumentException("file path is empty!");
        }
        File file = new File(path);
        return file.exists() && file.length() != 0;
    }
}

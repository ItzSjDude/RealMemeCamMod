package com.anc.sdk;

import android.content.res.AssetManager;
import android.util.Log;
import com.oplus.exif.OplusExifTag;
import java.io.ByteArrayOutputStream;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;

/* JADX INFO: loaded from: classes.dex */
/**
 * High-level Java wrapper around the native ANC filter SDK.
 *
 * This class is a cleaned-up, readable version of the decompiled
 * implementation. No runtime behavior or public APIs have been
 * altered; only parameter names, formatting and documentation
 * were improved for maintainability.
 */
public class AncFilterApi {
    private static final String TAG = "AncFilterApi";

    private final AtomicLong handle = new AtomicLong(0);
    private final AtomicInteger mPendingLogLevel = new AtomicInteger(-1);
    private static final AncFilterApi sInstance = new AncFilterApi();
    private static final AtomicBoolean isSoLoaded = new AtomicBoolean(false);

    public static class ErrorCode {
        public static final int ANC_FILTER_OK = 0;
        public static final int ANC_FILTER_INVALID_ARGUMENT = 1;
        public static final int ANC_FILTER_INVALID_HANDLE = 2;
        public static final int ANC_FILTER_FAILURE = 3;
        public static final int ANC_FILTER_GL_COMPILING = 4;
    }

    public static class FilterInfo {
        public byte[] baseImageBuffer;
        public int baseImageHeight;
        public String baseImagePath;
        public int baseImageWidth;
        public int filterIndex;
        public byte[] lutBuffer;
        public int lutHeight;
        public String lutPath;
        public int lutWidth;
        public float speed;
    }

    public static class FilterType {
        public static final int ANC_FILTERT_KALEIDOSCOPE = 0;
        public static final int ANC_FILTERT_HEXAGON = 1;
        public static final int ANC_FILTERT_SPIRAL = 2;
        public static final int ANC_FILTERT_CONCENTRIC_CIRCLES = 3;
        public static final int ANC_FILTERT_POLYSPIN = 4;
        public static final int ANC_FILTERT_CELL_GRADIENTCOLOR = 5;
        public static final int ANC_FILTERT_CELL_GREENORANGE = 6;
        public static final int ANC_FILTERT_CELL_BLUEPINK = 7;
    }

    public static class ImageType {
        public static final int IMAGE_TYPE_NV21 = 0;
        public static final int IMAGE_TYPE_NV12 = 6;
    }

    public static class SDKLoadType {
        public static final int ANC_LOAD_TYPE_DLOEPN = 0;
        public static final int ANC_LOAD_TYPE_ANDROID_DLOPEN = 1;
        public static final int ANC_LOAD_TYPE_VNDKSUPPORT = 2;
    }

    /* Native method bindings (signatures preserved). */
    private native long nativeInitHandle(boolean useVndk, int loadType);

    private native int nativeProcess(long nativeHandle, int a, int b, int c, boolean flag1, boolean flag2, int d, int e, float f);

    private native int nativeProcessNV21(long nativeHandle, String filePath, int a, int b, int c);

    private native int nativeRelease(long nativeHandle);

    private native int nativeSetFilterInfo(long nativeHandle, FilterInfo filterInfo);

    private native int nativeSetLogLevel(int level);

    public native String nativeSdkVersion();

    public static AncFilterApi getInstance() {
        return sInstance;
    }

    /**
     * Initialize the native SDK. Parameter names clarified but behavior unchanged.
     *
     * @param useVndk boolean flag passed to native initializer
     * @param unusedLoadType this parameter is unused by original implementation
     * @return ErrorCode value
     */
    public int init(boolean useVndk, int unusedLoadType) {
        Log.e(TAG, "init in");
        if (this.handle.get() != 0) {
            return ErrorCode.ANC_FILTER_FAILURE;
        }
        if (!isSoLoaded.get()) {
            System.loadLibrary("AncFilter_jni");
            isSoLoaded.set(true);
        }
        long nativeHandle = nativeInitHandle(useVndk, 2);
        if (nativeHandle == 0) {
            return ErrorCode.ANC_FILTER_INVALID_ARGUMENT;
        }
        this.handle.set(nativeHandle);
        Log.e(TAG, "init out hdl: " + nativeHandle);
        return ErrorCode.ANC_FILTER_OK;
    }

    public int setLogLevel(int level) {
        if (!isSoLoaded.get()) {
            this.mPendingLogLevel.set(level);
            return -1;
        }
        nativeSetLogLevel(level);
        return 0;
    }

    public int setFilterInfo(FilterInfo filterInfo) {
        return nativeSetFilterInfo(this.handle.get(), filterInfo);
    }

    /**
     * Process a frame through native pipeline. Parameter names preserved as positional-only.
     */
    public int process(int a, int b, int c, boolean flag1, boolean flag2, int d, int e, float f) {
        Log.e(TAG, "process in");
        return nativeProcess(this.handle.get(), a, b, c, flag1, flag2, d, e, f);
    }

    public int processNV21(String filePath, int a, int b, int c) {
        Log.e(TAG, "processNV21 in");
        return nativeProcessNV21(this.handle.get(), filePath, a, b, c);
    }

    public int release() {
        Log.e(TAG, "release in");
        if (this.handle.get() == 0) {
            return ErrorCode.ANC_FILTER_INVALID_HANDLE;
        }
        int result = nativeRelease(this.handle.get());
        this.handle.set(0L);
        return result;
    }

    public String getVersion() {
        return !isSoLoaded.get() ? "" : nativeSdkVersion();
    }

    private static byte[] getFileContent(String path, AssetManager assetManager) {
        InputStream stream = null;
        boolean openedFromAssets = false;
        ByteArrayOutputStream out = new ByteArrayOutputStream();
        byte[] buffer = new byte[OplusExifTag.EXIF_TAG_SUPER_HIGH_RESOLUTION];

        if (assetManager != null) {
            try {
                stream = assetManager.open(path);
                openedFromAssets = true;
            } catch (IOException e) {
                Log.e(TAG, "fail to open " + path);
                openedFromAssets = false;
                stream = null;
            }
        }

        if (!openedFromAssets) {
            try {
                stream = new FileInputStream(path);
            } catch (IOException e) {
                return null;
            }
        }

        if (stream == null) {
            return null;
        }

        try {
            int read;
            while ((read = stream.read(buffer)) != -1) {
                out.write(buffer, 0, read);
            }
            stream.close();
            out.close();
            return out.toByteArray();
        } catch (IOException e) {
            return null;
        }
    }
}

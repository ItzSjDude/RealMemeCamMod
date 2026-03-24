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
public class AncFilterApi {
    static final String TAG = "AncFilterApi";
    private AtomicLong handle = new AtomicLong(0);
    private AtomicInteger mPendingLogLevel = new AtomicInteger(-1);
    private static AncFilterApi sInstance = new AncFilterApi();
    private static AtomicBoolean isSoLoaded = new AtomicBoolean(false);

    public static class ErrorCode {
        public static final int ANC_FILTER_FAILURE = 3;
        public static final int ANC_FILTER_GL_COMPILING = 4;
        public static final int ANC_FILTER_INVALID_ARGUMENT = 1;
        public static final int ANC_FILTER_INVALID_HANDLE = 2;
        public static final int ANC_FILTER_OK = 0;
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
        public static final int ANC_FILTERT_CELL_BLUEPINK = 7;
        public static final int ANC_FILTERT_CELL_GRADIENTCOLOR = 5;
        public static final int ANC_FILTERT_CELL_GREENORANGE = 6;
        public static final int ANC_FILTERT_CONCENTRIC_CIRCLES = 3;
        public static final int ANC_FILTERT_HEXAGON = 1;
        public static final int ANC_FILTERT_KALEIDOSCOPE = 0;
        public static final int ANC_FILTERT_POLYSPIN = 4;
        public static final int ANC_FILTERT_SPIRAL = 2;
    }

    public static class ImageType {
        public static final int IMAGE_TYPE_NV12 = 6;
        public static final int IMAGE_TYPE_NV21 = 0;
    }

    public static class SDKLoadType {
        public static final int ANC_LOAD_TYPE_ANDROID_DLOPEN = 1;
        public static final int ANC_LOAD_TYPE_DLOEPN = 0;
        public static final int ANC_LOAD_TYPE_VNDKSUPPORT = 2;
    }

    private native long nativeInitHandle(boolean z, int i);

    private native int nativeProcess(long j, int i, int i2, int i3, boolean z, boolean z2, int i4, int i5, float f);

    private native int nativeProcessNV21(long j, String str, int i, int i2, int i3);

    private native int nativeRelease(long j);

    private native int nativeSetFilterInfo(long j, FilterInfo filterInfo);

    private native int nativeSetLogLevel(int i);

    public native String nativeSdkVersion();

    public static AncFilterApi getInstance() {
        return sInstance;
    }

    public int init(boolean z, int i) {
        String str = TAG;
        Log.e(str, "init in");
        if (this.handle.get() != 0) {
            return 3;
        }
        if (!isSoLoaded.get()) {
            System.loadLibrary("AncFilter_jni");
            isSoLoaded.set(true);
        }
        long jNativeInitHandle = nativeInitHandle(z, 2);
        if (jNativeInitHandle == 0) {
            return 1;
        }
        this.handle.set(jNativeInitHandle);
        Log.e(str, "init out hdl: " + jNativeInitHandle);
        return 0;
    }

    public int setLogLevel(int i) {
        if (!isSoLoaded.get()) {
            this.mPendingLogLevel.set(i);
            return -1;
        }
        nativeSetLogLevel(i);
        return 0;
    }

    public int setFilterInfo(FilterInfo filterInfo) {
        return nativeSetFilterInfo(this.handle.get(), filterInfo);
    }

    public int process(int i, int i2, int i3, boolean z, boolean z2, int i4, int i5, float f) {
        Log.e(TAG, "process in");
        return nativeProcess(this.handle.get(), i, i2, i3, z, z2, i4, i5, f);
    }

    public int processNV21(String str, int i, int i2, int i3) {
        Log.e(TAG, "processNV21 in");
        return nativeProcessNV21(this.handle.get(), str, i, i2, i3);
    }

    public int release() {
        Log.e(TAG, "release in");
        if (this.handle.get() == 0) {
            return 2;
        }
        int iNativeRelease = nativeRelease(this.handle.get());
        this.handle.set(0L);
        return iNativeRelease;
    }

    public String getVersion() {
        return !isSoLoaded.get() ? "" : nativeSdkVersion();
    }

    private static byte[] getFileContent(String str, AssetManager assetManager) {
        InputStream inputStreamOpen;
        boolean z;
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byte[] bArr = new byte[OplusExifTag.EXIF_TAG_SUPER_HIGH_RESOLUTION];
        if (assetManager != null) {
            try {
                inputStreamOpen = assetManager.open(str);
                z = true;
            } catch (IOException unused) {
                Log.e(TAG, "fail to open " + str);
                z = false;
                inputStreamOpen = null;
            }
        } else {
            z = false;
            inputStreamOpen = null;
        }
        if (!z) {
            try {
                inputStreamOpen = new FileInputStream(str);
            } catch (IOException unused2) {
                return null;
            }
        }
        if (inputStreamOpen == null) {
            return null;
        }
        while (true) {
            try {
                int i = inputStreamOpen.read(bArr);
                if (i != -1) {
                    byteArrayOutputStream.write(bArr, 0, i);
                } else {
                    inputStreamOpen.close();
                    byteArrayOutputStream.close();
                    return byteArrayOutputStream.toByteArray();
                }
            } catch (IOException unused3) {
                return null;
            }
        }
    }
}

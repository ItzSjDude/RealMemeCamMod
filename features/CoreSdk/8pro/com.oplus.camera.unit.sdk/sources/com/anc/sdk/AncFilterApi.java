package com.anc.sdk;

import android.util.Log;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
/* loaded from: classes.dex */
public class AncFilterApi {
    static final String TAG = "AncFilterApi";
    private AtomicLong handle = new AtomicLong(0);
    private AtomicInteger mPendingLogLevel = new AtomicInteger(-1);
    private static AncFilterApi sInstance = new AncFilterApi();
    private static AtomicBoolean isSoLoaded = new AtomicBoolean(false);

    /* loaded from: classes.dex */
    public static class ErrorCode {
        public static final int ANC_FILTER_FAILURE = 3;
        public static final int ANC_FILTER_GL_COMPILING = 4;
        public static final int ANC_FILTER_INVALID_ARGUMENT = 1;
        public static final int ANC_FILTER_INVALID_HANDLE = 2;
        public static final int ANC_FILTER_OK = 0;
    }

    /* loaded from: classes.dex */
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

    /* loaded from: classes.dex */
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

    /* loaded from: classes.dex */
    public static class ImageType {
        public static final int IMAGE_TYPE_NV12 = 6;
        public static final int IMAGE_TYPE_NV21 = 0;
    }

    /* loaded from: classes.dex */
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
        long nativeInitHandle = nativeInitHandle(z, 2);
        if (nativeInitHandle == 0) {
            return 1;
        }
        this.handle.set(nativeInitHandle);
        Log.e(str, "init out hdl: " + nativeInitHandle);
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
        int nativeRelease = nativeRelease(this.handle.get());
        this.handle.set(0L);
        return nativeRelease;
    }

    public String getVersion() {
        return !isSoLoaded.get() ? "" : nativeSdkVersion();
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0036 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:21:0x002d A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0037 A[EXC_TOP_SPLITTER, LOOP:0: B:25:0x0037->B:16:0x003e, LOOP_START, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static byte[] getFileContent(java.lang.String r6, android.content.res.AssetManager r7) {
        /*
            java.io.ByteArrayOutputStream r0 = new java.io.ByteArrayOutputStream
            r0.<init>()
            r1 = 8192(0x2000, float:1.148E-41)
            byte[] r1 = new byte[r1]
            r2 = 0
            r3 = 0
            if (r7 == 0) goto L29
            java.io.InputStream r7 = r7.open(r6)     // Catch: java.io.IOException -> L13
            r4 = 1
            goto L2b
        L13:
            java.lang.String r7 = com.anc.sdk.AncFilterApi.TAG
            java.lang.StringBuilder r4 = new java.lang.StringBuilder
            r4.<init>()
            java.lang.String r5 = "fail to open "
            r4.append(r5)
            r4.append(r6)
            java.lang.String r4 = r4.toString()
            android.util.Log.e(r7, r4)
        L29:
            r4 = r2
            r7 = r3
        L2b:
            if (r4 != 0) goto L34
            java.io.FileInputStream r7 = new java.io.FileInputStream     // Catch: java.io.IOException -> L33
            r7.<init>(r6)     // Catch: java.io.IOException -> L33
            goto L34
        L33:
            return r3
        L34:
            if (r7 != 0) goto L37
            return r3
        L37:
            int r6 = r7.read(r1)     // Catch: java.io.IOException -> L4d
            r4 = -1
            if (r6 == r4) goto L42
            r0.write(r1, r2, r6)     // Catch: java.io.IOException -> L4d
            goto L37
        L42:
            r7.close()     // Catch: java.io.IOException -> L4d
            r0.close()     // Catch: java.io.IOException -> L4d
            byte[] r6 = r0.toByteArray()
            return r6
        L4d:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.anc.sdk.AncFilterApi.getFileContent(java.lang.String, android.content.res.AssetManager):byte[]");
    }
}

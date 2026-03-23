package com.anc.humansdk;

import android.graphics.Bitmap;
import android.util.Log;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
/* loaded from: classes.dex */
public class HumanEffectBokehApi {
    static final String TAG = "HumanEffectBokehApi";
    private static HumanEffectBokehApi sInstance = new HumanEffectBokehApi();
    private static AtomicBoolean isSoLoaded = new AtomicBoolean(false);
    private AtomicInteger mPendingLogLevel = new AtomicInteger(-1);
    private AtomicLong handle = new AtomicLong(0);
    private AtomicBoolean isInitializing = new AtomicBoolean(false);
    int mWidth = 0;
    int mHeight = 0;

    /* loaded from: classes.dex */
    public static class ErrorCode {
        public static final int ANC_HUM_FAILURE = 3;
        public static final int ANC_HUM_GL_COMPILING = 7;
        public static final int ANC_HUM_INVALID_ARGUMENT = 1;
        public static final int ANC_HUM_INVALID_HANDLE = 2;
        public static final int ANC_HUM_MORE_PERSON = 6;
        public static final int ANC_HUM_NO_PERSON = 4;
        public static final int ANC_HUM_OK = 0;
        public static final int ANC_HUM_TOO_FAR = 5;
    }

    public static String getErrorMessage(int i) {
        return "errorMessage";
    }

    private native int nativeDetect(long j, byte[] bArr, int i, int i2, int i3);

    private native int nativeDetectTextureIn(long j, int i, int i2, int i3, int i4, float f, float f2, boolean z);

    private native int nativeDetectTextureInWithSeg(long j, int i, int i2, int i3, int i4, float f, float f2, boolean z, boolean z2);

    private native long nativeInitConfigHandle(HumanEffectBokehConfig humanEffectBokehConfig);

    private native long nativeInitHandle(byte[] bArr, String str, boolean z);

    private native int nativeProcess(long j, int i, int i2, float f, boolean z, boolean z2);

    private native int nativeProcessImage(long j, Bitmap bitmap, Bitmap bitmap2, float f);

    private native int nativeProcessNV21(long j, byte[] bArr, int i, int i2, byte[] bArr2, float f);

    private native int nativeProcessNV21TextureOutput(long j, byte[] bArr, int i, int i2, int i3, float f);

    private native int nativeProcessTextureInTextureOutput(long j, int i, int i2, int i3, int i4, float f);

    private native int nativeProcessYUV(long j, byte[] bArr, int i, int i2, int i3, float f);

    private native int nativeRelease(long j);

    private native int nativeSetLogLevel(int i);

    public native String nativeSdkVersion();

    public int initByConfig(HumanEffectBokehConfig humanEffectBokehConfig) {
        if (humanEffectBokehConfig == null) {
            Log.e(TAG, "config invalid!");
            return 1;
        } else if ((humanEffectBokehConfig.modelData == null || humanEffectBokehConfig.modelData.length == 0) && (humanEffectBokehConfig.modelPath == null || humanEffectBokehConfig.modelPath.trim().isEmpty())) {
            Log.e(TAG, "config has no valid model info!");
            return 1;
        } else if (humanEffectBokehConfig.runtime != NNRuntime.RUNTIME_UNKNOW.value() && humanEffectBokehConfig.runtime < NNRuntime.RUNTIME_RANGE.value()) {
            if (this.handle.get() != 0) {
                return 3;
            }
            if (!isSoLoaded.get()) {
                System.loadLibrary("AncHumBokeh-jni");
                isSoLoaded.set(true);
            }
            if (humanEffectBokehConfig.cachePath == null) {
                humanEffectBokehConfig.cachePath = "";
            }
            if (humanEffectBokehConfig.nativeLibPath == null) {
                humanEffectBokehConfig.nativeLibPath = "";
            }
            if (humanEffectBokehConfig.modelData == null || humanEffectBokehConfig.modelData.length == 0) {
                humanEffectBokehConfig.modelData = getFileContent(humanEffectBokehConfig.modelPath, humanEffectBokehConfig.assetsMgr);
            }
            if (humanEffectBokehConfig.modelData != null && humanEffectBokehConfig.modelData.length != 0) {
                long nativeInitConfigHandle = nativeInitConfigHandle(humanEffectBokehConfig);
                if (nativeInitConfigHandle == 0) {
                    return 1;
                }
                this.handle.set(nativeInitConfigHandle);
                return 0;
            }
            Log.e(TAG, "load model from fs failed!");
            return 1;
        } else {
            Log.e(TAG, "please set valid nn runtime!");
            return 1;
        }
    }

    public int setLogLevel(int i) {
        if (!isSoLoaded.get()) {
            this.mPendingLogLevel.set(i);
            return -1;
        }
        nativeSetLogLevel(i);
        return 0;
    }

    public int process(int i, int i2, int i3, int[] iArr, int[] iArr2, float f, int i4, int i5, float f2, float f3, int i6, int i7) {
        return process(i, i2, i3, iArr, iArr2, f, i4, i5, f2, f3, i6, i7, false);
    }

    public int process(int i, int i2, int i3, int[] iArr, int[] iArr2, float f, int i4, int i5, float f2, float f3, int i6, int i7, boolean z) {
        int detectTextureIn = detectTextureIn(i, i6, i7, i4, f2, f3, z);
        return detectTextureIn == 0 ? process(i, i2, f, i5 != 1, z) : detectTextureIn;
    }

    public int processYUVRotation(byte[] bArr, int i, int i2, int i3, float f) {
        if (this.handle.get() == 0) {
            return 2;
        }
        if (bArr == null) {
            return 1;
        }
        return nativeProcessYUV(this.handle.get(), bArr, i, i2, i3, f);
    }

    public int release() {
        if (this.handle.get() == 0) {
            return 2;
        }
        int nativeRelease = nativeRelease(this.handle.get());
        this.handle.set(0L);
        return nativeRelease;
    }

    public static HumanEffectBokehApi getInstance() {
        return sInstance;
    }

    private static byte[] getPixelsBGR(Bitmap bitmap) {
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        int i = width * height;
        int[] iArr = new int[i];
        bitmap.getPixels(iArr, 0, width, 0, 0, width, height);
        byte[] bArr = new byte[i * 3];
        for (int i2 = 0; i2 < i; i2++) {
            int i3 = iArr[i2];
            int i4 = i2 * 3;
            bArr[i4 + 0] = (byte) (i3 & 255);
            bArr[i4 + 1] = (byte) ((i3 >> 8) & 255);
            bArr[i4 + 2] = (byte) ((i3 >> 16) & 255);
        }
        return bArr;
    }

    private static void setPixlesBGR(Bitmap bitmap, byte[] bArr, int i, int i2) {
        int i3 = i * i2;
        int[] iArr = new int[i3];
        for (int i4 = 0; i4 < i3; i4++) {
            int i5 = i4 * 3;
            iArr[i4] = (-16777216) | (bArr[i5 + 0] & 255) | ((bArr[i5 + 1] << 8) & 65280) | ((bArr[i5 + 2] << 16) & 16711680);
        }
        bitmap.setPixels(iArr, 0, i, 0, 0, i, i2);
    }

    private static void setPixlesGray(Bitmap bitmap, byte[] bArr, int i, int i2) {
        int i3 = i * i2;
        int[] iArr = new int[i3];
        for (int i4 = 0; i4 < i3; i4++) {
            iArr[i4] = (-16777216) | (bArr[i4] & 255) | ((bArr[i4] << 8) & 65280) | ((bArr[i4] << 16) & 16711680);
        }
        bitmap.setPixels(iArr, 0, i, 0, 0, i, i2);
    }

    public String getVersion() {
        return !isSoLoaded.get() ? "" : nativeSdkVersion();
    }

    public int process(int i, int i2, int i3, int[] iArr, int[] iArr2, float f, int i4, int i5, float f2, float f3, int i6, int i7, int i8) {
        return process(i, i2, i3, iArr, iArr2, f, i4, i5, f2, f3, i6, i7, i8, false);
    }

    public int process(int i, int i2, int i3, int[] iArr, int[] iArr2, float f, int i4, int i5, float f2, float f3, int i6, int i7, int i8, boolean z) {
        int detectTextureInSeg = detectTextureInSeg(i, i6, i7, i4, f2, f3, i8 > 0, z);
        boolean z2 = i5 != 1;
        if (detectTextureInSeg != 0 || i8 <= 1) {
            return 3;
        }
        return process(i, i2, f, z2, z);
    }

    public int detect(byte[] bArr, int i, int i2, int i3) {
        if (this.handle.get() == 0) {
            return 2;
        }
        return nativeDetect(this.handle.get(), bArr, i, i2, i3);
    }

    public int detectTextureIn(int i, int i2, int i3, int i4, float f, float f2, boolean z) {
        if (this.handle.get() == 0) {
            return 2;
        }
        return nativeDetectTextureIn(this.handle.get(), i, i2, i3, i4, f, f2, z);
    }

    public int detectTextureInSeg(int i, int i2, int i3, int i4, float f, float f2, boolean z, boolean z2) {
        if (this.handle.get() == 0) {
            return 2;
        }
        return nativeDetectTextureInWithSeg(this.handle.get(), i, i2, i3, i4, f, f2, z, z2);
    }

    public int process(int i, int i2, float f, boolean z, boolean z2) {
        if (this.handle.get() == 0) {
            return 2;
        }
        return nativeProcess(this.handle.get(), i, i2, f, z, z2);
    }

    public int processYUV(byte[] bArr, int i, int i2, float f) {
        if (this.handle.get() == 0) {
            return 2;
        }
        return nativeProcessYUV(this.handle.get(), bArr, i, i2, 0, f);
    }

    public int processNV21(byte[] bArr, int i, int i2, byte[] bArr2, float f) {
        if (this.handle.get() == 0) {
            return 2;
        }
        return nativeProcessNV21(this.handle.get(), bArr, i, i2, bArr2, (f * 20.0f) + 20.0f);
    }

    public int processNV21TextureOutput(byte[] bArr, int i, int i2, int i3, float f) {
        if (this.handle.get() == 0) {
            return 2;
        }
        return nativeProcessNV21TextureOutput(this.handle.get(), bArr, i, i2, i3, (f * 20.0f) + 20.0f);
    }

    public int processTextureInTextureOutput(int i, int i2, int i3, int i4, float f) {
        if (this.handle.get() == 0) {
            return 2;
        }
        return nativeProcessTextureInTextureOutput(this.handle.get(), i, i2, i3, i4, (f * 20.0f) + 20.0f);
    }

    public int processImage(Bitmap bitmap, Bitmap bitmap2, float f) {
        if (this.handle.get() == 0) {
            return 2;
        }
        return nativeProcessImage(this.handle.get(), bitmap, bitmap2, f);
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
            java.lang.String r7 = com.anc.humansdk.HumanEffectBokehApi.TAG
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
        throw new UnsupportedOperationException("Method not decompiled: com.anc.humansdk.HumanEffectBokehApi.getFileContent(java.lang.String, android.content.res.AssetManager):byte[]");
    }
}

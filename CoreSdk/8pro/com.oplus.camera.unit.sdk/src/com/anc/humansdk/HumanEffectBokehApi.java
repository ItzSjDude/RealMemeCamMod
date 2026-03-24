package com.anc.humansdk;

import android.content.res.AssetManager;
import android.graphics.Bitmap;
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
public class HumanEffectBokehApi {
    static final String TAG = "HumanEffectBokehApi";
    private static HumanEffectBokehApi sInstance = new HumanEffectBokehApi();
    private static AtomicBoolean isSoLoaded = new AtomicBoolean(false);
    private AtomicInteger mPendingLogLevel = new AtomicInteger(-1);
    private AtomicLong handle = new AtomicLong(0);
    private AtomicBoolean isInitializing = new AtomicBoolean(false);
    int mWidth = 0;
    int mHeight = 0;

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
        }
        if ((humanEffectBokehConfig.modelData == null || humanEffectBokehConfig.modelData.length == 0) && (humanEffectBokehConfig.modelPath == null || humanEffectBokehConfig.modelPath.trim().isEmpty())) {
            Log.e(TAG, "config has no valid model info!");
            return 1;
        }
        if (humanEffectBokehConfig.runtime == NNRuntime.RUNTIME_UNKNOW.value() || humanEffectBokehConfig.runtime >= NNRuntime.RUNTIME_RANGE.value()) {
            Log.e(TAG, "please set valid nn runtime!");
            return 1;
        }
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
            long jNativeInitConfigHandle = nativeInitConfigHandle(humanEffectBokehConfig);
            if (jNativeInitConfigHandle == 0) {
                return 1;
            }
            this.handle.set(jNativeInitConfigHandle);
            return 0;
        }
        Log.e(TAG, "load model from fs failed!");
        return 1;
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
        int iDetectTextureIn = detectTextureIn(i, i6, i7, i4, f2, f3, z);
        return iDetectTextureIn == 0 ? process(i, i2, f, i5 != 1, z) : iDetectTextureIn;
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
        int iNativeRelease = nativeRelease(this.handle.get());
        this.handle.set(0L);
        return iNativeRelease;
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
            byte b = bArr[i4];
            iArr[i4] = (-16777216) | (b & 255) | ((b << 8) & 65280) | ((b << 16) & 16711680);
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
        int iDetectTextureInSeg = detectTextureInSeg(i, i6, i7, i4, f2, f3, i8 > 0, z);
        boolean z2 = i5 != 1;
        if (iDetectTextureInSeg != 0 || i8 <= 1) {
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

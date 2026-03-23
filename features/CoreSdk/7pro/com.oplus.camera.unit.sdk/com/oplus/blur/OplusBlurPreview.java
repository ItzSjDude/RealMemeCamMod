package com.oplus.blur;

import com.common.Util;
/* loaded from: classes.dex */
public class OplusBlurPreview {
    public static final long INVALID_HANDLE = 0;
    public static final int RESULT_ERROR = -1;
    private static OplusBlurPreview sInstance;
    public long mPreviewBokehHandle = 0;
    public int[] mMaskSize = new int[1];

    public native int nativeBokehPreviewDestroy(long j);

    public native int nativeBokehPreviewGetMaskTexture(long j, int i, byte[] bArr, int[] iArr, boolean z);

    public native String nativeBokehPreviewGetVersion(long j);

    public native long nativeBokehPreviewInit(int i, int i2, int i3);

    public native int nativeBokehPreviewProcess(long j, int i, int i2, int i3, int i4, int[] iArr);

    public native int nativeBokehPreviewSetDebugMask(long j, boolean z);

    public native int nativeBokehPreviewSetParam(long j, int i, float f);

    public native int nativeBokehPreviewTextureCopy(long j, int i, int[] iArr, boolean z);

    public native int nativeBokehPreviewTextureResize(long j, int i, int i2, int i3, int i4, boolean z);

    public native int nativeSegExecute(byte[] bArr, byte[] bArr2, int i, int i2, int i3, int i4, int i5, int[] iArr, int[] iArr2, int[] iArr3, int[] iArr4, int[] iArr5);

    public native String nativeSegGetVersion();

    public native int nativeSegInit(String str, String str2, String str3, String str4, int i, int i2, int[] iArr);

    public native int nativeSegUnInit();

    public native int nativeSetLogLevel(int i);

    private OplusBlurPreview() {
    }

    public static OplusBlurPreview getInstance() {
        if (sInstance == null) {
            synchronized (OplusBlurPreview.class) {
                if (sInstance == null) {
                    sInstance = new OplusBlurPreview();
                }
            }
        }
        return sInstance;
    }

    public long bokehPreviewInit(int i, int i2) {
        if (0 == this.mPreviewBokehHandle) {
            this.mPreviewBokehHandle = nativeBokehPreviewInit(i, i2, this.mMaskSize[0]);
        } else {
            bokehPreviewDestory();
            this.mPreviewBokehHandle = nativeBokehPreviewInit(i, i2, this.mMaskSize[0]);
        }
        return this.mPreviewBokehHandle;
    }

    public int bokehPreviewProcess(int i, int i2, int i3, int i4, int[] iArr) {
        if (0 == this.mPreviewBokehHandle || iArr == null) {
            return -1;
        }
        return nativeBokehPreviewProcess(this.mPreviewBokehHandle, i, i2, i3, i4, iArr);
    }

    public int bokehPreviewGetMaskTexture(byte[] bArr, int[] iArr, boolean z) {
        if (0 != this.mPreviewBokehHandle) {
            return nativeBokehPreviewGetMaskTexture(this.mPreviewBokehHandle, this.mMaskSize[0], bArr, iArr, z);
        }
        return -1;
    }

    public String bokehPreviewGetVersion() {
        if (0 != this.mPreviewBokehHandle) {
            return nativeBokehPreviewGetVersion(this.mPreviewBokehHandle);
        }
        return null;
    }

    public int bokehPreviewSetParam(int i, float f) {
        if (0 != this.mPreviewBokehHandle) {
            return nativeBokehPreviewSetParam(this.mPreviewBokehHandle, i, f);
        }
        return -1;
    }

    public int bokehPreviewTextureCopy(int i, int[] iArr, boolean z) {
        if (0 != this.mPreviewBokehHandle) {
            return nativeBokehPreviewTextureCopy(this.mPreviewBokehHandle, i, iArr, z);
        }
        return -1;
    }

    public int bokehPreviewTextureResize(int i, int i2, int i3, int i4, boolean z) {
        if (0 != this.mPreviewBokehHandle) {
            return nativeBokehPreviewTextureResize(this.mPreviewBokehHandle, i, i2, i3, i4, z);
        }
        return -1;
    }

    public int bokehPreviewSetDebug(boolean z) {
        if (0 != this.mPreviewBokehHandle) {
            return nativeBokehPreviewSetDebugMask(this.mPreviewBokehHandle, z);
        }
        return -1;
    }

    public int bokehPreviewSetDebugMask(boolean z) {
        if (0 != this.mPreviewBokehHandle) {
            return nativeBokehPreviewSetDebugMask(this.mPreviewBokehHandle, z);
        }
        return -1;
    }

    public int bokehPreviewDestory() {
        if (0 != this.mPreviewBokehHandle) {
            int nativeBokehPreviewDestroy = nativeBokehPreviewDestroy(this.mPreviewBokehHandle);
            this.mPreviewBokehHandle = 0L;
            return nativeBokehPreviewDestroy;
        }
        return -1;
    }

    public String segGetVersion() {
        return nativeSegGetVersion();
    }

    public int[] segInit(String str, String str2, String str3, String str4, int i, int i2) {
        return new int[]{nativeSegInit(str, str2, str3, str4, i, i2, this.mMaskSize), this.mMaskSize[0]};
    }

    public int segExecute(byte[] bArr, byte[] bArr2, int i, int i2, int i3, int i4, int i5, int[] iArr, int[] iArr2, int[] iArr3, int[] iArr4, int[] iArr5) {
        return nativeSegExecute(bArr, bArr2, i, i2, i3, i4, i5, iArr, iArr2, iArr3, iArr4, iArr5);
    }

    public int segUnInit() {
        return nativeSegUnInit();
    }

    public int segLogLevel(int i) {
        return nativeSetLogLevel(i);
    }

    static {
        Util.loadJNILibrary("OplusBlurPreviewJNI");
    }
}

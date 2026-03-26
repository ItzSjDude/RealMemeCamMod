package com.oplus.blur;

import com.common.Util;

/* JADX INFO: loaded from: classes.dex */
public class OplusBlurPreview {
    public static final long INVALID_HANDLE = 0;
    public static final int RESULT_ERROR = -1;
    private static volatile OplusBlurPreview sInstance;
    public long mPreviewBokehHandle = 0;
    public int[] mMaskSize = new int[1];

    public native int nativeBokehPreviewDestroy(long handle);

    public native int nativeBokehPreviewGetMaskTexture(long handle, int maskSize, byte[] maskData, int[] textureId,
            boolean vertical);

    public native String nativeBokehPreviewGetVersion(long handle);

    public native long nativeBokehPreviewInit(int width, int height, int maskSize);

    public native int nativeBokehPreviewProcess(long handle, int textureId, int width, int height, int orientation,
            int[] outputTextureId);

    public native int nativeBokehPreviewSetDebugMask(long handle, boolean debug);

    public native int nativeBokehPreviewSetParam(long handle, int paramId, float value);

    public native int nativeBokehPreviewTextureCopy(long handle, int textureId, int[] outputTextureId,
            boolean vertical);

    public native int nativeBokehPreviewTextureResize(long handle, int textureId, int width, int height,
            int orientation, boolean vertical);

    public native int nativeSegExecute(byte[] inputData, byte[] outputData, int width, int height, int format,
            int orientation, int category, int[] rect, int[] score, int[] label, int[] maskWidth, int[] maskHeight);

    public native String nativeSegGetVersion();

    public native int nativeSegInit(String modelPath, String configPath, String paramPath, String extraPath, int width,
            int height, int[] maskSize);

    public native int nativeSegUnInit();

    public native int nativeSetLogLevel(int level);

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

    public long bokehPreviewInit(int width, int height) {
        if (0 == this.mPreviewBokehHandle) {
            this.mPreviewBokehHandle = nativeBokehPreviewInit(width, height, this.mMaskSize[0]);
        } else {
            bokehPreviewDestory();
            this.mPreviewBokehHandle = nativeBokehPreviewInit(width, height, this.mMaskSize[0]);
        }
        return this.mPreviewBokehHandle;
    }

    public int bokehPreviewProcess(int textureId, int width, int height, int orientation, int[] outputTextureId) {
        long handle = this.mPreviewBokehHandle;
        if (0 == handle || outputTextureId == null) {
            return -1;
        }
        return nativeBokehPreviewProcess(handle, textureId, width, height, orientation, outputTextureId);
    }

    public int bokehPreviewGetMaskTexture(byte[] maskData, int[] textureId, boolean vertical) {
        long handle = this.mPreviewBokehHandle;
        if (0 != handle) {
            return nativeBokehPreviewGetMaskTexture(handle, this.mMaskSize[0], maskData, textureId, vertical);
        }
        return -1;
    }

    public String bokehPreviewGetVersion() {
        long handle = this.mPreviewBokehHandle;
        if (0 != handle) {
            return nativeBokehPreviewGetVersion(handle);
        }
        return null;
    }

    public int bokehPreviewSetParam(int paramId, float value) {
        long handle = this.mPreviewBokehHandle;
        if (0 != handle) {
            return nativeBokehPreviewSetParam(handle, paramId, value);
        }
        return -1;
    }

    public int bokehPreviewTextureCopy(int textureId, int[] outputTextureId, boolean vertical) {
        long handle = this.mPreviewBokehHandle;
        if (0 != handle) {
            return nativeBokehPreviewTextureCopy(handle, textureId, outputTextureId, vertical);
        }
        return -1;
    }

    public int bokehPreviewTextureResize(int textureId, int width, int height, int orientation, boolean vertical) {
        long handle = this.mPreviewBokehHandle;
        if (0 != handle) {
            return nativeBokehPreviewTextureResize(handle, textureId, width, height, orientation, vertical);
        }
        return -1;
    }

    public int bokehPreviewSetDebug(boolean debug) {
        long handle = this.mPreviewBokehHandle;
        if (0 != handle) {
            return nativeBokehPreviewSetDebugMask(handle, debug);
        }
        return -1;
    }

    public int bokehPreviewSetDebugMask(boolean debug) {
        long handle = this.mPreviewBokehHandle;
        if (0 != handle) {
            return nativeBokehPreviewSetDebugMask(handle, debug);
        }
        return -1;
    }

    public int bokehPreviewDestory() {
        long handle = this.mPreviewBokehHandle;
        if (0 == handle) {
            return -1;
        }
        int result = nativeBokehPreviewDestroy(handle);
        this.mPreviewBokehHandle = 0L;
        return result;
    }

    public String segGetVersion() {
        return nativeSegGetVersion();
    }

    public int[] segInit(String modelPath, String configPath, String paramPath, String extraPath, int width,
            int height) {
        return new int[] { nativeSegInit(modelPath, configPath, paramPath, extraPath, width, height, this.mMaskSize),
                this.mMaskSize[0] };
    }

    public int segExecute(byte[] inputData, byte[] outputData, int width, int height, int format, int orientation,
            int category, int[] rect, int[] score, int[] label, int[] maskWidth, int[] maskHeight) {
        return nativeSegExecute(inputData, outputData, width, height, format, orientation, category, rect, score, label,
                maskWidth, maskHeight);
    }

    public int segUnInit() {
        return nativeSegUnInit();
    }

    public int segLogLevel(int level) {
        return nativeSetLogLevel(level);
    }

    static {
        Util.loadJNILibrary("OplusBlurPreviewJNI");
    }
}

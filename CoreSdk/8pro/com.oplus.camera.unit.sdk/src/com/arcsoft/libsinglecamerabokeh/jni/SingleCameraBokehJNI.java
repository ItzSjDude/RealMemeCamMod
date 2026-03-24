package com.arcsoft.libsinglecamerabokeh.jni;

/* JADX INFO: loaded from: classes.dex */
public class SingleCameraBokehJNI {
    public static final int CAMERA_TYPE_BACK = 0;
    public static final int CAMERA_TYPE_FRONT = 1;
    public static final int PLATFORM_QC_7150 = 1;
    public static final int PLATFORM_QC_8150 = 2;
    public static final int PLATFORM_QC_DEFAULT = 0;
    public static final int PREVIEW_MODE = 2;
    private static final String TAG = "ArcSoft_SingleCameraBokehJNI";
    private static volatile SingleCameraBokehJNI sInstance = null;
    private long mGlobalPtr = 0;

    private native int native_forceUpdateFrame(long j, int i);

    private native String native_getVersion();

    private native int native_init(SinCamVBInitData sinCamVBInitData);

    private native int native_process(long j, SinCamVBProcessData sinCamVBProcessData);

    private native int native_release(long j);

    static {
        System.loadLibrary("mpbase");
        System.loadLibrary("single_camera_bokeh_native");
    }

    public static SingleCameraBokehJNI getInstance() {
        if (sInstance == null) {
            synchronized (SingleCameraBokehJNI.class) {
                if (sInstance == null) {
                    sInstance = new SingleCameraBokehJNI();
                }
            }
        }
        return sInstance;
    }

    public String getVersion() {
        return native_getVersion();
    }

    public int init(int i, int i2, int i3, int i4, int i5, int i6, int i7) {
        return native_init(new SinCamVBInitData(i, i2, i3, i4, i5, i6, i7));
    }

    public int process(int i, int[] iArr, int i2, int[] iArr2, int[] iArr3, int i3, int i4) {
        long j = this.mGlobalPtr;
        if (0 != j) {
            return native_process(j, new SinCamVBProcessData(i, iArr, i2, iArr2, iArr3, i3, i4));
        }
        return 2;
    }

    public int release() {
        long j = this.mGlobalPtr;
        if (0 == j) {
            return 2;
        }
        int iNative_release = native_release(j);
        this.mGlobalPtr = 0L;
        return iNative_release;
    }

    public int forceUpdateFrame(int i) {
        long j = this.mGlobalPtr;
        if (0 != j) {
            return native_forceUpdateFrame(j, i);
        }
        return 2;
    }

    public static class SinCamVBProcessData {
        private int m_BlurLevel;
        private int m_FaceCount;
        private int[] m_FaceRect;
        private int m_Orientation;
        private int[] m_OutTexture;
        private int[] m_RefocusRect;
        private int m_SrcTexture;

        public SinCamVBProcessData(int i, int[] iArr, int i2, int[] iArr2, int[] iArr3, int i3, int i4) {
            this.m_SrcTexture = i;
            this.m_OutTexture = iArr;
            this.m_FaceCount = i2;
            this.m_FaceRect = iArr2;
            this.m_RefocusRect = iArr3;
            this.m_BlurLevel = i3;
            this.m_Orientation = i4;
        }
    }

    public static class SinCamVBInitData {
        private int m_CameraType;
        private int m_Format;
        private int m_ModelInit;
        private int m_OutHeight;
        private int m_OutWidth;
        private int m_SrcHeight;
        private int m_SrcWidth;

        public SinCamVBInitData(int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            this.m_SrcWidth = i;
            this.m_SrcHeight = i2;
            this.m_OutWidth = i3;
            this.m_OutHeight = i4;
            this.m_Format = i5;
            this.m_CameraType = i6;
            this.m_ModelInit = i7;
        }
    }
}

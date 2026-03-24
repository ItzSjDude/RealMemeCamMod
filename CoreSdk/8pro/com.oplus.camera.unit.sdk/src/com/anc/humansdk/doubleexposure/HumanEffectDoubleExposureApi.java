package com.anc.humansdk.doubleexposure;

import android.hardware.HardwareBuffer;
import android.util.Log;
import com.common.Util;
import com.oplus.exif.OplusExifTag;
import java.io.ByteArrayOutputStream;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;

/* JADX INFO: loaded from: classes.dex */
public class HumanEffectDoubleExposureApi {
    static final String TAG = "HumanEffectDoubleExposureApi";
    static final boolean DEBUG = Log.isLoggable("HumanEffectDoubleExposureApi", 3);
    private static HumanEffectDoubleExposureApi sInstance = new HumanEffectDoubleExposureApi();
    private static AtomicBoolean isSoLoaded = new AtomicBoolean(false);
    private AtomicInteger mPendingLogLevel = new AtomicInteger(-1);
    protected AtomicLong handle = new AtomicLong(0);

    public enum CameraType {
        CAMERA_TYPE_REAR,
        CAMERA_TYPE_FRONT
    }

    public enum ImageType {
        ANC_HUM_IMG_NV21,
        ANC_HUM_IMG_BGR,
        ANC_HUM_IMG_RGB,
        ANC_HUM_IMG_RGBA,
        ANC_HUM_IMG_DEPTH,
        ANC_HUM_IMG_GREYSCALE,
        ANC_HUM_IMG_NV12
    }

    private native int nativeAttachGl(long j);

    private native long nativeInitHandle(HumanEffectDoubleExposureConfig humanEffectDoubleExposureConfig);

    private native int nativeProcessFrame(long j, byte[] bArr, byte[] bArr2, int i, int i2, int i3, int i4, int i5, int i6);

    private native int nativeProcessFrameInTextureOut(long j, byte[] bArr, int i, int i2, boolean z, int i3, int i4, int i5, int i6, int i7, int i8, boolean z2, int i9, int i10);

    private native int nativeProcessHardwareBufferInTextureOut(long j, HardwareBuffer hardwareBuffer, int i, int i2, boolean z, int i3, int i4, int i5, int i6, int i7, int i8, int i9, int i10, int i11, boolean z2);

    private native int nativeProcessTexture(long j, int i, int i2, int i3, int i4, int i5, boolean z);

    private native int nativeProcessTextureAndHardwareBufferInTextureOut(long j, int i, boolean z, HardwareBuffer hardwareBuffer, int i2, int i3, boolean z2, int i4, int i5, int i6, int i7, int i8, int i9, int i10, int i11, int i12, boolean z3);

    private native int nativeProcessTextures(long j, int i, boolean z, int i2, boolean z2, int i3, int i4, int i5, int i6, int i7, int i8, int i9);

    private native int nativeRelease(long j);

    private native String nativeSdkVersion();

    private native int nativeSetLogLevel(int i);

    private native int nativeSetParams(long j, HumanVideoDoubleExposureParams humanVideoDoubleExposureParams);

    public int initByConfig(HumanEffectDoubleExposureConfig humanEffectDoubleExposureConfig) {
        if (DEBUG) {
            String str = TAG;
            StringBuilder sb = new StringBuilder();
            sb.append("init API by BuildNumber: 350 isRealTime: ");
            sb.append(humanEffectDoubleExposureConfig != null ? humanEffectDoubleExposureConfig.toString() : " null config");
            Log.i(str, sb.toString());
        } else {
            Log.e(TAG, "init API by config BuildNumber: 350");
        }
        if (this.handle.get() != 0) {
            return 3;
        }
        if (humanEffectDoubleExposureConfig != null && humanEffectDoubleExposureConfig.model_data != null) {
            if (!isSoLoaded.get()) {
                System.loadLibrary("AncHumanDoubleExposure-jni");
                isSoLoaded.set(true);
            }
            if (humanEffectDoubleExposureConfig.cache_path == null) {
                humanEffectDoubleExposureConfig.cache_path = "";
            }
            if (humanEffectDoubleExposureConfig.native_lib_path == null) {
                humanEffectDoubleExposureConfig.native_lib_path = "";
            }
            this.handle.set(nativeInitHandle(humanEffectDoubleExposureConfig));
            int andSet = this.mPendingLogLevel.getAndSet(-1);
            if (andSet >= 0) {
                nativeSetLogLevel(andSet);
            }
            Log.e(TAG, "log level " + andSet);
            return this.handle.get() == 0 ? 3 : 0;
        }
        Log.e(TAG, "config invalid!");
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

    public int setParams(HumanVideoDoubleExposureParams humanVideoDoubleExposureParams) {
        if (this.handle.get() != 0 && humanVideoDoubleExposureParams != null) {
            return nativeSetParams(this.handle.get(), humanVideoDoubleExposureParams);
        }
        Log.e(TAG, "setParams: handle is invalid!");
        return 2;
    }

    public int process(HumanProcessTextureRequest humanProcessTextureRequest, HumanProcessTexureResult humanProcessTexureResult) {
        if (this.handle.get() == 0) {
            Log.e(TAG, "process: handle is invalid!");
            return 2;
        }
        if (humanProcessTextureRequest == null || humanProcessTexureResult == null || !humanProcessTextureRequest.IsValid()) {
            return 1;
        }
        return nativeProcessTexture(this.handle.get(), humanProcessTextureRequest.humanVideoTexture.texID, humanProcessTexureResult.humanVideoTexture.texID, humanProcessTextureRequest.humanVideoTexture.width, humanProcessTextureRequest.humanVideoTexture.height, humanProcessTextureRequest.humanVideoTexture.rotation, humanProcessTextureRequest.humanVideoTexture.isOES);
    }

    public int process(HumanProcessTextureRequest humanProcessTextureRequest, HumanProcessTextureRequest humanProcessTextureRequest2, HumanProcessTexureResult humanProcessTexureResult) {
        if (this.handle.get() == 0) {
            Log.e(TAG, "process: handle is invalid!");
            return 2;
        }
        if (humanProcessTextureRequest == null || humanProcessTexureResult == null || !humanProcessTextureRequest.IsValid()) {
            return 1;
        }
        int i = humanProcessTextureRequest.humanVideoTexture.width;
        int i2 = humanProcessTextureRequest.humanVideoTexture.height;
        int i3 = humanProcessTextureRequest2.humanVideoTexture.width;
        int i4 = humanProcessTextureRequest2.humanVideoTexture.height;
        String str = TAG;
        Log.d(str, String.format("process fg %d, bg %d, out %d", Integer.valueOf(humanProcessTextureRequest.humanVideoTexture.texID), Integer.valueOf(humanProcessTextureRequest2.humanVideoTexture.texID), Integer.valueOf(humanProcessTexureResult.humanVideoTexture.texID)));
        if (humanProcessTexureResult.humanVideoTexture.isOES) {
            Log.e(str, "please set output 2d texture instead of oes.");
            return 1;
        }
        return nativeProcessTextures(this.handle.get(), humanProcessTextureRequest.humanVideoTexture.texID, humanProcessTextureRequest.humanVideoTexture.isOES, humanProcessTextureRequest2.humanVideoTexture.texID, humanProcessTextureRequest2.humanVideoTexture.isOES, humanProcessTexureResult.humanVideoTexture.texID, i, i2, i3, i4, humanProcessTextureRequest2.humanVideoTexture.rotation, humanProcessTextureRequest.humanVideoTexture.rotation);
    }

    public int process(HumanProcessFrameRequest humanProcessFrameRequest, HumanProcessTextureRequest humanProcessTextureRequest, HumanProcessTexureResult humanProcessTexureResult) {
        if (this.handle.get() == 0) {
            Log.e(TAG, "process: handle is invalid!");
            return 2;
        }
        if (humanProcessFrameRequest != null && humanProcessTexureResult != null && humanProcessTextureRequest != null && humanProcessFrameRequest.IsValid() && humanProcessTextureRequest.IsValid() && humanProcessTexureResult.IsValid()) {
            String str = TAG;
            Log.e(str, "fgFrameRequest.cameratype " + humanProcessFrameRequest.cameraType + " bgTextureRequest.cameratype " + humanProcessTextureRequest.cameraType);
            int i = humanProcessFrameRequest.humanVideoFrame.width;
            int i2 = humanProcessFrameRequest.humanVideoFrame.height;
            if (humanProcessFrameRequest.humanVideoFrame.type != ImageType.ANC_HUM_IMG_NV21) {
                Log.e(str, "process: argment is invalid, image type=%d" + humanProcessFrameRequest.humanVideoFrame.type);
                return 1;
            }
            if (i % 64 != 0) {
                Log.e(str, "[Warning]process: argment maybe is invalid, width is not 64 alignment maybe causes abnormal rendering cases");
            }
            int i3 = humanProcessTextureRequest.humanVideoTexture.width;
            int i4 = humanProcessTextureRequest.humanVideoTexture.height;
            Log.d(str, String.format("process fg %d, bg %d, out %d", Integer.valueOf(humanProcessFrameRequest.humanVideoFrame.data.length), Integer.valueOf(humanProcessTextureRequest.humanVideoTexture.texID), Integer.valueOf(humanProcessTexureResult.humanVideoTexture.texID)));
            if (humanProcessTexureResult.humanVideoTexture.isOES) {
                Log.e(str, "process: please set output 2d texture instead of oes.");
                return 1;
            }
            return nativeProcessFrameInTextureOut(this.handle.get(), humanProcessFrameRequest.humanVideoFrame.data, humanProcessFrameRequest.cameraType == CameraType.CAMERA_TYPE_REAR ? 0 : 1, humanProcessTextureRequest.humanVideoTexture.texID, humanProcessTextureRequest.humanVideoTexture.isOES, humanProcessTextureRequest.cameraType == CameraType.CAMERA_TYPE_REAR ? 0 : 1, humanProcessTexureResult.humanVideoTexture.texID, i, i2, i3, i4, humanProcessTextureRequest.humanVideoTexture.isBgFromAlbum, humanProcessTextureRequest.humanVideoTexture.rotation, humanProcessFrameRequest.humanVideoFrame.rotation);
        }
        String str2 = TAG;
        StringBuilder sb = new StringBuilder();
        sb.append("process: argment is invalid, fgFrameRequest is ");
        sb.append((humanProcessFrameRequest == null || !humanProcessFrameRequest.IsValid()) ? "invalid" : "valid");
        sb.append(", bgTextureRequest is ");
        sb.append((humanProcessTextureRequest == null || !humanProcessTextureRequest.IsValid()) ? "invalid" : "valid");
        sb.append(", texureResult is ");
        sb.append((humanProcessTexureResult == null || !humanProcessTexureResult.IsValid()) ? "invalid" : "valid");
        Log.e(str2, sb.toString());
        return 1;
    }

    public int process(HumanProcessHardwareBufferRequest humanProcessHardwareBufferRequest, HumanProcessTextureRequest humanProcessTextureRequest, HumanProcessTexureResult humanProcessTexureResult) {
        if (this.handle.get() == 0) {
            Log.e(TAG, "process: handle is invalid!");
            return 2;
        }
        if (humanProcessHardwareBufferRequest != null && humanProcessTexureResult != null && humanProcessTextureRequest != null && humanProcessHardwareBufferRequest.IsValid() && humanProcessTextureRequest.IsValid() && humanProcessTexureResult.IsValid()) {
            int i = humanProcessHardwareBufferRequest.humanVideoFrame.width;
            int i2 = humanProcessHardwareBufferRequest.humanVideoFrame.height;
            if (humanProcessHardwareBufferRequest.humanVideoFrame.type != ImageType.ANC_HUM_IMG_NV21) {
                Log.e(TAG, "process: argment is invalid, image type=%d" + humanProcessHardwareBufferRequest.humanVideoFrame.type);
                return 1;
            }
            if (i % 64 != 0) {
                Log.e(TAG, "[Warning]process: argment maybe is invalid, width is not 64 alignment maybe causes abnormal rendering cases");
            }
            int i3 = humanProcessTextureRequest.humanVideoTexture.width;
            int i4 = humanProcessTextureRequest.humanVideoTexture.height;
            if (humanProcessTexureResult.humanVideoTexture.isOES) {
                Log.e(TAG, "process: please set output 2d texture instead of oes.");
                return 1;
            }
            return nativeProcessTextureAndHardwareBufferInTextureOut(this.handle.get(), 0, false, humanProcessHardwareBufferRequest.humanVideoFrame.data, humanProcessHardwareBufferRequest.humanVideoFrame.scanline, humanProcessTextureRequest.humanVideoTexture.texID, humanProcessTextureRequest.humanVideoTexture.isOES, humanProcessTexureResult.humanVideoTexture.texID, i, i2, i3, i4, humanProcessTextureRequest.humanVideoTexture.rotation, humanProcessHardwareBufferRequest.humanVideoFrame.rotation, humanProcessHardwareBufferRequest.cameraType == CameraType.CAMERA_TYPE_REAR ? 0 : 1, humanProcessTextureRequest.cameraType == CameraType.CAMERA_TYPE_REAR ? 0 : 1, humanProcessTextureRequest.humanVideoTexture.isBgFromAlbum);
        }
        String str = TAG;
        StringBuilder sb = new StringBuilder();
        sb.append("process: argment is invalid, fgFrameRequest is ");
        sb.append((humanProcessHardwareBufferRequest == null || !humanProcessHardwareBufferRequest.IsValid()) ? "invalid" : "valid");
        sb.append(", bgTextureRequest is ");
        sb.append((humanProcessTextureRequest == null || !humanProcessTextureRequest.IsValid()) ? "invalid" : "valid");
        sb.append(", texureResult is ");
        sb.append((humanProcessTexureResult == null || !humanProcessTexureResult.IsValid()) ? "invalid" : "valid");
        Log.e(str, sb.toString());
        return 1;
    }

    public int process(HumanProcessTextureRequest humanProcessTextureRequest, HumanProcessHardwareBufferRequest humanProcessHardwareBufferRequest, HumanProcessTextureRequest humanProcessTextureRequest2, HumanProcessTexureResult humanProcessTexureResult) {
        boolean z;
        if (this.handle.get() == 0) {
            Log.e(TAG, "process: handle is invalid!");
            return 2;
        }
        if (humanProcessTextureRequest == null || !(humanProcessTextureRequest == null || humanProcessHardwareBufferRequest.IsValid())) {
            Log.w(TAG, "process: argment fgTextureRequest is invalid!");
            z = false;
        } else {
            z = true;
        }
        if (humanProcessHardwareBufferRequest != null && humanProcessTexureResult != null && humanProcessTextureRequest2 != null && humanProcessHardwareBufferRequest.IsValid() && humanProcessTextureRequest2.IsValid() && humanProcessTexureResult.IsValid()) {
            int i = humanProcessHardwareBufferRequest.humanVideoFrame.width;
            int i2 = humanProcessHardwareBufferRequest.humanVideoFrame.height;
            if (humanProcessHardwareBufferRequest.humanVideoFrame.type != ImageType.ANC_HUM_IMG_NV21) {
                Log.e(TAG, "process: argment is invalid, image type=%d" + humanProcessHardwareBufferRequest.humanVideoFrame.type);
                return 1;
            }
            if (i % 64 != 0) {
                Log.e(TAG, "[Warning]process: argment maybe is invalid, width is not 64 alignment maybe causes abnormal rendering cases");
            }
            int i3 = humanProcessTextureRequest2.humanVideoTexture.width;
            int i4 = humanProcessTextureRequest2.humanVideoTexture.height;
            if (humanProcessTexureResult.humanVideoTexture.isOES) {
                Log.e(TAG, "process: please set output 2d texture instead of oes.");
                return 1;
            }
            return nativeProcessTextureAndHardwareBufferInTextureOut(this.handle.get(), z ? humanProcessTextureRequest.humanVideoTexture.texID : 0, z ? humanProcessTextureRequest.humanVideoTexture.isOES : false, humanProcessHardwareBufferRequest.humanVideoFrame.data, humanProcessHardwareBufferRequest.humanVideoFrame.scanline, humanProcessTextureRequest2.humanVideoTexture.texID, humanProcessTextureRequest2.humanVideoTexture.isOES, humanProcessTexureResult.humanVideoTexture.texID, i, i2, i3, i4, humanProcessTextureRequest2.humanVideoTexture.rotation, humanProcessHardwareBufferRequest.humanVideoFrame.rotation, humanProcessHardwareBufferRequest.cameraType == CameraType.CAMERA_TYPE_REAR ? 0 : 1, humanProcessTextureRequest2.cameraType == CameraType.CAMERA_TYPE_REAR ? 0 : 1, humanProcessTextureRequest2.humanVideoTexture.isBgFromAlbum);
        }
        String str = TAG;
        StringBuilder sb = new StringBuilder();
        sb.append("process: argment is invalid, fgFrameRequest is ");
        sb.append((humanProcessHardwareBufferRequest == null || !humanProcessHardwareBufferRequest.IsValid()) ? "invalid" : "valid");
        sb.append(", bgTextureRequest is ");
        sb.append((humanProcessTextureRequest2 == null || !humanProcessTextureRequest2.IsValid()) ? "invalid" : "valid");
        sb.append(", texureResult is ");
        sb.append((humanProcessTexureResult == null || !humanProcessTexureResult.IsValid()) ? "invalid" : "valid");
        Log.e(str, sb.toString());
        return 1;
    }

    public int process(HumanProcessFrameRequest humanProcessFrameRequest, HumanProcessFrameResult humanProcessFrameResult) {
        if (this.handle.get() == 0) {
            Log.e(TAG, "process: handle is invalid!");
            return 2;
        }
        return nativeProcessFrame(this.handle.get(), humanProcessFrameRequest.humanVideoFrame.data, humanProcessFrameResult.humanVideoFrame.data, humanProcessFrameRequest.humanVideoFrame.width, humanProcessFrameRequest.humanVideoFrame.height, (humanProcessFrameResult.humanVideoFrame.width == 0 ? humanProcessFrameRequest.humanVideoFrame : humanProcessFrameResult.humanVideoFrame).width, (humanProcessFrameResult.humanVideoFrame.height == 0 ? humanProcessFrameRequest.humanVideoFrame : humanProcessFrameResult.humanVideoFrame).height, humanProcessFrameRequest.humanVideoFrame.type.ordinal(), humanProcessFrameRequest.humanVideoFrame.rotation);
    }

    public int release() {
        if (this.handle.get() == 0) {
            Log.e(TAG, "release: handle is invalid!");
            return 2;
        }
        int iNativeRelease = nativeRelease(this.handle.get());
        this.handle.set(0L);
        return iNativeRelease;
    }

    public int attachGL() {
        if (this.handle.get() == 0) {
            Log.e(TAG, "prepareRun: handle is invalid!");
            return 2;
        }
        return nativeAttachGl(this.handle.get());
    }

    public static HumanEffectDoubleExposureApi getInstance() {
        return sInstance;
    }

    public String getVersion() {
        return !isSoLoaded.get() ? "" : nativeSdkVersion();
    }

    private static byte[] getFileContent(String str) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byte[] bArr = new byte[OplusExifTag.EXIF_TAG_SUPER_HIGH_RESOLUTION];
        try {
            FileInputStream fileInputStream = new FileInputStream(str);
            while (true) {
                int i = fileInputStream.read(bArr);
                if (i != -1) {
                    byteArrayOutputStream.write(bArr, 0, i);
                } else {
                    fileInputStream.close();
                    byteArrayOutputStream.close();
                    return byteArrayOutputStream.toByteArray();
                }
            }
        } catch (IOException unused) {
            return null;
        }
    }

    public void preInit() {
        try {
            Util.loadJNILibrary("AncHumanDoubleExposure-jni");
            isSoLoaded.set(true);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static class HumanEffectDoubleExposureConfig {
        public String cache_path;
        public boolean isBackCamera;
        public boolean isRealTime;
        public byte[] model_data;
        public String native_lib_path;

        public HumanEffectDoubleExposureConfig(boolean z, byte[] bArr, String str, String str2, boolean z2) {
            this.isRealTime = z;
            this.model_data = bArr;
            this.cache_path = str;
            this.native_lib_path = str2;
            this.isBackCamera = z2;
        }

        public HumanEffectDoubleExposureConfig(byte[] bArr, boolean z, String str, String str2) {
            this.model_data = bArr;
            this.isRealTime = z;
            this.cache_path = str;
            this.native_lib_path = str2;
            this.isBackCamera = true;
        }

        public HumanEffectDoubleExposureConfig() {
            this.model_data = null;
            this.isRealTime = true;
            this.cache_path = "";
            this.native_lib_path = "";
            this.isBackCamera = true;
        }

        public static HumanEffectDoubleExposureConfigBuilder Builder() {
            return new HumanEffectDoubleExposureConfigBuilder();
        }

        public static class HumanEffectDoubleExposureConfigBuilder {
            static final /* synthetic */ boolean $assertionsDisabled = false;
            private String cache_path;
            private boolean isBackCamera;
            private boolean isRealTime = true;
            private byte[] model_data;
            private String native_lib_path;

            public HumanEffectDoubleExposureConfigBuilder setModel_data(byte[] bArr) {
                this.model_data = bArr;
                return this;
            }

            public HumanEffectDoubleExposureConfigBuilder setCache_path(String str) {
                this.cache_path = str;
                return this;
            }

            public HumanEffectDoubleExposureConfigBuilder setNative_lib_path(String str) {
                this.native_lib_path = str;
                return this;
            }

            public HumanEffectDoubleExposureConfigBuilder setBackCameraFlag(boolean z) {
                this.isBackCamera = z;
                return this;
            }

            public HumanEffectDoubleExposureConfigBuilder setRealTime(boolean z) {
                this.isRealTime = z;
                return this;
            }

            public HumanEffectDoubleExposureConfig build() {
                if (this.model_data == null) {
                    return null;
                }
                HumanEffectDoubleExposureConfig humanEffectDoubleExposureConfig = new HumanEffectDoubleExposureConfig();
                humanEffectDoubleExposureConfig.isRealTime = this.isRealTime;
                humanEffectDoubleExposureConfig.model_data = this.model_data;
                humanEffectDoubleExposureConfig.cache_path = this.cache_path;
                humanEffectDoubleExposureConfig.native_lib_path = this.native_lib_path;
                humanEffectDoubleExposureConfig.isBackCamera = this.isBackCamera;
                return humanEffectDoubleExposureConfig;
            }
        }
    }

    public static class HumanProcessFrameResult {
        public HumanVideoFrame humanVideoFrame;

        public HumanProcessFrameResult(HumanVideoFrame humanVideoFrame) {
            this.humanVideoFrame = humanVideoFrame;
        }

        public HumanProcessFrameResult(byte[] bArr, ImageType imageType, int i, int i2, int i3) {
            this.humanVideoFrame = new HumanVideoFrame(bArr, imageType, i, i2, i3);
        }

        public boolean IsValid() {
            HumanVideoFrame humanVideoFrame = this.humanVideoFrame;
            return humanVideoFrame != null && humanVideoFrame.IsValid();
        }
    }

    public static class HumanProcessTexureResult {
        public HumanVideoTexture humanVideoTexture;

        public HumanProcessTexureResult(HumanVideoTexture humanVideoTexture) {
            this.humanVideoTexture = humanVideoTexture;
        }

        public HumanProcessTexureResult(int i, boolean z, int i2, int i3, int i4, boolean z2) {
            this.humanVideoTexture = new HumanVideoTexture(i, z, i2, i3, i4, z2);
        }

        public boolean IsValid() {
            HumanVideoTexture humanVideoTexture = this.humanVideoTexture;
            return humanVideoTexture != null && humanVideoTexture.IsValid();
        }
    }

    public static class HumanProcessHardwareBufferRequest {
        public CameraType cameraType;
        public HumanVideoHardwareBuffer humanVideoFrame;

        public static HumanProcessFrameRequestBuilder Builder() {
            return new HumanProcessFrameRequestBuilder();
        }

        public HumanProcessHardwareBufferRequest(CameraType cameraType, HumanVideoHardwareBuffer humanVideoHardwareBuffer) {
            this.cameraType = cameraType;
            this.humanVideoFrame = humanVideoHardwareBuffer;
        }

        public boolean IsValid() {
            HumanVideoHardwareBuffer humanVideoHardwareBuffer = this.humanVideoFrame;
            return humanVideoHardwareBuffer != null && humanVideoHardwareBuffer.IsValid();
        }
    }

    public static class HumanVideoHardwareBuffer {
        public HardwareBuffer data;
        public int height;
        public int rotation;
        public int scanline;
        public ImageType type;
        public int width;

        public HumanVideoHardwareBuffer(HardwareBuffer hardwareBuffer, ImageType imageType, int i, int i2, int i3, int i4) {
            this.data = hardwareBuffer;
            this.type = imageType;
            this.width = i;
            this.height = i2;
            this.scanline = i3;
            this.rotation = i4;
        }

        public boolean IsValid() {
            return this.data != null && this.width > 0 && this.height > 0 && this.rotation % 90 == 0 && this.type != null;
        }
    }

    public static class HumanProcessHardwareBufferRequestBuilder {
        static final /* synthetic */ boolean $assertionsDisabled = false;
        public CameraType cameraType;
        public HardwareBuffer data;
        public int height;
        public int rotation;
        public int scanline;
        public ImageType type;
        public int width;

        public HumanProcessHardwareBufferRequestBuilder setCameraType(CameraType cameraType) {
            this.cameraType = cameraType;
            return this;
        }

        public HumanProcessHardwareBufferRequestBuilder setData(HardwareBuffer hardwareBuffer) {
            this.data = hardwareBuffer;
            return this;
        }

        public HumanProcessHardwareBufferRequestBuilder setType(ImageType imageType) {
            this.type = imageType;
            return this;
        }

        public HumanProcessHardwareBufferRequestBuilder setWidth(int i) {
            this.width = i;
            return this;
        }

        public HumanProcessHardwareBufferRequestBuilder setHeight(int i) {
            this.height = i;
            return this;
        }

        public HumanProcessHardwareBufferRequestBuilder setScanline(int i) {
            this.scanline = i;
            return this;
        }

        public HumanProcessHardwareBufferRequestBuilder setRotation(int i) {
            this.rotation = i;
            return this;
        }

        public HumanProcessHardwareBufferRequest build() {
            int i;
            int i2;
            ImageType imageType;
            HardwareBuffer hardwareBuffer = this.data;
            if (hardwareBuffer == null || (i = this.width) <= 0 || (i2 = this.height) <= 0 || (imageType = this.type) == null || this.cameraType == null) {
                return null;
            }
            return new HumanProcessHardwareBufferRequest(this.cameraType, new HumanVideoHardwareBuffer(hardwareBuffer, imageType, i, i2, this.scanline, this.rotation));
        }
    }

    public static class HumanProcessFrameRequest {
        public CameraType cameraType;
        public HumanVideoFrame humanVideoFrame;

        public static HumanProcessFrameRequestBuilder Builder() {
            return new HumanProcessFrameRequestBuilder();
        }

        public HumanProcessFrameRequest(CameraType cameraType, HumanVideoFrame humanVideoFrame) {
            this.cameraType = cameraType;
            this.humanVideoFrame = humanVideoFrame;
        }

        public boolean IsValid() {
            HumanVideoFrame humanVideoFrame = this.humanVideoFrame;
            return humanVideoFrame != null && humanVideoFrame.IsValid();
        }
    }

    public static class HumanProcessFrameRequestBuilder {
        static final /* synthetic */ boolean $assertionsDisabled = false;
        public CameraType cameraType;
        public byte[] data;
        public int height;
        public int rotation;
        public ImageType type;
        public int width;

        public HumanProcessFrameRequestBuilder setCameraType(CameraType cameraType) {
            this.cameraType = cameraType;
            return this;
        }

        public HumanProcessFrameRequestBuilder setData(byte[] bArr) {
            this.data = bArr;
            return this;
        }

        public HumanProcessFrameRequestBuilder setType(ImageType imageType) {
            this.type = imageType;
            return this;
        }

        public HumanProcessFrameRequestBuilder setWidth(int i) {
            this.width = i;
            return this;
        }

        public HumanProcessFrameRequestBuilder setHeight(int i) {
            this.height = i;
            return this;
        }

        public HumanProcessFrameRequestBuilder setRotation(int i) {
            this.rotation = i;
            return this;
        }

        public HumanProcessFrameRequest build() {
            int i;
            int i2;
            ImageType imageType;
            byte[] bArr = this.data;
            if (bArr == null || (i = this.width) <= 0 || (i2 = this.height) <= 0 || (imageType = this.type) == null || this.cameraType == null) {
                return null;
            }
            return new HumanProcessFrameRequest(this.cameraType, new HumanVideoFrame(bArr, imageType, i, i2, this.rotation));
        }
    }

    public static class HumanProcessTextureRequest {
        public CameraType cameraType;
        public HumanVideoTexture humanVideoTexture;

        public static HumanProcessTextureRequestBuilder Builder() {
            return new HumanProcessTextureRequestBuilder();
        }

        public HumanProcessTextureRequest(CameraType cameraType, HumanVideoTexture humanVideoTexture) {
            this.cameraType = cameraType;
            this.humanVideoTexture = humanVideoTexture;
        }

        public boolean IsValid() {
            HumanVideoTexture humanVideoTexture = this.humanVideoTexture;
            return humanVideoTexture != null && humanVideoTexture.IsValid();
        }
    }

    public static class HumanProcessTextureRequestBuilder {
        public CameraType cameraType;
        public int height;
        public boolean isBgFromAlbum;
        public boolean isOES;
        public int rotation;
        public int texID;
        public int width;

        public HumanProcessTextureRequestBuilder setCameraType(CameraType cameraType) {
            this.cameraType = cameraType;
            return this;
        }

        public HumanProcessTextureRequestBuilder setTexID(int i) {
            this.texID = i;
            return this;
        }

        public HumanProcessTextureRequestBuilder setOES(boolean z) {
            this.isOES = z;
            return this;
        }

        public HumanProcessTextureRequestBuilder setWidth(int i) {
            this.width = i;
            return this;
        }

        public HumanProcessTextureRequestBuilder setHeight(int i) {
            this.height = i;
            return this;
        }

        public HumanProcessTextureRequestBuilder setRotation(int i) {
            this.rotation = i;
            return this;
        }

        public HumanProcessTextureRequestBuilder setBgFromAlbum(boolean z) {
            this.isBgFromAlbum = z;
            return this;
        }

        public HumanProcessTextureRequest build() {
            int i;
            int i2;
            int i3 = this.texID;
            if (i3 > 0 && (i = this.width) > 0 && (i2 = this.height) > 0) {
                int i4 = this.rotation;
                if (i4 % 90 == 0 && this.cameraType != null) {
                    return new HumanProcessTextureRequest(this.cameraType, new HumanVideoTexture(i3, this.isOES, i, i2, i4, this.isBgFromAlbum));
                }
            }
            Log.e(HumanEffectDoubleExposureApi.TAG, "invalid HumanProcessTextureRequest, texID=" + this.texID + ", width=" + this.width + ",height=" + this.height + ",rotation=" + this.rotation + ", cameraType=" + this.cameraType);
            return null;
        }
    }

    public static class HumanVideoFrame {
        public byte[] data;
        public int height;
        public int rotation;
        public ImageType type;
        public int width;

        public HumanVideoFrame(byte[] bArr, ImageType imageType, int i, int i2, int i3) {
            this.data = bArr;
            this.type = imageType;
            this.width = i;
            this.height = i2;
            this.rotation = i3;
        }

        public boolean IsValid() {
            return this.data != null && this.width > 0 && this.height > 0 && this.rotation % 90 == 0 && this.type != null;
        }
    }

    public static class HumanVideoTexture {
        public int height;
        public boolean isBgFromAlbum;
        public boolean isOES;
        public int rotation;
        public int texID;
        public int width;

        public HumanVideoTexture(int i, boolean z, int i2, int i3, int i4, boolean z2) {
            this.texID = i;
            this.isOES = z;
            this.width = i2;
            this.height = i3;
            this.rotation = i4;
            this.isBgFromAlbum = z2;
        }

        public boolean IsValid() {
            return this.texID > 0 && this.width != 0 && this.height != 0 && this.rotation % 90 == 0;
        }
    }

    public static class HumanVideoDoubleExposureParams {
        public float bgAlpha;
        public float bgBrightness;
        public float bgSaturation;
        public float blurIntensity;
        public float blurKernelSize;
        public float groundGlassColor;
        public boolean isAdjustParamsMode = false;
        public float portraitAlpha;
        public float portraitBrightness;
        public float portraitSaturation;

        public HumanVideoDoubleExposureParams(float f) {
            this.blurIntensity = f;
        }

        public HumanVideoDoubleExposureParams(float f, float f2, float f3, float f4, float f5, float f6, float f7, float f8, float f9) {
            this.blurIntensity = f;
            this.portraitSaturation = f2;
            this.portraitBrightness = f3;
            this.bgSaturation = f4;
            this.bgBrightness = f5;
            this.bgAlpha = f6;
            this.groundGlassColor = f7;
            this.portraitAlpha = f8;
            this.blurKernelSize = f9;
        }
    }
}

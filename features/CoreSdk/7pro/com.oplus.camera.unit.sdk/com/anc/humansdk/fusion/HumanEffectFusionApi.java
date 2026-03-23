package com.anc.humansdk.fusion;

import android.util.Log;
import com.common.Util;
import com.oplus.exif.OplusExifTag;
import java.io.ByteArrayOutputStream;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
/* loaded from: classes.dex */
public class HumanEffectFusionApi {
    static final String JNI_SONAME = "AncHumanSegFigureFusion-jni";
    static final String TAG = "HumanEffectFusionApi";
    static final boolean DEBUG = Log.isLoggable(TAG, 3);
    private static HumanEffectFusionApi sPreviewInstance = new HumanEffectFusionApi();
    private static HumanEffectFusionApi sPostInstance = new HumanEffectFusionApi();
    private static AtomicBoolean isSoLoaded = new AtomicBoolean(false);
    private AtomicInteger mPendingLogLevel = new AtomicInteger(-1);
    protected AtomicLong handle = new AtomicLong(0);

    /* loaded from: classes.dex */
    public enum CameraType {
        CAMERA_TYPE_REAR,
        CAMERA_TYPE_FRONT
    }

    /* loaded from: classes.dex */
    public enum ImageType {
        ANC_HUM_IMG_NV21,
        ANC_HUM_IMG_BGR,
        ANC_HUM_IMG_RGB,
        ANC_HUM_IMG_RGBA,
        ANC_HUM_IMG_DEPTH,
        ANC_HUM_IMG_GREYSCALE,
        ANC_HUM_IMG_NV12
    }

    private native long nativeInitHandle(HumanEffectFusionConfig humanEffectFusionConfig);

    private native int nativeProcessFrame(long j, byte[] bArr, byte[] bArr2, int i, int i2, int i3, int i4, int i5, int i6);

    private native int nativeProcessFrameV2(long j, byte[] bArr, byte[] bArr2, int i, int i2, int i3, int i4, int i5, int i6, boolean z);

    private native int nativeProcessTexture(long j, int i, int i2, int i3, int i4, int i5, boolean z);

    private native int nativeProcessTextureV2(long j, int i, int i2, int i3, int i4, int i5, boolean z, boolean z2);

    private native int nativeRelease(long j);

    private native String nativeSdkVersion();

    private native int nativeSetFeatureType(long j, int i);

    private native int nativeSetLogLevel(int i);

    private native int nativeSetParams(long j, HumanVideoFusionParams humanVideoFusionParams);

    public int initByConfig(HumanEffectFusionConfig humanEffectFusionConfig) {
        boolean z;
        if (DEBUG) {
            String str = TAG;
            StringBuilder sb = new StringBuilder();
            sb.append("init API by config BuildNumber: 510 config: ");
            sb.append(humanEffectFusionConfig != null ? humanEffectFusionConfig.toString() : " null config");
            Log.i(str, sb.toString());
        } else {
            Log.d(TAG, "init API by config BuildNumber: 510");
        }
        if (this.handle.get() != 0) {
            Log.e(TAG, "sdk re-init");
            return 3;
        } else if (humanEffectFusionConfig != null && humanEffectFusionConfig.model_data != null) {
            if (!isSoLoaded.get()) {
                try {
                    System.loadLibrary(JNI_SONAME);
                    z = true;
                } catch (UnsatisfiedLinkError e) {
                    Log.e(TAG, "fail to link AncHumanSegFigureFusion-jni\n" + e.getMessage());
                    z = false;
                }
                if (!z) {
                    return 1;
                }
                isSoLoaded.set(true);
            }
            if (humanEffectFusionConfig.cache_path == null) {
                humanEffectFusionConfig.cache_path = "";
            }
            if (humanEffectFusionConfig.native_lib_path == null) {
                humanEffectFusionConfig.native_lib_path = "";
            }
            int intValue = this.mPendingLogLevel.intValue();
            if (intValue >= 0) {
                Log.d(TAG, "api set log level " + intValue);
                humanEffectFusionConfig.log_level = intValue;
                this.mPendingLogLevel.set(-1);
            }
            this.handle.set(nativeInitHandle(humanEffectFusionConfig));
            return this.handle.get() != 0 ? 0 : 3;
        } else {
            Log.e(TAG, "config invalid!");
            return 1;
        }
    }

    public int setLogLevel(int i) {
        if (!isSoLoaded.get()) {
            String str = TAG;
            Log.d(str, "set log level " + i);
            this.mPendingLogLevel.set(i);
            return 0;
        }
        nativeSetLogLevel(i);
        return 0;
    }

    public int setParams(HumanVideoFusionParams humanVideoFusionParams) {
        if (humanVideoFusionParams == null) {
            Log.e(TAG, "setParams: params is invalid!");
            return 1;
        } else if (this.handle.get() == 0) {
            Log.e(TAG, "setParams: handle is invalid!");
            return 2;
        } else {
            return nativeSetParams(this.handle.get(), humanVideoFusionParams);
        }
    }

    public int setFeatureType(FeatureType featureType) {
        if (this.handle.get() == 0) {
            Log.e(TAG, "setRuntimeFeature: handle is invalid!");
            return 2;
        } else if (featureType != null && featureType.getValue() != 0) {
            return nativeSetFeatureType(this.handle.get(), featureType.getValue());
        } else {
            Log.e(TAG, "setRuntimeFeature: FeatureType is invalid!");
            return 2;
        }
    }

    public int process(HumanProcessTextureRequest humanProcessTextureRequest, HumanProcessTexureResult humanProcessTexureResult) {
        if (this.handle.get() == 0) {
            Log.e(TAG, "process: handle is invalid!");
            return 2;
        }
        if (humanProcessTextureRequest != null && humanProcessTexureResult != null) {
            if (humanProcessTextureRequest.IsValid() && humanProcessTextureRequest.humanVideoTexture.rotation == humanProcessTexureResult.humanVideoTexture.rotation) {
                return nativeProcessTextureV2(this.handle.get(), humanProcessTextureRequest.humanVideoTexture.texID, humanProcessTexureResult.humanVideoTexture.texID, humanProcessTextureRequest.humanVideoTexture.width, humanProcessTextureRequest.humanVideoTexture.height, humanProcessTextureRequest.humanVideoTexture.rotation, humanProcessTextureRequest.humanVideoTexture.isOES, humanProcessTextureRequest.cameraType == CameraType.CAMERA_TYPE_REAR);
            }
            String str = TAG;
            Object[] objArr = new Object[2];
            objArr[0] = Boolean.valueOf(!humanProcessTextureRequest.IsValid());
            objArr[1] = Boolean.valueOf(humanProcessTextureRequest.humanVideoTexture.rotation != humanProcessTexureResult.humanVideoTexture.rotation);
            Log.e(str, String.format("request : invalid %b, rotation %b ", objArr));
            return 1;
        }
        String str2 = TAG;
        Object[] objArr2 = new Object[2];
        objArr2[0] = Boolean.valueOf(humanProcessTextureRequest == null);
        objArr2[1] = Boolean.valueOf(humanProcessTexureResult == null);
        Log.e(str2, String.format("request :empty %b, valid %b ", objArr2));
        return 1;
    }

    public int process(HumanProcessFrameRequest humanProcessFrameRequest, HumanProcessFrameResult humanProcessFrameResult) {
        if (this.handle.get() == 0) {
            Log.e(TAG, "process: handle is invalid!");
            return 2;
        }
        return nativeProcessFrameV2(this.handle.get(), humanProcessFrameRequest.humanVideoFrame.data, humanProcessFrameResult.humanVideoFrame.data, humanProcessFrameRequest.humanVideoFrame.width, humanProcessFrameRequest.humanVideoFrame.height, (humanProcessFrameResult.humanVideoFrame.width == 0 ? humanProcessFrameRequest.humanVideoFrame : humanProcessFrameResult.humanVideoFrame).width, (humanProcessFrameResult.humanVideoFrame.height == 0 ? humanProcessFrameRequest.humanVideoFrame : humanProcessFrameResult.humanVideoFrame).height, humanProcessFrameRequest.humanVideoFrame.type.ordinal(), humanProcessFrameRequest.humanVideoFrame.rotation, humanProcessFrameRequest.cameraType == CameraType.CAMERA_TYPE_REAR);
    }

    public int release() {
        if (this.handle.get() == 0) {
            Log.e(TAG, "release: handle is invalid!");
            return 2;
        }
        int nativeRelease = nativeRelease(this.handle.get());
        this.handle.set(0L);
        return nativeRelease;
    }

    public static HumanEffectFusionApi getPreviewInstance() {
        return sPreviewInstance;
    }

    public static HumanEffectFusionApi getCaptureInstance() {
        return sPostInstance;
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
                int read = fileInputStream.read(bArr);
                if (read != -1) {
                    byteArrayOutputStream.write(bArr, 0, read);
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
            Util.loadJNILibrary(JNI_SONAME);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* loaded from: classes.dex */
    public static class HumanEffectFusionConfig {
        public String cache_path;
        public boolean isBackCamera;
        public boolean isRealTime;
        public int log_level;
        public byte[] model_data;
        public String native_lib_path;
        public int power_mode;
        public int sdkLoadType;

        public HumanEffectFusionConfig(boolean z, byte[] bArr, String str, String str2, boolean z2, SdkPowerMode sdkPowerMode) {
            this.log_level = 2;
            this.power_mode = SdkPowerMode.ANC_HUM_POWER_DEFAULT.ordinal();
            this.sdkLoadType = SdkLoadType.ANC_LOAD_TYPE_ANDROID_DLOPEN.ordinal();
            this.isRealTime = z;
            this.model_data = bArr;
            this.cache_path = str;
            this.native_lib_path = str2;
            this.isBackCamera = z2;
            this.power_mode = sdkPowerMode.ordinal();
        }

        public HumanEffectFusionConfig(boolean z, byte[] bArr, String str, String str2, boolean z2) {
            this.log_level = 2;
            this.power_mode = SdkPowerMode.ANC_HUM_POWER_DEFAULT.ordinal();
            this.sdkLoadType = SdkLoadType.ANC_LOAD_TYPE_ANDROID_DLOPEN.ordinal();
            this.isRealTime = z;
            this.model_data = bArr;
            this.cache_path = str;
            this.native_lib_path = str2;
            this.isBackCamera = z2;
        }

        public HumanEffectFusionConfig(byte[] bArr, boolean z, String str, String str2) {
            this.log_level = 2;
            this.power_mode = SdkPowerMode.ANC_HUM_POWER_DEFAULT.ordinal();
            this.sdkLoadType = SdkLoadType.ANC_LOAD_TYPE_ANDROID_DLOPEN.ordinal();
            this.model_data = bArr;
            this.isRealTime = z;
            this.cache_path = str;
            this.native_lib_path = str2;
            this.isBackCamera = true;
        }

        public HumanEffectFusionConfig() {
            this.log_level = 2;
            this.power_mode = SdkPowerMode.ANC_HUM_POWER_DEFAULT.ordinal();
            this.sdkLoadType = SdkLoadType.ANC_LOAD_TYPE_ANDROID_DLOPEN.ordinal();
            this.model_data = null;
            this.isRealTime = true;
            this.cache_path = "";
            this.native_lib_path = "";
            this.isBackCamera = true;
        }

        public HumanEffectFusionConfig setSdkLoadType(SdkLoadType sdkLoadType) {
            this.sdkLoadType = sdkLoadType.ordinal();
            return this;
        }

        public static HumanEffectFusionConfigBuilder Build() {
            return new HumanEffectFusionConfigBuilder();
        }

        /* loaded from: classes.dex */
        public static class HumanEffectFusionConfigBuilder {
            private String cache_path;
            private boolean isBackCamera;
            private boolean isRealTime;
            private byte[] model_data;
            private String native_lib_path;
            private int log_level = 2;
            private SdkPowerMode power_mode = SdkPowerMode.ANC_HUM_POWER_DEFAULT;
            private SdkLoadType sdkLoadType = SdkLoadType.ANC_LOAD_TYPE_ANDROID_DLOPEN;

            public HumanEffectFusionConfigBuilder setRealTime(boolean z) {
                this.isRealTime = z;
                return this;
            }

            public HumanEffectFusionConfigBuilder setModel_data(byte[] bArr) {
                this.model_data = bArr;
                return this;
            }

            public HumanEffectFusionConfigBuilder setCache_path(String str) {
                this.cache_path = str;
                return this;
            }

            public HumanEffectFusionConfigBuilder setNative_lib_path(String str) {
                this.native_lib_path = str;
                return this;
            }

            public HumanEffectFusionConfigBuilder setBackCamera(boolean z) {
                this.isBackCamera = z;
                return this;
            }

            public HumanEffectFusionConfigBuilder setLog_level(int i) {
                this.log_level = i;
                return this;
            }

            public HumanEffectFusionConfigBuilder setPower_mode(SdkPowerMode sdkPowerMode) {
                this.power_mode = sdkPowerMode;
                return this;
            }

            public HumanEffectFusionConfigBuilder setSdkLoadType(SdkLoadType sdkLoadType) {
                this.sdkLoadType = sdkLoadType;
                return this;
            }

            public HumanEffectFusionConfig Build() {
                return new HumanEffectFusionConfig(this.isRealTime, this.model_data, this.cache_path, this.native_lib_path, this.isBackCamera, this.power_mode);
            }
        }
    }

    /* loaded from: classes.dex */
    public static class HumanProcessFrameResult {
        public HumanVideoFrame humanVideoFrame;

        public HumanProcessFrameResult(HumanVideoFrame humanVideoFrame) {
            this.humanVideoFrame = humanVideoFrame;
        }

        public HumanProcessFrameResult(byte[] bArr, ImageType imageType, int i, int i2, int i3) {
            this.humanVideoFrame = new HumanVideoFrame(bArr, imageType, i, i2, i3);
        }

        public boolean IsValid() {
            return this.humanVideoFrame != null && this.humanVideoFrame.IsValid();
        }
    }

    /* loaded from: classes.dex */
    public static class HumanProcessTexureResult {
        public HumanVideoTexture humanVideoTexture;

        public HumanProcessTexureResult(HumanVideoTexture humanVideoTexture) {
            this.humanVideoTexture = humanVideoTexture;
        }

        public HumanProcessTexureResult(int i, boolean z, int i2, int i3, int i4) {
            this.humanVideoTexture = new HumanVideoTexture(i, z, i2, i3, i4);
        }

        public boolean IsValid() {
            return this.humanVideoTexture != null && this.humanVideoTexture.IsValid();
        }
    }

    /* loaded from: classes.dex */
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
            return this.humanVideoFrame != null && this.humanVideoFrame.IsValid();
        }
    }

    /* loaded from: classes.dex */
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
            if (this.data == null || this.width <= 0 || this.height <= 0 || this.type == null || this.cameraType == null) {
                return null;
            }
            return new HumanProcessFrameRequest(this.cameraType, new HumanVideoFrame(this.data, this.type, this.width, this.height, this.rotation));
        }
    }

    /* loaded from: classes.dex */
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
            return this.humanVideoTexture != null && this.humanVideoTexture.IsValid();
        }
    }

    /* loaded from: classes.dex */
    public static class HumanProcessTextureRequestBuilder {
        static final /* synthetic */ boolean $assertionsDisabled = false;
        public CameraType cameraType;
        public int height;
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

        public HumanProcessTextureRequest build() {
            if (this.texID <= 0 || this.width <= 0 || this.height <= 0 || this.rotation % 90 != 0 || this.cameraType == null) {
                return null;
            }
            return new HumanProcessTextureRequest(this.cameraType, new HumanVideoTexture(this.texID, this.isOES, this.width, this.height, this.rotation));
        }
    }

    /* loaded from: classes.dex */
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

    /* loaded from: classes.dex */
    public static class HumanVideoTexture {
        public int height;
        public boolean isOES;
        public int rotation;
        public int texID;
        public int width;

        public HumanVideoTexture(int i, boolean z, int i2, int i3, int i4) {
            this.texID = i;
            this.isOES = z;
            this.width = i2;
            this.height = i3;
            this.rotation = i4;
        }

        public boolean IsValid() {
            return this.texID > 0 && this.width != 0 && this.height != 0 && this.rotation % 90 == 0;
        }
    }

    /* loaded from: classes.dex */
    public static class HumanVideoFusionParams {
        public float bg_light_factor;
        public float blue;
        public float blurIntensity;
        public float bokeh_max_radius_factor;
        public float facula_density;
        public float green;
        public float light_factor;
        public float max_light_threshold;
        public float min_light_threshold;
        public float red;
        public float saturation;
        public float smooth_amount;
        public float yellow;

        public HumanVideoFusionParams() {
            this.blurIntensity = -1.0f;
            this.saturation = -1.0f;
            this.facula_density = -1.0f;
            this.light_factor = -1.0f;
            this.smooth_amount = -1.0f;
            this.bokeh_max_radius_factor = -1.0f;
            this.bg_light_factor = -1.0f;
            this.max_light_threshold = -1.0f;
            this.min_light_threshold = -1.0f;
            this.red = -1.0f;
            this.green = -1.0f;
            this.blue = -1.0f;
            this.yellow = -1.0f;
        }

        public HumanVideoFusionParams(float f) {
            this.blurIntensity = -1.0f;
            this.saturation = -1.0f;
            this.facula_density = -1.0f;
            this.light_factor = -1.0f;
            this.smooth_amount = -1.0f;
            this.bokeh_max_radius_factor = -1.0f;
            this.bg_light_factor = -1.0f;
            this.max_light_threshold = -1.0f;
            this.min_light_threshold = -1.0f;
            this.red = -1.0f;
            this.green = -1.0f;
            this.blue = -1.0f;
            this.yellow = -1.0f;
            this.blurIntensity = f;
        }

        public HumanVideoFusionParams(float f, float f2) {
            this.blurIntensity = -1.0f;
            this.saturation = -1.0f;
            this.facula_density = -1.0f;
            this.light_factor = -1.0f;
            this.smooth_amount = -1.0f;
            this.bokeh_max_radius_factor = -1.0f;
            this.bg_light_factor = -1.0f;
            this.max_light_threshold = -1.0f;
            this.min_light_threshold = -1.0f;
            this.red = -1.0f;
            this.green = -1.0f;
            this.blue = -1.0f;
            this.yellow = -1.0f;
            this.blurIntensity = f;
            this.saturation = f2;
        }

        public HumanVideoFusionParams(float f, float f2, float f3) {
            this.blurIntensity = -1.0f;
            this.saturation = -1.0f;
            this.facula_density = -1.0f;
            this.light_factor = -1.0f;
            this.smooth_amount = -1.0f;
            this.bokeh_max_radius_factor = -1.0f;
            this.bg_light_factor = -1.0f;
            this.max_light_threshold = -1.0f;
            this.min_light_threshold = -1.0f;
            this.red = -1.0f;
            this.green = -1.0f;
            this.blue = -1.0f;
            this.yellow = -1.0f;
            this.blurIntensity = f;
            this.saturation = f2;
            this.facula_density = f3;
        }

        public HumanVideoFusionParams(float f, float f2, float f3, float f4) {
            this.blurIntensity = -1.0f;
            this.saturation = -1.0f;
            this.facula_density = -1.0f;
            this.light_factor = -1.0f;
            this.smooth_amount = -1.0f;
            this.bokeh_max_radius_factor = -1.0f;
            this.bg_light_factor = -1.0f;
            this.max_light_threshold = -1.0f;
            this.min_light_threshold = -1.0f;
            this.red = -1.0f;
            this.green = -1.0f;
            this.blue = -1.0f;
            this.yellow = -1.0f;
            this.blurIntensity = f;
            this.saturation = f2;
            this.facula_density = f3;
            this.light_factor = f4;
        }

        public HumanVideoFusionParams(float f, float f2, float f3, float f4, float f5) {
            this.blurIntensity = -1.0f;
            this.saturation = -1.0f;
            this.facula_density = -1.0f;
            this.light_factor = -1.0f;
            this.smooth_amount = -1.0f;
            this.bokeh_max_radius_factor = -1.0f;
            this.bg_light_factor = -1.0f;
            this.max_light_threshold = -1.0f;
            this.min_light_threshold = -1.0f;
            this.red = -1.0f;
            this.green = -1.0f;
            this.blue = -1.0f;
            this.yellow = -1.0f;
            this.blurIntensity = f;
            this.saturation = f2;
            this.facula_density = f3;
            this.light_factor = f4;
            this.smooth_amount = f5;
        }

        public HumanVideoFusionParams(float f, float f2, float f3, float f4, float f5, float f6) {
            this.blurIntensity = -1.0f;
            this.saturation = -1.0f;
            this.facula_density = -1.0f;
            this.light_factor = -1.0f;
            this.smooth_amount = -1.0f;
            this.bokeh_max_radius_factor = -1.0f;
            this.bg_light_factor = -1.0f;
            this.max_light_threshold = -1.0f;
            this.min_light_threshold = -1.0f;
            this.red = -1.0f;
            this.green = -1.0f;
            this.blue = -1.0f;
            this.yellow = -1.0f;
            this.blurIntensity = f;
            this.saturation = f2;
            this.facula_density = f3;
            this.light_factor = f4;
            this.smooth_amount = f5;
            this.bokeh_max_radius_factor = f6;
        }

        public HumanVideoFusionParams UpdateBlurIntensity(float f) {
            this.blurIntensity = f;
            return this;
        }

        public HumanVideoFusionParams UpdateSaturation(float f) {
            this.saturation = f;
            return this;
        }

        public HumanVideoFusionParams UpdateFaculaDensity(float f) {
            this.facula_density = f;
            return this;
        }

        public HumanVideoFusionParams UpdateLightFactor(float f) {
            this.light_factor = f;
            return this;
        }

        public HumanVideoFusionParams UpdateSmoothAmount(float f) {
            this.smooth_amount = f;
            return this;
        }

        public HumanVideoFusionParams UpdateBokehMaxRadiusFactor(float f) {
            this.bokeh_max_radius_factor = f;
            return this;
        }

        public HumanVideoFusionParams UpdateColorValue(float f, float f2, float f3, float f4) {
            this.red = f;
            this.green = f2;
            this.blue = f3;
            this.yellow = f4;
            return this;
        }

        public HumanVideoFusionParams UpdateBgLightFactor(float f) {
            this.bg_light_factor = f;
            return this;
        }

        public HumanVideoFusionParams UpdateMaxLightThreshold(float f) {
            this.max_light_threshold = f;
            return this;
        }

        public HumanVideoFusionParams UpdateMinLightThreshold(float f) {
            this.min_light_threshold = f;
            return this;
        }
    }

    /* loaded from: classes.dex */
    public enum AdjustColorType {
        ADJUST_COLOR_NONE(0),
        ADJUST_COLOR_RED(1),
        ADJUST_COLOR_YELLOW(2),
        ADJUST_COLOR_GREEN(3),
        ADJUST_COLOR_BLUE(4);
        
        private int type;

        AdjustColorType(int i) {
            this.type = 0;
            this.type = i;
        }

        public int getType() {
            return this.type;
        }
    }

    /* loaded from: classes.dex */
    public enum SdkLoadType {
        ANC_LOAD_TYPE_DLOEPN,
        ANC_LOAD_TYPE_ANDROID_DLOPEN;

        public static SdkLoadType getObject(int i) {
            try {
                return values()[i];
            } catch (IndexOutOfBoundsException unused) {
                throw new IllegalArgumentException("Invalid sdk load type: " + i);
            }
        }

        public int getValue() {
            return ordinal();
        }
    }

    /* loaded from: classes.dex */
    public enum FeatureType {
        ANC_HUM_FEATURE_NONE(0),
        ANC_HUM_FEATURE_BOKEH(1),
        ANC_HUM_FEATURE_NEON(5);
        
        private final int value;

        FeatureType(int i) {
            this.value = i;
        }

        public int getValue() {
            return this.value;
        }
    }
}

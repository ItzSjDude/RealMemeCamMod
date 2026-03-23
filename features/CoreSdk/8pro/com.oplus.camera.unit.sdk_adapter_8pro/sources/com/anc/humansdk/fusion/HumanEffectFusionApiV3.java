package com.anc.humansdk.fusion;

import android.hardware.HardwareBuffer;
import android.util.Log;
import com.common.Util;
import com.oplus.exif.OplusExifTag;
import java.io.File;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
/* loaded from: classes.dex */
public class HumanEffectFusionApiV3 {
    static final String JNI_SONAME = "AncHumanSegFigureFusion-jni";
    static final String TAG = "HumanEffectFusionApiV3";
    static final boolean DEBUG = Log.isLoggable(TAG, 3);
    private static HumanEffectFusionApiV3 sPreviewInstance = new HumanEffectFusionApiV3();
    private static HumanEffectFusionApiV3 sPostInstance = new HumanEffectFusionApiV3();
    private static AtomicBoolean isSoLoaded = new AtomicBoolean(false);
    private AtomicInteger mPendingLogLevel = new AtomicInteger(-1);
    protected AtomicLong handle = new AtomicLong(0);

    /* loaded from: classes.dex */
    public enum AncHumExtendedFeatureType {
        ANC_HUM_EXTENDED_FEATURE_TYPE_NONE,
        ANC_HUM_EXTENDED_FEATURE_TYPE_SEGMENT,
        ANC_HUM_EXTENDED_FEATURE_TYPE_MONO_DEPTH,
        ANC_HUM_EXTENDED_FEATURE_TYPE_SEGMENT_AND_MONO_DEPTH
    }

    /* loaded from: classes.dex */
    public enum CameraType {
        CAMERA_TYPE_REAR,
        CAMERA_TYPE_FRONT
    }

    /* loaded from: classes.dex */
    public static class SdkStatus {
        public static final int ANC_HUM_EXPIRED_AUTHORIZATION = 9;
        public static final int ANC_HUM_FAILURE = 1;
        public static final int ANC_HUM_GL_COMPILING = 5;
        public static final int ANC_HUM_INTERNAL_ERROR = 4095;
        public static final int ANC_HUM_INVALID_ARGUMENT = 2;
        public static final int ANC_HUM_INVALID_HANDLE = 3;
        public static final int ANC_HUM_INVALID_OPERATION = 7;
        public static final int ANC_HUM_LOADING = 4;
        public static final int ANC_HUM_MODEL_LOADING = 6;
        public static final int ANC_HUM_MORE_PERSON = 4098;
        public static final int ANC_HUM_NO_PERSON = 4096;
        public static final int ANC_HUM_OK = 0;
        public static final int ANC_HUM_TOO_FAR = 4097;
        public static final int ANC_HUM_UNAVAILABLE = 8;

        public static String getErrorMessage(int i) {
            switch (i) {
                case 0:
                    return "SUCCESS";
                case 1:
                    return "FAILURE";
                case 2:
                    return "INVALID ARGUMENT";
                case 3:
                    return "INVALID HANDLE";
                case 4:
                    return "LOADING";
                case 5:
                    return "UNDER INITIALIZING";
                case 6:
                    return "MODEL INITIALIZING";
                case 7:
                    return "INVALID OPERATION";
                case 8:
                    return "UNAVAILABLE";
                case 9:
                    return "AUTHORIZATION EXPIRED";
                default:
                    switch (i) {
                        case ANC_HUM_INTERNAL_ERROR /* 4095 */:
                            return "INTERNAL ERROR";
                        case 4096:
                            return "NO PERSON";
                        case 4097:
                            return "TOO FAR";
                        case 4098:
                            return "TOO MANY PERSON";
                        default:
                            return "UNKNOWN ERROR";
                    }
            }
        }

        public static boolean isError(int i) {
            return i != 0;
        }
    }

    private native long nativeInitHandle(HumanEffectFusionConfig humanEffectFusionConfig);

    private native int nativeProcessFrameV3(long j, long j2, byte[] bArr, byte[] bArr2, int i, int i2, int i3, int i4, int i5, int i6, boolean z);

    private native int nativeProcessTextureV3(long j, long j2, int i, int i2, int i3, int i4, int i5, boolean z, boolean z2);

    private native int nativeRelease(long j);

    private native String nativeSdkVersion();

    private native int nativeSetFeatureType(long j, int i);

    private native int nativeSetLogLevel(int i);

    private native int nativeSetParams(long j, HumanVideoFusionParams humanVideoFusionParams);

    private native int nativeSetParamsArray(long j, float[] fArr);

    private native int nativeUpdateMonoDepthData(long j, long j2, byte[] bArr, int i, int i2, int i3, int i4, boolean z);

    private native int nativeUpdateMonoDepthDataByHardwareBuffer(long j, long j2, HardwareBuffer hardwareBuffer, int i, int i2, int i3, int i4, boolean z);

    public int initByConfig(HumanEffectFusionConfig humanEffectFusionConfig) {
        boolean z;
        if (DEBUG) {
            String str = TAG;
            StringBuilder sb = new StringBuilder();
            sb.append("init API by config BuildNumber: 1046 config: ");
            sb.append(humanEffectFusionConfig);
            Log.i(str, sb.toString() != null ? humanEffectFusionConfig.toString() : " null config");
        } else {
            Log.d(TAG, "init API by config BuildNumber: 1046");
        }
        if (this.handle.get() != 0) {
            Log.e(TAG, "sdk re-init");
            return 1;
        } else if (humanEffectFusionConfig != null && humanEffectFusionConfig.modelData != null) {
            if (!isSoLoaded.get()) {
                try {
                    System.loadLibrary(JNI_SONAME);
                    z = true;
                } catch (UnsatisfiedLinkError e) {
                    Log.e(TAG, "fail to link AncHumanSegFigureFusion-jni\n" + e.getMessage());
                    z = false;
                }
                if (!z) {
                    return 2;
                }
                isSoLoaded.set(true);
            }
            if (humanEffectFusionConfig.cachePath == null) {
                humanEffectFusionConfig.cachePath = "";
            }
            if (humanEffectFusionConfig.nativeLibPath == null) {
                humanEffectFusionConfig.nativeLibPath = "";
            }
            int intValue = this.mPendingLogLevel.intValue();
            if (intValue >= 0) {
                Log.d(TAG, "api set log level " + intValue);
                humanEffectFusionConfig.logLevel = intValue;
                this.mPendingLogLevel.set(-1);
            }
            this.handle.set(nativeInitHandle(humanEffectFusionConfig));
            return this.handle.get() != 0 ? 0 : 1;
        } else {
            Log.e(TAG, "config invalid!");
            return 2;
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
            return 2;
        } else if (this.handle.get() == 0) {
            Log.e(TAG, "setParams: handle is invalid!");
            return 3;
        } else {
            return nativeSetParams(this.handle.get(), humanVideoFusionParams);
        }
    }

    public int setParamsArray(float[] fArr) {
        if (this.handle.get() == 0) {
            Log.e(TAG, "setParamsArray: handle is invalid!");
            return 3;
        } else if (fArr != null && fArr.length > 0) {
            return nativeSetParamsArray(this.handle.get(), fArr);
        } else {
            Log.e(TAG, "setParamsArray error, paramsArray is null!");
            return 2;
        }
    }

    public int setFeatureType(FeatureType featureType) {
        if (this.handle.get() == 0) {
            Log.e(TAG, "setRuntimeFeature: handle is invalid!");
            return 3;
        } else if (featureType != null && featureType.getValue() != 0) {
            return nativeSetFeatureType(this.handle.get(), featureType.getValue());
        } else {
            Log.e(TAG, "setRuntimeFeature: FeatureType is invalid!");
            return 3;
        }
    }

    public int process(HumanProcessTextureRequest humanProcessTextureRequest, HumanProcessTextureResult humanProcessTextureResult) {
        if (this.handle.get() == 0) {
            Log.e(TAG, "process: handle is invalid!");
            return 3;
        }
        if (humanProcessTextureRequest != null && humanProcessTextureResult != null) {
            if (humanProcessTextureRequest.IsValid() && humanProcessTextureRequest.humanVideoTexture.rotation == humanProcessTextureResult.humanVideoTexture.rotation) {
                return nativeProcessTextureV3(this.handle.get(), humanProcessTextureRequest.timestamp, humanProcessTextureRequest.humanVideoTexture.texID, humanProcessTextureResult.humanVideoTexture.texID, humanProcessTextureRequest.humanVideoTexture.width, humanProcessTextureRequest.humanVideoTexture.height, humanProcessTextureRequest.humanVideoTexture.rotation, humanProcessTextureRequest.humanVideoTexture.isOES, humanProcessTextureRequest.cameraType == CameraType.CAMERA_TYPE_REAR);
            }
            String str = TAG;
            Object[] objArr = new Object[2];
            objArr[0] = Boolean.valueOf(!humanProcessTextureRequest.IsValid());
            objArr[1] = Boolean.valueOf(humanProcessTextureRequest.humanVideoTexture.rotation != humanProcessTextureResult.humanVideoTexture.rotation);
            Log.e(str, String.format("request : invalid %b, rotation %b ", objArr));
            return 2;
        }
        String str2 = TAG;
        Object[] objArr2 = new Object[2];
        objArr2[0] = Boolean.valueOf(humanProcessTextureRequest == null);
        objArr2[1] = Boolean.valueOf(humanProcessTextureResult == null);
        Log.e(str2, String.format("request :empty %b, valid %b ", objArr2));
        return 2;
    }

    public int updateMonoDepth(HumanProcessHardwareBufferRequest humanProcessHardwareBufferRequest) {
        if (this.handle.get() == 0) {
            Log.e(TAG, "process: handle is invalid!");
            return 3;
        } else if (humanProcessHardwareBufferRequest != null && humanProcessHardwareBufferRequest.humanVideoFrame != null) {
            if (humanProcessHardwareBufferRequest.IsValid()) {
                return nativeUpdateMonoDepthDataByHardwareBuffer(this.handle.get(), humanProcessHardwareBufferRequest.timestamp, humanProcessHardwareBufferRequest.humanVideoFrame.data, humanProcessHardwareBufferRequest.humanVideoFrame.width, humanProcessHardwareBufferRequest.humanVideoFrame.height, humanProcessHardwareBufferRequest.humanVideoFrame.type.GetValue(), humanProcessHardwareBufferRequest.humanVideoFrame.rotation, humanProcessHardwareBufferRequest.cameraType == CameraType.CAMERA_TYPE_REAR);
            }
            Log.e(TAG, "updateMonoDepth monoDepthData inValid !");
            return 2;
        } else {
            Log.e(TAG, "updateMonoDepth monoDepthData is null or humanVideoFrame is null !");
            return 2;
        }
    }

    public int updateMonoDepth(HumanProcessFrameRequest humanProcessFrameRequest) {
        if (this.handle.get() == 0) {
            Log.e(TAG, "process: handle is invalid!");
            return 3;
        } else if (humanProcessFrameRequest != null && humanProcessFrameRequest.humanVideoFrame != null) {
            if (humanProcessFrameRequest.IsValid()) {
                return nativeUpdateMonoDepthData(this.handle.get(), humanProcessFrameRequest.timestamp, humanProcessFrameRequest.humanVideoFrame.data, humanProcessFrameRequest.humanVideoFrame.width, humanProcessFrameRequest.humanVideoFrame.height, humanProcessFrameRequest.humanVideoFrame.type.GetValue(), humanProcessFrameRequest.humanVideoFrame.rotation, humanProcessFrameRequest.cameraType == CameraType.CAMERA_TYPE_REAR);
            }
            Log.e(TAG, "updateMonoDepth monoDepthData inValid !");
            return 2;
        } else {
            Log.e(TAG, "updateMonoDepth monoDepthData is null or humanVideoFrame is null !");
            return 2;
        }
    }

    public int process(HumanProcessFrameRequest humanProcessFrameRequest, HumanProcessFrameResult humanProcessFrameResult) {
        if (this.handle.get() == 0) {
            Log.e(TAG, "process: handle is invalid!");
            return 3;
        }
        return nativeProcessFrameV3(this.handle.get(), humanProcessFrameRequest.timestamp, humanProcessFrameRequest.humanVideoFrame.data, humanProcessFrameResult.humanVideoFrame.data, humanProcessFrameRequest.humanVideoFrame.width, humanProcessFrameRequest.humanVideoFrame.height, (humanProcessFrameResult.humanVideoFrame.width == 0 ? humanProcessFrameRequest.humanVideoFrame : humanProcessFrameResult.humanVideoFrame).width, (humanProcessFrameResult.humanVideoFrame.height == 0 ? humanProcessFrameRequest.humanVideoFrame : humanProcessFrameResult.humanVideoFrame).height, humanProcessFrameRequest.humanVideoFrame.type.GetValue(), humanProcessFrameRequest.humanVideoFrame.rotation, humanProcessFrameRequest.cameraType == CameraType.CAMERA_TYPE_REAR);
    }

    public int release() {
        if (this.handle.get() == 0) {
            Log.e(TAG, "release: handle is invalid!");
            return 3;
        }
        int nativeRelease = nativeRelease(this.handle.get());
        this.handle.set(0L);
        return nativeRelease;
    }

    public static HumanEffectFusionApiV3 getPreviewInstance() {
        return sPreviewInstance;
    }

    public static HumanEffectFusionApiV3 getCaptureInstance() {
        return sPostInstance;
    }

    public String getVersion() {
        return !isSoLoaded.get() ? "" : nativeSdkVersion();
    }

    /* loaded from: classes.dex */
    public static class HumanEffectFusionConfig {
        public String cachePath;
        public int extendedFeatureType;
        public boolean isBackCamera;
        public boolean isRealTime;
        public int logLevel;
        public byte[] modelData;
        public String nativeLibPath;
        public int powerMode;
        public int sdkLoadType;

        public HumanEffectFusionConfig(int i, boolean z, byte[] bArr, String str, String str2, boolean z2, SdkPowerMode sdkPowerMode, int i2, SdkLoadType sdkLoadType) {
            this.extendedFeatureType = AncHumExtendedFeatureType.ANC_HUM_EXTENDED_FEATURE_TYPE_NONE.ordinal();
            this.logLevel = 2;
            this.powerMode = SdkPowerMode.ANC_HUM_POWER_DEFAULT.ordinal();
            this.sdkLoadType = SdkLoadType.ANC_LOAD_TYPE_DLOEPN.ordinal();
            this.extendedFeatureType = i;
            this.isRealTime = z;
            this.modelData = bArr;
            this.cachePath = str;
            this.nativeLibPath = str2;
            this.isBackCamera = z2;
            this.powerMode = sdkPowerMode.ordinal();
            this.logLevel = i2;
            this.sdkLoadType = sdkLoadType.ordinal();
        }

        public HumanEffectFusionConfig(int i, boolean z, byte[] bArr, String str, String str2, boolean z2, SdkPowerMode sdkPowerMode, int i2) {
            this.extendedFeatureType = AncHumExtendedFeatureType.ANC_HUM_EXTENDED_FEATURE_TYPE_NONE.ordinal();
            this.logLevel = 2;
            this.powerMode = SdkPowerMode.ANC_HUM_POWER_DEFAULT.ordinal();
            this.sdkLoadType = SdkLoadType.ANC_LOAD_TYPE_DLOEPN.ordinal();
            this.extendedFeatureType = i;
            this.isRealTime = z;
            this.modelData = bArr;
            this.cachePath = str;
            this.nativeLibPath = str2;
            this.isBackCamera = z2;
            this.powerMode = sdkPowerMode.ordinal();
            this.logLevel = i2;
        }

        public HumanEffectFusionConfig(boolean z, byte[] bArr, String str, String str2, boolean z2, SdkPowerMode sdkPowerMode, int i, SdkLoadType sdkLoadType) {
            this.extendedFeatureType = AncHumExtendedFeatureType.ANC_HUM_EXTENDED_FEATURE_TYPE_NONE.ordinal();
            this.logLevel = 2;
            this.powerMode = SdkPowerMode.ANC_HUM_POWER_DEFAULT.ordinal();
            this.sdkLoadType = SdkLoadType.ANC_LOAD_TYPE_DLOEPN.ordinal();
            this.isRealTime = z;
            this.modelData = bArr;
            this.cachePath = str;
            this.nativeLibPath = str2;
            this.isBackCamera = z2;
            this.powerMode = sdkPowerMode.ordinal();
            this.logLevel = i;
            this.sdkLoadType = sdkLoadType.ordinal();
        }

        public HumanEffectFusionConfig(boolean z, byte[] bArr, String str, String str2, boolean z2, SdkPowerMode sdkPowerMode, int i) {
            this.extendedFeatureType = AncHumExtendedFeatureType.ANC_HUM_EXTENDED_FEATURE_TYPE_NONE.ordinal();
            this.logLevel = 2;
            this.powerMode = SdkPowerMode.ANC_HUM_POWER_DEFAULT.ordinal();
            this.sdkLoadType = SdkLoadType.ANC_LOAD_TYPE_DLOEPN.ordinal();
            this.isRealTime = z;
            this.modelData = bArr;
            this.cachePath = str;
            this.nativeLibPath = str2;
            this.isBackCamera = z2;
            this.powerMode = sdkPowerMode.ordinal();
            this.logLevel = i;
        }

        public HumanEffectFusionConfig(boolean z, byte[] bArr, String str, String str2, boolean z2) {
            this.extendedFeatureType = AncHumExtendedFeatureType.ANC_HUM_EXTENDED_FEATURE_TYPE_NONE.ordinal();
            this.logLevel = 2;
            this.powerMode = SdkPowerMode.ANC_HUM_POWER_DEFAULT.ordinal();
            this.sdkLoadType = SdkLoadType.ANC_LOAD_TYPE_DLOEPN.ordinal();
            this.isRealTime = z;
            this.modelData = bArr;
            this.cachePath = str;
            this.nativeLibPath = str2;
            this.isBackCamera = z2;
        }

        public HumanEffectFusionConfig(byte[] bArr, boolean z, String str, String str2) {
            this.extendedFeatureType = AncHumExtendedFeatureType.ANC_HUM_EXTENDED_FEATURE_TYPE_NONE.ordinal();
            this.logLevel = 2;
            this.powerMode = SdkPowerMode.ANC_HUM_POWER_DEFAULT.ordinal();
            this.sdkLoadType = SdkLoadType.ANC_LOAD_TYPE_DLOEPN.ordinal();
            this.modelData = bArr;
            this.isRealTime = z;
            this.cachePath = str;
            this.nativeLibPath = str2;
            this.isBackCamera = true;
        }

        public HumanEffectFusionConfig() {
            this.extendedFeatureType = AncHumExtendedFeatureType.ANC_HUM_EXTENDED_FEATURE_TYPE_NONE.ordinal();
            this.logLevel = 2;
            this.powerMode = SdkPowerMode.ANC_HUM_POWER_DEFAULT.ordinal();
            this.sdkLoadType = SdkLoadType.ANC_LOAD_TYPE_DLOEPN.ordinal();
            this.modelData = null;
            this.isRealTime = true;
            this.cachePath = "";
            this.nativeLibPath = "";
            this.isBackCamera = true;
        }

        public HumanEffectFusionConfig setSdkLoadType(SdkLoadType sdkLoadType) {
            this.sdkLoadType = sdkLoadType.ordinal();
            return this;
        }

        public static HumanEffectFusionConfigBuilder Build() {
            return new HumanEffectFusionConfigBuilder();
        }

        public String toString() {
            Object[] objArr = new Object[6];
            byte[] bArr = this.modelData;
            objArr[0] = Integer.valueOf(bArr != null ? bArr.length : 0);
            objArr[1] = this.cachePath != null ? new File(this.cachePath).getName() : "null";
            objArr[2] = this.nativeLibPath != null ? new File(this.nativeLibPath).getName() : "null";
            objArr[3] = Boolean.valueOf(this.isRealTime);
            objArr[4] = Integer.valueOf(this.powerMode);
            objArr[5] = Integer.valueOf(this.sdkLoadType);
            return String.format("model size %d, cache path %s, lib path %s, realtime %b, power %d, sdkLoadType:%d", objArr);
        }

        /* loaded from: classes.dex */
        public static class HumanEffectFusionConfigBuilder {
            private String cachePath;
            private boolean isBackCamera;
            private boolean isRealTime;
            private byte[] modelData;
            private String nativeLibPath;
            private int extendedFeatureType = AncHumExtendedFeatureType.ANC_HUM_EXTENDED_FEATURE_TYPE_NONE.ordinal();
            private int logLevel = 2;
            private SdkPowerMode powerMode = SdkPowerMode.ANC_HUM_POWER_DEFAULT;
            private SdkLoadType sdkLoadType = SdkLoadType.ANC_LOAD_TYPE_DLOEPN;

            public HumanEffectFusionConfigBuilder setExtendedFeatureType(AncHumExtendedFeatureType ancHumExtendedFeatureType) {
                this.extendedFeatureType = ancHumExtendedFeatureType.ordinal();
                return this;
            }

            public HumanEffectFusionConfigBuilder setRealTime(boolean z) {
                this.isRealTime = z;
                return this;
            }

            public HumanEffectFusionConfigBuilder setModelData(byte[] bArr) {
                this.modelData = bArr;
                return this;
            }

            public HumanEffectFusionConfigBuilder setCachePath(String str) {
                this.cachePath = str;
                return this;
            }

            public HumanEffectFusionConfigBuilder setNativeLibPath(String str) {
                this.nativeLibPath = str;
                return this;
            }

            public HumanEffectFusionConfigBuilder setBackCamera(boolean z) {
                this.isBackCamera = z;
                return this;
            }

            public HumanEffectFusionConfigBuilder setLogLevel(int i) {
                this.logLevel = i;
                return this;
            }

            public HumanEffectFusionConfigBuilder setPowerMode(SdkPowerMode sdkPowerMode) {
                this.powerMode = sdkPowerMode;
                return this;
            }

            public HumanEffectFusionConfigBuilder setSdkLoadType(SdkLoadType sdkLoadType) {
                this.sdkLoadType = sdkLoadType;
                return this;
            }

            public HumanEffectFusionConfig Build() {
                return new HumanEffectFusionConfig(this.extendedFeatureType, this.isRealTime, this.modelData, this.cachePath, this.nativeLibPath, this.isBackCamera, this.powerMode, this.logLevel, this.sdkLoadType);
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
            HumanVideoFrame humanVideoFrame = this.humanVideoFrame;
            return humanVideoFrame != null && humanVideoFrame.IsValid();
        }
    }

    /* loaded from: classes.dex */
    public static class HumanProcessTextureResult {
        public HumanVideoTexture humanVideoTexture;

        public HumanProcessTextureResult(HumanVideoTexture humanVideoTexture) {
            this.humanVideoTexture = humanVideoTexture;
        }

        public HumanProcessTextureResult(int i, boolean z, int i2, int i3, int i4) {
            this.humanVideoTexture = new HumanVideoTexture(i, z, i2, i3, i4);
        }

        public boolean IsValid() {
            HumanVideoTexture humanVideoTexture = this.humanVideoTexture;
            return humanVideoTexture != null && humanVideoTexture.IsValid();
        }
    }

    /* loaded from: classes.dex */
    public static class HumanProcessHardwareBufferRequest {
        public CameraType cameraType;
        public HumanVideoHardwareBufferFrame humanVideoFrame;
        public long timestamp;

        public static HumanProcessHardwareBufferRequestBuilder Builder() {
            return new HumanProcessHardwareBufferRequestBuilder();
        }

        public HumanProcessHardwareBufferRequest(HumanVideoHardwareBufferFrame humanVideoHardwareBufferFrame) {
            this.cameraType = CameraType.CAMERA_TYPE_REAR;
            this.humanVideoFrame = humanVideoHardwareBufferFrame;
        }

        public HumanProcessHardwareBufferRequest(CameraType cameraType, HumanVideoHardwareBufferFrame humanVideoHardwareBufferFrame) {
            CameraType cameraType2 = CameraType.CAMERA_TYPE_REAR;
            this.cameraType = cameraType;
            this.humanVideoFrame = humanVideoHardwareBufferFrame;
        }

        public HumanProcessHardwareBufferRequest(long j, CameraType cameraType, HumanVideoHardwareBufferFrame humanVideoHardwareBufferFrame) {
            CameraType cameraType2 = CameraType.CAMERA_TYPE_REAR;
            this.timestamp = j;
            this.cameraType = cameraType;
            this.humanVideoFrame = humanVideoHardwareBufferFrame;
        }

        public boolean IsValid() {
            HumanVideoHardwareBufferFrame humanVideoHardwareBufferFrame = this.humanVideoFrame;
            return humanVideoHardwareBufferFrame != null && humanVideoHardwareBufferFrame.IsValid();
        }
    }

    /* loaded from: classes.dex */
    public static class HumanProcessHardwareBufferRequestBuilder {
        static final /* synthetic */ boolean $assertionsDisabled = false;
        public CameraType cameraType;
        public HardwareBuffer data;
        public int height;
        public int rotation;
        public long timestamp;
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

        public HumanProcessHardwareBufferRequestBuilder setRotation(int i) {
            this.rotation = i;
            return this;
        }

        public HumanProcessHardwareBufferRequestBuilder setTimestamp(long j) {
            this.timestamp = j;
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
            return new HumanProcessHardwareBufferRequest(this.timestamp, this.cameraType, new HumanVideoHardwareBufferFrame(hardwareBuffer, imageType, i, i2, this.rotation));
        }
    }

    /* loaded from: classes.dex */
    public static class HumanProcessFrameRequest {
        public CameraType cameraType;
        public HumanVideoFrame humanVideoFrame;
        public long timestamp;

        public static HumanProcessFrameRequestBuilder Builder() {
            return new HumanProcessFrameRequestBuilder();
        }

        public HumanProcessFrameRequest(CameraType cameraType, HumanVideoFrame humanVideoFrame) {
            this.cameraType = cameraType;
            this.humanVideoFrame = humanVideoFrame;
        }

        public HumanProcessFrameRequest(long j, CameraType cameraType, HumanVideoFrame humanVideoFrame) {
            this.timestamp = j;
            this.cameraType = cameraType;
            this.humanVideoFrame = humanVideoFrame;
        }

        public boolean IsValid() {
            HumanVideoFrame humanVideoFrame = this.humanVideoFrame;
            return humanVideoFrame != null && humanVideoFrame.IsValid();
        }
    }

    /* loaded from: classes.dex */
    public static class HumanProcessFrameRequestBuilder {
        static final /* synthetic */ boolean $assertionsDisabled = false;
        public CameraType cameraType;
        public byte[] data;
        public int height;
        public int rotation;
        public long timestamp;
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

        public HumanProcessFrameRequestBuilder setTimestamp(long j) {
            this.timestamp = j;
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
            return new HumanProcessFrameRequest(this.timestamp, this.cameraType, new HumanVideoFrame(bArr, imageType, i, i2, this.rotation));
        }
    }

    /* loaded from: classes.dex */
    public static class HumanProcessTextureRequest {
        public CameraType cameraType;
        public HumanVideoTexture humanVideoTexture;
        public long timestamp;

        public static HumanProcessTextureRequestBuilder Builder() {
            return new HumanProcessTextureRequestBuilder();
        }

        public HumanProcessTextureRequest(CameraType cameraType, HumanVideoTexture humanVideoTexture) {
            this.cameraType = cameraType;
            this.humanVideoTexture = humanVideoTexture;
        }

        public HumanProcessTextureRequest(long j, CameraType cameraType, HumanVideoTexture humanVideoTexture) {
            this.timestamp = j;
            this.cameraType = cameraType;
            this.humanVideoTexture = humanVideoTexture;
        }

        public boolean IsValid() {
            HumanVideoTexture humanVideoTexture = this.humanVideoTexture;
            return humanVideoTexture != null && humanVideoTexture.IsValid();
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
        public long timestamp;
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

        public HumanProcessTextureRequestBuilder setTimestamp(long j) {
            this.timestamp = j;
            return this;
        }

        public HumanProcessTextureRequest build() {
            int i;
            int i2;
            int i3 = this.texID;
            if (i3 <= 0 || (i = this.width) <= 0 || (i2 = this.height) <= 0) {
                return null;
            }
            int i4 = this.rotation;
            if (i4 % 90 != 0 || this.cameraType == null) {
                return null;
            }
            return new HumanProcessTextureRequest(this.timestamp, this.cameraType, new HumanVideoTexture(i3, this.isOES, i, i2, i4));
        }
    }

    /* loaded from: classes.dex */
    public static class HumanVideoHardwareBufferFrame {
        public HardwareBuffer data;
        public int height;
        public int rotation;
        public ImageType type;
        public int width;

        public HumanVideoHardwareBufferFrame(HardwareBuffer hardwareBuffer, ImageType imageType, int i, int i2, int i3) {
            this.data = hardwareBuffer;
            this.type = imageType;
            this.width = i;
            this.height = i2;
            this.rotation = i3;
        }

        public boolean IsValid() {
            return this.data != null && this.width > 0 && this.height > 0 && this.type != null;
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
        public float bgLightFactor;
        public float blue;
        public float blurIntensity;
        public float bokehMaxRadiusFactor;
        public float faculaDensity;
        public float green;
        public float lightFactor;
        public float maxLightThreshold;
        public float minLightThreshold;
        public float red;
        public float saturation;
        public float smoothAmount;
        public float yellow;

        public HumanVideoFusionParams() {
            this.blurIntensity = -1.0f;
            this.lightFactor = -1.0f;
            this.bokehMaxRadiusFactor = -1.0f;
            this.bgLightFactor = -1.0f;
            this.maxLightThreshold = -1.0f;
            this.minLightThreshold = -1.0f;
            this.saturation = -1.0f;
            this.faculaDensity = -1.0f;
            this.smoothAmount = -1.0f;
            this.red = -1.0f;
            this.green = -1.0f;
            this.blue = -1.0f;
            this.yellow = -1.0f;
        }

        public HumanVideoFusionParams(float f) {
            this.lightFactor = -1.0f;
            this.bokehMaxRadiusFactor = -1.0f;
            this.bgLightFactor = -1.0f;
            this.maxLightThreshold = -1.0f;
            this.minLightThreshold = -1.0f;
            this.saturation = -1.0f;
            this.faculaDensity = -1.0f;
            this.smoothAmount = -1.0f;
            this.red = -1.0f;
            this.green = -1.0f;
            this.blue = -1.0f;
            this.yellow = -1.0f;
            this.blurIntensity = f;
        }

        public HumanVideoFusionParams UpdateBlurIntensity(float f) {
            this.blurIntensity = f;
            return this;
        }

        public HumanVideoFusionParams UpdateLightFactor(float f) {
            this.lightFactor = f;
            return this;
        }

        public HumanVideoFusionParams UpdateBokehMaxRadiusFactor(float f) {
            this.bokehMaxRadiusFactor = f;
            return this;
        }

        public HumanVideoFusionParams UpdateBgLightFactor(float f) {
            this.bgLightFactor = f;
            return this;
        }

        public HumanVideoFusionParams UpdateMaxLightThreshold(float f) {
            this.maxLightThreshold = f;
            return this;
        }

        public HumanVideoFusionParams UpdateMinLightThreshold(float f) {
            this.minLightThreshold = f;
            return this;
        }

        public HumanVideoFusionParams UpdateSaturation(float f) {
            this.saturation = f;
            return this;
        }

        public HumanVideoFusionParams UpdateFaculaDensity(float f) {
            this.faculaDensity = f;
            return this;
        }

        public HumanVideoFusionParams UpdateSmoothAmount(float f) {
            this.smoothAmount = f;
            return this;
        }

        public HumanVideoFusionParams UpdateColorValue(float f, float f2, float f3, float f4) {
            this.red = f;
            this.green = f2;
            this.blue = f3;
            this.yellow = f4;
            return this;
        }
    }

    /* loaded from: classes.dex */
    public enum SdkLoadType {
        ANC_LOAD_TYPE_DLOEPN,
        ANC_LOAD_TYPE_ANDROID_DLOPEN,
        ANC_LOAD_TYPE_VNDKSUPPORT;

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

    public void preInit() {
        try {
            Util.loadJNILibrary(JNI_SONAME);
        } catch (Exception e) {
            e.printStackTrace();
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

    /* loaded from: classes.dex */
    public enum ImageType {
        ANC_HUM_IMG_FMT_GRAY(0),
        ANC_HUM_IMG_FMT_RGB(1),
        ANC_HUM_IMG_FMT_BGR(2),
        ANC_HUM_IMG_FMT_RGBA(3),
        ANC_HUM_IMG_FMT_BGRA(4),
        ANC_HUM_IMG_FMT_YUV_NV12(OplusExifTag.EXIF_TAG_PROFESSION),
        ANC_HUM_IMG_FMT_YUV_NV21(257);
        
        private final int value;

        ImageType(int i) {
            this.value = i;
        }

        public int GetValue() {
            return this.value;
        }
    }
}

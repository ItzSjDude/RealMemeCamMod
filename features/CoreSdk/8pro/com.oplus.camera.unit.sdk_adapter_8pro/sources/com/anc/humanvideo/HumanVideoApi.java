package com.anc.humanvideo;

import android.annotation.SuppressLint;
import android.util.Log;
import com.common.Util;
import com.oplus.exif.OplusExifTag;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
/* loaded from: classes.dex */
public class HumanVideoApi {
    static final String TAG = "HumanVideoApi";
    private AtomicLong handle = new AtomicLong(0);
    private AtomicInteger mPendingLogLevel = new AtomicInteger(-1);
    private int runtime_featureset;
    private int sdk_featureset;
    private static HumanVideoApi sInstance = new HumanVideoApi();
    private static AtomicBoolean isSoLoaded = new AtomicBoolean(false);

    /* loaded from: classes.dex */
    public enum CameraType {
        MODE_REAR_CAMERA,
        MODE_FRONT_CAMERA
    }

    /* loaded from: classes.dex */
    public static class HumanFrame {
        public byte[] data;
        public int height;
        public int rotation;
        public ImageType type;
        public int width;
    }

    /* loaded from: classes.dex */
    public static class HumanProcessFrameRequest extends HumanProcessRequest {
        public HumanFrame humanFrame = new HumanFrame();
    }

    /* loaded from: classes.dex */
    public static class HumanProcessFrameResult extends HumanProcessResult {
        public HumanFrame humanFrame = new HumanFrame();
    }

    /* loaded from: classes.dex */
    public static class HumanProcessRequest {
        public CameraType cameraType;
    }

    /* loaded from: classes.dex */
    public static class HumanProcessResult {
    }

    /* loaded from: classes.dex */
    public static class HumanProcessTextureRequest extends HumanProcessRequest {
        public HumanTexture humanTexture = new HumanTexture();
    }

    /* loaded from: classes.dex */
    public static class HumanProcessTexureResult extends HumanProcessResult {
        public HumanTexture humanTexture = new HumanTexture();
    }

    /* loaded from: classes.dex */
    public static class HumanTexture {
        public int height;
        public boolean isOES;
        public int rotation;
        public int texID;
        public int width;
    }

    /* loaded from: classes.dex */
    public static class HumanVideoBokehParams extends HumanVideoParams {
        public float blurIntensity;
    }

    /* loaded from: classes.dex */
    public static class HumanVideoParams {
    }

    /* loaded from: classes.dex */
    public static class HumanVideoRetainParams extends HumanVideoParams {
        public String bgPath;
        public String fgPath;
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

    private native int nativeEnableRunTimeFeature(long j, int i);

    private native long nativeInitHandle(HumanVideoConfig humanVideoConfig);

    private native int nativeProcessFrame(long j, byte[] bArr, byte[] bArr2, int i, int i2, int i3, int i4, int i5, int i6);

    private native int nativeProcessTexture(long j, int i, int i2, int i3, int i4, int i5, boolean z);

    private native int nativeRelease(long j);

    private native String nativeSdkVersion();

    private native int nativeSetLogLevel(int i);

    private native int nativeSetParamsBokeh(long j, HumanVideoBokehParams humanVideoBokehParams);

    private native int nativeSetParamsRetain(long j, HumanVideoRetainParams humanVideoRetainParams);

    public static HumanVideoApi getInstance() {
        return sInstance;
    }

    public int setLogLevel(int i) {
        if (i >= 0 && i <= 4) {
            if (!isSoLoaded.get()) {
                this.mPendingLogLevel.set(i);
                return -1;
            }
            nativeSetLogLevel(i);
            return 0;
        }
        Log.e(TAG, "setLogLevel: log level must be 1~4");
        return 1;
    }

    public String getVersion() {
        return !isSoLoaded.get() ? "" : nativeSdkVersion();
    }

    public int initHandle(HumanVideoConfig humanVideoConfig) {
        String str = TAG;
        StringBuilder sb = new StringBuilder();
        sb.append("init by config BuildNumber: 100 isRealTime: ");
        sb.append(humanVideoConfig != null ? humanVideoConfig.toString() : " null config");
        Log.i(str, sb.toString());
        if (humanVideoConfig == null) {
            Log.e(str, "initHandle: config invalid!");
            return 1;
        }
        if (humanVideoConfig.modelData == null) {
            if (humanVideoConfig.modelPath == null) {
                Log.e(str, "initHandle: config invalid, model is null!");
                return 1;
            }
            humanVideoConfig.modelData = getFileContent(humanVideoConfig.modelPath);
        }
        if (humanVideoConfig.cachePath != null) {
            File file = new File(humanVideoConfig.cachePath);
            if (file.isFile()) {
                file.delete();
            }
            if (!file.exists()) {
                file.mkdirs();
            }
        }
        if (this.handle.get() != 0) {
            Log.e(str, "initHandle:handle start init failure!");
            return 5;
        }
        if (!isSoLoaded.get()) {
            System.loadLibrary("AncHumanVideo-jni");
            isSoLoaded.set(true);
        }
        if (humanVideoConfig.cachePath == null) {
            humanVideoConfig.cachePath = "";
        }
        if (humanVideoConfig.nativeLibPath == null) {
            humanVideoConfig.nativeLibPath = "";
        }
        this.sdk_featureset = humanVideoConfig.sdkCapability;
        this.runtime_featureset = FeatureType.ANCHUM_FEATURE_NONE.getValue();
        this.handle.set(nativeInitHandle(humanVideoConfig));
        return 0;
    }

    public void preInit() {
        try {
            Util.loadJNILibrary("AncHumanVideo-jni");
            isSoLoaded.set(true);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public int enableRuntimeFeature(FeatureType featureType, boolean z) {
        if (this.handle.get() == 0) {
            return 2;
        }
        if ((this.sdk_featureset & featureType.getValue()) == 0) {
            Log.e(TAG, "enableRuntimeFeature: FeatureType not available!");
            return 1;
        }
        if (z) {
            this.runtime_featureset = featureType.getValue() | this.runtime_featureset;
        } else {
            this.runtime_featureset = (~featureType.getValue()) & this.runtime_featureset;
        }
        return nativeEnableRunTimeFeature(this.handle.get(), this.runtime_featureset);
    }

    public int setParams(HumanVideoParams humanVideoParams) {
        if (this.handle.get() == 0) {
            Log.e(TAG, "setParams: handle is invalid!");
            return 2;
        } else if (humanVideoParams instanceof HumanVideoBokehParams) {
            return nativeSetParamsBokeh(this.handle.get(), (HumanVideoBokehParams) humanVideoParams);
        } else {
            if (humanVideoParams instanceof HumanVideoRetainParams) {
                return nativeSetParamsRetain(this.handle.get(), (HumanVideoRetainParams) humanVideoParams);
            }
            Log.e(TAG, "setParams: params type is invalid!");
            return 1;
        }
    }

    public int process(HumanProcessRequest humanProcessRequest, HumanProcessResult humanProcessResult) {
        if (this.handle.get() == 0) {
            Log.e(TAG, "process: handle is invalid!");
            return 2;
        } else if ((humanProcessRequest instanceof HumanProcessTextureRequest) && (humanProcessResult instanceof HumanProcessTexureResult)) {
            HumanProcessTextureRequest humanProcessTextureRequest = (HumanProcessTextureRequest) humanProcessRequest;
            return nativeProcessTexture(this.handle.get(), humanProcessTextureRequest.humanTexture.texID, ((HumanProcessTexureResult) humanProcessResult).humanTexture.texID, humanProcessTextureRequest.humanTexture.width, humanProcessTextureRequest.humanTexture.height, humanProcessTextureRequest.humanTexture.rotation, humanProcessTextureRequest.humanTexture.isOES);
        } else if ((humanProcessRequest instanceof HumanProcessFrameRequest) && (humanProcessResult instanceof HumanProcessFrameResult)) {
            HumanProcessFrameRequest humanProcessFrameRequest = (HumanProcessFrameRequest) humanProcessRequest;
            HumanProcessFrameResult humanProcessFrameResult = (HumanProcessFrameResult) humanProcessResult;
            return nativeProcessFrame(this.handle.get(), humanProcessFrameRequest.humanFrame.data, humanProcessFrameResult.humanFrame.data, humanProcessFrameRequest.humanFrame.width, humanProcessFrameRequest.humanFrame.height, (humanProcessFrameResult.humanFrame.width == 0 ? humanProcessFrameRequest.humanFrame : humanProcessFrameResult.humanFrame).width, (humanProcessFrameResult.humanFrame.height == 0 ? humanProcessFrameRequest.humanFrame : humanProcessFrameResult.humanFrame).height, humanProcessFrameRequest.humanFrame.type.ordinal(), humanProcessFrameRequest.humanFrame.rotation);
        } else {
            Log.e(TAG, "process: request type is invalid!");
            return 2;
        }
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
            Log.e(TAG, "getFileContent: get model from path failure!");
            return null;
        }
    }

    /* loaded from: classes.dex */
    public static class HumanVideoConfig {
        public String cachePath;
        public boolean isRealTime;
        public byte[] modelData;
        public String modelPath;
        public String nativeLibPath;
        public int sdkCapability;

        @SuppressLint({"DefaultLocale"})
        public String toString() {
            Object[] objArr = new Object[5];
            objArr[0] = Integer.valueOf(this.sdkCapability);
            byte[] bArr = this.modelData;
            objArr[1] = Integer.valueOf(bArr != null ? bArr.length : 0);
            objArr[2] = this.cachePath != null ? new File(this.cachePath).getName() : "null";
            objArr[3] = this.nativeLibPath != null ? new File(this.nativeLibPath).getName() : "null";
            objArr[4] = Boolean.valueOf(this.isRealTime);
            return String.format("sdkCapability %d, model size %d, cache path %s, lib path %s, realtime %b", objArr);
        }
    }

    /* loaded from: classes.dex */
    public enum FeatureType {
        ANCHUM_FEATURE_NONE(0),
        ANCHUM_FEATURE_BOKEH(1),
        ANCHUM_FEATURE_RETAIN(2),
        ANCHUM_FEATURE_SEGMENT(4);
        
        private final int value;

        FeatureType(int i) {
            this.value = i;
        }

        public int getValue() {
            return this.value;
        }
    }
}

package com.anc.humansdk.retain;

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

/* JADX INFO: loaded from: classes.dex */
public class HumanEffectRetainApiV2 {
    static final String TAG = "HumanEffectRetainApiV2";
    static final boolean DEBUG = Log.isLoggable("HumanEffectRetainApiV2", 3);
    private static HumanEffectRetainApiV2 sInstance = new HumanEffectRetainApiV2();
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

    private native long nativeInitHandle(HumanVideoConfig humanVideoConfig);

    private native long nativeInitHandleWithConfig(HumanVideoConfig humanVideoConfig);

    @Deprecated
    private native long nativeInitHandleWithParams(boolean z, byte[] bArr, String str, String str2, boolean z2, String str3, int i);

    private native int nativeProcessFrame(long j, byte[] bArr, byte[] bArr2, int i, int i2, int i3, int i4, int i5, int i6);

    private native int nativeProcessTexture(long j, int i, int i2, int i3, int i4, int i5, boolean z);

    private native int nativeRelease(long j);

    private native String nativeSdkVersion();

    private native int nativeSetLogLevel(int i);

    private native int nativeSetParams(long j, HumanVideoRetainParams humanVideoRetainParams);

    public int initHandle(HumanVideoConfig humanVideoConfig) {
        String str = TAG;
        StringBuilder sb = new StringBuilder();
        sb.append("init by config BuildNumber: 572 isRealTime: ");
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
            if (humanVideoConfig.modelData == null || humanVideoConfig.modelData.length <= 0) {
                return 1;
            }
        }
        File file = new File(humanVideoConfig.cachePath);
        if (file.isFile()) {
            file.delete();
        }
        if (!file.exists()) {
            file.mkdirs();
        }
        if (this.handle.get() != 0) {
            Log.e(str, "initHandle:handle start init failure!");
            return 3;
        }
        if (!isSoLoaded.get()) {
            System.loadLibrary("AncHumanRetain-jni_v2");
            isSoLoaded.set(true);
        }
        if (humanVideoConfig.cachePath == null) {
            humanVideoConfig.cachePath = "";
        }
        if (humanVideoConfig.nativeLibPath == null) {
            humanVideoConfig.nativeLibPath = "";
        }
        this.handle.set(nativeInitHandleWithConfig(humanVideoConfig));
        Log.i(str, "initHandle, version: " + getVersion());
        return this.handle.get() != 0 ? 0 : 3;
    }

    public void preInit() {
        try {
            Util.loadJNILibrary("AncHumanRetain-jni_v2");
            isSoLoaded.set(true);
        } catch (Exception e) {
            e.printStackTrace();
        }
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

    public int setParams(HumanVideoRetainParams humanVideoRetainParams) {
        if (this.handle.get() == 0) {
            Log.e(TAG, "setParams: handle is invalid!");
            return 2;
        }
        if (humanVideoRetainParams.bgPath != null && humanVideoRetainParams.fgPath != null && !humanVideoRetainParams.bgPath.equals("") && !humanVideoRetainParams.fgPath.equals("")) {
            return nativeSetParams(this.handle.get(), humanVideoRetainParams);
        }
        Log.e(TAG, "setParams: invalid args");
        return 1;
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

    public static HumanEffectRetainApiV2 getInstance() {
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

    public static class HumanVideoConfig {
        public String cachePath;
        public boolean isBackCamera;
        public boolean isRealTime;
        public byte[] modelData;
        public String modelPath;
        public String nativeLibPath;
        public int powerMode;
        public int sdkLoadType;

        public HumanVideoConfig(boolean z, byte[] bArr, String str, String str2, String str3, boolean z2) {
            this.powerMode = SdkPowerMode.ANC_HUM_POWER_DEFAULT.ordinal();
            this.sdkLoadType = SdkLoadType.ANC_LOAD_TYPE_DLOEPN.ordinal();
            this.isRealTime = z;
            this.modelData = bArr;
            this.cachePath = str;
            this.nativeLibPath = str2;
            this.isBackCamera = z2;
            this.modelPath = str3;
        }

        public HumanVideoConfig(byte[] bArr, boolean z, String str, String str2, String str3) {
            this.powerMode = SdkPowerMode.ANC_HUM_POWER_DEFAULT.ordinal();
            this.sdkLoadType = SdkLoadType.ANC_LOAD_TYPE_DLOEPN.ordinal();
            this.modelData = bArr;
            this.isRealTime = z;
            this.cachePath = str;
            this.nativeLibPath = str2;
            this.modelPath = str3;
            this.isBackCamera = true;
        }

        public HumanVideoConfig(boolean z, byte[] bArr, String str, String str2, String str3, boolean z2, SdkLoadType sdkLoadType) {
            this.powerMode = SdkPowerMode.ANC_HUM_POWER_DEFAULT.ordinal();
            this.sdkLoadType = SdkLoadType.ANC_LOAD_TYPE_DLOEPN.ordinal();
            this.isRealTime = z;
            this.modelData = bArr;
            this.cachePath = str;
            this.nativeLibPath = str2;
            this.isBackCamera = z2;
            this.modelPath = str3;
            this.sdkLoadType = sdkLoadType.ordinal();
        }

        public void setSdkLoadType(SdkLoadType sdkLoadType) {
            this.sdkLoadType = sdkLoadType.ordinal();
        }

        public HumanVideoConfig() {
            this.powerMode = SdkPowerMode.ANC_HUM_POWER_DEFAULT.ordinal();
            this.sdkLoadType = SdkLoadType.ANC_LOAD_TYPE_DLOEPN.ordinal();
            this.modelData = null;
            this.isRealTime = true;
            this.cachePath = "";
            this.nativeLibPath = "";
            this.isBackCamera = true;
            this.modelPath = "";
            this.powerMode = SdkPowerMode.ANC_HUM_POWER_DEFAULT.ordinal();
            this.sdkLoadType = SdkLoadType.ANC_LOAD_TYPE_DLOEPN.ordinal();
        }

        public String toString() {
            Object[] objArr = new Object[5];
            byte[] bArr = this.modelData;
            objArr[0] = Integer.valueOf(bArr != null ? bArr.length : 0);
            objArr[1] = this.cachePath != null ? new File(this.cachePath).getName() : "null";
            objArr[2] = this.nativeLibPath != null ? new File(this.nativeLibPath).getName() : "null";
            objArr[3] = Boolean.valueOf(this.isRealTime);
            objArr[4] = Integer.valueOf(this.sdkLoadType);
            return String.format("model size %d, cache path %s, lib path %s, realtime %b, sdkLoadType %d", objArr);
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

        public HumanProcessTexureResult(int i, boolean z, int i2, int i3, int i4) {
            this.humanVideoTexture = new HumanVideoTexture(i, z, i2, i3, i4);
        }

        public boolean IsValid() {
            HumanVideoTexture humanVideoTexture = this.humanVideoTexture;
            return humanVideoTexture != null && humanVideoTexture.IsValid();
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
            return new HumanProcessTextureRequest(this.cameraType, new HumanVideoTexture(i3, this.isOES, i, i2, i4));
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

    public static class HumanVideoRetainParams {
        public String bgPath;
        public String fgPath;

        public HumanVideoRetainParams(String str, String str2) {
            this.fgPath = str;
            this.bgPath = str2;
        }
    }
}

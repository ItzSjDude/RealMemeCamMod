package com.oplus.camera.facebeauty;

import android.text.TextUtils;
import com.common.Util;
import java.io.File;
/* loaded from: classes.dex */
public class OplusFaceBeautyPreview {
    public native int destroy();

    public native long getTimeStamp();

    public native float getZoomScale();

    public native int init(int i, int i2, int i3, int i4, String str, String str2, String str3, boolean z, boolean z2, byte[] bArr, int i5);

    public native int process(int i, int[] iArr, int[] iArr2, int[] iArr3);

    public native int reset();

    public native int setPreviewParams(String str, String str2);

    public native int updataFfd(byte[] bArr);

    public native int updataMetaParams(byte[] bArr);

    public native int updataPreviewParams(long j);

    static {
        if (Util.isQcomPlatform()) {
            if (isFileExist("/product/lib64/libApsFaceBeautyPreviewProductJni.so")) {
                System.loadLibrary("ApsFaceBeautyPreviewProductJni");
            } else if (isFileExist("/system_ext/lib64/libApsFaceBeautyPreviewJni.qti.so")) {
                System.loadLibrary("ApsFaceBeautyPreviewJni.qti");
            } else {
                System.loadLibrary("ApsFaceBeautyPreviewJni");
            }
        } else if (isFileExist("/product/lib64/libApsFaceBeautyPreviewProductJni.so")) {
            System.loadLibrary("ApsFaceBeautyPreviewProductJni");
        } else if (isFileExist("/system_ext/lib64/libApsFaceBeautyPreviewJni.trustonic.so")) {
            System.loadLibrary("ApsFaceBeautyPreviewJni.trustonic");
        } else {
            System.loadLibrary("ApsFaceBeautyPreviewJni");
        }
    }

    private static synchronized boolean isFileExist(String str) {
        boolean z;
        synchronized (OplusFaceBeautyPreview.class) {
            if (TextUtils.isEmpty(str)) {
                throw new IllegalArgumentException("file path is empty!");
            }
            File file = new File(str);
            z = file.exists() && file.length() != 0;
        }
        return z;
    }
}

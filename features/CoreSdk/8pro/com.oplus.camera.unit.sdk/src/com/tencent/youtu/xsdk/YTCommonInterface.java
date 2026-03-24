package com.tencent.youtu.xsdk;

import android.content.Context;
import android.util.Base64;
import android.util.Log;
import com.oplus.exif.OplusExifTag;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
/* loaded from: classes.dex */
public class YTCommonInterface {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private static String TAG = "YTCommon";
    private static int enable_log = 1;
    private long nativePtr;

    public static native long getEndTime();

    public static native int[] getSDKList();

    public static native String getSDKNameByID(int i);

    public static native String getVersion();

    private static native int nativeGetDeviceInfo(YTDeviceInfo yTDeviceInfo);

    private static native int nativeInitAuthByAssets(String str, String str2);

    private static native int nativeInitAuthByString(String str, String str2);

    private static native int nativeInitAuthForQQ();

    private static native void nativePrintAuthResult(int i);

    private static native void nativeSetEnableLog(int i);

    public static int initAuthByAssets(String str, String str2) {
        if (str2 == null) {
            str2 = "";
        }
        return nativeInitAuthByAssets(str, str2);
    }

    public static int initAuthByFilePath(String str, String str2) {
        if (str2 == null) {
            str2 = "";
        }
        File file = new File(str);
        if (file.exists()) {
            try {
                FileInputStream fileInputStream = new FileInputStream(file);
                byte[] bArr = new byte[OplusExifTag.EXIF_TAG_NIGHT_SCENE];
                int read = fileInputStream.read(bArr);
                fileInputStream.close();
                if (read < 2048) {
                    return nativeInitAuthByString(Base64.encodeToString(bArr, 0, read, 2).toString(), str2);
                }
                if (enable_log != 0) {
                    Log.e(TAG, "license length oversize.");
                    return -2;
                }
                return -2;
            } catch (FileNotFoundException e) {
                if (enable_log != 0) {
                    String str3 = TAG;
                    Log.e(str3, "file not found: " + str);
                    e.printStackTrace();
                    Log.e("YTCommon", "优图鉴权：读取文件失败，请检查APP是否拥有READ_EXTERNAL_STORAGE权限。");
                }
                return -10;
            } catch (IOException e2) {
                if (enable_log != 0) {
                    String str4 = TAG;
                    Log.e(str4, "io error: " + str);
                    e2.printStackTrace();
                    return -4;
                }
                return -4;
            }
        }
        if (enable_log != 0) {
            String str5 = TAG;
            Log.e(str5, "file not exists: " + str);
        }
        return -10;
    }

    public static int initAuthByString(String str, String str2) {
        if (str2 == null) {
            str2 = "";
        }
        return nativeInitAuthByString(str, str2);
    }

    public static int initAuthForQQ() {
        return nativeInitAuthForQQ();
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x0072  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x011f A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int initAuthOnlineWithCache(android.content.Context r10, java.lang.String r11, java.lang.String r12, java.lang.String r13, java.lang.String r14, boolean r15) {
        /*
            Method dump skipped, instructions count: 381
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.youtu.xsdk.YTCommonInterface.initAuthOnlineWithCache(android.content.Context, java.lang.String, java.lang.String, java.lang.String, java.lang.String, boolean):int");
    }

    public static int getDeviceInfo(Context context, YTDeviceInfo yTDeviceInfo) {
        return nativeGetDeviceInfo(yTDeviceInfo);
    }

    public static void setEnableLog(int i) {
        nativeSetEnableLog(i);
        enable_log = i;
    }
}

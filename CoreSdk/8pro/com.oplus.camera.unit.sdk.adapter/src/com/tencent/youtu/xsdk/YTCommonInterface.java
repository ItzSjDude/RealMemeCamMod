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

    /* JADX WARN: Removed duplicated region for block: B:20:0x0072 */
    /*
     * JADX WARN: Removed duplicated region for block: B:65:0x011f
     * A[EXC_TOP_SPLITTER, SYNTHETIC]
     */
    /*
     * Code decompiled incorrectly, please refer to instructions dump.
     * To view partially-correct add '--show-bad-code' argument
     */
    public static int initAuthOnlineWithCache(Context context, String str, String str2, String str3, String str4,
            boolean z) {
        int i;
        boolean z2;
        File file = new File(str2);
        if (file.exists()) {
            if (enable_log != 0) {
                Log.d(TAG, "license cache found: " + str2);
            }
            i = initAuthByFilePath(str2, str4);
            if (i == 0) {
                long duration = (getEndTime() - (System.currentTimeMillis() / 1000)) / 86400; // 24 * 3600 = 86400
                if (duration < 0 || duration > 7) {
                    z2 = false;
                } else {
                    if (enable_log != 0) {
                        Log.i(TAG, "youtu auth will expire in " + duration + " days");
                    }
                    z2 = true;
                }
            } else {
                z2 = true;
            }
        } else {
            i = 1002;
            z2 = true;
        }
        if (z2) {
            if (enable_log != 0) {
                Log.i(TAG, "youtu fetchLicenseOnline");
            }
            YTDeviceInfo yTDeviceInfo = null;
            if (z) {
                yTDeviceInfo = new YTDeviceInfo();
                int deviceInfo = getDeviceInfo(context, yTDeviceInfo);
                if (deviceInfo != 0) {
                    if (enable_log != 0) {
                        Log.e(TAG, "getDeviceInfo failed: " + deviceInfo);
                    }
                    return deviceInfo;
                }
            }
            YTFetchLicenseHelper yTFetchLicenseHelper = new YTFetchLicenseHelper();
            YTFetchLicenseHelper.FetchLicenseResult fetchLicenseOnline = yTFetchLicenseHelper
                    .fetchLicenseOnline(context, str, str3, str4, yTDeviceInfo);
            if (fetchLicenseOnline.error_code == 0) {
                int initAuthByString = initAuthByString(fetchLicenseOnline.license, str4);
                if (!fetchLicenseOnline.auth_type.equals("test") || !fetchLicenseOnline.bind_type.equals("APP")) {
                    if (initAuthByString == 0) {
                        i = initAuthByString;
                        z2 = true;
                    } else {
                        i = initAuthByString;
                        z2 = false;
                    }
                } else {
                    if (enable_log != 0) {
                        Log.i(TAG, "youtu test license will not cache");
                    }
                    i = initAuthByString;
                    z2 = false;
                }
            } else {
                if (enable_log != 0) {
                    Log.e(TAG, "fetch license failed: http_status: " + fetchLicenseOnline.http_status + " error_code: "
                            + fetchLicenseOnline.error_code + " error_msg: " + fetchLicenseOnline.error_msg);
                }
                int i2 = fetchLicenseOnline.error_code;
                if (enable_log != 0) {
                    nativePrintAuthResult(i2);
                }
                i = i2;
                z2 = false;
            }
            if (z2) {
                try {
                    FileOutputStream fileOutputStream = new FileOutputStream(file);
                    fileOutputStream.write(Base64.decode(fetchLicenseOnline.license, 0));
                    fileOutputStream.flush();
                    fileOutputStream.close();
                    return 0;
                } catch (FileNotFoundException e) {
                    if (enable_log != 0) {
                        Log.e(TAG, "cache file not found: " + str2);
                        e.printStackTrace();
                        Log.e("YTCommon", "优图鉴权：读取文件失败，请检查APP是否拥有READ_EXTERNAL_STORAGE权限。");
                    }
                    return -10;
                } catch (IOException e2) {
                    if (enable_log != 0) {
                        Log.e(TAG, "io error: " + str2);
                        e2.printStackTrace();
                    }
                    return -4;
                }
            }
        }
        return i;
    }

    public static int getDeviceInfo(Context context, YTDeviceInfo yTDeviceInfo) {
        return nativeGetDeviceInfo(yTDeviceInfo);
    }

    public static void setEnableLog(int i) {
        nativeSetEnableLog(i);
        enable_log = i;
    }
}

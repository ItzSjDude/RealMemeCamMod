package com.tencent.youtu.xsdk;

import android.content.Context;
import android.util.Base64;
import android.util.Log;
import com.oplus.exif.OplusExifTag;
import com.oplus.statistics.DataTypeConstants;
import com.tencent.youtu.xsdk.YTFetchLicenseHelper;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
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
                int i = fileInputStream.read(bArr);
                fileInputStream.close();
                if (i < 2048) {
                    return nativeInitAuthByString(Base64.encodeToString(bArr, 0, i, 2).toString(), str2);
                }
                if (enable_log == 0) {
                    return -2;
                }
                Log.e(TAG, "license length oversize.");
                return -2;
            } catch (FileNotFoundException e) {
                if (enable_log != 0) {
                    Log.e(TAG, "file not found: " + str);
                    e.printStackTrace();
                    Log.e("YTCommon", "优图鉴权：读取文件失败，请检查APP是否拥有READ_EXTERNAL_STORAGE权限。");
                }
                return -10;
            } catch (IOException e2) {
                if (enable_log == 0) {
                    return -4;
                }
                Log.e(TAG, "io error: " + str);
                e2.printStackTrace();
                return -4;
            }
        }
        if (enable_log != 0) {
            Log.e(TAG, "file not exists: " + str);
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
    */
    public static int initAuthOnlineWithCache(Context context, String str, String str2, String str3, String str4, boolean z) {
        int iInitAuthByFilePath;
        boolean z2 = false;
        int iInitAuthByString;
        int deviceInfo;
        File file = new File(str2);
        boolean z3 = true;
        if (file.exists()) {
            if (enable_log != 0) {
                Log.d(TAG, "license cache found: " + str2);
            }
            iInitAuthByFilePath = initAuthByFilePath(str2, str4);
            if (iInitAuthByFilePath == 0) {
                long endTime = ((getEndTime() - (System.currentTimeMillis() / 1000)) / 24) / 3600;
                if (endTime < 0 || endTime > 7) {
                    z2 = false;
                } else if (enable_log != 0) {
                    Log.i(TAG, "youtu auth will expire in " + endTime + " days");
                }
            }
            if (z2) {
                if (enable_log != 0) {
                    Log.i(TAG, "youtu fetchLicenseOnline");
                }
                YTDeviceInfo yTDeviceInfo = null;
                if (z && (deviceInfo = getDeviceInfo(context, (yTDeviceInfo = new YTDeviceInfo()))) != 0) {
                    if (enable_log != 0) {
                        Log.e(TAG, "getDeviceInfo failed: " + deviceInfo);
                    }
                    return deviceInfo;
                }
                YTFetchLicenseHelper.FetchLicenseResult fetchLicenseResultFetchLicenseOnline = new YTFetchLicenseHelper().fetchLicenseOnline(context, str, str3, str4, yTDeviceInfo);
                if (fetchLicenseResultFetchLicenseOnline.error_code == 0) {
                    iInitAuthByString = initAuthByString(fetchLicenseResultFetchLicenseOnline.license, str4);
                    if (!fetchLicenseResultFetchLicenseOnline.auth_type.equals("test") || !fetchLicenseResultFetchLicenseOnline.bind_type.equals("APP")) {
                        if (iInitAuthByString == 0) {
                            iInitAuthByFilePath = iInitAuthByString;
                        }
                        if (z3) {
                            try {
                                FileOutputStream fileOutputStream = new FileOutputStream(file);
                                fileOutputStream.write(Base64.decode(fetchLicenseResultFetchLicenseOnline.license, 0));
                                fileOutputStream.flush();
                                fileOutputStream.close();
                                return 0;
                            } catch (FileNotFoundException e) {
                                if (enable_log == 0) {
                                    return -10;
                                }
                                Log.e(TAG, "cache file not found: " + str2);
                                e.printStackTrace();
                                Log.e("YTCommon", "优图鉴权：读取文件失败，请检查APP是否拥有READ_EXTERNAL_STORAGE权限。");
                                return -10;
                            } catch (IOException e2) {
                                if (enable_log == 0) {
                                    return -4;
                                }
                                Log.e(TAG, "io error: " + str2);
                                e2.printStackTrace();
                                return -4;
                            }
                        }
                    } else if (enable_log != 0) {
                        Log.i(TAG, "youtu test license will not cache");
                    }
                } else {
                    if (enable_log != 0) {
                        Log.e(TAG, "fetch license failed: http_status: " + fetchLicenseResultFetchLicenseOnline.http_status + " error_code: " + fetchLicenseResultFetchLicenseOnline.error_code + " error_msg: " + fetchLicenseResultFetchLicenseOnline.error_msg);
                    }
                    iInitAuthByString = fetchLicenseResultFetchLicenseOnline.error_code;
                    if (enable_log != 0) {
                        nativePrintAuthResult(iInitAuthByString);
                    }
                }
                iInitAuthByFilePath = iInitAuthByString;
                z3 = false;
                if (z3) {
                }
            }
            return iInitAuthByFilePath;
        }
        iInitAuthByFilePath = DataTypeConstants.APP_LOG;
        z2 = true;
        if (z2) {
        }
        return iInitAuthByFilePath;
    }

    public static int getDeviceInfo(Context context, YTDeviceInfo yTDeviceInfo) {
        return nativeGetDeviceInfo(yTDeviceInfo);
    }

    public static void setEnableLog(int i) {
        nativeSetEnableLog(i);
        enable_log = i;
    }
}

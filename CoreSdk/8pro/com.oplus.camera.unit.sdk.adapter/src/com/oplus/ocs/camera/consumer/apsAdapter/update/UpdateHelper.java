package com.oplus.ocs.camera.consumer.apsAdapter.update;

import android.content.Context;
import com.oplus.ocs.camera.consumer.apsAdapter.ApsAdapterLog;
import java.io.File;
import java.io.FileInputStream;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class UpdateHelper {
    public static final String CONFIG_FILE_DATA = "file_data";
    public static final String CONFIG_FILE_VERSION = "file_version";
    private static final String TAG = "UpdateHelper";

    private UpdateHelper() {
    }

    public static String getRusUpdatePath(Context context, String str) {
        String str2 = context.getFilesDir().getAbsolutePath() + str;
        if (!new File(str2).exists()) {
            return null;
        }
        ApsAdapterLog.v(TAG, "getRusUpdatePath, updatePath: " + str2);
        return str2;
    }

    /* JADX DEBUG: Another duplicated slice has different insns count: {[IF]}, finally: {[IF, INVOKE, MOVE_EXCEPTION, INVOKE, MOVE_EXCEPTION] complete} */
    /* JADX WARN: Removed duplicated region for block: B:59:0x0127 A[Catch: all -> 0x001f, TRY_LEAVE, TryCatch #7 {all -> 0x001f, blocks: (B:10:0x0019, B:59:0x0127, B:57:0x0124, B:56:0x0121, B:53:0x011c), top: B:84:0x0019, outer: #6, inners: #0 }] */
    /* JADX WARN: Removed duplicated region for block: B:68:0x0138 A[Catch: Exception -> 0x0013, TRY_LEAVE, TryCatch #6 {Exception -> 0x0013, blocks: (B:4:0x000d, B:68:0x0138, B:66:0x0135, B:65:0x0132, B:62:0x012d, B:10:0x0019, B:59:0x0127, B:57:0x0124, B:56:0x0121), top: B:83:0x000d, inners: #1, #7 }] */
    /* JADX WARN: Removed duplicated region for block: B:72:0x011c A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static String getValidConfigData(Context context, String str) {
        FileInputStream fileInputStream;
        String rusUpdatePath = getRusUpdatePath(context, str);
        FileInputStream fileInputStream2 = null;
        String str2 = "";
        if (rusUpdatePath != null) {
            try {
                fileInputStream = new FileInputStream(rusUpdatePath);
            } catch (Exception e) {
                ApsAdapterLog.e(TAG, "getValidConfigData, e: " + e.getMessage());
            }
        } else {
            fileInputStream = null;
        }
        if (str != null) {
            try {
                fileInputStream2 = new FileInputStream(str);
            } finally {
            }
        }
        try {
            if (fileInputStream2 == null || fileInputStream == null) {
                if (fileInputStream2 != null) {
                    byte[] bArr = new byte[fileInputStream2.available()];
                    fileInputStream2.read(bArr);
                    String str3 = new String(bArr, "UTF-8");
                    try {
                        ApsAdapterLog.d(TAG, "getValidConfigData, no rus, use ota, path: " + str);
                        str2 = str3;
                    } catch (Throwable th) {
                        th = th;
                        str2 = str3;
                        if (fileInputStream2 != null) {
                        }
                        throw th;
                    }
                }
                if (fileInputStream2 != null) {
                    fileInputStream2.close();
                }
                if (fileInputStream != null) {
                    fileInputStream.close();
                }
            } else {
                byte[] bArr2 = new byte[fileInputStream2.available()];
                byte[] bArr3 = new byte[fileInputStream.available()];
                fileInputStream2.read(bArr2);
                fileInputStream.read(bArr3);
                String str4 = new String(bArr3, "UTF-8");
                String str5 = new String(bArr2, "UTF-8");
                try {
                    try {
                        if (isNewConfigFormat(str4) && isNewConfigFormat(str5)) {
                            if (new JSONObject(str4).getDouble(CONFIG_FILE_VERSION) > new JSONObject(str5).getDouble(CONFIG_FILE_VERSION)) {
                                ApsAdapterLog.d(TAG, "getValidConfigData, use rus config with new version,  path: " + rusUpdatePath);
                            } else {
                                ApsAdapterLog.d(TAG, "getValidConfigData, use ota config with new version, path: " + str);
                                str4 = str5;
                            }
                        } else if (!isNewConfigFormat(str4) && isNewConfigFormat(str5)) {
                            ApsAdapterLog.d(TAG, "getValidConfigData, use ota config with new format, path: " + str);
                            str4 = str5;
                        } else if (isNewConfigFormat(str4) && !isNewConfigFormat(str5)) {
                            ApsAdapterLog.d(TAG, "getValidConfigData, use rus config with new format, path: " + rusUpdatePath);
                        } else {
                            ApsAdapterLog.d(TAG, "getValidConfigData, rus and ota are both old format, choose rus, path: " + rusUpdatePath);
                        }
                        str2 = str4;
                        if (fileInputStream2 != null) {
                        }
                        if (fileInputStream != null) {
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        str2 = str5;
                        if (fileInputStream2 != null) {
                            try {
                                fileInputStream2.close();
                            } catch (Throwable th3) {
                                th.addSuppressed(th3);
                            }
                        }
                        throw th;
                    }
                } catch (Throwable th4) {
                    th = th4;
                    str2 = str4;
                    if (fileInputStream2 != null) {
                    }
                    throw th;
                }
            }
            return str2;
        } catch (Throwable th5) {
            th = th5;
        }
    }

    public static boolean isNewConfigFormat(String str) {
        return str != null && str.substring(0, 50).contains(CONFIG_FILE_VERSION);
    }
}

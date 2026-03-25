package com.oplus.statistics.util;

import android.app.Application;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class ApkInfoUtil {
    private static final String TAG = "ApkInfoUtil";
    private static final Map<Application, String> sAppCodeCache = new HashMap();

    /*
     * JADX DEBUG: Can't inline method, not implemented redirect type for insn:
     * 0x0000: CONST_STR
     * "AppCode not set. please read the document of OplusTrack SDK."
     */
    static /* synthetic */ String lambda$getAppCode$1() {
        return "AppCode not set. please read the document of OplusTrack SDK.";
    }

    public static String getPackageName(Context context) {
        try {
            return context.getPackageManager().getPackageInfo(context.getPackageName(), 0).packageName;
        } catch (Exception e) {
            LogUtil.e(TAG, () -> e.toString());
            return "0";
        }
    }

    public static String getAppName(Context context) {
        try {
            PackageManager packageManager = context.getPackageManager();
            return packageManager.getPackageInfo(context.getPackageName(), 0).applicationInfo.loadLabel(packageManager)
                    .toString();
        } catch (Exception e) {
            LogUtil.e(TAG, () -> e.toString());
            return "0";
        }
    }

    public static String getVersionName(Context context) {
        String str = "0";
        try {
            final PackageInfo packageInfo = context.getPackageManager().getPackageInfo(context.getPackageName(), 0);
            if (packageInfo == null || packageInfo.versionName == null) {
                return "0";
            }
            str = packageInfo.versionName;
            LogUtil.i(TAG, new Supplier() { // from class:
                                            // com.oplus.statistics.util.ApkInfoUtil$$ExternalSyntheticLambda2
                @Override // com.oplus.statistics.util.Supplier
                public final Object get() {
                    return ApkInfoUtil.lambda$getVersionName$0(packageInfo);
                }
            });
            return str;
        } catch (Exception e) {
            LogUtil.e(TAG, () -> e.toString());
            return str;
        }
    }

    /*
     * JADX DEBUG: Can't inline method, not implemented redirect type for insn:
     * STR_CONCAT
     * ("versionName=")
     * (wrap:java.lang.String:0x000a: IGET (r2v0 android.content.pm.PackageInfo)
     * A[WRAPPED] android.content.pm.PackageInfo.versionName java.lang.String)
     * A[MD:():java.lang.String (c), SYNTHETIC]
     */
    static /* synthetic */ String lambda$getVersionName$0(PackageInfo packageInfo) {
        return "versionName=" + packageInfo.versionName;
    }

    public static int getVersionCode(Context context) {
        try {
            return context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionCode;
        } catch (Exception e) {
            LogUtil.e(TAG, () -> e.toString());
            return 0;
        }
    }

    public static int getVersionCode(Context context, String str) {
        try {
            return context.getPackageManager().getPackageInfo(str, 0).versionCode;
        } catch (Exception e) {
            LogUtil.e(TAG, () -> e.toString());
            return 0;
        }
    }

    @Nullable
    public static String getAppCode(Context context) {
        Application application = (Application) context.getApplicationContext();
        Map<Application, String> map = sAppCodeCache;
        String str = map.get(application);
        if (!TextUtils.isEmpty(str)) {
            return str;
        }
        String strValueOf = null;
        try {
            strValueOf = String
                    .valueOf(context.getPackageManager().getApplicationInfo(getPackageName(context), 128).metaData
                            .get("AppCode"));
            if (TextUtils.isEmpty(strValueOf)) {
                LogUtil.e(TAG, new Supplier() { // from class:
                                                // com.oplus.statistics.util.ApkInfoUtil$$ExternalSyntheticLambda0
                    @Override // com.oplus.statistics.util.Supplier
                    public final Object get() {
                        return ApkInfoUtil.lambda$getAppCode$1();
                    }
                });
            } else {
                map.put(application, strValueOf);
            }
        } catch (Exception e) {
            LogUtil.e(TAG, () -> e.toString());
            e.printStackTrace();
        }
        return strValueOf;
    }

    public static void putAppCodeToCache(Context context, String str) {
        sAppCodeCache.put((Application) context.getApplicationContext(), str);
    }
}

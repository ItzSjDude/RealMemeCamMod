package com.oplus.statistics.util;

import android.app.Application;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public class ApkInfoUtil {
    private static final String TAG = "ApkInfoUtil";
    private static final Map<Application, String> sAppCodeCache = new HashMap();

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ String lambda$getAppCode$1() {
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

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ String lambda$getVersionName$0(PackageInfo packageInfo) {
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
        if (TextUtils.isEmpty(str)) {
            String str2 = null;
            try {
                str2 = String
                        .valueOf(context.getPackageManager().getApplicationInfo(getPackageName(context), 128).metaData
                                .get("AppCode"));
                if (TextUtils.isEmpty(str2)) {
                    LogUtil.e(TAG, new Supplier() { // from class:
                                                    // com.oplus.statistics.util.ApkInfoUtil$$ExternalSyntheticLambda0
                        @Override // com.oplus.statistics.util.Supplier
                        public final Object get() {
                            return ApkInfoUtil.lambda$getAppCode$1();
                        }
                    });
                } else {
                    map.put(application, str2);
                }
            } catch (Exception e) {
                LogUtil.e(TAG, () -> e.toString());
                e.printStackTrace();
            }
            return str2;
        }
        return str;
    }

    public static void putAppCodeToCache(Context context, String str) {
        sAppCodeCache.put((Application) context.getApplicationContext(), str);
    }
}

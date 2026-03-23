package com.oplus.statistics.util;

import android.app.Application;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.android.tools.r8.annotations.SynthesizedClassMap;
import java.util.HashMap;
import java.util.Map;
@SynthesizedClassMap({$$Lambda$ApkInfoUtil$GAcV2DGTJAz9yoqo59ZqwvQd1OI.class, $$Lambda$_72Yv9SLtr5HefYoZLqe3y7AOoE.class, $$Lambda$ApkInfoUtil$wGWTkggfRQgzbZS2FzLcwB6GiwE.class})
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
            e.getClass();
            LogUtil.e(TAG, new $$Lambda$_72Yv9SLtr5HefYoZLqe3y7AOoE(e));
            return "0";
        }
    }

    public static String getAppName(Context context) {
        try {
            PackageManager packageManager = context.getPackageManager();
            return packageManager.getPackageInfo(context.getPackageName(), 0).applicationInfo.loadLabel(packageManager).toString();
        } catch (Exception e) {
            e.getClass();
            LogUtil.e(TAG, new $$Lambda$_72Yv9SLtr5HefYoZLqe3y7AOoE(e));
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
            String str2 = packageInfo.versionName;
            try {
            } catch (Exception e) {
                e = e;
                str = str2;
            }
            try {
                LogUtil.i(TAG, new Supplier() { // from class: com.oplus.statistics.util.-$$Lambda$ApkInfoUtil$wGWTkggfRQgzbZS2FzLcwB6GiwE
                    @Override // com.oplus.statistics.util.Supplier
                    public final Object get() {
                        return ApkInfoUtil.lambda$getVersionName$0(packageInfo);
                    }
                });
                return str2;
            } catch (Exception e2) {
                e = e2;
                str = str2;
                e.getClass();
                LogUtil.e(TAG, new $$Lambda$_72Yv9SLtr5HefYoZLqe3y7AOoE(e));
                return str;
            }
        } catch (Exception e3) {
            e = e3;
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
            e.getClass();
            LogUtil.e(TAG, new $$Lambda$_72Yv9SLtr5HefYoZLqe3y7AOoE(e));
            return 0;
        }
    }

    public static int getVersionCode(Context context, String str) {
        try {
            return context.getPackageManager().getPackageInfo(str, 0).versionCode;
        } catch (Exception e) {
            e.getClass();
            LogUtil.e(TAG, new $$Lambda$_72Yv9SLtr5HefYoZLqe3y7AOoE(e));
            return 0;
        }
    }

    @Nullable
    public static String getAppCode(Context context) {
        String str;
        Application application = (Application) context.getApplicationContext();
        String str2 = sAppCodeCache.get(application);
        if (TextUtils.isEmpty(str2)) {
            try {
                str = String.valueOf(context.getPackageManager().getApplicationInfo(getPackageName(context), 128).metaData.get("AppCode"));
            } catch (Exception e) {
                e = e;
                str = null;
            }
            try {
                if (TextUtils.isEmpty(str)) {
                    LogUtil.e(TAG, new Supplier() { // from class: com.oplus.statistics.util.-$$Lambda$ApkInfoUtil$GAcV2DGTJAz9yoqo59ZqwvQd1OI
                        @Override // com.oplus.statistics.util.Supplier
                        public final Object get() {
                            return ApkInfoUtil.lambda$getAppCode$1();
                        }
                    });
                } else {
                    sAppCodeCache.put(application, str);
                }
            } catch (Exception e2) {
                e = e2;
                e.getClass();
                LogUtil.e(TAG, new $$Lambda$_72Yv9SLtr5HefYoZLqe3y7AOoE(e));
                e.printStackTrace();
                return str;
            }
            return str;
        }
        return str2;
    }

    public static void putAppCodeToCache(Context context, String str) {
        sAppCodeCache.put((Application) context.getApplicationContext(), str);
    }
}

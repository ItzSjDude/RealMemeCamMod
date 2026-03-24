package com.oplus.statistics.util;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import android.util.Base64;
import androidx.annotation.NonNull;
import com.oplus.statistics.record.ContentProviderRecorder;
import java.nio.charset.StandardCharsets;

/* JADX INFO: loaded from: classes.dex */
public class VersionUtil {
    private static final String DCS_PKG_NAME = new String(Base64.decode(Constant.DCS_PKG, 0), StandardCharsets.UTF_8);
    private static final int SUPPORT_CONTENT_PROVIDER_VERSION = 5300000;
    private static final int SUPPORT_PERIOD_DATA_VERSION = 5118000;
    private static final String TAG = "VersionUtil";
    private static final int UNINSTALL_APP_FLAG = -1;

    public static boolean isSupportPeriodData(@NonNull Context context) {
        long dataCollectionAppVersion = getDataCollectionAppVersion(context);
        return dataCollectionAppVersion >= 5118000 || dataCollectionAppVersion == -1;
    }

    public static boolean isContentProviderRecorder(@NonNull Context context) {
        return ContentProviderRecorder.isSupport(context);
    }

    public static long getDataCollectionAppVersion(@NonNull Context context) {
        try {
            PackageInfo packageInfo = context.getPackageManager().getPackageInfo(DCS_PKG_NAME, 1);
            if (Build.VERSION.SDK_INT >= 28) {
                return packageInfo.getLongVersionCode();
            }
            return packageInfo.versionCode;
        } catch (PackageManager.NameNotFoundException e) {
            LogUtil.w(TAG, new Supplier() { // from class: com.oplus.statistics.util.VersionUtil$$ExternalSyntheticLambda0
                @Override // com.oplus.statistics.util.Supplier
                public final Object get() {
                    return VersionUtil.lambda$getDataCollectionAppVersion$0(e);
                }
            });
            return -1L;
        }
    }

    /* JADX DEBUG: Can't inline method, not implemented redirect type for insn: STR_CONCAT 
      ("getDataCollectionAppVersion exception: ")
      (wrap:java.lang.String:0x000a: INVOKE (r2v0 android.content.pm.PackageManager$NameNotFoundException) VIRTUAL call: android.content.pm.PackageManager.NameNotFoundException.toString():java.lang.String A[MD:():java.lang.String (s), WRAPPED])
     A[MD:():java.lang.String (c), SYNTHETIC] */
    static /* synthetic */ String lambda$getDataCollectionAppVersion$0(PackageManager.NameNotFoundException nameNotFoundException) {
        return "getDataCollectionAppVersion exception: " + nameNotFoundException.toString();
    }
}

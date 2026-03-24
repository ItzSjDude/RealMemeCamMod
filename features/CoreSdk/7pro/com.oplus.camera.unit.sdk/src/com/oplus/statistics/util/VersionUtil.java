package com.oplus.statistics.util;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import android.util.Base64;
import androidx.annotation.NonNull;
import com.android.tools.r8.annotations.SynthesizedClassMap;
import com.oplus.statistics.record.ContentProviderRecorder;
import java.nio.charset.StandardCharsets;
@SynthesizedClassMap({$$Lambda$VersionUtil$SHtNVs1CLbs0RveSiiDjCxGcmTc.class})
/* loaded from: classes.dex */
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
            LogUtil.w(TAG, new Supplier() { // from class: com.oplus.statistics.util.-$$Lambda$VersionUtil$SHtNVs1CLbs0RveSiiDjCxGcmTc
                @Override // com.oplus.statistics.util.Supplier
                public final Object get() {
                    return VersionUtil.lambda$getDataCollectionAppVersion$0(e);
                }
            });
            return -1L;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ String lambda$getDataCollectionAppVersion$0(PackageManager.NameNotFoundException nameNotFoundException) {
        return "getDataCollectionAppVersion exception: " + nameNotFoundException.toString();
    }
}

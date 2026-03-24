package com.oplus.statistics;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.android.tools.r8.annotations.SynthesizedClassMap;
import com.oplus.statistics.OTrackConfig;
import com.oplus.statistics.util.ApkInfoUtil;
import com.oplus.statistics.util.LogUtil;
import com.oplus.statistics.util.Supplier;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes.dex */
public class OTrackContext {
    private static final String TAG = "OTrackContext";
    private static Map<String, OTrackContext> sTrackContextMap = new HashMap();
    private final String mAppId;
    private OTrackConfig mConfig;
    @NonNull
    private final Context mContext;

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ String lambda$createDefaultConfig$0() {
        return "createDefaultConfig PackageManager.NameNotFoundException.";
    }

    private OTrackContext(String str, @NonNull Context context, @Nullable OTrackConfig oTrackConfig) {
        OTrackConfig createDefaultConfig;
        this.mAppId = str;
        this.mContext = context;
        if (oTrackConfig != null) {
            createDefaultConfig = createDefaultConfig(this.mContext, oTrackConfig);
        } else {
            createDefaultConfig = createDefaultConfig(this.mContext);
        }
        this.mConfig = createDefaultConfig;
    }

    @Nullable
    public static synchronized OTrackContext get(String str) {
        OTrackContext oTrackContext;
        synchronized (OTrackContext.class) {
            oTrackContext = sTrackContextMap.get(str);
        }
        return oTrackContext;
    }

    public static synchronized OTrackContext createIfNeed(String str, @NonNull Context context, @Nullable OTrackConfig oTrackConfig) {
        OTrackContext oTrackContext;
        synchronized (OTrackContext.class) {
            oTrackContext = get(str);
            if (oTrackContext == null) {
                oTrackContext = new OTrackContext(str, context, oTrackConfig);
                sTrackContextMap.put(str, oTrackContext);
            }
        }
        return oTrackContext;
    }

    private OTrackConfig createDefaultConfig(Context context, OTrackConfig oTrackConfig) {
        if (TextUtils.isEmpty(oTrackConfig.getPackageName())) {
            oTrackConfig.setPackageName(ApkInfoUtil.getPackageName(context));
        }
        if (TextUtils.isEmpty(oTrackConfig.getVersionName())) {
            oTrackConfig.setVersionName(ApkInfoUtil.getVersionName(context));
        }
        if (TextUtils.isEmpty(oTrackConfig.getAppName())) {
            oTrackConfig.setAppName(ApkInfoUtil.getAppName(context));
        }
        return oTrackConfig;
    }

    private OTrackConfig createDefaultConfig(Context context) {
        PackageInfo packageInfo;
        PackageManager packageManager = context.getPackageManager();
        try {
            packageInfo = packageManager.getPackageInfo(context.getPackageName(), 0);
        } catch (PackageManager.NameNotFoundException unused) {
            LogUtil.w(TAG, new Supplier() { // from class: com.oplus.statistics.-$$Lambda$OTrackContext$QE2ylRr6YUhdcdCLn95X26kEC7U
                @Override // com.oplus.statistics.util.Supplier
                public final Object get() {
                    return OTrackContext.lambda$createDefaultConfig$0();
                }
            });
            packageInfo = null;
        }
        if (packageInfo == null) {
            return OTrackConfig.DUMMY;
        }
        return new OTrackConfig.Builder().setPackageName(packageInfo.packageName).setVersionName(packageInfo.versionName).setAppName(packageInfo.applicationInfo.loadLabel(packageManager).toString()).build();
    }

    @NonNull
    public Context getContext() {
        return this.mContext;
    }

    @NonNull
    public OTrackConfig getConfig() {
        if (OTrackConfig.DUMMY.equals(this.mConfig)) {
            this.mConfig = createDefaultConfig(this.mContext);
        }
        return this.mConfig;
    }

    public String getAppId() {
        return this.mAppId;
    }
}

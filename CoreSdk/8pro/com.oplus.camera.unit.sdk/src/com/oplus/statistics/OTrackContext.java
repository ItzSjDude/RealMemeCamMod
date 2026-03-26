package com.oplus.statistics;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.oplus.statistics.OTrackConfig;
import com.oplus.statistics.util.ApkInfoUtil;
import com.oplus.statistics.util.LogUtil;
import com.oplus.statistics.util.Supplier;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class OTrackContext {
    private static final String TAG = "OTrackContext";
    private static Map<String, OTrackContext> sTrackContextMap = new HashMap();
    private final String mAppId;
    private OTrackConfig mConfig;

    @NonNull
    private final Context mContext;

    /*
     * JADX DEBUG: Can't inline method, not implemented redirect type for insn:
     * 0x0000: CONST_STR "createDefaultConfig PackageManager.NameNotFoundException."
     */
    static /* synthetic */ String lambda$createDefaultConfig$0() {
        return "createDefaultConfig PackageManager.NameNotFoundException.";
    }

    private OTrackContext(String appId, @NonNull Context context, @Nullable OTrackConfig config) {
        OTrackConfig finalConfig;
        this.mAppId = appId;
        this.mContext = context;
        if (config != null) {
            finalConfig = createDefaultConfig(context, config);
        } else {
            finalConfig = createDefaultConfig(context);
        }
        this.mConfig = finalConfig;
    }

    @Nullable
    public static synchronized OTrackContext get(String appId) {
        return sTrackContextMap.get(appId);
    }

    public static synchronized OTrackContext createIfNeed(String appId, @NonNull Context context,
            @Nullable OTrackConfig config) {
        OTrackContext trackContext;
        trackContext = get(appId);
        if (trackContext == null) {
            trackContext = new OTrackContext(appId, context, config);
            sTrackContextMap.put(appId, trackContext);
        }
        return trackContext;
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
            LogUtil.w(TAG, new Supplier() { // from class: com.oplus.statistics.OTrackContext$$ExternalSyntheticLambda0
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
        return new OTrackConfig.Builder().setPackageName(packageInfo.packageName)
                .setVersionName(packageInfo.versionName)
                .setAppName(packageInfo.applicationInfo.loadLabel(packageManager).toString()).build();
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

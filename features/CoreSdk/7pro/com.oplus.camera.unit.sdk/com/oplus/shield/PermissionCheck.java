package com.oplus.shield;

import android.app.Application;
import android.content.Context;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import com.oplus.shield.servicemaps.ServiceMap;
import com.oplus.shield.utils.DebugUtils;
import com.oplus.shield.utils.PLog;
import com.oplus.shield.verify.EponaVerifier;
import com.oplus.shield.verify.NaviVerifier;
import com.oplus.shield.verify.TingleVerifier;
/* loaded from: classes.dex */
public class PermissionCheck {
    private static volatile PermissionCheck sInstance;
    private volatile boolean initialized = false;
    private Context mContext;
    private EponaVerifier mEponaVerifier;
    private NaviVerifier mNaviVerifier;
    private TingleVerifier mTingleVerifier;

    private PermissionCheck() {
    }

    public synchronized void init(@NonNull Context context) {
        if (this.initialized) {
            return;
        }
        this.initialized = true;
        if (!(context instanceof Application)) {
            context = context.getApplicationContext();
        }
        this.mContext = context;
        if (this.mContext != null && TextUtils.equals(this.mContext.getPackageName(), Constants.getAppPlatformPackageName())) {
            ServiceMap.initServiceMap();
            PLog.init(this.mContext);
            DebugUtils.getInstance().init(this.mContext);
        }
        this.mEponaVerifier = new EponaVerifier(this.mContext);
        this.mTingleVerifier = new TingleVerifier(this.mContext);
        this.mNaviVerifier = new NaviVerifier(this.mContext);
    }

    public boolean verityTingle(String str, int i) {
        return this.mTingleVerifier.verify(str, i);
    }

    public boolean verityEpona(String str, String str2, String str3) {
        return this.mEponaVerifier.verify(str, str2, str3);
    }

    public boolean verityNavi(String str, String str2) {
        return this.mNaviVerifier.verify(str, str2);
    }

    public boolean isValid() {
        return !DebugUtils.getInstance().isDebugMode();
    }

    public static PermissionCheck getInstance() {
        if (sInstance == null) {
            synchronized (PermissionCheck.class) {
                if (sInstance == null) {
                    sInstance = new PermissionCheck();
                }
            }
        }
        return sInstance;
    }
}

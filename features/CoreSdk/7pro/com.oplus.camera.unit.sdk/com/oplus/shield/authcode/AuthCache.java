package com.oplus.shield.authcode;

import android.content.Context;
import android.text.TextUtils;
import android.util.LruCache;
import com.oplus.shield.Constants;
import com.oplus.shield.authcode.info.AuthResult;
import com.oplus.shield.utils.CertUtils;
import com.oplus.shield.utils.PackageUtils;
/* loaded from: classes.dex */
public class AuthCache {
    private static final String ANDROID_PACKAGE = "android";
    private final LruCache<String, AuthResult> mCache = new LruCache<>(Constants.MAX_CACHE);
    private final Context mContext;
    private String mPlatformSignature;

    public AuthCache(Context context) {
        this.mContext = context;
    }

    public boolean isPlatformSignature(String str) {
        if (TextUtils.isEmpty(this.mPlatformSignature)) {
            this.mPlatformSignature = CertUtils.getCertificateSHA256(this.mContext, ANDROID_PACKAGE);
        }
        return TextUtils.equals(this.mPlatformSignature, str);
    }

    public boolean isLocalVersion() {
        if (TextUtils.isEmpty(this.mPlatformSignature)) {
            this.mPlatformSignature = CertUtils.getCertificateSHA256(this.mContext, ANDROID_PACKAGE);
        }
        return TextUtils.equals(this.mPlatformSignature, Constants.LOCAL_PLATFORM_SIGNATURE);
    }

    public boolean hasCache(String str, String str2) {
        String appPlatformData = PackageUtils.getAppPlatformData(this.mContext, str);
        AuthResult authResult = this.mCache.get(str);
        if (authResult == null || authResult.isExpired() || !TextUtils.equals(str2, authResult.getSigSHA256())) {
            return false;
        }
        return TextUtils.equals(appPlatformData, authResult.getAuthCode());
    }

    public void putCache(String str, AuthResult authResult, String str2) {
        authResult.initPermissionTable();
        authResult.setUpdateTime();
        authResult.setSigSHA256(str2);
        this.mCache.put(str, authResult);
    }

    public AuthResult getAuthResultInCache(String str) {
        return this.mCache.get(str);
    }
}

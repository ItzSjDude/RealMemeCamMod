package com.oplus.shield.verify;

import android.content.Context;
import android.os.Binder;
import android.text.TextUtils;
import com.oplus.shield.authcode.AuthCache;
import com.oplus.shield.authcode.Authentication;
import com.oplus.shield.authcode.CommonStatusCodes;
import com.oplus.shield.authcode.info.AuthResult;
import com.oplus.shield.servicemaps.ServiceMap;
import com.oplus.shield.utils.CertUtils;
import com.oplus.shield.utils.PLog;
import com.oplus.shield.utils.PackageUtils;
/* loaded from: classes.dex */
public class TingleVerifier {
    private final AuthCache mAuthCache;
    private final Context mContext;

    public TingleVerifier(Context context) {
        this.mContext = context;
        this.mAuthCache = new AuthCache(context);
    }

    public boolean verify(String str, int i) {
        if (this.mAuthCache.isLocalVersion()) {
            return true;
        }
        String callingPackageName = PackageUtils.getCallingPackageName(this.mContext, Binder.getCallingUid(), Binder.getCallingPid());
        String certificateSHA256 = CertUtils.getCertificateSHA256(this.mContext, callingPackageName);
        if (isParamsEmpty(callingPackageName, str)) {
            return false;
        }
        if (isSystemUid() || isPlatformSignature(certificateSHA256) || skipVerifyService(callingPackageName, str)) {
            return true;
        }
        if (this.mAuthCache.hasCache(callingPackageName, certificateSHA256)) {
            boolean verifyTinglePermission = verifyTinglePermission(ServiceMap.convertTransactCode(str, i), callingPackageName);
            printTingleVerityResultLog(verifyTinglePermission, callingPackageName, str, i);
            return verifyTinglePermission;
        }
        AuthResult checkAuthCode = Authentication.checkAuthCode(this.mContext, callingPackageName);
        if (isAuthenticateFailed(checkAuthCode, callingPackageName)) {
            return false;
        }
        this.mAuthCache.putCache(callingPackageName, checkAuthCode, certificateSHA256);
        boolean verifyTinglePermission2 = verifyTinglePermission(ServiceMap.convertTransactCode(str, i), callingPackageName);
        printTingleVerityResultLog(verifyTinglePermission2, callingPackageName, str, i);
        return verifyTinglePermission2;
    }

    private boolean isSystemUid() {
        return Binder.getCallingUid() == 1000;
    }

    private boolean skipVerifyService(String str, String str2) {
        if (ServiceMap.skipTingleVerifyService(str2)) {
            PLog.d("Tingle verity SUCCESS cause descriptor is [" + str2 + "], Caller Package [" + str + "]");
            return true;
        }
        return false;
    }

    private boolean isPlatformSignature(String str) {
        return this.mAuthCache.isPlatformSignature(str);
    }

    private boolean isAuthenticateFailed(AuthResult authResult, String str) {
        int resultCode = authResult.getResultCode();
        if (resultCode != 1001) {
            printTingleVerityFailedLog(resultCode, str);
            return true;
        }
        return false;
    }

    private void printTingleVerityResultLog(boolean z, String str, String str2, int i) {
        StringBuilder sb = new StringBuilder();
        sb.append("Tingle verity ");
        sb.append(z ? "SUCCESS" : "FAILED");
        sb.append(" Caller : [");
        sb.append(str);
        sb.append("] Descriptor : [");
        sb.append(str2);
        sb.append("] Method : [");
        sb.append(ServiceMap.convertTransactCode(str2, i));
        sb.append("]");
        PLog.d(sb.toString());
    }

    private void printTingleVerityFailedLog(int i, String str) {
        PLog.e("Tingle Authentication Failed " + CommonStatusCodes.getStatusCodeString(i) + " Package : " + str);
    }

    private boolean isParamsEmpty(String str, String str2) {
        if (TextUtils.isEmpty(str)) {
            PLog.e("Tingle Authentication Failed Cause Caller Package Empty");
            return true;
        } else if (TextUtils.isEmpty(str2)) {
            PLog.e("Tingle Authentication Failed Cause Descriptor Empty : " + str);
            return true;
        } else {
            return false;
        }
    }

    private boolean verifyTinglePermission(String str, String str2) {
        AuthResult authResultInCache = this.mAuthCache.getAuthResultInCache(str2);
        if (authResultInCache != null) {
            return authResultInCache.checkPermission("tingle", str);
        }
        return false;
    }
}

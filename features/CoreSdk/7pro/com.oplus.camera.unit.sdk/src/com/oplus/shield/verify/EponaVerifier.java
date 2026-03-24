package com.oplus.shield.verify;

import android.content.Context;
import android.os.Binder;
import android.text.TextUtils;
import com.oplus.ocs.camera.producer.feature.FeatureImpl;
import com.oplus.shield.Constants;
import com.oplus.shield.authcode.AuthCache;
import com.oplus.shield.authcode.Authentication;
import com.oplus.shield.authcode.CommonStatusCodes;
import com.oplus.shield.authcode.info.AuthResult;
import com.oplus.shield.utils.CertUtils;
import com.oplus.shield.utils.PLog;
import com.oplus.shield.utils.SystemUtils;
/* loaded from: classes.dex */
public class EponaVerifier {
    private final AuthCache mAuthCache;
    private final Context mContext;

    public EponaVerifier(Context context) {
        this.mContext = context;
        this.mAuthCache = new AuthCache(context);
    }

    public boolean verify(String str, String str2, String str3) {
        if (isParamsEmpty(str3, str)) {
            return false;
        }
        if (this.mAuthCache.isLocalVersion()) {
            return true;
        }
        String certificateSHA256 = CertUtils.getCertificateSHA256(this.mContext, str3);
        if (isSystemUid() || isPlatformSignature(certificateSHA256)) {
            return true;
        }
        if (this.mAuthCache.hasCache(str3, certificateSHA256)) {
            boolean verifyEponaPermission = verifyEponaPermission(str, str2, str3);
            printEponaVerityResultLog(verifyEponaPermission, str, str2, str3);
            return verifyEponaPermission;
        }
        AuthResult checkAuthCode = Authentication.checkAuthCode(this.mContext, str3);
        if (isAuthenticateFailed(checkAuthCode, str3)) {
            return false;
        }
        this.mAuthCache.putCache(str3, checkAuthCode, certificateSHA256);
        boolean verifyEponaPermission2 = verifyEponaPermission(str, str2, str3);
        printEponaVerityResultLog(verifyEponaPermission2, str, str2, str3);
        return verifyEponaPermission2;
    }

    private boolean isSystemUid() {
        return Binder.getCallingUid() == 1000;
    }

    private boolean isParamsEmpty(String str, String str2) {
        if (TextUtils.isEmpty(str)) {
            PLog.e("Epona Authentication Failed Cause Caller Package Empty");
            return true;
        } else if (TextUtils.isEmpty(str2)) {
            PLog.e("Epona Authentication Failed Cause Component Empty : " + str);
            return true;
        } else {
            return false;
        }
    }

    private boolean isPlatformSignature(String str) {
        return this.mAuthCache.isPlatformSignature(str);
    }

    private boolean isAuthenticateFailed(AuthResult authResult, String str) {
        int resultCode = authResult.getResultCode();
        if (resultCode != 1001) {
            printEponaVerityFailedLog(resultCode, str);
            return true;
        }
        return false;
    }

    private void printEponaVerityResultLog(boolean z, String str, String str2, String str3) {
        StringBuilder sb = new StringBuilder();
        sb.append("Epona verity ");
        sb.append(z ? "SUCCESS" : "FAILED");
        sb.append(" Caller : [");
        sb.append(str3);
        sb.append("] Component : [");
        sb.append(str);
        sb.append("] ActionName : [");
        sb.append(str2);
        sb.append("]");
        PLog.d(sb.toString());
    }

    private void printEponaVerityFailedLog(int i, String str) {
        PLog.e("Epona Authentication Failed " + CommonStatusCodes.getStatusCodeString(i) + " Package : " + str);
    }

    private boolean verifyEponaPermission(String str, String str2, String str3) {
        AuthResult authResultInCache = this.mAuthCache.getAuthResultInCache(str3);
        if (authResultInCache != null) {
            if (SystemUtils.getSplitString(str, Constants.POINT_REGEX).size() > 2) {
                str = str.substring(str.lastIndexOf(Constants.POINT_REGEX) + 1);
            }
            boolean z = authResultInCache.checkPermission("epona", str) || authResultInCache.checkPermission("epona", str2);
            boolean z2 = authResultInCache.checkPermission("tingle", str) || authResultInCache.checkPermission("tingle", str2);
            if (!z && z2) {
                PLog.d("Action : [" + str + FeatureImpl.DELIMITER + str2 + "] is re-wrapped form Tingle, Caller : [" + str3 + "]");
            }
            return z || z2;
        }
        return false;
    }
}

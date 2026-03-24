package com.oplus.shield.verify;

import android.content.Context;
import android.text.TextUtils;
import com.oplus.shield.utils.CertUtils;
import com.oplus.shield.utils.PLog;
/* loaded from: classes.dex */
public class NaviVerifier {
    private final Context mContext;

    public NaviVerifier(Context context) {
        this.mContext = context;
    }

    public boolean verify(String str, String str2) {
        if (TextUtils.isEmpty(str2)) {
            PLog.e("Navi Authentication Failed Cause Plugin Signature Empty");
            return false;
        } else if (TextUtils.isEmpty(str)) {
            PLog.e("Navi Authentication Failed Cause Caller Package Empty");
            return false;
        } else {
            return TextUtils.equals(CertUtils.getCertificateSHA256(this.mContext, str), str2);
        }
    }
}

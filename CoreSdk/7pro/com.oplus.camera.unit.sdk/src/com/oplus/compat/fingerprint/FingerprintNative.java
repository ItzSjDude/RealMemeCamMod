package com.oplus.compat.fingerprint;

import android.hardware.fingerprint.Fingerprint;
import android.util.Log;
import androidx.annotation.RequiresApi;
import com.oplus.compat.annotation.Blocked;
import com.oplus.compat.annotation.Permission;
import com.oplus.compat.utils.util.UnSupportedApiVersionException;
import com.oplus.compat.utils.util.VersionUtils;
import com.oplus.epona.Epona;
import com.oplus.epona.Request;
import com.oplus.epona.Response;
import com.oplus.utils.reflect.RefClass;
import com.oplus.utils.reflect.RefMethod;
/* loaded from: classes.dex */
public class FingerprintNative {
    private static final String COMPONENT_NAME = "android.hardware.fingerprint.Fingerprint";
    private static final String RESULT = "result";
    private static final String TAG = "FingerprintNative";
    private Fingerprint mFingerprint;

    /* loaded from: classes.dex */
    private static class RefFingerprintInfo {
        public static RefMethod<Integer> getBiometricId;

        private RefFingerprintInfo() {
        }

        static {
            RefClass.load(RefFingerprintInfo.class, Fingerprint.class);
        }
    }

    private FingerprintNative(Fingerprint fingerprint) {
        this.mFingerprint = fingerprint;
    }

    private Fingerprint getFingerprint() {
        return this.mFingerprint;
    }

    @Permission(authStr = "getBiometricId", type = "epona")
    @Blocked
    @RequiresApi(api = 30)
    public int getBiometricId() throws UnSupportedApiVersionException {
        if (VersionUtils.isS()) {
            return RefFingerprintInfo.getBiometricId.call(this.mFingerprint, new Object[0]).intValue();
        }
        if (VersionUtils.isR()) {
            Response execute = Epona.newCall(new Request.Builder().setComponentName(COMPONENT_NAME).setActionName("getBiometricId").withParcelable("fingerprint", this.mFingerprint).build()).execute();
            if (execute.isSuccessful()) {
                return execute.getBundle().getInt(RESULT);
            }
            Log.e(TAG, "getBiometricId error: " + execute.getMessage());
        }
        return 0;
    }
}

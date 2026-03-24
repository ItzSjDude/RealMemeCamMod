package com.oppo.inner.hardware.fingerprint;

import android.hardware.fingerprint.FingerprintManager;
import android.hardware.fingerprint.IOplusFingerprintManagerEx;
import android.hardware.fingerprint.OplusMirrorFingerprintManager;
import android.util.Log;
import com.oplus.util.OplusTypeCastingHelper;
import com.oplus.inner.hardware.fingerprint.FingerprintManagerWrapper;

public class FingerprintManagerWrapper {
    public static void regsiterOpticalFingerprintListener(FingerprintManager fp, final OpticalFingerprintListenerCallbackWrapper callback) {
        FingerprintManagerWrapper.regsiterOpticalFingerprintListener(fp, callback);
    }

    public static void showFingerprintIcon(FingerprintManager fp) {
        FingerprintManagerWrapper.showFingerprintIcon(fp);
    }

    public static void hideFingerprintIcon(FingerprintManager fp) {
        FingerprintManagerWrapper.hideFingerprintIcon(fp);
    }

    public static int getFailedAttempts(FingerprintManager fp) {
        return FingerprintManagerWrapper.getFailedAttempts(fp);
    }

    public static long getLockoutAttemptDeadline(FingerprintManager fp) {
        return FingerprintManagerWrapper.getLockoutAttemptDeadline(fp);
    }

}
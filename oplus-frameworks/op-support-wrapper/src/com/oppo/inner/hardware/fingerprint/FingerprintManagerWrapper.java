package com.oppo.inner.hardware.fingerprint;

import android.hardware.fingerprint.FingerprintManager;
import android.hardware.fingerprint.IOplusFingerprintManagerEx;
import android.hardware.fingerprint.OplusMirrorFingerprintManager;
import android.util.Log;
import com.oplus.util.OplusTypeCastingHelper;

/* loaded from: classes.dex */
public class FingerprintManagerWrapper {
    private static final String TAG = "FingerprintManagerWrapper";

    public interface OpticalFingerprintListenerCallbackWrapper {
        void onOpticalFingerprintUpdate(int i);
    }

    private FingerprintManagerWrapper() {
    }

    public static void regsiterOpticalFingerprintListener(FingerprintManager fp, final OpticalFingerprintListenerCallbackWrapper callback) {
        try {
            IOplusFingerprintManagerEx oplusFingerprintManagerEx = typeCasting(fp);
            if (callback != null && oplusFingerprintManagerEx != null) {
                oplusFingerprintManagerEx.regsiterOpticalFingerprintListener(new IOplusFingerprintManagerEx.OpticalFingerprintListener() { // from class: com.oppo.inner.hardware.fingerprint.FingerprintManagerWrapper.1
                    public void onOpticalFingerprintUpdate(int status) {
                        callback.onOpticalFingerprintUpdate(status);
                    }
                });
            }
        } catch (Throwable e) {
            Log.e(TAG, e.toString());
        }
    }

    public static void showFingerprintIcon(FingerprintManager fp) {
        if (OplusMirrorFingerprintManager.showFingerprintIcon != null) {
            OplusMirrorFingerprintManager.showFingerprintIcon.call(fp, new Object[0]);
        }
    }

    public static void hideFingerprintIcon(FingerprintManager fp) {
        if (OplusMirrorFingerprintManager.hideFingerprintIcon != null) {
            OplusMirrorFingerprintManager.hideFingerprintIcon.call(fp, new Object[0]);
        }
    }

    public static int getFailedAttempts(FingerprintManager fp) {
        if (OplusMirrorFingerprintManager.getFailedAttempts != null) {
            return ((Integer) OplusMirrorFingerprintManager.getFailedAttempts.call(fp, new Object[0])).intValue();
        }
        return -1;
    }

    public static long getLockoutAttemptDeadline(FingerprintManager fp) {
        if (OplusMirrorFingerprintManager.getLockoutAttemptDeadline != null) {
            return ((Long) OplusMirrorFingerprintManager.getLockoutAttemptDeadline.call(fp, new Object[0])).longValue();
        }
        return -1L;
    }

    private static IOplusFingerprintManagerEx typeCasting(FingerprintManager fp) {
        return (IOplusFingerprintManagerEx) OplusTypeCastingHelper.typeCasting(IOplusFingerprintManagerEx.class, fp);
    }
}

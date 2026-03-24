package android.util.apk;

import android.util.BoostFramework;
import android.util.Slog;
import java.lang.reflect.InvocationTargetException;

/* loaded from: classes3.dex */
public class ApkSignatureVerifierSocExtImpl implements IApkSignatureVerifierSocExt {
    private static final String TAG = "ApkSignatureVerifier";
    private static BoostFramework sPerfBoost = null;
    private static boolean sIsPerfLockAcquired = false;

    private static class LazyHolder {
        private static final ApkSignatureVerifierSocExtImpl INSTANCE = new ApkSignatureVerifierSocExtImpl();

        private LazyHolder() {
        }
    }

    private ApkSignatureVerifierSocExtImpl() {
    }

    public static ApkSignatureVerifierSocExtImpl getInstance(Object obj) {
        return LazyHolder.INSTANCE;
    }

    @Override // android.util.apk.IApkSignatureVerifierSocExt
    public void hintPackageInstallBoost(boolean verifyFull) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        if (sPerfBoost == null) {
            sPerfBoost = new BoostFramework();
        }
        BoostFramework boostFramework = sPerfBoost;
        if (boostFramework != null && !sIsPerfLockAcquired && verifyFull) {
            boostFramework.perfHint(BoostFramework.VENDOR_HINT_PACKAGE_INSTALL_BOOST, null, Integer.MAX_VALUE, -1);
            Slog.d(TAG, "Perflock acquired for PackageInstall ");
            sIsPerfLockAcquired = true;
        }
    }

    @Override // android.util.apk.IApkSignatureVerifierSocExt
    public void releasePackageInstallBoost() throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        BoostFramework boostFramework;
        if (sIsPerfLockAcquired && (boostFramework = sPerfBoost) != null) {
            boostFramework.perfLockRelease();
            sIsPerfLockAcquired = false;
            Slog.d(TAG, "Perflock released for PackageInstall ");
        }
    }
}

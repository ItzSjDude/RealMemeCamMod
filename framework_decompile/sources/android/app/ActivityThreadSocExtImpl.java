package android.app;

import android.app.IActivityThreadSocExt;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.graphics.Bitmap;
import android.os.Process;
import android.os.StrictMode;
import android.os.SystemClock;
import android.util.BoostFramework;
import android.util.DisplayMetrics;
import android.util.Log;
import android.util.Slog;
import java.lang.reflect.InvocationTargetException;

/* loaded from: classes.dex */
public class ActivityThreadSocExtImpl implements IActivityThreadSocExt {
    private static final String TAG = "ActivityThreadSocExtImpl";
    ActivityThread mActivityThread;
    long st_bindApp;
    BoostFramework ux_perf;

    public ActivityThreadSocExtImpl(Object activityThread) {
        this.mActivityThread = (ActivityThread) activityThread;
    }

    @Override // android.app.IActivityThreadSocExt
    public void initializeBindApp() {
        this.st_bindApp = SystemClock.uptimeMillis();
        this.ux_perf = null;
    }

    @Override // android.app.IActivityThreadSocExt
    public void setOverrideDensity(ApplicationInfo appInfo) {
        int overrideDensity = appInfo.getOverrideDensity();
        if (overrideDensity != 0) {
            Log.d(TAG, "override app density from " + DisplayMetrics.DENSITY_DEVICE + " to " + overrideDensity);
            this.mActivityThread.mDensityCompatMode = true;
            Bitmap.setDefaultDensity(overrideDensity);
        }
    }

    @Override // android.app.IActivityThreadSocExt
    public void createBoostFramework(Context appContext) {
        if (!Process.isIsolated()) {
            int old_mask = StrictMode.allowThreadDiskWritesMask();
            try {
                this.ux_perf = new BoostFramework(appContext);
            } finally {
                StrictMode.setThreadPolicyMask(old_mask);
            }
        }
    }

    @Override // android.app.IActivityThreadSocExt
    public void perfUXEngineEvents(Context appContext) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        String pkgDir;
        long end_bindApp = SystemClock.uptimeMillis();
        int bindApp_dur = (int) (end_bindApp - this.st_bindApp);
        String pkg_name = null;
        if (appContext != null) {
            pkg_name = appContext.getPackageName();
        }
        if (this.ux_perf != null && !Process.isIsolated() && pkg_name != null) {
            try {
                String codePath = appContext.getPackageCodePath();
                String pkgDir2 = codePath.substring(0, codePath.lastIndexOf(47));
                pkgDir = pkgDir2;
            } catch (Exception e) {
                Slog.e(TAG, "HeavyGameThread () : Exception_1 = " + e);
                pkgDir = null;
            }
            if (this.ux_perf.board_first_api_lvl < 32 && this.ux_perf.board_api_lvl < 32) {
                this.ux_perf.perfUXEngine_events(2, 0, pkg_name, bindApp_dur, pkgDir);
            } else {
                this.ux_perf.perfEvent(BoostFramework.VENDOR_HINT_BINDAPP, pkg_name, 2, bindApp_dur, 0);
            }
        }
    }

    @Override // android.app.IActivityThreadSocExt
    public void enableActivityThreadLog(boolean isEnable) {
    }

    @Override // android.app.IActivityThreadSocExt
    public void dumpMessage(boolean dumpAll) {
    }

    @Override // android.app.IActivityThreadSocExt
    public void enableProcessMainThreadLooperLog() {
    }

    @Override // android.app.IActivityThreadSocExt
    public void enableActivityThreadLog() {
    }

    @Override // android.app.IActivityThreadSocExt
    public void hintBoostFWKActivityResumed(Activity activity) {
    }

    public static class StaticExtImpl implements IActivityThreadSocExt.IStaticExt {
        private StaticExtImpl() {
        }

        public static StaticExtImpl getInstance(Object obj) {
            return LazyHolder.INSTANCE;
        }

        private static class LazyHolder {
            private static final StaticExtImpl INSTANCE = new StaticExtImpl();

            private LazyHolder() {
            }
        }

        @Override // android.app.IActivityThreadSocExt.IStaticExt
        public void setMessageLogger() {
        }
    }
}

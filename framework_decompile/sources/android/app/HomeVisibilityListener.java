package android.app;

import android.annotation.SystemApi;
import android.app.ActivityManager;
import android.app.IProcessObserver;
import android.content.ComponentName;
import android.content.Context;
import android.os.Binder;
import com.android.internal.util.FunctionalUtils;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.Executor;

@SystemApi(client = SystemApi.Client.MODULE_LIBRARIES)
/* loaded from: classes.dex */
public abstract class HomeVisibilityListener {
    private ActivityManager mActivityManager;
    private Context mContext;
    private Executor mExecutor;
    boolean mIsHomeActivityVisible;
    IProcessObserver.Stub mObserver = new AnonymousClass1();

    public abstract void onHomeVisibilityChanged(boolean z);

    void init(Context context, Executor executor, ActivityManager activityManager) {
        this.mContext = context;
        this.mActivityManager = activityManager;
        this.mIsHomeActivityVisible = isHomeActivityVisible();
        this.mExecutor = executor;
    }

    /* renamed from: android.app.HomeVisibilityListener$1, reason: invalid class name */
    class AnonymousClass1 extends IProcessObserver.Stub {
        AnonymousClass1() {
        }

        @Override // android.app.IProcessObserver
        public void onForegroundActivitiesChanged(int pid, int uid, boolean fg) throws SecurityException {
            refreshHomeVisibility();
        }

        @Override // android.app.IProcessObserver
        public void onForegroundServicesChanged(int pid, int uid, int fgServiceTypes) {
        }

        @Override // android.app.IProcessObserver
        public void onProcessDied(int pid, int uid) throws SecurityException {
            refreshHomeVisibility();
        }

        private void refreshHomeVisibility() throws SecurityException {
            boolean isHomeActivityVisible = HomeVisibilityListener.this.isHomeActivityVisible();
            if (HomeVisibilityListener.this.mIsHomeActivityVisible != isHomeActivityVisible) {
                HomeVisibilityListener.this.mIsHomeActivityVisible = isHomeActivityVisible;
                Binder.withCleanCallingIdentity(new FunctionalUtils.ThrowingRunnable() { // from class: android.app.HomeVisibilityListener$1$$ExternalSyntheticLambda1
                    @Override // com.android.internal.util.FunctionalUtils.ThrowingRunnable
                    public final void runOrThrow() throws Exception {
                        this.f$0.m313xaea22844();
                    }
                });
            }
        }

        /* renamed from: lambda$refreshHomeVisibility$1$android-app-HomeVisibilityListener$1, reason: not valid java name */
        /* synthetic */ void m313xaea22844() throws Exception {
            HomeVisibilityListener.this.mExecutor.execute(new Runnable() { // from class: android.app.HomeVisibilityListener$1$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.m312x4d4f8ba5();
                }
            });
        }

        /* renamed from: lambda$refreshHomeVisibility$0$android-app-HomeVisibilityListener$1, reason: not valid java name */
        /* synthetic */ void m312x4d4f8ba5() {
            HomeVisibilityListener homeVisibilityListener = HomeVisibilityListener.this;
            homeVisibilityListener.onHomeVisibilityChanged(homeVisibilityListener.mIsHomeActivityVisible);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isHomeActivityVisible() throws SecurityException {
        String top;
        ComponentName defaultHomeComponent;
        List<ActivityManager.RunningTaskInfo> tasks = this.mActivityManager.getRunningTasks(1);
        if (tasks == null || tasks.isEmpty() || (top = tasks.get(0).topActivity.getPackageName()) == null || (defaultHomeComponent = this.mContext.getPackageManager().getHomeActivities(new ArrayList())) == null) {
            return false;
        }
        String defaultHomePackage = defaultHomeComponent.getPackageName();
        return Objects.equals(top, defaultHomePackage);
    }
}

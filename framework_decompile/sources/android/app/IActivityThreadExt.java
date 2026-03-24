package android.app;

import android.app.ActivityThread;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.ApplicationInfo;
import android.content.pm.IPackageManager;
import android.content.res.CompatibilityInfo;
import android.content.res.Configuration;
import android.os.IBinder;
import android.os.Parcel;
import java.util.List;

/* loaded from: classes.dex */
public interface IActivityThreadExt {
    default void shouldInterceptConfigRelaunch(int diff, Configuration configuration) {
    }

    default boolean shouldReportExtraConfig(ActivityInfo activityInfo, IPackageManager pm, Configuration currentConfig, Configuration newConfig, boolean shouldReportChange) {
        return shouldReportChange;
    }

    default void changeToSpecialModel(String packageName) {
    }

    default boolean checkOplusExSystemService(boolean systemThread, String className) {
        return false;
    }

    default boolean checkOplusExSystemService(boolean systemThread, Intent intent) {
        return false;
    }

    default boolean getShouldCallActivityConfigChangeState(boolean shouldReportChange) {
        return shouldReportChange;
    }

    default boolean shouldConfigChangeByMultiSystem(boolean change, int realConfigChange, int diff, String pkgName) {
        return false;
    }

    default void enableDoFrameOpt(boolean enable) {
    }

    default boolean isWindowModeChanged(int currentMode, int newMode, String packageName) {
        return false;
    }

    default void handleLaunchActivity() {
    }

    default void reportBindApplicationFinishedInActivityThread(Application app, ApplicationInfo ai) {
    }

    default void setDynamicalLogEnable(boolean enable) {
    }

    default void enableDynamicalLogIfNeed() {
    }

    default void setDynamicalLogConfig(List<String> configs) {
    }

    default void initDisplayCompat(ApplicationInfo ai, CompatibilityInfo compat) {
    }

    default void onDisplayChanged(int displayId) {
    }

    default boolean isTopApp() {
        return false;
    }

    default void setTopApp(boolean topApp) {
    }

    default boolean onTransact(int code, Parcel data, Parcel reply, int flags) {
        return false;
    }

    default boolean hasImportMessage() {
        return false;
    }

    default void setImportMessage(boolean isFirstFrame) {
    }

    default void updateCurrentActivity(String activityName) {
    }

    default void resetOptState() {
    }

    default void asyncReportFrames(long skippedFrames) {
    }

    default void initCompactApplicationInfo(ApplicationInfo ai) {
    }

    default void setLifecycleState(int state) {
    }

    default void handleResumeActivity() {
    }

    default void handlePauseActivity() {
    }

    default boolean shouldInterceptConfigForSplit(IBinder token, Configuration config, Configuration newConfig, Configuration overrideConfig, boolean displayChanged, Boolean configChanged) {
        return false;
    }

    default void excludeExtConfigDiff(int diff) {
    }

    default boolean shouldSendConfigration(Configuration overrideConfig, Configuration newconfig, IBinder token) {
        return false;
    }

    default void hookPerformLaunchActivity(String packageName, ActivityInfo activityInfo, Configuration configuration) {
    }

    default void hookPerformResumeActivity(ActivityInfo activityInfo, Configuration configuration) {
    }

    default void hookConfigurationChangedActivity(ActivityInfo activityInfo, Configuration configuration) {
    }

    default void hookHandleBindApplication(ActivityThread.AppBindData data, Context context) {
    }

    default boolean isZoomSupportMultiWindow(Activity activity, int windowingMode) {
        return false;
    }
}

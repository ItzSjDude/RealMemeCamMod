package android.app;

import android.content.Context;
import android.content.pm.ApplicationInfo;

/* loaded from: classes.dex */
public interface IActivityThreadSocExt {
    default void initializeBindApp() {
    }

    default void setOverrideDensity(ApplicationInfo appInfo) {
    }

    default void createBoostFramework(Context appContext) {
    }

    default void perfUXEngineEvents(Context appContext) {
    }

    default void enableActivityThreadLog(boolean isEnable) {
    }

    default void dumpMessage(boolean dumpAll) {
    }

    default void enableProcessMainThreadLooperLog() {
    }

    default void enableActivityThreadLog() {
    }

    default void setMessageLogger() {
    }

    default void hintBoostFWKActivityResumed(Activity activity) {
    }

    public interface IStaticExt {
        default void setMessageLogger() {
        }
    }
}

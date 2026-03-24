package com.oplus.compat.app;

import android.app.ActivityManager;
import android.app.ITaskStackListener;
import android.content.ComponentName;
import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import android.util.Log;
import android.window.TaskSnapshot;
import androidx.annotation.RequiresApi;
import com.oplus.compat.annotation.Blocked;
import com.oplus.compat.annotation.Permission;
import com.oplus.compat.annotation.System;
import com.oplus.compat.app.ITaskStackListenerR;
import com.oplus.compat.utils.util.UnSupportedApiVersionException;
import com.oplus.compat.utils.util.VersionUtils;
import com.oplus.epona.Epona;
import com.oplus.epona.Request;
import com.oplus.epona.Response;
import com.oplus.ocs.camera.common.util.ApsConstant;
import com.oplus.utils.reflect.RefClass;
import com.oplus.utils.reflect.RefMethod;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes.dex */
public class IActivityTaskManagerNative {
    private static final String COMPONENT_NAME = "android.app.IActivityTaskManager";
    private static final String TAG = "IActivityTaskManagerNative";
    private static Map<ITaskStackListenerNative, Object> sListener = new HashMap();

    private IActivityTaskManagerNative() {
    }

    /* loaded from: classes.dex */
    private static class RefActivityTaskManagerInfo {
        public static RefMethod<Object> getService;

        private RefActivityTaskManagerInfo() {
        }

        static {
            if (!VersionUtils.isQ() || VersionUtils.isR()) {
                return;
            }
            RefClass.load(RefActivityTaskManagerInfo.class, "android.app.ActivityTaskManager");
        }
    }

    /* loaded from: classes.dex */
    private static class RefIActivityTaskManagerInfo {
        public static RefMethod<Void> updateLockTaskFeatures;
        public static RefMethod<Void> updateLockTaskPackages;

        private RefIActivityTaskManagerInfo() {
        }

        static {
            if (!VersionUtils.isQ() || VersionUtils.isR()) {
                return;
            }
            RefClass.load(RefIActivityTaskManagerInfo.class, IActivityTaskManagerNative.COMPONENT_NAME);
        }
    }

    @Permission(authStr = "updateLockTaskFeatures", type = "epona")
    @Blocked
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    @System
    public static void updateLockTaskFeatures(int i, int i2) throws UnSupportedApiVersionException {
        try {
            if (VersionUtils.isR()) {
                Request build = new Request.Builder().setComponentName(COMPONENT_NAME).setActionName("updateLockTaskFeatures").build();
                Bundle bundle = new Bundle();
                bundle.putInt("userId", i);
                bundle.putInt("flags", i2);
                build.putBundle(bundle);
                Response execute = Epona.newCall(build).execute();
                if (execute.isSuccessful()) {
                    return;
                }
                Log.e(TAG, execute.getMessage());
            } else if (VersionUtils.isQ()) {
                RefIActivityTaskManagerInfo.updateLockTaskFeatures.call(RefActivityTaskManagerInfo.getService.call(null, new Object[0]), Integer.valueOf(i), Integer.valueOf(i2));
            } else {
                throw new UnSupportedApiVersionException("not supported before Q");
            }
        } catch (Exception e) {
            throw new UnSupportedApiVersionException(e);
        }
    }

    @Permission(authStr = "updateLockTaskPackages", type = "epona")
    @Blocked
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    @System
    public static void updateLockTaskPackages(int i, String[] strArr) throws UnSupportedApiVersionException {
        try {
            if (VersionUtils.isR()) {
                Request build = new Request.Builder().setComponentName(COMPONENT_NAME).setActionName("updateLockTaskPackages").build();
                Bundle bundle = new Bundle();
                bundle.putInt("userId", i);
                bundle.putStringArray("packages", strArr);
                build.putBundle(bundle);
                Response execute = Epona.newCall(build).execute();
                if (execute.isSuccessful()) {
                    return;
                }
                Log.e(TAG, execute.getMessage());
            } else if (VersionUtils.isQ()) {
                RefIActivityTaskManagerInfo.updateLockTaskPackages.call(RefActivityTaskManagerInfo.getService.call(null, new Object[0]), Integer.valueOf(i), strArr);
            } else {
                throw new UnSupportedApiVersionException("not supported before Q");
            }
        } catch (Exception e) {
            throw new UnSupportedApiVersionException(e);
        }
    }

    @Permission(authStr = "registerTaskStackListener", type = "epona")
    @Blocked
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    @System
    public static void registerTaskStackListener(ITaskStackListenerNative iTaskStackListenerNative) throws UnSupportedApiVersionException, RemoteException {
        if (VersionUtils.isS()) {
            Request build = new Request.Builder().setComponentName(COMPONENT_NAME).setActionName("registerTaskStackListener").build();
            ITaskStackListener.Stub taskStackListenerAfterS = new TaskStackListenerAfterS(iTaskStackListenerNative);
            sListener.put(iTaskStackListenerNative, taskStackListenerAfterS);
            Bundle bundle = new Bundle();
            bundle.putBinder("listener", taskStackListenerAfterS);
            build.putBundle(bundle);
            Epona.newCall(build).execute();
        } else if (VersionUtils.isR()) {
            Request build2 = new Request.Builder().setComponentName(COMPONENT_NAME).setActionName("registerTaskStackListener").build();
            TaskStackListenerR taskStackListenerR = new TaskStackListenerR(iTaskStackListenerNative);
            sListener.put(iTaskStackListenerNative, taskStackListenerR);
            Bundle bundle2 = new Bundle();
            bundle2.putBinder("listener", taskStackListenerR);
            build2.putBundle(bundle2);
            Epona.newCall(build2).execute();
        } else {
            throw new UnSupportedApiVersionException("not supported before R");
        }
    }

    @Permission(authStr = "unregisterTaskStackListener", type = "epona")
    @Blocked
    @RequiresApi(api = 30)
    @System
    public static void unregisterTaskStackListener(ITaskStackListenerNative iTaskStackListenerNative) throws UnSupportedApiVersionException {
        if (VersionUtils.isS()) {
            Request build = new Request.Builder().setComponentName(COMPONENT_NAME).setActionName("unregisterTaskStackListener").build();
            Bundle bundle = new Bundle();
            bundle.putBinder("listener", (ITaskStackListener.Stub) sListener.get(iTaskStackListenerNative));
            build.putBundle(bundle);
            Epona.newCall(build).execute();
        } else if (VersionUtils.isR()) {
            Request build2 = new Request.Builder().setComponentName(COMPONENT_NAME).setActionName("unregisterTaskStackListener").build();
            Bundle bundle2 = new Bundle();
            bundle2.putBinder("listener", (ITaskStackListenerR.Stub) sListener.get(iTaskStackListenerNative));
            build2.putBundle(bundle2);
            Epona.newCall(build2).execute();
        } else {
            throw new UnSupportedApiVersionException("not supported before R");
        }
    }

    /* loaded from: classes.dex */
    private static class TaskStackListenerAfterS extends ITaskStackListener.Stub {
        private ITaskStackListenerNative mListenerNative;

        public void onActivityDismissingDockedTask() throws RemoteException {
        }

        public void onActivityForcedResizable(String str, int i, int i2) throws RemoteException {
        }

        public void onActivityLaunchOnSecondaryDisplayFailed(ActivityManager.RunningTaskInfo runningTaskInfo, int i) throws RemoteException {
        }

        public void onActivityLaunchOnSecondaryDisplayRerouted(ActivityManager.RunningTaskInfo runningTaskInfo, int i) throws RemoteException {
        }

        public void onActivityRequestedOrientationChanged(int i, int i2) throws RemoteException {
        }

        public void onActivityRestartAttempt(ActivityManager.RunningTaskInfo runningTaskInfo, boolean z, boolean z2, boolean z3) throws RemoteException {
        }

        public void onActivityRotation(int i) throws RemoteException {
        }

        public void onBackPressedOnTaskRoot(ActivityManager.RunningTaskInfo runningTaskInfo) throws RemoteException {
        }

        public void onLockTaskModeChanged(int i) throws RemoteException {
        }

        public void onRecentTaskListFrozenChanged(boolean z) throws RemoteException {
        }

        public void onRecentTaskListUpdated() throws RemoteException {
        }

        public void onTaskCreated(int i, ComponentName componentName) throws RemoteException {
        }

        public void onTaskDescriptionChanged(ActivityManager.RunningTaskInfo runningTaskInfo) throws RemoteException {
        }

        public void onTaskDisplayChanged(int i, int i2) throws RemoteException {
        }

        public void onTaskFocusChanged(int i, boolean z) throws RemoteException {
        }

        public void onTaskMovedToBack(ActivityManager.RunningTaskInfo runningTaskInfo) throws RemoteException {
        }

        public void onTaskMovedToFront(ActivityManager.RunningTaskInfo runningTaskInfo) throws RemoteException {
        }

        public void onTaskProfileLocked(int i, int i2) throws RemoteException {
        }

        public void onTaskRemovalStarted(ActivityManager.RunningTaskInfo runningTaskInfo) throws RemoteException {
        }

        public void onTaskRemoved(int i) throws RemoteException {
        }

        public void onTaskRequestedOrientationChanged(int i, int i2) throws RemoteException {
        }

        public void onTaskStackChanged() throws RemoteException {
        }

        public TaskStackListenerAfterS(ITaskStackListenerNative iTaskStackListenerNative) {
            this.mListenerNative = iTaskStackListenerNative;
        }

        public void onActivityPinned(String str, int i, int i2, int i3) throws RemoteException {
            this.mListenerNative.onActivityPinned(str, i, i2, i3);
        }

        public void onActivityUnpinned() throws RemoteException {
            this.mListenerNative.onActivityUnpinned();
        }

        public void onTaskSnapshotChanged(int i, TaskSnapshot taskSnapshot) throws RemoteException {
            this.mListenerNative.onTaskSnapshotChanged(i, taskSnapshot);
        }
    }

    /* loaded from: classes.dex */
    private static class TaskStackListenerR extends ITaskStackListenerR.Stub {
        private ITaskStackListenerNative mListenerNative;

        @Override // com.oplus.compat.app.ITaskStackListenerR
        public void onActivityDismissingDockedStack() throws RemoteException {
        }

        @Override // com.oplus.compat.app.ITaskStackListenerR
        public void onActivityForcedResizable(String str, int i, int i2) throws RemoteException {
        }

        @Override // com.oplus.compat.app.ITaskStackListenerR
        public void onActivityLaunchOnSecondaryDisplayFailed(ActivityManager.RunningTaskInfo runningTaskInfo, int i) throws RemoteException {
        }

        @Override // com.oplus.compat.app.ITaskStackListenerR
        public void onActivityLaunchOnSecondaryDisplayRerouted(ActivityManager.RunningTaskInfo runningTaskInfo, int i) throws RemoteException {
        }

        @Override // com.oplus.compat.app.ITaskStackListenerR
        public void onActivityRequestedOrientationChanged(int i, int i2) throws RemoteException {
        }

        @Override // com.oplus.compat.app.ITaskStackListenerR
        public void onActivityRestartAttempt(ActivityManager.RunningTaskInfo runningTaskInfo, boolean z, boolean z2, boolean z3) throws RemoteException {
        }

        @Override // com.oplus.compat.app.ITaskStackListenerR
        public void onActivityRotation(int i) throws RemoteException {
        }

        @Override // com.oplus.compat.app.ITaskStackListenerR
        public void onBackPressedOnTaskRoot(ActivityManager.RunningTaskInfo runningTaskInfo) throws RemoteException {
        }

        @Override // com.oplus.compat.app.ITaskStackListenerR
        public void onRecentTaskListFrozenChanged(boolean z) throws RemoteException {
        }

        @Override // com.oplus.compat.app.ITaskStackListenerR
        public void onRecentTaskListUpdated() throws RemoteException {
        }

        @Override // com.oplus.compat.app.ITaskStackListenerR
        public void onSingleTaskDisplayDrawn(int i) throws RemoteException {
        }

        @Override // com.oplus.compat.app.ITaskStackListenerR
        public void onSingleTaskDisplayEmpty(int i) throws RemoteException {
        }

        @Override // com.oplus.compat.app.ITaskStackListenerR
        public void onSizeCompatModeActivityChanged(int i, IBinder iBinder) throws RemoteException {
        }

        @Override // com.oplus.compat.app.ITaskStackListenerR
        public void onTaskCreated(int i, ComponentName componentName) throws RemoteException {
        }

        @Override // com.oplus.compat.app.ITaskStackListenerR
        public void onTaskDescriptionChanged(ActivityManager.RunningTaskInfo runningTaskInfo) throws RemoteException {
        }

        @Override // com.oplus.compat.app.ITaskStackListenerR
        public void onTaskDisplayChanged(int i, int i2) throws RemoteException {
        }

        @Override // com.oplus.compat.app.ITaskStackListenerR
        public void onTaskFocusChanged(int i, boolean z) throws RemoteException {
        }

        @Override // com.oplus.compat.app.ITaskStackListenerR
        public void onTaskMovedToFront(ActivityManager.RunningTaskInfo runningTaskInfo) throws RemoteException {
        }

        @Override // com.oplus.compat.app.ITaskStackListenerR
        public void onTaskProfileLocked(int i, int i2) throws RemoteException {
        }

        @Override // com.oplus.compat.app.ITaskStackListenerR
        public void onTaskRemovalStarted(ActivityManager.RunningTaskInfo runningTaskInfo) throws RemoteException {
        }

        @Override // com.oplus.compat.app.ITaskStackListenerR
        public void onTaskRemoved(int i) throws RemoteException {
        }

        @Override // com.oplus.compat.app.ITaskStackListenerR
        public void onTaskRequestedOrientationChanged(int i, int i2) throws RemoteException {
        }

        @Override // com.oplus.compat.app.ITaskStackListenerR
        public void onTaskStackChanged() throws RemoteException {
        }

        public TaskStackListenerR(ITaskStackListenerNative iTaskStackListenerNative) {
            this.mListenerNative = iTaskStackListenerNative;
        }

        @Override // com.oplus.compat.app.ITaskStackListenerR
        public void onTaskSnapshotChanged(int i, TaskSnapshotNative taskSnapshotNative) throws RemoteException {
            this.mListenerNative.onTaskSnapshotChanged(i, taskSnapshotNative);
        }

        @Override // com.oplus.compat.app.ITaskStackListenerR
        public void onActivityPinned(String str, int i, int i2, int i3) throws RemoteException {
            this.mListenerNative.onActivityPinned(str, i, i2, i3);
        }

        @Override // com.oplus.compat.app.ITaskStackListenerR
        public void onActivityUnpinned() throws RemoteException {
            this.mListenerNative.onActivityUnpinned();
        }
    }
}

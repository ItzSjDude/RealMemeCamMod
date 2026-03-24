package android.window;

import android.app.ActivityManager;
import android.app.PendingIntent$$ExternalSyntheticLambda1;
import android.os.IBinder;
import android.os.RemoteException;
import android.os.SystemProperties;
import android.os.Trace;
import android.util.Log;
import android.view.SurfaceControl;
import android.window.ITaskOrganizer;
import java.util.List;
import java.util.concurrent.Executor;

/* loaded from: classes4.dex */
public class TaskOrganizer extends WindowOrganizer {
    private static boolean DEBUG_PANIC;
    private final Executor mExecutor;
    private final ITaskOrganizer mInterface;
    private final ITaskOrganizerController mTaskOrganizerController;

    static {
        boolean z = false;
        if (SystemProperties.getBoolean("persist.sys.assert.panic", false) && "0".equals(SystemProperties.get("persist.sys.agingtest", "0"))) {
            z = true;
        }
        DEBUG_PANIC = z;
    }

    public TaskOrganizer() {
        this(null, null);
    }

    public TaskOrganizer(ITaskOrganizerController taskOrganizerController, Executor executor) {
        this.mInterface = new AnonymousClass1();
        this.mExecutor = executor != null ? executor : new PendingIntent$$ExternalSyntheticLambda1();
        this.mTaskOrganizerController = taskOrganizerController != null ? taskOrganizerController : getController();
    }

    public List<TaskAppearedInfo> registerOrganizer() {
        try {
            return this.mTaskOrganizerController.registerTaskOrganizer(this.mInterface).getList();
        } catch (RemoteException e) {
            throw e.rethrowFromSystemServer();
        }
    }

    public void unregisterOrganizer() {
        try {
            this.mTaskOrganizerController.unregisterTaskOrganizer(this.mInterface);
        } catch (RemoteException e) {
            throw e.rethrowFromSystemServer();
        }
    }

    public void addStartingWindow(StartingWindowInfo info, IBinder appToken) {
    }

    public void removeStartingWindow(StartingWindowRemovalInfo removalInfo) {
    }

    public void copySplashScreenView(int taskId) {
    }

    public void onAppSplashScreenViewRemoved(int taskId) {
    }

    public void onTaskAppeared(ActivityManager.RunningTaskInfo taskInfo, SurfaceControl leash) {
    }

    public void onTaskVanished(ActivityManager.RunningTaskInfo taskInfo) {
    }

    public void onTaskInfoChanged(ActivityManager.RunningTaskInfo taskInfo) {
    }

    public void onBackPressedOnTaskRoot(ActivityManager.RunningTaskInfo taskInfo) {
    }

    public void onImeDrawnOnTask(int taskId) {
    }

    public void createRootTask(int displayId, int windowingMode, IBinder launchCookie) {
        try {
            this.mTaskOrganizerController.createRootTask(displayId, windowingMode, launchCookie);
        } catch (RemoteException e) {
            throw e.rethrowFromSystemServer();
        }
    }

    public boolean deleteRootTask(WindowContainerToken task) {
        try {
            return this.mTaskOrganizerController.deleteRootTask(task);
        } catch (RemoteException e) {
            throw e.rethrowFromSystemServer();
        }
    }

    public List<ActivityManager.RunningTaskInfo> getChildTasks(WindowContainerToken parent, int[] activityTypes) {
        try {
            return this.mTaskOrganizerController.getChildTasks(parent, activityTypes);
        } catch (RemoteException e) {
            throw e.rethrowFromSystemServer();
        }
    }

    public List<ActivityManager.RunningTaskInfo> getRootTasks(int displayId, int[] activityTypes) {
        try {
            return this.mTaskOrganizerController.getRootTasks(displayId, activityTypes);
        } catch (RemoteException e) {
            throw e.rethrowFromSystemServer();
        }
    }

    public WindowContainerToken getImeTarget(int display) {
        try {
            return this.mTaskOrganizerController.getImeTarget(display);
        } catch (RemoteException e) {
            throw e.rethrowFromSystemServer();
        }
    }

    public void setInterceptBackPressedOnTaskRoot(WindowContainerToken task, boolean interceptBackPressed) {
        try {
            this.mTaskOrganizerController.setInterceptBackPressedOnTaskRoot(task, interceptBackPressed);
        } catch (RemoteException e) {
            throw e.rethrowFromSystemServer();
        }
    }

    public void restartTaskTopActivityProcessIfVisible(WindowContainerToken task) {
        try {
            this.mTaskOrganizerController.restartTaskTopActivityProcessIfVisible(task);
        } catch (RemoteException e) {
            throw e.rethrowFromSystemServer();
        }
    }

    public void updateCameraCompatControlState(WindowContainerToken task, int state) {
        try {
            this.mTaskOrganizerController.updateCameraCompatControlState(task, state);
        } catch (RemoteException e) {
            throw e.rethrowFromSystemServer();
        }
    }

    public void setIsIgnoreOrientationRequestDisabled(boolean isDisabled) {
        try {
            this.mTaskOrganizerController.setIsIgnoreOrientationRequestDisabled(isDisabled);
        } catch (RemoteException e) {
            throw e.rethrowFromSystemServer();
        }
    }

    public Executor getExecutor() {
        return this.mExecutor;
    }

    /* renamed from: android.window.TaskOrganizer$1, reason: invalid class name */
    class AnonymousClass1 extends ITaskOrganizer.Stub {
        AnonymousClass1() {
        }

        @Override // android.window.ITaskOrganizer
        public void addStartingWindow(StartingWindowInfo windowInfo, IBinder appToken) {
            Trace.traceBegin(32L, "prev-addStartingWindow");
            TaskOrganizer.this.addStartingWindow(windowInfo, appToken);
            Trace.traceEnd(32L);
        }

        /* renamed from: lambda$removeStartingWindow$0$android-window-TaskOrganizer$1, reason: not valid java name */
        /* synthetic */ void m6446lambda$removeStartingWindow$0$androidwindowTaskOrganizer$1(StartingWindowRemovalInfo removalInfo) {
            TaskOrganizer.this.removeStartingWindow(removalInfo);
        }

        @Override // android.window.ITaskOrganizer
        public void removeStartingWindow(final StartingWindowRemovalInfo removalInfo) {
            TaskOrganizer.this.mExecutor.execute(new Runnable() { // from class: android.window.TaskOrganizer$1$$ExternalSyntheticLambda6
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.m6446lambda$removeStartingWindow$0$androidwindowTaskOrganizer$1(removalInfo);
                }
            });
        }

        @Override // android.window.ITaskOrganizer
        public void copySplashScreenView(final int taskId) {
            TaskOrganizer.this.mExecutor.execute(new Runnable() { // from class: android.window.TaskOrganizer$1$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.m6439lambda$copySplashScreenView$1$androidwindowTaskOrganizer$1(taskId);
                }
            });
        }

        /* renamed from: lambda$copySplashScreenView$1$android-window-TaskOrganizer$1, reason: not valid java name */
        /* synthetic */ void m6439lambda$copySplashScreenView$1$androidwindowTaskOrganizer$1(int taskId) {
            TaskOrganizer.this.copySplashScreenView(taskId);
        }

        /* renamed from: lambda$onAppSplashScreenViewRemoved$2$android-window-TaskOrganizer$1, reason: not valid java name */
        /* synthetic */ void m6440x53c2a1ab(int taskId) {
            TaskOrganizer.this.onAppSplashScreenViewRemoved(taskId);
        }

        @Override // android.window.ITaskOrganizer
        public void onAppSplashScreenViewRemoved(final int taskId) {
            TaskOrganizer.this.mExecutor.execute(new Runnable() { // from class: android.window.TaskOrganizer$1$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.m6440x53c2a1ab(taskId);
                }
            });
        }

        @Override // android.window.ITaskOrganizer
        public void onTaskAppeared(final ActivityManager.RunningTaskInfo taskInfo, final SurfaceControl leash) {
            if (TaskOrganizer.DEBUG_PANIC) {
                Log.d("TaskOrganizer", "onTaskAppeared: taskInfo=" + taskInfo + ", leash=" + leash);
            }
            TaskOrganizer.this.mExecutor.execute(new Runnable() { // from class: android.window.TaskOrganizer$1$$ExternalSyntheticLambda5
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.m6443lambda$onTaskAppeared$3$androidwindowTaskOrganizer$1(taskInfo, leash);
                }
            });
        }

        /* renamed from: lambda$onTaskAppeared$3$android-window-TaskOrganizer$1, reason: not valid java name */
        /* synthetic */ void m6443lambda$onTaskAppeared$3$androidwindowTaskOrganizer$1(ActivityManager.RunningTaskInfo taskInfo, SurfaceControl leash) {
            TaskOrganizer.this.onTaskAppeared(taskInfo, leash);
        }

        /* renamed from: lambda$onTaskVanished$4$android-window-TaskOrganizer$1, reason: not valid java name */
        /* synthetic */ void m6445lambda$onTaskVanished$4$androidwindowTaskOrganizer$1(ActivityManager.RunningTaskInfo taskInfo) {
            TaskOrganizer.this.onTaskVanished(taskInfo);
        }

        @Override // android.window.ITaskOrganizer
        public void onTaskVanished(final ActivityManager.RunningTaskInfo taskInfo) {
            TaskOrganizer.this.mExecutor.execute(new Runnable() { // from class: android.window.TaskOrganizer$1$$ExternalSyntheticLambda7
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.m6445lambda$onTaskVanished$4$androidwindowTaskOrganizer$1(taskInfo);
                }
            });
        }

        /* renamed from: lambda$onTaskInfoChanged$5$android-window-TaskOrganizer$1, reason: not valid java name */
        /* synthetic */ void m6444lambda$onTaskInfoChanged$5$androidwindowTaskOrganizer$1(ActivityManager.RunningTaskInfo info) {
            TaskOrganizer.this.onTaskInfoChanged(info);
        }

        @Override // android.window.ITaskOrganizer
        public void onTaskInfoChanged(final ActivityManager.RunningTaskInfo info) {
            TaskOrganizer.this.mExecutor.execute(new Runnable() { // from class: android.window.TaskOrganizer$1$$ExternalSyntheticLambda3
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.m6444lambda$onTaskInfoChanged$5$androidwindowTaskOrganizer$1(info);
                }
            });
        }

        /* renamed from: lambda$onBackPressedOnTaskRoot$6$android-window-TaskOrganizer$1, reason: not valid java name */
        /* synthetic */ void m6441lambda$onBackPressedOnTaskRoot$6$androidwindowTaskOrganizer$1(ActivityManager.RunningTaskInfo info) {
            TaskOrganizer.this.onBackPressedOnTaskRoot(info);
        }

        @Override // android.window.ITaskOrganizer
        public void onBackPressedOnTaskRoot(final ActivityManager.RunningTaskInfo info) {
            TaskOrganizer.this.mExecutor.execute(new Runnable() { // from class: android.window.TaskOrganizer$1$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.m6441lambda$onBackPressedOnTaskRoot$6$androidwindowTaskOrganizer$1(info);
                }
            });
        }

        /* renamed from: lambda$onImeDrawnOnTask$7$android-window-TaskOrganizer$1, reason: not valid java name */
        /* synthetic */ void m6442lambda$onImeDrawnOnTask$7$androidwindowTaskOrganizer$1(int taskId) {
            TaskOrganizer.this.onImeDrawnOnTask(taskId);
        }

        @Override // android.window.ITaskOrganizer
        public void onImeDrawnOnTask(final int taskId) {
            TaskOrganizer.this.mExecutor.execute(new Runnable() { // from class: android.window.TaskOrganizer$1$$ExternalSyntheticLambda4
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.m6442lambda$onImeDrawnOnTask$7$androidwindowTaskOrganizer$1(taskId);
                }
            });
        }
    }

    private ITaskOrganizerController getController() {
        try {
            return getWindowOrganizerController().getTaskOrganizerController();
        } catch (RemoteException e) {
            return null;
        }
    }
}

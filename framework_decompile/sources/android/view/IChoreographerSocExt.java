package android.view;

import android.os.Handler;

/* loaded from: classes3.dex */
public interface IChoreographerSocExt {
    default void setFrameInterval(long mFrameIntervalNanos) {
    }

    default boolean hookScheduleFrameLocked(boolean USE_VSYNC, Handler handler, long mFrameIntervalNanos) {
        return USE_VSYNC;
    }

    default long getFrameDelay(long frameDelay, long lastFrameTimeNanos) {
        return frameDelay;
    }

    default void setMotionEventInfo(int motionEventType, int touchMoveNum) {
    }

    default void setIsDoFrameProcessing(boolean isDoFrameProcessing) {
    }

    default void setUITaskStatus(boolean isUITask) {
    }

    default void setVsyncTime(long timestampNanos) {
    }

    default void setIsVsyncScheduled(boolean isVsyncScheduled) {
    }

    default void setScheduleVsync(boolean isscheduleVsync) {
    }

    default void hookDoFramePerfHint(long vsyncId, boolean begin) {
    }

    default void hookDoCallbackPerfHint(int callbackType, boolean begin) {
    }
}

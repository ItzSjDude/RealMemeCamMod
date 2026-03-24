package android.view;

import android.os.Handler;
import android.view.Choreographer;

/* loaded from: classes3.dex */
public interface IChoreographerWrapper {
    default void scheduleFrameLocked(long now) {
    }

    default void setFrameScheduled(boolean frameScheduled) {
    }

    default Handler getHandler() {
        return null;
    }

    default Object getLock() {
        return null;
    }

    default Object getCallbackQueues() {
        return null;
    }

    default int getCallbackLastConst() {
        return 0;
    }

    default int getMsgDoFrameConst() {
        return 0;
    }

    default void addCallbackLockedForCallbackQueue(Object callback, long dueTime, Object action, Object token) {
    }

    default void setFrameTimeNanosForFrameData(Choreographer.FrameData frameData, long frameTimeNanos) {
    }
}

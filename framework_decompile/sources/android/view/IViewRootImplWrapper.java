package android.view;

import android.os.Handler;
import android.view.ViewRootImpl;
import android.view.WindowManager;

/* loaded from: classes3.dex */
public interface IViewRootImplWrapper {
    default void collectRootScrollCaptureTargets(ScrollCaptureSearchResults results) {
    }

    default Object getSocExtImpl() {
        return null;
    }

    default IViewRootImplExt getExtImpl() {
        return new IViewRootImplExt() { // from class: android.view.IViewRootImplWrapper.1
        };
    }

    default Handler getHandler() {
        return new Handler();
    }

    default Choreographer getChoreographer() {
        return Choreographer.getMainThreadInstance();
    }

    default WindowManager.LayoutParams getWindowAttributes() {
        return new WindowManager.LayoutParams();
    }

    default String getBasePackageName() {
        return null;
    }

    default ViewRootImpl.TraversalRunnable getTraversalRunnable() {
        return null;
    }

    default ViewRootImpl.WindowInputEventReceiver getInputEventReceiver() {
        return null;
    }

    default int getTraversalBarrier() {
        return 0;
    }

    default void setTraversalBarrier(int traversalBarrier) {
    }

    default boolean getTraversalScheduled() {
        return false;
    }

    default void setTraversalScheduled(boolean traversalScheduled) {
    }

    default boolean getUnbufferedInputDispatch() {
        return false;
    }

    default void notifyRendererOfFramePending() {
    }

    default void pokeDrawLockIfNeeded() {
    }

    default void scheduleConsumeBatchedInput() {
    }
}
